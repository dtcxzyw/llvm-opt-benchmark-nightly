inline.NumInlined: 7609
inline.NumDeleted: 3292
begin_hunk_0_@_ZN5arrow6ResultIdEC2ERKNS_6StatusE:bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !72

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %4)
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
  %3 = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1369 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %2, i64 %i.f ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !71   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, %i.t
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.u = icmp eq ptr %i.j, %i.k
  br i1 %i.u, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit, label %.lr.ph.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = add nuw i64 %.01012.i.i.i.i.i.i, 1       ; 2 uses
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 48
  %.not15.i.i.i.i.i.i = icmp ult i64 %i.v, %i.ab
  br i1 %.not15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i, !llvm.loop !837

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %i.ac = phi ptr [ %i.x, %bb.b ], [ %i.k, %.preheader.i.i.i.i.i.i ]
  %.01012.i.i.i.i.i.i = phi i64 [ %i.v, %bb.b ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %.01012.i.i.i.i.i.i
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %.01012.i.i.i.i.i.i
  %i.ag = tail call noundef zeroext i1 @_ZNK5arrow7compute7SortKey6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(44) %i.ad, ptr noundef nonnull align 8 dereferenceable(44) %i.af) ; 2 uses
  br i1 %i.ag, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i

_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %4 = and i1 %3, %i.ag
  br label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit: ; preds = %bb.a, %.preheader.i.i.i.i.i.i, %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ %3, %.preheader.i.i.i.i.i.i ], [ %4, %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i ]
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
end_hunk_0
