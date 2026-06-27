inline.NumInlined: 13980
inline.NumDeleted: 5200
begin_hunk_0_@_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_:bb.a

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA16_KcEEvRSoOT_.exit.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !428
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA16_KcEEvRSoOT_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !428
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.d:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !28
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute21AssumeTimezoneOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.286", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !431
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !27
  store i8 0, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !27
  store i8 0, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESR_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !433  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_SM_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_SM_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_SM_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_SM_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !435  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i6.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !437
  %.val3.i7.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !437
  %i.o = icmp eq i32 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !438  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i8.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !440
  %.val3.i9.i.i.i.i = load i32, ptr %i.s, align 4, !tbaa !440
  %i.t = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %3 = select i1 %i.t, i1 %i.o, i1 false
  %i.u = and i1 %i.j, %3
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.298", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !441 ; 6 uses
  invoke void @_ZN5arrow7compute21AssumeTimezoneOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !441

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.q, %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !441
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !444
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !431
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !444    ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !446, !nonnull !11, !align !303 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !435  ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !437
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i32 %i.j, ptr %i.k, align 4, !tbaa !437
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !438  ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !440
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.m
  store i32 %i.o, ptr %i.p, align 4, !tbaa !440
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #27, !inline_history !447
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSS_ISt10shared_ptrINS_6ScalarEESaISY_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.301", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !431
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !448
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !450
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !451 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !175, !alias.scope !451
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !454
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.329", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !457 ; 8 uses
  invoke void @_ZN5arrow7compute21AssumeTimezoneOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !457

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !457
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !460
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
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
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit: ; preds = %.noexc5.i
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !462 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !175, !alias.scope !462
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.l = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute21AssumeTimezoneOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute21AssumeTimezoneOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #27, !inline_history !447
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = ptrtoint ptr %i.a to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit12

end_hunk_0
begin_hunk_1_@_ZNK5arrow6Status11WithMessageIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_:bb.a
bb.r:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  %i.aw = load ptr, ptr %9, align 8, !tbaa !175
  %.not.i10 = icmp eq ptr %i.aw, null
  br i1 %.not.i10, label %_ZN5arrow6StatusD2Ev.exit11, label %bb.s, !prof !178

bb.s:                                             ; preds = %bb.r
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN5arrow6StatusD2Ev.exit11

_ZN5arrow6StatusD2Ev.exit11:                      ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(28) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357, !nonnull !11, !align !303 ; 6 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !34
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !288
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc
  %i.f = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #27
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.f)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %4) #27
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(28) %4, i64 noundef %i.h)
          to label %.noexc9 unwind label %bb.c    ; 0 uses

.noexc9:                                          ; preds = %.noexc8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #27
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.j)
          to label %.noexc10 unwind label %bb.c   ; 0 uses

.noexc10:                                         ; preds = %.noexc9
  %i.l = load ptr, ptr %6, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc10
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute19ExtractRegexOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.402", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !768
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !51
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %bb.a
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !28
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !770  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.413", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !772 ; 6 uses
  invoke void @_ZN5arrow7compute19ExtractRegexOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !772

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #29, !noalias !772
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !775
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !768
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_19ExtractRegexOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #27, !inline_history !777
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSO_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.416", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !768
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !778
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !780
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ExtractRegexOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !781 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !175, !alias.scope !781
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !784
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.417", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !787 ; 8 uses
  invoke void @_ZN5arrow7compute19ExtractRegexOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !787

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #29, !noalias !787
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !790
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ExtractRegexOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !792 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !175, !alias.scope !792
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.j = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute19ExtractRegexOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute19ExtractRegexOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #27, !inline_history !777
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = ptrtoint ptr %i.a to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute19ExtractRegexOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #27, !inline_history !777
  br label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute19ExtractRegexOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.196)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !21, !alias.scope !795
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
end_hunk_1
begin_hunk_2_@_ZN5arrow4util13StringBuilderIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357, !nonnull !11, !align !303 ; 6 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !34
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !288
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc
  %i.f = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #27
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.f)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %4) #27
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(20) %4, i64 noundef %i.h)
          to label %.noexc9 unwind label %bb.c    ; 0 uses

.noexc9:                                          ; preds = %.noexc8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #27
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.j)
          to label %.noexc10 unwind label %bb.c   ; 0 uses

.noexc10:                                         ; preds = %.noexc9
  %i.l = load ptr, ptr %6, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc10
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11JoinOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.425", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !828
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !27
  store i8 0, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !28
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !830  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !832
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !832
  %i.e = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !833  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 2 uses
  %.val.i4.i.i.i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i5.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !27
  %i.l = icmp eq i64 %.val3.i5.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.l, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SK_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %.val3.i5.i.i.i.i, 0
  br i1 %i.m, label %_ZN5arrow7compute8internal11CompareImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SK_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i4.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i5.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.n = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  %3 = select i1 %i.n, i1 %i.e, i1 false
  br label %_ZN5arrow7compute8internal11CompareImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i1 [ false, %bb.a ], [ %3, %bb.c ], [ %i.e, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::CopyImpl.436", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !835 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !21, !noalias !835
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !27, !noalias !835
  store i8 0, ptr %i.b, align 8, !tbaa !28, !noalias !835
  invoke void @_ZN5arrow7compute11JoinOptionsC1ENS1_20NullHandlingBehaviorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i32 noundef 0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c, !noalias !835

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !24, !noalias !835 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !835
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #29, !noalias !835
  br label %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !24, !noalias !835 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !835
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #29, !noalias !835
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.t, %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !835
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !838
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.n, align 8, !tbaa !828
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !830  ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !832
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %i.p
  store i32 %i.r, ptr %i.s, align 4, !tbaa !832
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_11JoinOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #27, !inline_history !840
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISD_SaISD_EEPSQ_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.439", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !828
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !841
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !843
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_11JoinOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !175, !noalias !844 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !175, !alias.scope !844
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11JoinOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !847
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11JoinOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.440", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !850 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !21, !noalias !850
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !27, !noalias !850
  store i8 0, ptr %i.b, align 8, !tbaa !28, !noalias !850
  invoke void @_ZN5arrow7compute11JoinOptionsC1ENS1_20NullHandlingBehaviorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i32 noundef 0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c, !noalias !850

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !24, !noalias !850 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !850
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #29, !noalias !850
  br label %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !24, !noalias !850 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !850
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #29, !noalias !850
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.q, %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !850
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.a, ptr %5, align 8, !tbaa !853
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.m, align 8, !tbaa !175
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.n, align 8, !tbaa !276
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11JoinOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11JoinOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11JoinOptionsEED2Ev.exit unwind label %bb.d

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal13StringifyImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m:bb.a
  %i.ih = load i64, ptr %i.ht, align 8, !tbaa !28
  store ptr %i.hv, ptr %i.hr, align 8, !tbaa !24
  %i.ii = load i64, ptr %i.gx, align 8, !tbaa !27
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !27
  %i.ik = load i64, ptr %i.gw, align 8, !tbaa !28
  store i64 %i.ik, ptr %i.ht, align 8, !tbaa !28
  %.not.i17 = icmp eq ptr %i.hs, null
  br i1 %.not.i17, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hs, ptr %9, align 8, !tbaa !24
  store i64 %i.ih, ptr %i.gw, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.gw, ptr %9, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ar, %bb.as
  %i.il = phi ptr [ %i.hs, %bb.ar ], [ %i.gw, %bb.as ], [ %i.hv, %bb.an ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.gx, align 8, !tbaa !27
  store i8 0, ptr %i.il, align 1, !tbaa !28
  %i.im = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.gw
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.io = load i64, ptr %i.gw, align 8, !tbaa !28
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  store ptr %i.ft, ptr %7, align 8, !tbaa !17
  %i.iq = load i64, ptr %i.fv, align 8
  %i.ir = getelementptr inbounds i8, ptr %7, i64 %i.iq
  store ptr %i.fu, ptr %i.ir, align 8, !tbaa !17
  store ptr %i.fy, ptr %i.e, align 8, !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.is, align 8, !tbaa !17
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !24 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !28
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i21
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.is, align 8, !tbaa !17
  %i.iz = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.iz) #27
  store ptr %i.gi, ptr %7, align 8, !tbaa !17
  %i.ja = load i64, ptr %i.gk, align 8
  %i.jb = getelementptr inbounds i8, ptr %7, i64 %i.ja
  store ptr %i.gj, ptr %i.jb, align 8, !tbaa !17
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.jc, align 8, !tbaa !317
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.jd) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.at:                                            ; preds = %bb.c, %bb.b, %bb.a
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.au:                                            ; preds = %bb.d
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i26.i
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.fa
  br i1 %i.ji, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.av
  %i.jj = load i64, ptr %i.fa, align 8, !tbaa !28
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #29
  br label %.body

.body:                                            ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.au, %.body23.i
  %.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %.body23.i ], [ %i.jf, %bb.au ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.jg, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.aw

.body15:                                          ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.aw

bb.aw:                                            ; preds = %.body15, %.body, %bb.at
  %.pn8 = phi { ptr, i32 } [ %i.hj, %.body15 ], [ %.pn, %.body ], [ %i.je, %bb.at ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn8
}

declare void @_ZNK5arrow16KeyValueMetadata12sorted_pairsB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector.459") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1020   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1022 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !28
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1023

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1020
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1024
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #29
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2EEJNS0_18DataMemberPropertyINS_7compute17MakeStructOptionsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEENS2_IS4_S5_IbSaIbEEEENS2_IS4_S5_ISt10shared_ptrIKNS_16KeyValueMetadataEESaISL_EEEEERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1049, !nonnull !11, !align !303 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !962  ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1050, !nonnull !11, !align !303 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !52 ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val3.i = load ptr, ptr %i.h, align 8, !tbaa !51 ; 2 uses
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !52 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val5.i = load ptr, ptr %i.i, align 8, !tbaa !51
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
  br i1 %i.q, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i
  %.0106.i.i = phi i64 [ %i.y, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.0106.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.0106.i.i ; 2 uses
  %.val.i.i = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %.val12.i.i = load i64, ptr %i.t, align 8, !tbaa !27 ; 3 uses
  %.val13.i.i = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val14.i.i = load i64, ptr %i.u, align 8, !tbaa !27
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
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1051

.loopexit.i:                                      ; preds = %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i, %.preheader.i.i
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i8, ptr %2, align 8, !tbaa !929, !range !10, !noundef !11
  br label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit

_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit: ; preds = %.lr.ph.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i, %bb.a, %.loopexit.i
  %4 = phi i8 [ %3, %.loopexit.i ], [ 0, %bb.a ], [ 0, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !983 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %i.f, i64 %i.aa ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !56
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = zext i32 %i.ag to i64
  %i.an = add nsw i64 %i.al, %i.am                ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !56
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
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
  br i1 %.not19.i.i, label %.lr.ph.i.i9, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit, !llvm.loop !1052

.lr.ph.i.i9:                                      ; preds = %.preheader.i.i8, %bb.c
  %.01016.i.i = phi i64 [ %i.ba, %bb.c ], [ 0, %.preheader.i.i8 ] ; 4 uses
  %i.bb = sdiv i64 %.01016.i.i, 64                ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bb
  %i.bd = and i64 %.01016.i.i, -9223372036854775745
  %i.be = icmp ugt i64 %i.bd, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.be, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bc, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.bf = and i64 %.01016.i.i, 63
  %i.bg = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !34
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bb
  %storemerge.i.i.i.i.i14.i.i = getelementptr inbounds i8, ptr %i.bh, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.bi = load i64, ptr %storemerge.i.i.i.i.i14.i.i, align 8, !tbaa !34
  %i.bj = xor i64 %i.bi, %i.bg
  %i.bk = shl nuw i64 1, %i.bf
  %i.bl = and i64 %i.bj, %i.bk
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.c, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit

_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit: ; preds = %bb.c, %.lr.ph.i.i9, %.preheader.i.i8, %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit
  %5 = phi i8 [ 0, %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit ], [ %4, %.preheader.i.i8 ], [ %4, %bb.c ], [ 0, %.lr.ph.i.i9 ]
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %5, ptr %6, align 8, !tbaa !929
  tail call void @_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1049, !nonnull !11, !align !303
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1006 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1050, !nonnull !11, !align !303
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not.i = icmp eq i64 %i.m, %i.s
  br i1 %.not.i, label %.preheader.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread

.preheader.i:                                     ; preds = %bb.a
  %i.t = icmp eq ptr %i.i, %i.j
  br i1 %i.t, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i
  %i.u = phi ptr [ %i.al, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i ], [ %i.j, %.preheader.i ]
  %.01015.i = phi i64 [ %i.aj, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.01015.i ; 3 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.01015.i ; 3 uses
  %.val9.i.i = load ptr, ptr %i.v, align 8, !tbaa !1015 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val9.i.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i: ; preds = %.lr.ph.i
  %i.y = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val9.i.i)
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i
  %.val8.i.i = load ptr, ptr %i.x, align 8, !tbaa !1015 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %.val8.i.i, null
  br i1 %.not.i10.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i: ; preds = %bb.b
  %i.aa = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val8.i.i)
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, label %bb.c

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i, %bb.b, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i
  %.val7.pr.i.i = load ptr, ptr %i.v, align 8, !tbaa !1015 ; 2 uses
  %.not.i12.i.i = icmp eq ptr %.val7.pr.i.i, null
  br i1 %.not.i12.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i
  %i.ac = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val7.pr.i.i)
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, %.lr.ph.i
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !1015 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i14.i.i, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i

bb.c:                                             ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !1015
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !1015
  %i.ag = tail call noundef zeroext i1 @_ZNK5arrow16KeyValueMetadata6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.af)
  br i1 %i.ag, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread

_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i
  %i.ah = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val.i.i)
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread

_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i, %bb.c, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i
  %i.aj = add nuw i64 %.01015.i, 1                ; 2 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !60  ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 4
  %.not20.i = icmp ult i64 %i.aj, %i.ap
  br i1 %.not20.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !1053

_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i, %bb.c, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i, %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

.loopexit:                                        ; preds = %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, %.preheader.i
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %5 = load i8, ptr %4, align 8, !tbaa !929, !range !10, !noundef !11
  br label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread, %.loopexit
  %6 = phi ptr [ %4, %.loopexit ], [ %3, %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread ]
  %7 = phi i8 [ %5, %.loopexit ], [ 0, %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread ]
  store i8 %7, ptr %6, align 8, !tbaa !929
  ret void
}

declare noundef zeroext i1 @_ZNK5arrow16KeyValueMetadata6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

declare noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal8CopyImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !934
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1054, !nonnull !11, !align !303
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !962
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !52   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !70

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.l) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.q

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.s = load i64, ptr %i.d, align 8, !tbaa !962
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.s ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  store ptr %i.o, ptr %i.t, align 8, !tbaa !52
  store ptr %i.p, ptr %i.v, align 8, !tbaa !51
  store ptr %i.r, ptr %i.x, align 8, !tbaa !45
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = ptrtoint ptr %i.u to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ah) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal8CopyImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !934
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1054, !nonnull !11, !align !303
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !983  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56   ; 2 uses
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
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 3 uses
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
  br i1 %i.ad, label %bb.b, label %bb.c, !prof !178

bb.b:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.0, ptr align 8 %i.g, i64 %i.n, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.c:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  %i.ae = icmp eq i64 %i.n, 8
  br i1 %i.ae, label %bb.d, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.af = load i64, ptr %i.g, align 8, !tbaa !34
  store i64 %i.af, ptr %.sroa.0.0, align 8, !tbaa !34
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
  %i.aj = load i64, ptr %.sroa.09.018.i.i.i.i.i.i.i, align 8, !tbaa !34
  %i.ak = and i64 %i.aj, %i.ai
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = zext nneg i32 %.sroa.55.016.i.i.i.i.i.i.i to i64
  %i.am = shl nuw i64 1, %i.al                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.an = load i64, ptr %.sroa.03.017.i.i.i.i.i.i.i, align 8, !tbaa !34
  %i.ao = or i64 %i.an, %i.am
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ap = xor i64 %i.am, -1
  %i.aq = load i64, ptr %.sroa.03.017.i.i.i.i.i.i.i, align 8, !tbaa !34
  %i.ar = and i64 %i.aq, %i.ap
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i:     ; preds = %bb.f, %bb.e
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.f ], [ %i.ao, %bb.e ]
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !1503

_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !62, !alias.scope !1507, !noalias !1504
  store ptr null, ptr %i.y, align 8, !tbaa !63, !alias.scope !1507, !noalias !1504
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !62, !alias.scope !1504, !noalias !1507
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !1015, !alias.scope !1507, !noalias !1504
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1503

_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !60
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !49
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute16MapLookupOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.592", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !1509
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !27
  store i8 0, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !28
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.arrow::EqualOptions", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1511 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !1513
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !1513
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1514 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %i.f
  %.val.i4.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !73 ; 3 uses
  %.val3.i5.i.i.i.i = load ptr, ptr %i.h, align 8 ; 3 uses
  %i.i = icmp ne ptr %.val.i4.i.i.i.i, null
  %i.j = icmp ne ptr %.val3.i5.i.i.i.i, null
  %or.cond.i.i.i.i.i.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 256, ptr %i.k, align 8, !alias.scope !1516
  store double 1.000000e-05, ptr %3, align 8, !tbaa !1519, !alias.scope !1516
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.l, align 8, !tbaa !1521, !alias.scope !1516
  %i.m = call noundef zeroext i1 @_ZNK5arrow6Scalar6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(41) %.val.i4.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(41) %.val3.i5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN5arrow7compute8internal11CompareImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_SH_RKT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  br label %_ZN5arrow7compute8internal11CompareImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_SH_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_SH_RKT_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi i1 [ %i.m, %bb.b ], [ %i.n, %bb.c ]
  %i.o = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %narrow = select i1 %.0.i.i.i.i.i.i, i1 %i.o, i1 false
  ret i1 %narrow
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28, !noalias !1522 ; 5 uses
  invoke void @_ZN5arrow7compute16MapLookupOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1522

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #29, !noalias !1522
  resume { ptr, i32 } %i.b

_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1511 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1513
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i32 %i.f, ptr %i.g, align 4, !tbaa !1513
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1514 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63   ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !1514
  br label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.s = phi i64 [ %i.i, %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ], [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i, %bb.e ]
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63   ; 8 uses
  store <2 x ptr> %i.m, ptr %i.t, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.w, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !68
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !1525
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !1525
  br label %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
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
  br i1 %i.ak, label %bb.k, label %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit, !prof !70

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27
  br label %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEPSN_ISA_SaISA_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.606", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !1509
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1526
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1528
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_16MapLookupOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !175, !noalias !1529 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !175, !alias.scope !1529
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16MapLookupOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !1532
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16MapLookupOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.607", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28, !noalias !1535 ; 8 uses
  invoke void @_ZN5arrow7compute16MapLookupOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1535

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #29, !noalias !1535
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !1538
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !276
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16MapLookupOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16MapLookupOptionsEEclINS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16MapLookupOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_16MapLookupOptions10OccurrenceEjEENS_6ResultIT_EET0_:.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !tbaa !28, !noalias !1615
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1615
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1615
  call void @_ZN5arrow6ResultINS_7compute16MapLookupOptions10OccurrenceEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.u = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e
  %i.v = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.x = load i64, ptr %i.c, align 8, !tbaa !28
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.aa = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute21MatchSubstringOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.621", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !1620
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !27
  store i8 0, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !28
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1622 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SJ_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SJ_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SJ_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SJ_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1624 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i4.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !252, !range !10, !noundef !11
  %.val3.i5.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !252, !range !10, !noundef !11
  %i.o = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %i.p = and i1 %i.j, %i.o
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.632", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !1626 ; 6 uses
  invoke void @_ZN5arrow7compute21MatchSubstringOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1626

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.l, %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !1626
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !1629
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !1620
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_21MatchSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !1629
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1631, !nonnull !11, !align !303
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1624 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !252, !range !10, !noundef !11
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i8 %i.j, ptr %i.k, align 1, !tbaa !252
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(49) %i.a) #27, !inline_history !1632
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSP_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.635", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !1620
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1633
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1635
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !175, !noalias !1636 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !175, !alias.scope !1636
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !1639
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.636", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !1642 ; 8 uses
  invoke void @_ZN5arrow7compute21MatchSubstringOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1642

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !1642
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !1645
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !276
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
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !175, !noalias !1647 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !175, !alias.scope !1647
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.k = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute21MatchSubstringOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute21MatchSubstringOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(49) %i.a) #27, !inline_history !1632
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %i.a to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute21MatchSubstringOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_11NullOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m:bb.a
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i.i55 = phi i32 [ %i.fa, %bb.bg ], [ %i.fk, %bb.bh ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i.i.i55, 1
  br i1 %i.fl, label %bb.bi, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !70

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54, %bb.be, %bb.bc
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !175
  %.not.i.i56 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !331

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.bb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIbED2Ev.exit:                     ; preds = %bb.as, %.body35, %bb.aq
  %.pn11 = phi { ptr, i32 } [ %i.ds, %bb.aq ], [ %eh.lpad-body36, %.body35 ], [ %eh.lpad-body36, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit, %.body
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIbED2Ev.exit ], [ %eh.lpad-body, %.body ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN5arrow8FieldRefD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.bk
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bk ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bu, %_ZN5arrow8FieldRefD2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute10PadOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.667", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !1749
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !27
  store i8 0, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !27
  store i8 0, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1751 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !34
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !34
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1753 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 2 uses
  %.val.i6.i.i.i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i7.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !27
  %i.l = icmp eq i64 %.val3.i7.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.l, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %.val3.i7.i.i.i.i, 0
  br i1 %i.m, label %_ZN5arrow7compute8internal11CompareImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i6.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i7.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.n = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  %3 = select i1 %i.n, i1 %i.e, i1 false
  br label %_ZN5arrow7compute8internal11CompareImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i1 [ false, %bb.a ], [ %3, %bb.c ], [ %i.e, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1755 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i8.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !252, !range !10, !noundef !11
  %.val3.i9.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !252, !range !10, !noundef !11
  %i.t = icmp eq i8 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %4 = select i1 %i.t, i1 %i.o, i1 false
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.678", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !1757 ; 7 uses
  invoke void @_ZN5arrow7compute10PadOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(57) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1757

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.q, %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #29, !noalias !1757
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !1760
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !1749
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1751 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store i64 %i.g, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = load ptr, ptr %3, align 8, !tbaa !1760
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !1762, !nonnull !11, !align !303
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1755 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !252, !range !10, !noundef !11
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  store i8 %i.o, ptr %i.p, align 1, !tbaa !252
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(57) %i.a) #27, !inline_history !1763
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISC_SaISC_EEPSQ_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.681", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !1749
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !1764
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !1766
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_10PadOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !1767 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !175, !alias.scope !1767
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_10PadOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !1770
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_10PadOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.695", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !1773 ; 8 uses
  invoke void @_ZN5arrow7compute10PadOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(57) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1773

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #29, !noalias !1773
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !1776
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
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
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_10PadOptionsEED2Ev.exit: ; preds = %.noexc5.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !1778 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !175, !alias.scope !1778
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_10PadOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.l = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute10PadOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute10PadOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(57) %i.a) #27, !inline_history !1763
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_10PadOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = ptrtoint ptr %i.a to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit12

end_hunk_6
begin_hunk_7_@_ZN5arrow6ResultIlEC2ERKNS_6StatusE:bb.a
bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.as = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.av = load i64, ptr %i.at, align 8, !tbaa !28
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
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
  call void @__clang_call_terminate(ptr %i.ay) #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute19ReplaceSliceOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.709", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !1870
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !27
  store i8 0, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !27
  store i8 0, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1872 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !34
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !34
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1872 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i6.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %.val3.i7.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !34
  %i.j = icmp eq i64 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %3 = select i1 %i.j, i1 %i.e, i1 false          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1874 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l ; 2 uses
  %.val.i8.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val3.i9.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !27
  %i.q = icmp eq i64 %.val3.i9.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %.val3.i9.i.i.i.i, 0
  br i1 %i.r, label %_ZN5arrow7compute8internal11CompareImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i8.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i9.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.s = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  %4 = select i1 %i.s, i1 %3, i1 false
  br label %_ZN5arrow7compute8internal11CompareImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = phi i1 [ false, %bb.a ], [ %4, %bb.c ], [ %3, %bb.b ]
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.720", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !1876 ; 8 uses
  invoke void @_ZN5arrow7compute19ReplaceSliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1876

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.o, %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #29, !noalias !1876
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !1879
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !1870
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1872 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.f
  store i64 %i.h, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1872 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !34
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  store i64 %i.m, ptr %i.n, align 8, !tbaa !34
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #27, !inline_history !1881
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISC_SaISC_EEPSP_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.723", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !1870
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !1882
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !1884
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !1885 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !175, !alias.scope !1885
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !1888
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.724", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !1891 ; 8 uses
  invoke void @_ZN5arrow7compute19ReplaceSliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1891

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #29, !noalias !1891
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !1894
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
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
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit: ; preds = %.noexc5.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !1896 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !175, !alias.scope !1896
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.l = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute19ReplaceSliceOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute19ReplaceSliceOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #27, !inline_history !1881
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = ptrtoint ptr %i.a to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !281
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m:bb.a

bb.bm:                                            ; preds = %bb.bl
  %i.gw = add nsw i32 %i.gn, -1
  store i32 %i.gw, ptr %i.gk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58

bb.bn:                                            ; preds = %bb.bl
  %i.gx = atomicrmw volatile add ptr %i.gk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i.i.i59 = phi i32 [ %i.gn, %bb.bm ], [ %i.gx, %bb.bn ]
  %i.gy = icmp eq i32 %.0.i.i.i.i.i.i.i59, 1
  br i1 %i.gy, label %bb.bo, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !70

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58, %bb.bk, %bb.bi
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !175
  %.not.i.i60 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i60, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !331

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.bh
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bp

bb.bp:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

bb.bq:                                            ; preds = %.body35, %bb.aq
  %.pn11 = phi { ptr, i32 } [ %eh.lpad-body36, %.body35 ], [ %i.dt, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.body
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.bq ], [ %eh.lpad-body, %.body ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN5arrow8FieldRefD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.br
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.br ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bu, %_ZN5arrow8FieldRefD2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute23ReplaceSubstringOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.734", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !1942
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !27
  store i8 0, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !27
  store i8 0, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1944 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i

_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1944 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l ; 2 uses
  %.val.i6.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val3.i7.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !27 ; 3 uses
  %.val4.i8.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val5.i9.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !27
  %i.q = icmp eq i64 %.val3.i7.i.i.i.i, %.val5.i9.i.i.i.i
  br i1 %i.q, label %bb.d, label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_SJ_RKT_.exit

bb.d:                                             ; preds = %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i
  %i.r = icmp eq i64 %.val3.i7.i.i.i.i, 0
  br i1 %i.r, label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_SJ_RKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %bcmp.i.i.i10.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i6.i.i.i.i, ptr readonly %.val4.i8.i.i.i.i, i64 %.val3.i7.i.i.i.i)
  %bcmp.i.i.fr.i13.i.i.i.i = freeze i32 %bcmp.i.i.i10.i.i.i.i
  %i.s = icmp eq i32 %bcmp.i.i.fr.i13.i.i.i.i, 0
  %i.t = and i1 %i.j, %i.s
  br label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_SJ_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_SJ_RKT_.exit: ; preds = %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i, %bb.d, %bb.e
  %i.u = phi i1 [ false, %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i ], [ %i.t, %bb.e ], [ %i.j, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1946 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.w
  %.val.i12.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !34
  %.val3.i13.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !34
  %i.z = icmp eq i64 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %i.aa = and i1 %i.u, %i.z
  ret i1 %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.745", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #28, !noalias !1948 ; 6 uses
  invoke void @_ZN5arrow7compute23ReplaceSubstringOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1948

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit6, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.m, %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #29, !noalias !1948
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !1951
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !1942
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit6

.noexc:                                           ; preds = %_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit6

_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %.noexc
  %i.f = load ptr, ptr %3, align 8, !tbaa !1951
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !1953, !nonnull !11, !align !303
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1946 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  store i64 %i.k, ptr %i.l, align 8, !tbaa !34
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit6: ; preds = %.noexc, %_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(88) %i.a) #27, !inline_history !1954
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSP_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.748", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !1942
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !1955
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !1957
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !1958 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !175, !alias.scope !1958
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !1961
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.749", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #28, !noalias !1964 ; 8 uses
  invoke void @_ZN5arrow7compute23ReplaceSubstringOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1964

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #29, !noalias !1964
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !1967
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
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
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit: ; preds = %.noexc5.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !1969 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !175, !alias.scope !1969
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.l = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute23ReplaceSubstringOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute23ReplaceSubstringOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
end_hunk_8
begin_hunk_9_@_ZNK5arrow6Status11WithMessageIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_:bb.a
  br i1 %.not.i10, label %_ZN5arrow6StatusD2Ev.exit11, label %bb.s, !prof !178

bb.s:                                             ; preds = %bb.r
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN5arrow6StatusD2Ev.exit11

_ZN5arrow6StatusD2Ev.exit11:                      ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357, !nonnull !11, !align !303 ; 6 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !34
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !288
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc
  %i.f = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #27
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.f)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(24) %4) #27
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(24) %4, i64 noundef %i.h)
          to label %.noexc9 unwind label %bb.c    ; 0 uses

.noexc9:                                          ; preds = %.noexc8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #27
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.j)
          to label %.noexc10 unwind label %bb.c   ; 0 uses

.noexc10:                                         ; preds = %.noexc9
  %i.l = load ptr, ptr %6, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc10
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute12RoundOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.757", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !2020
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !27
  store i8 0, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !28
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2022 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !34
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !34
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2024 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !2026
  %.val3.i5.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !2026
  %i.j = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = select i1 %i.j, i1 %i.e, i1 false
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !2027 ; 5 uses
  invoke void @_ZN5arrow7compute12RoundOptionsC1ElNS0_9RoundModeE(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i64 noundef 0, i8 noundef signext 8)
          to label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2027

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29, !noalias !2027
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2022 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2024 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !2026
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !2026
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.771", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !2020
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !2030
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !2032
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_12RoundOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !175, !noalias !2033 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !175, !alias.scope !2033
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12RoundOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !2036
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12RoundOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.784", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !2039 ; 8 uses
  invoke void @_ZN5arrow7compute12RoundOptionsC1ElNS0_9RoundModeE(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i64 noundef 0, i8 noundef signext 8)
          to label %_ZSt11make_uniqueIN5arrow7compute12RoundOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2039

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29, !noalias !2039
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute12RoundOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !2042
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !276
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
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_12RoundOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !175, !noalias !2044 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !175, !alias.scope !2044
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12RoundOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.k = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute12RoundOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute12RoundOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(25) %i.a) #27, !inline_history !2047
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12RoundOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %i.a to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute12RoundOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(25) %i.a) #27, !inline_history !2047
  br label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute12RoundOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.196)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !21, !alias.scope !2048
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_9
begin_hunk_10_@_ZNK5arrow6Status11WithMessageIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_:bb.a
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ai, %bb.n ], [ %i.as, %bb.o ]
  %i.at = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.at, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !70

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #27
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.au = load ptr, ptr %9, align 8, !tbaa !175
  %.not.i9 = icmp eq ptr %i.au, null
  br i1 %.not.i9, label %_ZN5arrow6StatusD2Ev.exit, label %bb.q, !prof !178

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret void

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  %i.aw = load ptr, ptr %9, align 8, !tbaa !175
  %.not.i10 = icmp eq ptr %i.aw, null
  br i1 %.not.i10, label %_ZN5arrow6StatusD2Ev.exit11, label %bb.s, !prof !178

bb.s:                                             ; preds = %bb.r
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN5arrow6StatusD2Ev.exit11

_ZN5arrow6StatusD2Ev.exit11:                      ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(19) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357, !nonnull !11, !align !303 ; 6 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !34
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !288
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc
  %i.f = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #27
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.f)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(19) %4) #27
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(19) %4, i64 noundef %i.h)
          to label %.noexc9 unwind label %bb.c    ; 0 uses

.noexc9:                                          ; preds = %.noexc8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #27
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.j)
          to label %.noexc10 unwind label %bb.c   ; 0 uses

.noexc10:                                         ; preds = %.noexc9
  %i.l = load ptr, ptr %6, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc10
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute20RoundTemporalOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.830", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_NS0_12CalendarUnitEEENS8_IS3_bEESC_SC_EEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESK_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2185 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !3
  %i.e = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2187 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i10.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !2189
  %.val3.i11.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !2189
  %i.j = icmp eq i8 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2190 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i12.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !252, !range !10, !noundef !11
  %.val3.i13.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !252, !range !10, !noundef !11
  %i.o = icmp eq i8 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2190 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i14.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !252, !range !10, !noundef !11
  %.val3.i15.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !252, !range !10, !noundef !11
  %i.t = icmp eq i8 %.val.i14.i.i.i.i, %.val3.i15.i.i.i.i
  %i.u = and i1 %i.o, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !2190 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.w
  %.val.i16.i.i.i.i = load i8, ptr %i.x, align 1, !tbaa !252, !range !10, !noundef !11
  %.val3.i17.i.i.i.i = load i8, ptr %i.y, align 1, !tbaa !252, !range !10, !noundef !11
  %i.z = icmp eq i8 %.val.i16.i.i.i.i, %.val3.i17.i.i.i.i
  %i.aa = and i1 %i.u, %i.z
  %3 = select i1 %i.aa, i1 %i.j, i1 false
  %narrow = select i1 %3, i1 %i.e, i1 false
  ret i1 %narrow
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !2192 ; 8 uses
  invoke void @_ZN5arrow7compute20RoundTemporalOptionsC1EiNS0_12CalendarUnitEbbb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 1, i8 noundef signext 6, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2192

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #29, !noalias !2192
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2185 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i32 %i.f, ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2187 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !2189
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !2189
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !2190 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !252, !range !10, !noundef !11
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  store i8 %i.p, ptr %i.q, align 1, !tbaa !252
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !2190 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !252, !range !10, !noundef !11
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.s
  store i8 %i.u, ptr %i.v, align 1, !tbaa !252
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !2190 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !252, !range !10, !noundef !11
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !252
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EEPSL_ISt10shared_ptrINS_6ScalarEESaISX_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow7compute8internal18ToStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.845", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_20RoundTemporalOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_NS0_12CalendarUnitEEENS8_IS3_bEESC_SC_EEEEERKS3_RKT_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EEPSJ_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %3, ptr noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !2195 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !175, !alias.scope !2195
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !2198
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.857", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !2201 ; 8 uses
  invoke void @_ZN5arrow7compute20RoundTemporalOptionsC1EiNS0_12CalendarUnitEbbb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 1, i8 noundef signext 6, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZSt11make_uniqueIN5arrow7compute20RoundTemporalOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2201

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #29, !noalias !2201
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute20RoundTemporalOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_20RoundTemporalOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_NS0_12CalendarUnitEEENS8_IS3_bEESC_SC_EEEEEPS3_RKNS_12StructScalarERKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute20RoundTemporalOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !2204 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !175, !alias.scope !2204
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.c, !prof !178

bb.c:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.g = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute20RoundTemporalOptionsEEclEPS2_.exit.i9, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute20RoundTemporalOptionsEEclEPS2_.exit.i9

_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute20RoundTemporalOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27, !inline_history !2207
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = ptrtoint ptr %i.a to i64
  store i64 %i.m, ptr %i.l, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit10

_ZNKSt14default_deleteIN5arrow7compute20RoundTemporalOptionsEEclEPS2_.exit.i9: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27, !inline_history !2207
  br label %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit10

_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit10: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute20RoundTemporalOptionsEEclEPS2_.exit.i9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_NS0_12CalendarUnitEEENS8_IS3_bEESC_SC_EEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(120) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr %1, ptr %0, align 8, !tbaa !2208
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28 ; 18 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !27
  store i8 0, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.l, align 8, !tbaa !27
  store i8 0, ptr %i.k, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %i.o, align 8, !tbaa !27
  store i8 0, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 0, ptr %i.r, align 8, !tbaa !27
  store i8 0, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEEclINS_8internal18DataMemberPropertyIS3_iEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef 0)
          to label %.noexc7 unwind label %bb.a

.noexc7:                                          ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_12CalendarUnitEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef 1)
          to label %.noexc8 unwind label %bb.a
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_12CalendarUnitEaEENS_6ResultIT_EET0_:.critedge
  call void @_ZN5arrow6ResultINS_7compute12CalendarUnitEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  %i.j = load ptr, ptr %2, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !178

bb.c:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RaEEES0_DpOT_.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RaEEES0_DpOT_.exit, %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.m = load i64, ptr %i.c, align 8, !tbaa !28
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.r = load i64, ptr %i.c, align 8, !tbaa !28
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.o

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute22RoundToMultipleOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.876", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !2324
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !27
  store i8 0, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !28
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.arrow::EqualOptions", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2326 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !73 ; 3 uses
  %.val3.i.i.i.i.i = load ptr, ptr %i.d, align 8  ; 3 uses
  %i.e = icmp ne ptr %.val.i.i.i.i.i, null
  %i.f = icmp ne ptr %.val3.i.i.i.i.i, null
  %or.cond.i.i.i.i.i.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 256, ptr %i.g, align 8, !alias.scope !2328
  store double 1.000000e-05, ptr %3, align 8, !tbaa !1519, !alias.scope !2328
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !1521, !alias.scope !2328
  %i.i = call noundef zeroext i1 @_ZNK5arrow6Scalar6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(41) %.val.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(41) %.val3.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN5arrow7compute8internal11CompareImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_SH_RKT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  br label %_ZN5arrow7compute8internal11CompareImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_SH_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_SH_RKT_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi i1 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2331 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i4.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !2026
  %.val3.i5.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !2026
  %i.o = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %4 = select i1 %i.o, i1 %.0.i.i.i.i.i.i, i1 false
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28, !noalias !2333 ; 5 uses
  invoke void @_ZN5arrow7compute22RoundToMultipleOptionsC1EdNS0_9RoundModeE(ptr noundef nonnull align 8 dereferenceable(33) %i.a, double noundef 1.000000e+00, i8 noundef signext 8)
          to label %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2333

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #29, !noalias !2333
  resume { ptr, i32 } %i.b

_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2326 ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !2326
  br label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.n = phi i64 [ %i.d, %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ], [ %i.d, %bb.d ], [ %.pre.i.i.i.i.i, %bb.e ]
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63   ; 8 uses
  store <2 x ptr> %i.h, ptr %i.o, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !68
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27, !inline_history !2336
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27, !inline_history !2336
  br label %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
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
  br i1 %i.af, label %bb.k, label %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit, !prof !70

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27
  br label %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !2331 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !2026
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %i.ah
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !2026
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEPSN_IS8_SaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.890", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !2324
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !2337
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !2339
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_22RoundToMultipleOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !175, !noalias !2340 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !175, !alias.scope !2340
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_22RoundToMultipleOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !2343
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_22RoundToMultipleOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.891", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28, !noalias !2346 ; 8 uses
  invoke void @_ZN5arrow7compute22RoundToMultipleOptionsC1EdNS0_9RoundModeE(ptr noundef nonnull align 8 dereferenceable(33) %i.a, double noundef 1.000000e+00, i8 noundef signext 8)
          to label %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2346

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #29, !noalias !2346
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !2349
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !276
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_22RoundToMultipleOptionsEEclINS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_22RoundToMultipleOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_9RoundModeEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_22RoundToMultipleOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_16SetLookupOptions20NullMatchingBehaviorEjEENS_6ResultIT_EET0_:.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !2566
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !2566
  call void @_ZN5arrow6ResultINS_7compute16SetLookupOptions20NullMatchingBehaviorEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.t = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e
  %i.u = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.w = load i64, ptr %i.c, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.z = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute12SliceOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.933", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !2571
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !27
  store i8 0, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !27
  store i8 0, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_S9_EEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_S9_EEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_S9_EEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESH_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2573 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !34
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !34
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2573 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i6.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %.val3.i7.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !34
  %i.j = icmp eq i64 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2573 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i8.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !34
  %.val3.i9.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !34
  %i.o = icmp eq i64 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %3 = select i1 %i.o, i1 %i.j, i1 false
  %4 = select i1 %3, i1 %i.e, i1 false
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28, !noalias !2575 ; 6 uses
  invoke void @_ZN5arrow7compute12SliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2575

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #29, !noalias !2575
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2573 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2573 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i64 %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !2573 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  store i64 %i.p, ptr %i.q, align 8, !tbaa !34
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EEPSI_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.947", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !2571
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !2578
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !2580
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SliceOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2581)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !2581 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !175, !alias.scope !2581
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SliceOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !2584
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SliceOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.948", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28, !noalias !2587 ; 8 uses
  invoke void @_ZN5arrow7compute12SliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute12SliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2587

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #29, !noalias !2587
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute12SliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2590
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
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
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEED2Ev.exit: ; preds = %.noexc5.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !2592 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !175, !alias.scope !2592
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.l = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute12SliceOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute12SliceOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27, !inline_history !2595
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = ptrtoint ptr %i.a to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute12SliceOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27, !inline_history !2595
  br label %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute12SliceOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m:bb.a
bb.bb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  %i.et = load ptr, ptr %5, align 8, !tbaa !175
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.bc, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !178

bb.bc:                                            ; preds = %bb.bb
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i.i52, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.ex, align 8, !tbaa !66
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !68
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27, !inline_history !330
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27, !inline_history !330
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i53 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i.i.i.i53, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54

bb.bh:                                            ; preds = %bb.bf
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i.i55 = phi i32 [ %i.fa, %bb.bg ], [ %i.fk, %bb.bh ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i.i.i55, 1
  br i1 %i.fl, label %bb.bi, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !70

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54, %bb.be, %bb.bc
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !175
  %.not.i.i56 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !331

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.bb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %bb.as, %.body35, %bb.aq
  %.pn11 = phi { ptr, i32 } [ %i.ds, %bb.aq ], [ %eh.lpad-body36, %.body35 ], [ %eh.lpad-body36, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %.body
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIlED2Ev.exit ], [ %eh.lpad-body, %.body ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN5arrow8FieldRefD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.bk
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bk ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bu, %_ZN5arrow8FieldRefD2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute16ListSliceOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.960", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St8optionalIlEEES9_NS8_IS3_SA_IbEEEEEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(50) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2622 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !34
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !34
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2624 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 2 uses
  %.val.i8.i.i.i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i9.i.i.i.i = load i8, ptr %i.j, align 8, !tbaa !2626, !range !10, !noundef !11 ; 2 uses
  %.val4.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val5.i.i.i.i.i = load i8, ptr %i.k, align 8, !tbaa !2626, !range !10, !noundef !11
  %i.l = trunc nuw i8 %.val3.i9.i.i.i.i to i1
  %i.m = icmp eq i8 %.val3.i9.i.i.i.i, %.val5.i.i.i.i.i ; 2 uses
  %brmerge.not.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  %i.n = icmp eq i64 %.val.i8.i.i.i.i, %.val4.i.i.i.i.i
  %i.o = select i1 %brmerge.not.i.i.i.i.i.i.i, i1 %i.n, i1 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2622 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i10.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !34
  %.val3.i11.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !34
  %i.t = icmp eq i64 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !2627 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.v ; 2 uses
  %.val.i12.i.i.i.i = load i8, ptr %i.w, align 1
  %i.y = getelementptr i8, ptr %i.w, i64 1
  %.val3.i13.i.i.i.i = load i8, ptr %i.y, align 1, !tbaa !7, !range !10, !noundef !11 ; 2 uses
  %.val4.i14.i.i.i.i = load i8, ptr %i.x, align 1
  %i.z = getelementptr i8, ptr %i.x, i64 1
  %.val5.i15.i.i.i.i = load i8, ptr %i.z, align 1, !tbaa !7, !range !10, !noundef !11
  %i.aa = trunc nuw i8 %.val3.i13.i.i.i.i to i1
  %i.ab = icmp eq i8 %.val3.i13.i.i.i.i, %.val5.i15.i.i.i.i ; 2 uses
  %brmerge.not.i.i.i16.i.i.i.i = and i1 %i.ab, %i.aa
  %i.ac = icmp eq i8 %.val.i12.i.i.i.i, %.val4.i14.i.i.i.i
  %3 = select i1 %brmerge.not.i.i.i16.i.i.i.i, i1 %i.ac, i1 %i.ab
  %4 = select i1 %3, i1 %i.t, i1 false
  %i.ad = select i1 %4, i1 %i.o, i1 false
  %narrow5 = select i1 %i.ad, i1 %i.e, i1 false
  ret i1 %narrow5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !2629 ; 7 uses
  invoke void @_ZN5arrow7compute16ListSliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(50) %i.a)
          to label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2629

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !2629
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2622 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2624 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %.sroa.2.0.copyload.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2622 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.m
  store i64 %i.o, ptr %i.p, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !2627 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  %.sroa.0.0.copyload.i8.i.i.i.i = load i16, ptr %i.s, align 1
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.r
  store i16 %.sroa.0.0.copyload.i8.i.i.i.i, ptr %i.t, align 1
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEPSN_ISt10shared_ptrINS_6ScalarEESaISZ_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.975", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !2632
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !2634
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !2636
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
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.h

_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit: ; preds = %.noexc7.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !2637 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !175, !alias.scope !2637
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !2640
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.976", align 8 ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !2643 ; 8 uses
  invoke void @_ZN5arrow7compute16ListSliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(50) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute16ListSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2643

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.i, %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !2643
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute16ListSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2646
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
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
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !2648 ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !175, !alias.scope !2648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.m = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute16ListSliceOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute16ListSliceOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(50) %i.a) #27, !inline_history !2651
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = ptrtoint ptr %i.a to i64
  store i64 %i.r, ptr %i.q, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit12
end_hunk_13
begin_hunk_14_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalIbEEEEEvRKT_m:bb.a
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i56

bb.bl:                                            ; preds = %bb.bj
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i56

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i56: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i57 = phi i32 [ %i.fn, %bb.bk ], [ %i.fx, %bb.bl ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i.i.i57, 1
  br i1 %i.fy, label %bb.bm, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !70

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i56
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i56, %bb.bi, %bb.bg
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !175
  %.not.i.i58 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i58, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !331

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.bf
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.bn

bb.bn:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultISt8optionalIbEED2Ev.exit:        ; preds = %bb.av, %.body36, %bb.at
  %.pn11 = phi { ptr, i32 } [ %i.eh, %bb.at ], [ %eh.lpad-body37, %.body36 ], [ %eh.lpad-body37, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN5arrow6ResultISt8optionalIbEED2Ev.exit, %.body
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultISt8optionalIbEED2Ev.exit ], [ %eh.lpad-body, %.body ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN5arrow8FieldRefD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.bo
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bo ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bu, %_ZN5arrow8FieldRefD2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn11.pn.pn
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute19SplitPatternOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.996", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !2739
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !27
  store i8 0, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !27
  store i8 0, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2741 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2743 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i6.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !34
  %.val3.i7.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !34
  %i.o = icmp eq i64 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2745 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i8.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !252, !range !10, !noundef !11
  %.val3.i9.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !252, !range !10, !noundef !11
  %i.t = icmp eq i8 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %3 = select i1 %i.t, i1 %i.o, i1 false
  %i.u = and i1 %i.j, %3
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1007", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !2747 ; 6 uses
  invoke void @_ZN5arrow7compute19SplitPatternOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(57) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2747

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.q, %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #29, !noalias !2747
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !2750
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !2739
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !2750   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !2752, !nonnull !11, !align !303 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2743 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i64 %i.j, ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2745 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !252, !range !10, !noundef !11
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.m
  store i8 %i.o, ptr %i.p, align 1, !tbaa !252
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(57) %i.a) #27, !inline_history !2753
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSQ_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1010", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !2739
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !2754
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !2756
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !2757 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !175, !alias.scope !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !2760
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1011", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !2763 ; 8 uses
  invoke void @_ZN5arrow7compute19SplitPatternOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(57) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2763

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #29, !noalias !2763
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2766
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
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
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit: ; preds = %.noexc5.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2768)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !2768 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !175, !alias.scope !2768
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.l = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute19SplitPatternOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute19SplitPatternOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(57) %i.a) #27, !inline_history !2753
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = ptrtoint ptr %i.a to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit12

end_hunk_14
begin_hunk_15_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !68
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27, !inline_history !330
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27, !inline_history !330
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i53 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i.i.i.i53, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54

bb.bh:                                            ; preds = %bb.bf
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i.i55 = phi i32 [ %i.fa, %bb.bg ], [ %i.fk, %bb.bh ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i.i.i55, 1
  br i1 %i.fl, label %bb.bi, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !70

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54, %bb.be, %bb.bc
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !175
  %.not.i.i56 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !331

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.bb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIbED2Ev.exit:                     ; preds = %bb.as, %.body35, %bb.aq
  %.pn11 = phi { ptr, i32 } [ %i.ds, %bb.aq ], [ %eh.lpad-body36, %.body35 ], [ %eh.lpad-body36, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit, %.body
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIbED2Ev.exit ], [ %eh.lpad-body, %.body ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN5arrow8FieldRefD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.bk
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bk ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bu, %_ZN5arrow8FieldRefD2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute12SplitOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1019", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !2832
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !27
  store i8 0, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !28
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESI_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2834 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !34
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !34
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2836 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !252, !range !10, !noundef !11
  %.val3.i5.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !252, !range !10, !noundef !11
  %i.j = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %narrow = select i1 %i.j, i1 %i.e, i1 false
  ret i1 %narrow
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !2838 ; 5 uses
  invoke void @_ZN5arrow7compute12SplitOptionsC1Elb(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i64 noundef -1, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2838

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29, !noalias !2838
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2834 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2836 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !252, !range !10, !noundef !11
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !252
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EEPSJ_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1033", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !2832
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !2841
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !2843
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SplitOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !175, !noalias !2844 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !175, !alias.scope !2844
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SplitOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !2847
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SplitOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1034", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !2850 ; 8 uses
  invoke void @_ZN5arrow7compute12SplitOptionsC1Elb(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i64 noundef -1, i1 noundef zeroext false)
          to label %_ZSt11make_uniqueIN5arrow7compute12SplitOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2850

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29, !noalias !2850
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute12SplitOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !2853
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !276
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
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !175, !noalias !2855 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !175, !alias.scope !2855
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.k = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute12SplitOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute12SplitOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(25) %i.a) #27, !inline_history !2858
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %i.a to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute12SplitOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(25) %i.a) #27, !inline_history !2858
  br label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute12SplitOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.196)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !21, !alias.scope !2859
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 3 uses
end_hunk_15
begin_hunk_16_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m:bb.a
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.ex, align 8, !tbaa !66
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !68
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27, !inline_history !330
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27, !inline_history !330
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i53 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i.i.i.i53, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54

bb.bh:                                            ; preds = %bb.bf
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i.i55 = phi i32 [ %i.fa, %bb.bg ], [ %i.fk, %bb.bh ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i.i.i55, 1
  br i1 %i.fl, label %bb.bi, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !70

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54, %bb.be, %bb.bc
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !175
  %.not.i.i56 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !331

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.bb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIbED2Ev.exit:                     ; preds = %bb.as, %.body35, %bb.aq
  %.pn11 = phi { ptr, i32 } [ %i.ds, %bb.aq ], [ %eh.lpad-body36, %.body35 ], [ %eh.lpad-body36, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit, %.body
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIbED2Ev.exit ], [ %eh.lpad-body, %.body ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN5arrow8FieldRefD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.bk
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bk ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bu, %_ZN5arrow8FieldRefD2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute15StrftimeOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1040", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !2904
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !51
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %bb.a
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !28
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2906 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1051", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28, !noalias !2908 ; 6 uses
  invoke void @_ZN5arrow7compute15StrftimeOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2908

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #29, !noalias !2908
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !2911
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !2904
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_15StrftimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #27, !inline_history !2913
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSO_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1054", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !2904
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !2914
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !2916
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrftimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !2917 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !175, !alias.scope !2917
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !2920
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1055", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28, !noalias !2923 ; 8 uses
  invoke void @_ZN5arrow7compute15StrftimeOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2923

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #29, !noalias !2923
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2926
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !2928 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !175, !alias.scope !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.j = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute15StrftimeOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute15StrftimeOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #27, !inline_history !2913
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = ptrtoint ptr %i.a to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute15StrftimeOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #27, !inline_history !2913
  br label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute15StrftimeOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.196)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !21, !alias.scope !2931
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
end_hunk_16
begin_hunk_17_@_ZN5arrow4util13StringBuilderIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_:bb.a
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357, !nonnull !11, !align !303 ; 6 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !34
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !288
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc
  %i.f = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #27
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.f)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %4) #27
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 noundef %i.h)
          to label %.noexc9 unwind label %bb.c    ; 0 uses

.noexc9:                                          ; preds = %.noexc8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #27
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.j)
          to label %.noexc10 unwind label %bb.c   ; 0 uses

.noexc10:                                         ; preds = %.noexc9
  %i.l = load ptr, ptr %6, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc10
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute15StrptimeOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1065", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !2964
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !27
  store i8 0, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !27
  store i8 0, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESR_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2966 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_SM_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_SM_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_SM_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_SM_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2968 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i6.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !2970
  %.val3.i7.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !2970
  %i.o = icmp eq i32 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2971 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i8.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !252, !range !10, !noundef !11
  %.val3.i9.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !252, !range !10, !noundef !11
  %i.t = icmp eq i8 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %3 = select i1 %i.t, i1 %i.o, i1 false
  %i.u = and i1 %i.j, %3
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1076", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !2973 ; 6 uses
  invoke void @_ZN5arrow7compute15StrptimeOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(53) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2973

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.q, %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !2973
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !2976
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !2964
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !2976   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !2978, !nonnull !11, !align !303 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2968 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2970
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i32 %i.j, ptr %i.k, align 4, !tbaa !2970
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2971 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !252, !range !10, !noundef !11
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.m
  store i8 %i.o, ptr %i.p, align 1, !tbaa !252
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(53) %i.a) #27, !inline_history !2979
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSS_ISt10shared_ptrINS_6ScalarEESaISY_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1079", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !2964
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !2980
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !2982
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !2983 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !175, !alias.scope !2983
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !2986
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1080", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !2989 ; 8 uses
  invoke void @_ZN5arrow7compute15StrptimeOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(53) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2989

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !2989
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2992
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
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
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit: ; preds = %.noexc5.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2994)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !2994 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !175, !alias.scope !2994
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.l = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute15StrptimeOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute15StrptimeOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(53) %i.a) #27, !inline_history !2979
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = ptrtoint ptr %i.a to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit12

end_hunk_17
begin_hunk_18_@_ZN5arrow7compute8internal17ValidateEnumValueINS_8TimeUnit4typeEjEENS_6ResultIT_EET0_:.critedge
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !28, !noalias !3073
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !24, !noalias !3073 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !28, !noalias !3073
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !3073
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !3073
  call void @_ZN5arrow6ResultINS_8TimeUnit4typeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.q = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e
  %i.r = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.t = load i64, ptr %i.b, align 8, !tbaa !28
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.w = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.y = load i64, ptr %i.b, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute18StructFieldOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1092", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !3078
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !51
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit: ; preds = %bb.a
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !28
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %class.anon.1095, align 8           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3080 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i8 1, ptr %i.a, align 1, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.a, ptr %3, align 8, !tbaa !3082
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !3084
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEbRKSt7variantIJDpT_EESL_EUlOT_T0_E_JRKSG_IJS5_SB_SF_EEEEDcOSO_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.e), !inline_history !3086
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.g = load i8, ptr %i.a, align 1, !tbaa !252, !range !10, !noundef !11
  %4 = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1108", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !3087 ; 6 uses
  invoke void @_ZN5arrow7compute18StructFieldOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3087

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !3087
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !3090
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !3078
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #27, !inline_history !3092
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EEPSJ_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1117", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !3078
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !3093
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !3095
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3096)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !3096 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !175, !alias.scope !3096
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !3099
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1118", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !3102 ; 8 uses
  invoke void @_ZN5arrow7compute18StructFieldOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3102

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29, !noalias !3102
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !3105
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !3107 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !175, !alias.scope !3107
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.j = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #27, !inline_history !3092
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = ptrtoint ptr %i.a to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #27, !inline_history !3092
  br label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.196)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !21, !alias.scope !3110
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_18
begin_hunk_19_@_ZN5arrow6ResultINS_8FieldRefEEC2ERKNS_6StatusE:bb.a
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.as = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.av = load i64, ptr %i.at, align 8, !tbaa !28
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
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
  call void @__clang_call_terminate(ptr %i.ay) #30
  unreachable
}

declare void @_ZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.1119") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11TrimOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1128", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !3189
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !51
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %bb.a
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !28
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3191 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !27 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1139", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !3193 ; 6 uses
  invoke void @_ZN5arrow7compute11TrimOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3193

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #29, !noalias !3193
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !3196
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !3189
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_11TrimOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void

_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #27, !inline_history !3198
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSO_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1142", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !3189
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !3199
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !3201
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11TrimOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11TrimOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_ZN5arrow7compute8internal18ToStructScalarImplINS0_11TrimOptionsEED2Ev.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3202)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !175, !noalias !3202 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !175, !alias.scope !3202
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11TrimOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !3205
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11TrimOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1143", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !3208 ; 8 uses
  invoke void @_ZN5arrow7compute11TrimOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3208

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #29, !noalias !3208
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !3211
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !276
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11TrimOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11TrimOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_11TrimOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3213)
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !175, !noalias !3213 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !175, !alias.scope !3213
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11TrimOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.j = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute11TrimOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute11TrimOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #27, !inline_history !3198
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11TrimOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = ptrtoint ptr %i.a to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute11TrimOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #27, !inline_history !3198
  br label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute11TrimOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.196)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !21, !alias.scope !3216
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
end_hunk_19
begin_hunk_20_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_11WeekOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m:bb.a
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27, !inline_history !330
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i53 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i.i.i.i53, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54

bb.bh:                                            ; preds = %bb.bf
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i.i55 = phi i32 [ %i.fa, %bb.bg ], [ %i.fk, %bb.bh ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i.i.i55, 1
  br i1 %i.fl, label %bb.bi, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !70

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i54, %bb.be, %bb.bc
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !175
  %.not.i.i56 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !331

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.bb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIbED2Ev.exit:                     ; preds = %bb.as, %.body35, %bb.aq
  %.pn11 = phi { ptr, i32 } [ %i.ds, %bb.aq ], [ %eh.lpad-body36, %.body35 ], [ %eh.lpad-body36, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit, %.body
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIbED2Ev.exit ], [ %eh.lpad-body, %.body ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN5arrow8FieldRefD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.bk
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bk ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bu, %_ZN5arrow8FieldRefD2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute19FunctionOptionsTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute13RandomOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1203", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !3369
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !27
  store i8 0, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !51
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_11InitializerEEENS8_IS3_mEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_11InitializerEEENS8_IS3_mEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !28
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_11InitializerEEENS8_IS3_mEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3371 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3373
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !3373
  %i.e = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !3374 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %.val3.i5.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !34
  %i.j = icmp eq i64 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = select i1 %i.j, i1 %i.e, i1 false
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !3376 ; 5 uses
  invoke void @_ZN5arrow7compute13RandomOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !3376

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29, !noalias !3376
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3371 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3373
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i32 %i.f, ptr %i.g, align 4, !tbaa !3373
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3374 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i64 %i.k, ptr %i.l, align 8, !tbaa !34
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1217", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !3369
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !3379
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !3381
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_13RandomOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3382)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !175, !noalias !3382 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !175, !alias.scope !3382
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_13RandomOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !3385
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_13RandomOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1229", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !3388 ; 8 uses
  invoke void @_ZN5arrow7compute13RandomOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute13RandomOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3388

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29, !noalias !3388
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute13RandomOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !3391
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !276
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
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_13RandomOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3393)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !175, !noalias !3393 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !175, !alias.scope !3393
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.e, !prof !178

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_13RandomOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.k = load ptr, ptr %3, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute13RandomOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !178

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute13RandomOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #27, !inline_history !3396
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_13RandomOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %i.a to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute13RandomOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #27, !inline_history !3396
  br label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute13RandomOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.196)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !21, !alias.scope !3397
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_20
