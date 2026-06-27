inline.NumInlined: 2454
inline.NumDeleted: 1412
begin_hunk_0_@_ZSt16__do_uninit_copyIPKN5arrow5DatumEPS1_ET0_T_S6_S5_:bb.a
  store i8 -1, ptr %i.a, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %.016, ptr %3, align 8, !tbaa !225
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %.01215)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %.lr.ph
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %.016) #26
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = call ptr @__cxa_begin_catch(ptr %i.c) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5arrow5DatumEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.c unwind label %bb.d

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %.01215, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !223
  store i8 %i.f, ptr %i.a, align 8, !tbaa !223
  %i.g = getelementptr inbounds nuw i8, ptr %.01215, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.016, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.g, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !299

bb.c:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #27
          to label %bb.g unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.h, %bb.b ]
  ret ptr %.0.lcssa

bb.d:                                             ; preds = %bb.c, %.body
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #30
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN5arrow5DatumEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.177, align 1            ; 3 uses
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow5DatumEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i
  %.05.i = phi ptr [ %i.c, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %.05.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #30
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i:         ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow5DatumEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !233

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow5DatumEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute19FunctionOptionsTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11CastOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_10TypeHolderEEENS8_IS3_bEESB_SB_SB_SB_SB_EEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(46) %2, ptr noundef nonnull align 8 dereferenceable(168) %i.a)
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !40
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !tbaa !300  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !174 ; 3 uses
  %.val3.i.i = load ptr, ptr %i.d, align 8, !tbaa !174 ; 3 uses
  %i.e = icmp eq ptr %.val.i.i, %.val3.i.i
  br i1 %i.e, label %_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2ELm3ELm4ELm5ELm6EEJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_ERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %.val.i.i, null
  %i.g = icmp eq ptr %.val3.i.i, null
  %or.cond.i.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i.i, label %_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2ELm3ELm4ELm5ELm6EEJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_ERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %.val.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.val3.i.i, i1 noundef zeroext false)
  br label %_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2ELm3ELm4ELm5ELm6EEJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_ERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE.exit

_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2ELm3ELm4ELm5ELm6EEJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_ERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.0.i.i.i.i = phi i1 [ true, %bb.a ], [ %i.h, %bb.c ], [ false, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i64, ptr %i.i, align 8, !tbaa !303  ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.j
  %.val.i14.i = load i8, ptr %i.k, align 1, !tbaa !305, !range !77, !noundef !78
  %.val3.i15.i = load i8, ptr %i.l, align 1, !tbaa !305, !range !77, !noundef !78
  %i.m = icmp eq i8 %.val.i14.i, %.val3.i15.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load i64, ptr %i.n, align 8, !tbaa !303  ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.o
  %.val.i16.i = load i8, ptr %i.p, align 1, !tbaa !305, !range !77, !noundef !78
  %.val3.i17.i = load i8, ptr %i.q, align 1, !tbaa !305, !range !77, !noundef !78
  %i.r = icmp eq i8 %.val.i16.i, %.val3.i17.i
  %i.s = and i1 %i.m, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i64, ptr %i.t, align 8, !tbaa !303  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %2, i64 %i.u
  %.val.i18.i = load i8, ptr %i.v, align 1, !tbaa !305, !range !77, !noundef !78
  %.val3.i19.i = load i8, ptr %i.w, align 1, !tbaa !305, !range !77, !noundef !78
  %i.x = icmp eq i8 %.val.i18.i, %.val3.i19.i
  %i.y = and i1 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !303 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.aa
  %.val.i20.i = load i8, ptr %i.ab, align 1, !tbaa !305, !range !77, !noundef !78
  %.val3.i21.i = load i8, ptr %i.ac, align 1, !tbaa !305, !range !77, !noundef !78
  %i.ad = icmp eq i8 %.val.i20.i, %.val3.i21.i
  %i.ae = and i1 %i.y, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !303 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.ag
  %.val.i22.i = load i8, ptr %i.ah, align 1, !tbaa !305, !range !77, !noundef !78
  %.val3.i23.i = load i8, ptr %i.ai, align 1, !tbaa !305, !range !77, !noundef !78
  %i.aj = icmp eq i8 %.val.i22.i, %.val3.i23.i
  %i.ak = and i1 %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !303 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.am
  %.val.i24.i = load i8, ptr %i.an, align 1, !tbaa !305, !range !77, !noundef !78
  %.val3.i25.i = load i8, ptr %i.ao, align 1, !tbaa !305, !range !77, !noundef !78
  %i.ap = icmp eq i8 %.val.i24.i, %.val3.i25.i
  %3 = and i1 %i.ak, %i.ap
  %i.aq = and i1 %.0.i.i.i.i, %3
  ret i1 %i.aq
}

declare void @_ZNK5arrow7compute8internal18GenericOptionsType9SerializeERKNS0_15FunctionOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Result.196") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

declare void @_ZNK5arrow7compute8internal18GenericOptionsType11DeserializeERKNS_6BufferE(ptr dead_on_unwind writable sret(%"class.arrow::Result.200") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !306 ; 6 uses
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %i.a, i1 noundef zeroext true)
          to label %_ZSt11make_uniqueIN5arrow7compute11CastOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !306

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #29, !noalias !306
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11CastOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !309
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !312
  invoke void @_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2ELm3ELm4ELm5ELm6EEJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_ERNS3_8internal8CopyImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11CastOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !313
  ret void

_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute11CastOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(46) %i.a) #26, !inline_history !315
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEED2Ev.exit:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_10TypeHolderEEENS8_IS3_bEESB_SB_SB_SB_SB_EEEEERKS3_RKT_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EEPSI_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(46) %2, ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef %3, ptr noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !66, !alias.scope !316
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.200") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !319 ; 8 uses
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %i.a, i1 noundef zeroext true)
          to label %_ZSt11make_uniqueIN5arrow7compute11CastOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !319

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.k, %_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #29, !noalias !319
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11CastOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_10TypeHolderEEENS8_IS3_bEESB_SB_SB_SB_SB_EEEEEPS3_RKNS_12StructScalarERKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(168) %i.c)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11CastOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.c, !prof !69

bb.c:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.g = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute11CastOptionsEEclEPS2_.exit.i14, label %bb.d, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !70, !range !77, !noundef !78
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNKSt14default_deleteIN5arrow7compute11CastOptionsEEclEPS2_.exit.i14, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZNKSt14default_deleteIN5arrow7compute11CastOptionsEEclEPS2_.exit.i14

_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11CastOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(46) %i.a) #26, !inline_history !315
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %i.a to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !322
  br label %_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit15

_ZNKSt14default_deleteIN5arrow7compute11CastOptionsEEclEPS2_.exit.i14: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(46) %i.a) #26, !inline_history !315
  br label %_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit15

_ZNSt10unique_ptrIN5arrow7compute11CastOptionsESt14default_deleteIS2_EED2Ev.exit15: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute11CastOptionsEEclEPS2_.exit.i14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_10TypeHolderEEENS8_IS3_bEESB_SB_SB_SB_SB_EEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(168) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr %1, ptr %0, align 8, !tbaa !312
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #28 ; 24 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !41
  store i8 0, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !41
  store i8 0, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %i.o, align 8, !tbaa !41
  store i8 0, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 0, ptr %i.r, align 8, !tbaa !41
  store i8 0, ptr %i.q, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i64 0, ptr %i.u, align 8, !tbaa !41
  store i8 0, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 200
end_hunk_0
