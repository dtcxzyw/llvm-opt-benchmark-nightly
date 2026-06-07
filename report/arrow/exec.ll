inline.NumInlined: 3475
inline.NumDeleted: 1689
begin_hunk_0_@_ZN5arrow7compute10ExpressionD2Ev:bb.a
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !87
  br label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.241, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i:       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !89

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #31
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow7compute9ExecBatch6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  br i1 %i.c, label %bb.b, label %_ZSteqIN5arrow5DatumESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp eq i64 %i.i, %i.o
  br i1 %i.p, label %bb.c, label %_ZSteqIN5arrow5DatumESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not9.i.i.i.i.i, label %_ZSteqIN5arrow5DatumESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZNK5arrow5Datum6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i.i) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp ne ptr %i.r, %i.e
  %or.cond.not = select i1 %i.q, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSteqIN5arrow5DatumESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, !llvm.loop !90

_ZSteqIN5arrow5DatumESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute7PrintToERKNS0_9ExecBatchEPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.241, align 1            ; 3 uses
  %3 = alloca %"struct.arrow::Datum", align 8     ; 6 uses
  %4 = alloca %"class.arrow::compute::Expression", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"struct.arrow::PrettyPrintOptions", align 16 ; 32 uses
  %8 = alloca %"class.std::shared_ptr.60", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %11 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::shared_ptr.41", align 16 ; 7 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %16 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 10) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef getelementptr (i8, ptr @_ZZN5arrow7compute7PrintToERKNS0_9ExecBatchEPSoE6indentB5cxx11, i64 16), i64 noundef 4) ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.1, i64 noundef 8) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5arrow5DatumC1Eb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true), !noalias !91
  invoke void @_ZN5arrow7compute7literalENS_5DatumE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::Expression") align 8 %4, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !91
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5arrow7compute7literalIbEENS0_10ExpressionEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #30
  unreachable

common.resume:                                    ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.ap, %bb.m ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn84, %bb.cl ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  br label %common.resume

_ZN5arrow7compute7literalIbEENS0_10ExpressionEOT_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.l = invoke noundef zeroext i1 @_ZNK5arrow7compute10Expression6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZN5arrow7compute7literalIbEENS0_10ExpressionEOT_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !84
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27, !inline_history !94
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27, !inline_history !94
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !69

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %i.l, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef getelementptr (i8, ptr @_ZZN5arrow7compute7PrintToERKNS0_9ExecBatchEPSoE6indentB5cxx11, i64 16), i64 noundef 4) ; 2 uses
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.3, i64 noundef 11) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZNK5arrow7compute10Expression8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.af = load ptr, ptr %5, align 8, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !99
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.l
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ak = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !72
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.o

bb.m:                                             ; preds = %_ZN5arrow7compute7literalIbEENS0_10ExpressionEOT_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.n
  %i.au = load i64, ptr %i.as, align 8, !tbaa !72
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow7compute10ExpressionD2Ev.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75 ; 2 uses
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 184
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 216
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 232 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.p

._crit_edge:                                      ; preds = %bb.cm, %bb.o
  ret void

bb.p:                                             ; preds = %.lr.ph, %bb.cm
  %.066157 = phi i32 [ 0, %.lr.ph ], [ %i.cg, %bb.cm ] ; 2 uses
  %.sroa.0150.0156 = phi ptr [ %i.aw, %.lr.ph ], [ %i.hl, %bb.cm ] ; 6 uses
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef getelementptr (i8, ptr @_ZZN5arrow7compute7PrintToERKNS0_9ExecBatchEPSoE6indentB5cxx11, i64 16), i64 noundef 4) ; 2 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.4, i64 noundef 0) ; 0 uses
  %i.cg = add nuw nsw i32 %.066157, 1
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i32 noundef %.066157)
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0150.0156, i64 16 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !76
  switch i8 %i.ck, label %bb.cm [
    i8 1, label %bb.q
    i8 2, label %bb.t
    i8 3, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 7) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.cm = load i8, ptr %i.cj, align 8, !tbaa !76
  %.not.i.i.i100 = icmp eq i8 %i.cm, 1
  br i1 %.not.i.i.i100, label %_ZNK5arrow5Datum6scalarEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.cn, align 8, !tbaa !63
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr @.str.29, ptr %i.co, align 8, !tbaa !100
  call void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZNK5arrow5Datum6scalarEv.exit:                   ; preds = %bb.q
  %i.cp = load ptr, ptr %.sroa.0150.0156, align 8, !tbaa !103
  call void @_ZNK5arrow6Scalar8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(41) %i.cp)
  %i.cq = load ptr, ptr %6, align 8, !tbaa !95
  %i.cr = load i64, ptr %i.cc, align 8, !tbaa !99
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cq, i64 noundef %i.cr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit101 unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit101: ; preds = %_ZNK5arrow5Datum6scalarEv.exit
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit101
  %i.cu = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cd
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.cw = load i64, ptr %i.cd, align 8, !tbaa !72
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.cm

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit101, %_ZNK5arrow5Datum6scalarEv.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cd
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.s
  %i.db = load i64, ptr %i.cd, align 8, !tbaa !72
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.resume

bb.t:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store <4 x i32> <i32 0, i32 2, i32 10, i32 2>, ptr %7, align 16, !tbaa !3
  store ptr %i.bb, ptr %i.ba, align 16, !tbaa !106
  store i32 1819047278, ptr %i.bb, align 16
  store i64 4, ptr %i.bc, align 8, !tbaa !99
  store i8 0, ptr %i.bd, align 4, !tbaa !72
  store i32 100, ptr %i.bf, align 4, !tbaa !107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bh, i8 0, i64 80, i1 false), !alias.scope !111
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !106, !alias.scope !111
  store i8 91, ptr %i.bh, align 8, !tbaa !72, !alias.scope !111
  store i64 1, ptr %i.bi, align 16, !tbaa !99, !alias.scope !111
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !106, !alias.scope !111
  store i8 93, ptr %i.bk, align 8, !tbaa !72, !alias.scope !111
  store i64 1, ptr %i.bl, align 16, !tbaa !99, !alias.scope !111
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !106, !alias.scope !111
  store i8 44, ptr %i.bn, align 8, !tbaa !72, !alias.scope !111
  store i64 1, ptr %i.bo, align 16, !tbaa !99, !alias.scope !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bq, i8 0, i64 80, i1 false), !alias.scope !114
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !106, !alias.scope !114
  store i8 91, ptr %i.bq, align 8, !tbaa !72, !alias.scope !114
  store i64 1, ptr %i.br, align 16, !tbaa !99, !alias.scope !114
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !106, !alias.scope !114
  store i8 93, ptr %i.bt, align 8, !tbaa !72, !alias.scope !114
  store i64 1, ptr %i.bu, align 16, !tbaa !99, !alias.scope !114
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !106, !alias.scope !114
  store i8 44, ptr %i.bw, align 8, !tbaa !72, !alias.scope !114
  store i64 1, ptr %i.bx, align 16, !tbaa !99, !alias.scope !114
  store <4 x i8> splat (i8 1), ptr %i.be, align 16, !tbaa !117
  %i.dd = load i8, ptr %i.cj, align 8, !tbaa !76  ; 2 uses
  %i.de = icmp eq i8 %i.dd, 2
  br i1 %i.de, label %bb.u, label %bb.bb

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.60") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0150.0156)
          to label %bb.v unwind label %bb.ao

bb.v:                                             ; preds = %bb.u
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.dg = load ptr, ptr %8, align 8, !tbaa !118
  invoke void @_ZN5arrow11PrettyPrintERKNS_5ArrayERKNS_18PrettyPrintOptionsEPSo(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(248) %7, ptr noundef nonnull %1)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.aq

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.dh = load ptr, ptr %10, align 8, !tbaa !121  ; 2 uses
  store ptr %i.dh, ptr %9, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit114, label %bb.w, !prof !124

bb.w:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %11, ptr noundef nonnull @.str.9, i32 noundef 106, i32 noundef 3)
          to label %bb.x unwind label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 dereferenceable(24) @.str.10)
          to label %bb.y unwind label %bb.as

bb.y:                                             ; preds = %bb.x
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull align 1 dereferenceable(19) @.str.11)
          to label %bb.z unwind label %bb.as

bb.z:                                             ; preds = %bb.y
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA33_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull align 1 dereferenceable(33) @.str.12)
          to label %bb.aa unwind label %bb.as

bb.aa:                                            ; preds = %bb.z
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull align 1 dereferenceable(2) @.str.2)
          to label %bb.ab unwind label %bb.as

bb.ab:                                            ; preds = %bb.aa
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull align 1 dereferenceable(11) @.str.13)
          to label %bb.ac unwind label %bb.as

bb.ac:                                            ; preds = %bb.ab
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 1 dereferenceable(3) @.str.5)
          to label %bb.ad unwind label %bb.as

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ae unwind label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.critedge unwind label %bb.au ; 0 uses

.critedge:                                        ; preds = %bb.ae
  %i.dq = load ptr, ptr %12, align 8, !tbaa !95   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.ca
  br i1 %i.dr, label %.critedge91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %.critedge
  %i.ds = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #31
  br label %.critedge91

.critedge91:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %.pr = load ptr, ptr %9, align 8, !tbaa !121    ; 2 uses
  %.not.i113 = icmp eq ptr %.pr, null
  br i1 %.not.i113, label %_ZN5arrow6StatusD2Ev.exit114, label %bb.af, !prof !125

bb.af:                                            ; preds = %.critedge91
  %i.du = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !126, !range !132, !noundef !133
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow6StatusD2Ev.exit114, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #27
  br label %_ZN5arrow6StatusD2Ev.exit114

_ZN5arrow6StatusD2Ev.exit114:                     ; preds = %_ZN5arrow6StatusD2Ev.exit, %.critedge91, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.dx = load ptr, ptr %i.cb, align 8, !tbaa !70 ; 8 uses
  %.not.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit114
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 4294967297
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  br i1 %i.ea, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dy, align 8, !tbaa !82
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ec, align 4, !tbaa !84
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !63
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #27, !inline_history !134
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !63
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #27, !inline_history !134
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i115 = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i115, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ek = add nsw i32 %i.eb, -1
  store i32 %i.ek, ptr %i.dy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.el = atomicrmw volatile add ptr %i.dy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i = phi i32 [ %i.eb, %bb.ak ], [ %i.el, %bb.al ]
  %i.em = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.em, label %bb.am, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit114, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ck

bb.an:                                            ; preds = %bb.ck
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ao:                                            ; preds = %bb.u
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ap:                                            ; preds = %bb.v
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZN5arrow6StatusD2Ev.exit122

bb.ar:                                            ; preds = %bb.w
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.as:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.at:                                            ; preds = %bb.ad
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.au:                                            ; preds = %bb.ae
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load ptr, ptr %12, align 8, !tbaa !95   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ca
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.au
  %i.ex = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.at
  %.pn77 = phi { ptr, i32 } [ %i.et, %bb.at ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %i.eu, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.pn77.pn = phi { ptr, i32 } [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.es, %bb.as ]
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %11) #27
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ar, %bb.av
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %bb.av ], [ %i.er, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.ez = load ptr, ptr %9, align 8, !tbaa !121   ; 2 uses
  %.not.i121 = icmp eq ptr %i.ez, null
  br i1 %.not.i121, label %_ZN5arrow6StatusD2Ev.exit122, label %bb.ax, !prof !124

bb.ax:                                            ; preds = %bb.aw
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !126, !range !132, !noundef !133
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZN5arrow6StatusD2Ev.exit122, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #27
  br label %_ZN5arrow6StatusD2Ev.exit122

_ZN5arrow6StatusD2Ev.exit122:                     ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.aq
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %i.eq, %bb.aq ], [ %.pn77.pn.pn, %bb.aw ], [ %.pn77.pn.pn, %bb.ax ], [ %.pn77.pn.pn, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.az

bb.az:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit122, %bb.ap
  %.pn77.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn, %_ZN5arrow6StatusD2Ev.exit122 ], [ %i.ep, %bb.ap ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #27
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ao
  %.pn77.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn.pn, %bb.az ], [ %i.eo, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.cl

bb.bb:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %.not.i.i.i123 = icmp eq i8 %i.dd, 3
  br i1 %.not.i.i.i123, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fd = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.fd, align 8, !tbaa !63
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr @.str.29, ptr %i.fe, align 8, !tbaa !100
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc unwind label %bb.bx

.noexc:                                           ; preds = %bb.bc
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.bb
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0150.0156, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !70 ; 2 uses
  %i.fh = load <2 x ptr>, ptr %.sroa.0150.0156, align 8, !tbaa !71
  store <2 x ptr> %i.fh, ptr %13, align 16, !tbaa !71
  %.not.i.i.i124 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i124, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 3 uses
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i125 = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i125, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fi, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.fm = atomicrmw volatile add ptr %i.fi, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit: ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit, %bb.be, %bb.bf
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127: ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.fo = load ptr, ptr %13, align 16, !tbaa !135
  invoke void @_ZN5arrow11PrettyPrintERKNS_12ChunkedArrayERKNS_18PrettyPrintOptionsEPSo(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(88) %i.fo, ptr noundef nonnull align 8 dereferenceable(248) %7, ptr noundef nonnull %1)
          to label %_ZN5arrow6StatusD2Ev.exit129 unwind label %bb.bz

_ZN5arrow6StatusD2Ev.exit129:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127
  %i.fp = load ptr, ptr %15, align 8, !tbaa !121  ; 2 uses
  store ptr %i.fp, ptr %14, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %_ZN5arrow6StatusD2Ev.exit134, label %bb.bg, !prof !124

bb.bg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit129
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %16, ptr noundef nonnull @.str.9, i32 noundef 110, i32 noundef 3)
          to label %bb.bh unwind label %bb.ca

bb.bh:                                            ; preds = %bb.bg
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 1 dereferenceable(24) @.str.10)
          to label %bb.bi unwind label %bb.cb

bb.bi:                                            ; preds = %bb.bh
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull align 1 dereferenceable(19) @.str.11)
          to label %bb.bj unwind label %bb.cb

bb.bj:                                            ; preds = %bb.bi
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA33_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull align 1 dereferenceable(33) @.str.12)
          to label %bb.bk unwind label %bb.cb

bb.bk:                                            ; preds = %bb.bj
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull align 1 dereferenceable(2) @.str.2)
          to label %bb.bl unwind label %bb.cb

bb.bl:                                            ; preds = %bb.bk
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull align 1 dereferenceable(11) @.str.13)
          to label %bb.bm unwind label %bb.cb

bb.bm:                                            ; preds = %bb.bl
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull align 1 dereferenceable(3) @.str.5)
          to label %bb.bn unwind label %bb.cb

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bo unwind label %bb.cc

bb.bo:                                            ; preds = %bb.bn
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.critedge93 unwind label %bb.cd ; 0 uses

.critedge93:                                      ; preds = %bb.bo
  %i.fy = load ptr, ptr %17, align 8, !tbaa !95   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.bz
  br i1 %i.fz, label %.critedge96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %.critedge93
  %i.ga = load i64, ptr %i.bz, align 8, !tbaa !72
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #31
  br label %.critedge96

.critedge96:                                      ; preds = %.critedge93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %.pr154 = load ptr, ptr %14, align 8, !tbaa !121 ; 2 uses
  %.not.i133 = icmp eq ptr %.pr154, null
  br i1 %.not.i133, label %_ZN5arrow6StatusD2Ev.exit134, label %bb.bp, !prof !125

bb.bp:                                            ; preds = %.critedge96
  %i.gc = getelementptr inbounds nuw i8, ptr %.pr154, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !126, !range !132, !noundef !133
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %_ZN5arrow6StatusD2Ev.exit134, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #27
  br label %_ZN5arrow6StatusD2Ev.exit134

_ZN5arrow6StatusD2Ev.exit134:                     ; preds = %_ZN5arrow6StatusD2Ev.exit129, %.critedge96, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.gf = load ptr, ptr %i.by, align 8, !tbaa !70 ; 8 uses
  %.not.i.i135 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i135, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit134
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gh = load atomic i64, ptr %i.gg acquire, align 8 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 4294967297
  %i.gj = trunc i64 %i.gh to i32                  ; 2 uses
  br i1 %i.gi, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.gg, align 8, !tbaa !82
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i32 0, ptr %i.gk, align 4, !tbaa !84
  %i.gl = load ptr, ptr %i.gf, align 8, !tbaa !63
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #27, !inline_history !138
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !63
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #27, !inline_history !138
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bt:                                            ; preds = %bb.br
  %i.gr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i136 = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i136, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gs = add nsw i32 %i.gj, -1
  store i32 %i.gs, ptr %i.gg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137

bb.bv:                                            ; preds = %bb.bt
  %i.gt = atomicrmw volatile add ptr %i.gg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i138 = phi i32 [ %i.gj, %bb.bu ], [ %i.gt, %bb.bv ]
  %i.gu = icmp eq i32 %.0.i.i.i.i138, 1
  br i1 %i.gu, label %bb.bw, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit134, %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ck

bb.bx:                                            ; preds = %bb.bc
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.by:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZN5arrow6StatusD2Ev.exit145

bb.ca:                                            ; preds = %bb.bg
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cb:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cc:                                            ; preds = %bb.bn
  %i.ha = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

declare void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #6

declare void @_ZN5arrow11PrettyPrintERKNS_12ChunkedArrayERKNS_18PrettyPrintOptionsEPSo(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !72
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !72
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !72
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit

_ZN5arrow21PrettyPrintDelimitersD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !72
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !72
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !95  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !72
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #31
  br label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9

_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !72
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5arrow7compute9ExecBatch15TotalBufferSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.05.08 = phi ptr [ %i.g, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = tail call noundef i64 @_ZNK5arrow5Datum15TotalBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.08)
  %i.f = add nsw i64 %i.e, %.09                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %._crit_edge, label %.lr.ph
}

declare noundef i64 @_ZNK5arrow5Datum15TotalBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute9ExecBatch8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN5arrow7compute7PrintToERKNS0_9ExecBatchEPSo(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !106, !alias.scope !145
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !99, !alias.scope !145
  store i8 0, ptr %i.b, align 8, !tbaa !72, !alias.scope !145
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146, !noalias !145 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !145 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !150, !noalias !145 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !95, !alias.scope !145 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !72, !alias.scope !145
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #31
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !63
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !63
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.aa, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !72
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.aa, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #27
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !63
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !151
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute9ExecBatch5SliceEll(ptr dead_on_unwind noalias nonnull writable sret(%"struct.arrow::compute::ExecBatch") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %5 = alloca %class.anon.245, align 8            ; 4 uses
  %6 = alloca %class.anon.241, align 1            ; 3 uses
  %7 = alloca %class.anon.245, align 8            ; 4 uses
  %8 = alloca %"struct.arrow::Datum", align 16    ; 7 uses
  %9 = alloca %"class.std::shared_ptr.35", align 16 ; 4 uses
  %10 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %11 = alloca %"class.std::shared_ptr.41", align 8 ; 4 uses
  tail call void @_ZN5arrow7compute9ExecBatchC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.y, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50
  %i.j = sub nsw i64 %i.i, %2
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.j, i64 %3)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.speculated, ptr %i.k, align 8, !tbaa !50
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.030.042 = phi ptr [ %i.a, %.lr.ph ], [ %i.bf, %bb.y ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !76
  switch i8 %i.m, label %bb.y [
    i8 3, label %_ZNK5arrow5Datum13chunked_arrayEv.exit
    i8 2, label %_ZNK5arrow5Datum5arrayEv.exit
  ]

_ZNK5arrow5Datum5arrayEv.exit:                    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.n = load ptr, ptr %.sroa.030.042, align 8, !tbaa !153
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.35") align 8 %9, ptr noundef nonnull align 8 dereferenceable(120) %i.n, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %i.o = load <2 x ptr>, ptr %9, align 16, !tbaa !71
  store ptr null, ptr %i.e, align 8, !tbaa !70
  store <2 x ptr> %i.o, ptr %8, align 16, !tbaa !71
  store ptr null, ptr %9, align 16, !tbaa !153
  store i8 2, ptr %i.f, align 16, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %.sroa.030.042, ptr %7, align 8, !tbaa !78
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN5arrow5DatumaSEOS0_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #30
  unreachable

_ZN5arrow5DatumaSEOS0_.exit:                      ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN5arrow5DatumaSEOS0_.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow5DatumaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.u, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !84
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #27, !inline_history !156
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #27, !inline_history !156
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i20 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.i ], [ %i.ah, %bb.j ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.y

bb.l:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.z

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.aj = load ptr, ptr %.sroa.030.042, align 8, !tbaa !135
  invoke void @_ZNK5arrow12ChunkedArray5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %11, ptr noundef nonnull align 8 dereferenceable(88) %i.aj, i64 noundef %2, i64 noundef %3)
          to label %bb.m unwind label %.loopexit37

bb.m:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull %11)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %.sroa.030.042, ptr %5, align 8, !tbaa !78
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN5arrow5DatumaSEOS0_.exit23 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #30
  unreachable

_ZN5arrow5DatumaSEOS0_.exit23:                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %10)
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute6detail16ExecSpanIterator16GetNextChunkSpanElPNS0_8ExecSpanE:bb.a
  %i.bl = sext i32 %i.bk to i64
  %i.bm = load ptr, ptr %i.s, align 8, !tbaa !183 ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !181 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !153
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !211 ; 2 uses
  %i.bu = icmp eq i64 %i.bp, %i.bt
  br i1 %i.bu, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !273

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !243 ; 2 uses
  %.pre36.pre = load ptr, ptr %.pre.pre, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre36 = phi ptr [ %.pre3640, %.preheader ], [ %.pre36.pre, %._crit_edge.loopexit ] ; 2 uses
  %.pre = phi ptr [ %.pre37, %.preheader ], [ %.pre.pre, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa27 = phi i64 [ %i.aj, %.preheader ], [ %i.bp, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ %i.an, %.preheader ], [ %i.bt, %._crit_edge.loopexit ]
  %i.bv = sub nsw i64 %.lcssa, %.lcssa27
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %.02629, i64 %i.bv)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit, %._crit_edge, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit
  %.pre3641 = phi ptr [ %.pre3640, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit ], [ %.pre36, %._crit_edge ], [ %.pre3640, %_ZNK5arrow5Datum13chunked_arrayEv.exit ]
  %.pre38 = phi ptr [ %.pre37, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit ], [ %.pre, %._crit_edge ], [ %.pre37, %_ZNK5arrow5Datum13chunked_arrayEv.exit ]
  %i.bw = phi ptr [ %i.m, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit ], [ %.pre36, %._crit_edge ], [ %i.m, %_ZNK5arrow5Datum13chunked_arrayEv.exit ] ; 2 uses
  %i.bx = phi ptr [ %i.n, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit ], [ %.pre, %._crit_edge ], [ %i.n, %_ZNK5arrow5Datum13chunked_arrayEv.exit ] ; 2 uses
  %.1 = phi i64 [ %.02629, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit ], [ %.sroa.speculated, %._crit_edge ], [ 0, %_ZNK5arrow5Datum13chunked_arrayEv.exit ] ; 3 uses
  %i.by = add nuw i64 %.030, 1                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !39
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bw to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 24
  %i.cf = icmp ult i64 %i.by, %i.ce
  %i.cg = icmp sgt i64 %.1, 0
  %i.ch = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %i.ch, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit, label %._crit_edge32, !llvm.loop !274
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5arrow7compute6detail16ExecSpanIterator4NextEPNS0_8ExecSpanE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !250, !range !132, !noundef !133
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !275
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !243  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24                  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 3 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !261  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 136                 ; 3 uses
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = sub nuw nsw i64 %i.l, %i.s
  tail call void @_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.u)
  br label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.v = icmp ult i64 %i.l, %i.s
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i ], [ %i.w, %bb.e ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !281  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !282 ; 2 uses
  %.not.i.i12.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i12.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %.0.i.i3.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.noexc.i.i.i.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.f, !inline_history !283

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !284

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #30, !inline_history !285
  unreachable

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !281
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ae = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !286
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #31, !inline_history !287
  br label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !288

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i
  store ptr %i.w, ptr %i.m, align 8, !tbaa !280
  br label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !243 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.ao
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.h

._crit_edge:                                      ; preds = %bb.m, %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !251, !range !132, !noundef !133
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.av = load i8, ptr %i.au, align 1, !range !132
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.n, label %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %i.ax = phi ptr [ %i.ao, %.lr.ph ], [ %i.cu, %bb.m ]
  %.04858 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %bb.m ] ; 9 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.04858 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !76
  switch i8 %i.ba, label %bb.i [
    i8 1, label %_ZNK5arrow5Datum6scalarEv.exit
    i8 2, label %_ZNK5arrow5Datum5arrayEv.exit
    i8 3, label %_ZNK5arrow5Datum13chunked_arrayEv.exit
  ]

_ZNK5arrow5Datum6scalarEv.exit:                   ; preds = %bb.h
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.bc = getelementptr inbounds nuw [136 x i8], ptr %i.bb, i64 %.04858
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !103
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !264
  br label %bb.m

_ZNK5arrow5Datum5arrayEv.exit:                    ; preds = %bb.h
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !153 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.bh = getelementptr inbounds nuw [136 x i8], ptr %i.bg, i64 %.04858 ; 2 uses
  tail call void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(136) %i.bh, ptr noundef nonnull align 8 dereferenceable(120) %i.bf)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  store ptr null, ptr %i.bi, align 8, !tbaa !264
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !272
  %i.bl = load ptr, ptr %i.ap, align 8, !tbaa !255
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.04858
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !181
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bn = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.bn, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @.str.29, ptr %i.bo, align 8, !tbaa !100
  tail call void @__cxa_throw(ptr nonnull %i.bn, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.h
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !135 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !187
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !183 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 4
  %i.bx = trunc i64 %i.bw to i32
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !118
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !153 ; 2 uses
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.cd = getelementptr inbounds nuw [136 x i8], ptr %i.cc, i64 %.04858 ; 2 uses
  tail call void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(136) %i.cd, ptr noundef nonnull align 8 dereferenceable(120) %i.cb)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  store ptr null, ptr %i.ce, align 8, !tbaa !264
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !272
  %i.ch = load ptr, ptr %i.ap, align 8, !tbaa !255
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.04858
  store i64 %i.cg, ptr %i.ci, align 8, !tbaa !181
  br label %bb.l

bb.k:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !289
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.cm = getelementptr inbounds nuw [136 x i8], ptr %i.cl, i64 %.04858
  tail call void @_ZN5arrow8internal19FillZeroLengthArrayEPKNS_8DataTypeEPNS_9ArraySpanE(ptr noundef %i.ck, ptr noundef nonnull %i.cm)
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.co = getelementptr inbounds nuw [136 x i8], ptr %i.cn, i64 %.04858
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  store ptr null, ptr %i.cp, align 8, !tbaa !264
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i8 1, ptr %i.aq, align 1, !tbaa !249
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit, %bb.l, %_ZNK5arrow5Datum6scalarEv.exit
  %i.cq = add nuw i64 %.04858, 1                  ; 2 uses
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !243 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !34 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 24
  %i.cz = icmp ult i64 %i.cq, %i.cy
  br i1 %i.cz, label %bb.h, label %._crit_edge, !llvm.loop !290

bb.n:                                             ; preds = %._crit_edge
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !280 ; 2 uses
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !261 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = sdiv exact i64 %i.de, 136
  %i.dg = trunc i64 %i.df to i32
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit

.lr.ph.i:                                         ; preds = %bb.n, %bb.p
  %i.di = phi ptr [ %i.dn, %bb.p ], [ %i.db, %bb.n ] ; 2 uses
  %i.dj = phi ptr [ %i.do, %bb.p ], [ %i.da, %bb.n ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [136 x i8], ptr %i.di, i64 %indvars.iv.i ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 128 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !264 ; 2 uses
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  tail call void @_ZN5arrow9ArraySpan14FillFromScalarERKNS_6ScalarE(ptr noundef nonnull align 8 dereferenceable(128) %i.dk, ptr noundef nonnull align 8 dereferenceable(41) %i.dm)
  store ptr null, ptr %i.dl, align 8, !tbaa !264
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !280
  %.pre10.i = load ptr, ptr %i.c, align 8, !tbaa !261
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %i.dn = phi ptr [ %.pre10.i, %bb.o ], [ %i.di, %.lr.ph.i ] ; 2 uses
  %i.do = phi ptr [ %.pre.i, %bb.o ], [ %i.dj, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 136
  %sext.i = shl i64 %i.ds, 32
  %i.dt = ashr exact i64 %sext.i, 32
  %i.du = icmp slt i64 %indvars.iv.next.i, %i.dt
  br i1 %i.du, label %.lr.ph.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit, !llvm.loop !291

_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit: ; preds = %bb.p, %bb.n, %._crit_edge
  store i8 1, ptr %0, align 8, !tbaa !250
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !254
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre64 = load i64, ptr %.phi.trans.insert63, align 8, !tbaa !253
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !253 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !254 ; 2 uses
  %i.dz = icmp eq i64 %i.dw, %i.dy
  br i1 %i.dz, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit
  %i.ea = phi i64 [ %i.dw, %bb.q ], [ %.pre64, %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit ]
  %i.eb = phi i64 [ %i.dy, %bb.q ], [ %.pre, %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ed = sub nsw i64 %i.eb, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !181
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ef, i64 %i.ed) ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !249, !range !132, !noundef !133
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ej = tail call noundef i64 @_ZN5arrow7compute6detail16ExecSpanIterator16GetNextChunkSpanElPNS0_8ExecSpanE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %.sroa.speculated, ptr noundef %1)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.050 = phi i64 [ %i.ej, %bb.s ], [ %.sroa.speculated, %bb.r ] ; 5 uses
  store i64 %.050, ptr %1, align 8, !tbaa !275
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !243 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !39 ; 2 uses
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !34 ; 3 uses
  %.not62 = icmp eq ptr %i.en, %i.eo
  br i1 %.not62, label %._crit_edge61, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph: ; preds = %bb.t
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = sdiv exact i64 %i.er, 24
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ex = load ptr, ptr %i.ew, align 8
  br label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit

._crit_edge61:                                    ; preds = %bb.z, %bb.t
  %i.ey = load i64, ptr %i.ec, align 8, !tbaa !253
  %i.ez = add nsw i64 %i.ey, %.050
  store i64 %i.ez, ptr %i.ec, align 8, !tbaa !253
  br label %bb.aa

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit:   ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph, %bb.z
  %.04960 = phi i64 [ 0, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph ], [ %i.fx, %bb.z ] ; 5 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %.04960
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !76
  %i.fd = icmp eq i8 %i.fc, 1
  br i1 %i.fd, label %bb.z, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit
  %i.fe = load ptr, ptr %i.et, align 8, !tbaa !261
  %i.ff = getelementptr inbounds nuw [136 x i8], ptr %i.fe, i64 %.04960 ; 6 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.04960 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !181
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.04960
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !181
  %i.fk = add nsw i64 %i.fj, %i.fh
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !292
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 %.050, ptr %i.fm, align 8, !tbaa !293
  %i.fn = load ptr, ptr %i.ff, align 8, !tbaa !294
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !295
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i64 %.050, ptr %i.fr, align 8, !tbaa !311
  br label %_ZN5arrow9ArraySpan8SetSliceEll.exit

bb.w:                                             ; preds = %bb.u
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !312
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
bb.w:                                             ; preds = %bb.v
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !3, !noalias !353
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !3, !noalias !353
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.da = atomicrmw volatile add ptr %i.cw, i32 1 acq_rel, align 4, !noalias !353 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i

_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i:        ; preds = %bb.x, %bb.w, %.critedge.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !318, !noalias !351 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !70, !noalias !351 ; 8 uses
  store <2 x ptr> %i.cv, ptr %i.dc, align 8, !tbaa !71, !noalias !351
  %.not.i.i.i.i14.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i14.i.i, label %.sink.split.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8, !noalias !351 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.df, align 8, !tbaa !82, !noalias !351
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !84, !noalias !351
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !63, !noalias !351
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !351
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #27, !noalias !351, !inline_history !356
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !63, !noalias !351
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !351
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #27, !noalias !351, !inline_history !356
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !351
  %.not.i.i.i.i.i15.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i.i.i15.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = add nsw i32 %i.di, -1
  store i32 %i.dr, ptr %i.df, align 8, !tbaa !3, !noalias !351
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ds = atomicrmw volatile add ptr %i.df, i32 -1 acq_rel, align 4, !noalias !351
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.di, %bb.ab ], [ %i.ds, %bb.ac ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dt, label %bb.ad, label %.sink.split.i.i, !prof !69

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #27, !noalias !351
  br label %.sink.split.i.i

bb.ae:                                            ; preds = %bb.u, %.lr.ph.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.023.027.i.i, i64 8 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.y
  br i1 %i.dv, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %.lr.ph.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.ae, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !351
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(65) %8)
          to label %.noexc12 unwind label %.body

.noexc12:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.dw = load ptr, ptr %7, align 8, !tbaa !121, !noalias !351 ; 2 uses
  store ptr %i.dw, ptr %0, align 8, !tbaa !121, !alias.scope !351
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !351
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.af, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.af:                                            ; preds = %.noexc12
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !344, !noalias !351
  %i.ea = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !351 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !211, !noalias !351
  br label %.invoke

.invoke:                                          ; preds = %bb.s, %bb.af
  %i.ed = phi ptr [ %i.dz, %bb.af ], [ %i.cd, %bb.s ]
  %.pn = phi ptr [ %i.ea, %bb.af ], [ %i.ce, %bb.s ]
  %i.ee = phi i64 [ %i.ec, %bb.af ], [ %i.cg, %bb.s ]
  %.in111 = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %i.ef = load i64, ptr %.in111, align 8, !tbaa !272, !noalias !351
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.ed, i64 noundef %i.ef, i64 noundef %i.ee, i1 noundef zeroext false)
          to label %.sink.split.i.i unwind label %.body

.sink.split.i.i:                                  ; preds = %.invoke, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.z, %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !351
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.ag:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit
  %i.eg = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !345 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 3 uses
  store atomic i64 -1, ptr %i.eh seq_cst, align 8, !noalias !345
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ej = icmp eq ptr %i.z, %i.y
  br i1 %i.ej, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  store atomic i64 0, ptr %i.eh seq_cst, align 8, !noalias !345
  %i.ek = load i8, ptr %i.p, align 8, !tbaa !334, !range !132, !noalias !345, !noundef !133
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ai, label %.noexc14

bb.ai:                                            ; preds = %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.en = load i64, ptr %i.em, align 8, !tbaa !272, !noalias !345
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !211, !noalias !345
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.cd, i64 noundef %i.en, i64 noundef %i.ep, i1 noundef zeroext true)
          to label %.noexc14 unwind label %.body

.noexc14:                                         ; preds = %bb.ai, %bb.ah
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !357
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.aj:                                            ; preds = %bb.ag
  %i.eq = ptrtoint ptr %i.y to i64
  %i.er = ptrtoint ptr %i.z to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = icmp eq i64 %i.es, 8
  br i1 %i.et, label %bb.ak, label %bb.bx

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !345
  %i.eu = load ptr, ptr %i.z, align 8, !tbaa !336, !noalias !363 ; 9 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !312, !noalias !363
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !311, !noalias !363
  store atomic i64 %i.ey, ptr %i.eh seq_cst, align 8, !noalias !363
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 3 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !292, !noalias !363 ; 3 uses
  br i1 %.not.i.i.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !272, !noalias !363
  br label %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke

bb.am:                                            ; preds = %bb.ak
  %i.fd = icmp eq i64 %i.fa, 0
  br i1 %i.fd, label %bb.an, label %bb.ba

bb.an:                                            ; preds = %bb.am
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !352, !noalias !364 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i10, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !319, !noalias !364 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !70, !noalias !364 ; 4 uses
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 3 uses
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !364
  %.not.i.i.i.i.i.i4.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i.i.i4.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !3, !noalias !364
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !3, !noalias !364
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i

bb.ar:                                            ; preds = %bb.ap
  %i.fn = atomicrmw volatile add ptr %i.fj, i32 1 acq_rel, align 4, !noalias !364 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i

bb.as:                                            ; preds = %bb.an
  %i.fo = load ptr, ptr %i.ev, align 8, !tbaa !312, !noalias !364 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not6.i.i.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fp = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc16 unwind label %.body  ; 6 uses

.noexc16:                                         ; preds = %bb.at
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 1, ptr %i.fr, align 8, !tbaa !82, !noalias !367
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 1, ptr %i.fs, align 4, !tbaa !84, !noalias !367
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.fp, align 8, !tbaa !63, !noalias !367
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.fu = load i64, ptr %i.fq, align 8, !tbaa !181, !noalias !367
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.ft, ptr noundef nonnull %i.fo, i64 noundef %i.fu)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !367

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc16
  %i.fv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef 96) #31, !noalias !367
  br label %.body.thread

_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i:       ; preds = %.noexc16, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.sroa.053.0.i.i = phi ptr [ %i.ft, %.noexc16 ], [ %i.fg, %bb.aq ], [ %i.fg, %bb.ao ], [ %i.fg, %bb.ar ], [ null, %bb.as ]
  %.sroa.8.0.i.i = phi ptr [ %i.fp, %.noexc16 ], [ %i.fi, %bb.aq ], [ null, %bb.ao ], [ %i.fi, %bb.ar ], [ null, %bb.as ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !318, !noalias !363 ; 2 uses
  store ptr %.sroa.053.0.i.i, ptr %i.fx, align 8, !tbaa !370, !noalias !363
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !70, !noalias !363 ; 8 uses
  store ptr %.sroa.8.0.i.i, ptr %i.fy, align 8, !tbaa !70, !noalias !363
  %.not.i.i.i.i23.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i23.i.i, label %.critedge.sink.split.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8, !noalias !363 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ga, align 8, !tbaa !82, !noalias !363
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !84, !noalias !363
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !63, !noalias !363
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !363
  tail call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !noalias !363, !inline_history !371
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !63, !noalias !363
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !363
  tail call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !noalias !363, !inline_history !371
  br label %.critedge.sink.split.i.i

bb.aw:                                            ; preds = %bb.au
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !363
  %.not.i.i.i.i.i24.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i24.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i

bb.ay:                                            ; preds = %bb.aw
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i7.i = phi i32 [ %i.gd, %bb.ax ], [ %i.gn, %bb.ay ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i.i7.i, 1
  br i1 %i.go, label %bb.az, label %.critedge.sink.split.i.i, !prof !69

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !noalias !363
  br label %.critedge.sink.split.i.i

bb.ba:                                            ; preds = %bb.am
  %i.gp = and i64 %i.fa, 7
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %bb.bb, label %_ZN5arrow6StatusD2Ev.exit.i1.i

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !352, !noalias !375 ; 3 uses
  %.not.i25.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i25.i.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !70, !noalias !375 ; 2 uses
  %i.gv = load <2 x ptr>, ptr %i.gs, align 8, !tbaa !71, !noalias !375
  store <2 x ptr> %i.gv, ptr %5, align 16, !tbaa !71, !alias.scope !372, !noalias !363
  %.not.i.i.i.i26.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i26.i.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 3 uses
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !375
  %.not.i.i.i.i.i27.i.i = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i.i27.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !3, !noalias !375
  %i.gz = add nsw i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gw, align 4, !tbaa !3, !noalias !375
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.ha = atomicrmw volatile add ptr %i.gw, i32 1 acq_rel, align 4, !noalias !375 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i

bb.bg:                                            ; preds = %bb.bb
  %i.hb = load ptr, ptr %i.ev, align 8, !tbaa !312, !noalias !375 ; 2 uses
  %.not6.i28.i.i = icmp eq ptr %i.hb, null
  br i1 %.not6.i28.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.hc = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc17 unwind label %.body  ; 6 uses

.noexc17:                                         ; preds = %bb.bh
  %i.hd = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i32 1, ptr %i.he, align 8, !tbaa !82, !noalias !379
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  store i32 1, ptr %i.hf, align 4, !tbaa !84, !noalias !379
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.hc, align 8, !tbaa !63, !noalias !379
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %i.hh = load i64, ptr %i.hd, align 8, !tbaa !181, !noalias !379
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.hg, ptr noundef nonnull %i.hb, i64 noundef %i.hh)
          to label %_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_.exit.i30.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i, !noalias !379

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i: ; preds = %.noexc17
  %i.hi = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef 96) #31, !noalias !379
  br label %.body.thread

_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_.exit.i30.i.i: ; preds = %.noexc17
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.hc, ptr %i.hj, align 8, !tbaa !70, !alias.scope !380, !noalias !363
  store ptr %i.hg, ptr %5, align 16, !tbaa !370, !alias.scope !380, !noalias !363
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !372, !noalias !363
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i

_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i:      ; preds = %bb.bi, %_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_.exit.i30.i.i, %bb.bf, %bb.be, %bb.bc
  %i.hk = load i64, ptr %i.ez, align 8, !tbaa !292, !noalias !363
  %i.hl = sdiv i64 %i.hk, 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !293, !noalias !363 ; 2 uses
  %i.ho = ashr i64 %i.hn, 3
  %i.hp = and i64 %i.hn, 7
  %i.hq = icmp ne i64 %i.hp, 0
  %i.hr = zext i1 %i.hq to i64
  %i.hs = add nsw i64 %i.ho, %i.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !363
  store i64 %i.hl, ptr %i.a, align 8, !tbaa !181, !noalias !381
  store i64 %i.hs, ptr %i.b, align 8, !tbaa !181, !noalias !381
  %i.ht = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc.i.i unwind label %bb.bw, !noalias !363 ; 4 uses

.noexc.i.i:                                       ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bj unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i, !noalias !384

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i: ; preds = %.noexc.i.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef 96) #31, !noalias !384
  br label %.body.i.i

bb.bj:                                            ; preds = %.noexc.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !363
  %i.hw = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !318, !noalias !363 ; 2 uses
  store ptr %i.hv, ptr %i.hx, align 8, !tbaa !370, !noalias !363
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !70, !noalias !363 ; 8 uses
  store ptr %i.ht, ptr %i.hy, align 8, !tbaa !70, !noalias !363
  %.not.i.i.i.i32.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i32.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 4 uses
  %i.ib = load atomic i64, ptr %i.ia acquire, align 8, !noalias !363 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 4294967297
  %i.id = trunc i64 %i.ib to i32                  ; 2 uses
  br i1 %i.ic, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.ia, align 8, !tbaa !82, !noalias !363
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store i32 0, ptr %i.ie, align 4, !tbaa !84, !noalias !363
  %i.if = load ptr, ptr %i.hz, align 8, !tbaa !63, !noalias !363
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !363
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #27, !noalias !363, !inline_history !371
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !63, !noalias !363
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !363
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #27, !noalias !363, !inline_history !371
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.il = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !363
  %.not.i.i.i.i.i33.i.i = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i.i.i33.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.im = add nsw i32 %i.id, -1
  store i32 %i.im, ptr %i.ia, align 8, !tbaa !3, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.in = atomicrmw volatile add ptr %i.ia, i32 -1 acq_rel, align 4, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34.i.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i.i35.i.i = phi i32 [ %i.id, %bb.bn ], [ %i.in, %bb.bo ]
  %i.io = icmp eq i32 %.0.i.i.i.i.i.i35.i.i, 1
  br i1 %i.io, label %bb.bp, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, !prof !69

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #27, !noalias !363
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i: ; preds = %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34.i.i, %bb.bl, %bb.bj
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !70, !noalias !363 ; 8 uses
  %.not.i.i42.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i42.i.i, label %.critedge.sink.split.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 4 uses
  %i.is = load atomic i64, ptr %i.ir acquire, align 8, !noalias !363 ; 2 uses
  %i.it = icmp eq i64 %i.is, 4294967297
  %i.iu = trunc i64 %i.is to i32                  ; 2 uses
  br i1 %i.it, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.ir, align 8, !tbaa !82, !noalias !363
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.iv, align 4, !tbaa !84, !noalias !363
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !63, !noalias !363
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !363
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #27, !noalias !363, !inline_history !387
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !63, !noalias !363
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8, !noalias !363
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #27, !noalias !363, !inline_history !387
  br label %.critedge.sink.split.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.jc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !363
  %.not.i.i.i43.i.i = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i43.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %i.ir, align 8, !tbaa !3, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.je = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i45.i.i = phi i32 [ %i.iu, %bb.bt ], [ %i.je, %bb.bu ]
  %i.jf = icmp eq i32 %.0.i.i.i.i45.i.i, 1
  br i1 %i.jf, label %bb.bv, label %.critedge.sink.split.i.i, !prof !69

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #27, !noalias !363
  br label %.critedge.sink.split.i.i

bb.bw:                                            ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.jg, %bb.bw ], [ %i.hu, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27, !noalias !363
  br label %.body.thread

_ZN5arrow6StatusD2Ev.exit.i1.i:                   ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !363
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(65) %8)
          to label %.noexc18 unwind label %.body

.noexc18:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i1.i
  %i.jh = load ptr, ptr %6, align 8, !tbaa !121, !noalias !363 ; 2 uses
  store ptr %i.jh, ptr %0, align 8, !tbaa !121, !alias.scope !363
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !363
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %_ZN5arrow6StatusD2Ev.exit51.i.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15PropagateSingleEv.exit.i

_ZN5arrow6StatusD2Ev.exit51.i.i:                  ; preds = %.noexc18
  %i.jj = load i64, ptr %i.ez, align 8, !tbaa !292, !noalias !363
  %i.jk = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !344, !noalias !363
  br label %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke

_ZN5arrow6StatusD2Ev.exit51.i.i.invoke:           ; preds = %bb.al, %_ZN5arrow6StatusD2Ev.exit51.i.i
  %i.jm = phi i64 [ %i.jj, %_ZN5arrow6StatusD2Ev.exit51.i.i ], [ %i.fa, %bb.al ]
  %i.jn = phi ptr [ %i.jl, %_ZN5arrow6StatusD2Ev.exit51.i.i ], [ %i.cd, %bb.al ]
  %i.jo = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit51.i.i ], [ %i.fc, %bb.al ]
  %.in = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.jp = load i64, ptr %.in, align 8, !tbaa !293, !noalias !363
  invoke void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef %i.ew, i64 noundef %i.jm, i64 noundef %i.jp, ptr noundef %i.jn, i64 noundef %i.jo)
          to label %.critedge.sink.split.i.i unwind label %.body

.critedge.sink.split.i.i:                         ; preds = %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i, %bb.br, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i, %bb.av, %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !363
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15PropagateSingleEv.exit.i

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15PropagateSingleEv.exit.i: ; preds = %.critedge.sink.split.i.i, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !345
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

end_hunk_3
begin_hunk_4_@_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !293
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef nonnull %i.au, i64 noundef %i.aw, i64 noundef %i.ay, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.k

bb.o:                                             ; preds = %bb.l
  %i.az = ptrtoint ptr %.sroa.15.1 to i64
  %i.ba = ptrtoint ptr %.sroa.056.1 to i64        ; 7 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = icmp eq i64 %i.bb, 8
  %i.be = load ptr, ptr %.sroa.056.1, align 8, !tbaa !336 ; 6 uses
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !311
  store i64 %i.bg, ptr %i.ar, align 8, !tbaa !311
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !312
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !292
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !293
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !292
  invoke void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef %i.bi, i64 noundef %i.bk, i64 noundef %i.bm, ptr noundef %i.n, i64 noundef %i.bo)
          to label %.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread83

bb.r:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.056.1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !336 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 24
  %.val39 = load i64, ptr %i.bs, align 8, !tbaa !292
  %i.bt = getelementptr i8, ptr %i.be, i64 32
  %.val40 = load ptr, ptr %i.bt, align 8, !tbaa !312
  %i.bu = getelementptr i8, ptr %i.br, i64 24
  %.val41 = load i64, ptr %i.bu, align 8, !tbaa !292
  %i.bv = getelementptr i8, ptr %i.br, i64 32
  %.val42 = load ptr, ptr %i.bv, align 8, !tbaa !312
  %i.bw = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val37.val.val = load i64, ptr %i.bw, align 8, !tbaa !293
  %i.bx = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %.val37.val.val44 = load i64, ptr %i.bx, align 8, !tbaa !292
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %.val40, i64 noundef %.val39, ptr noundef %.val42, i64 noundef %.val41, i64 noundef %.val37.val.val, i64 noundef %.val37.val.val44, ptr noundef %i.n)
          to label %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" unwind label %bb.s

"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader": ; preds = %bb.r
  %i.by = icmp ugt i64 %i.bc, 2
  br i1 %i.by, label %.lr.ph112, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.thread83

.lr.ph112:                                        ; preds = %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader", %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48"
  %.0111 = phi i64 [ %i.ce, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ], [ 2, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.056.1, i64 %.0111
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !336 ; 2 uses
  %.val33 = load i64, ptr %i.bx, align 8, !tbaa !292 ; 2 uses
  %.val34 = load ptr, ptr %i.m, align 8, !tbaa !312
  %i.cc = getelementptr i8, ptr %i.cb, i64 24
  %.val35 = load i64, ptr %i.cc, align 8, !tbaa !292
  %i.cd = getelementptr i8, ptr %i.cb, i64 32
  %.val36 = load ptr, ptr %i.cd, align 8, !tbaa !312
  %.val.val.val = load i64, ptr %i.bw, align 8, !tbaa !293
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %.val34, i64 noundef %.val33, ptr noundef %.val36, i64 noundef %.val35, i64 noundef %.val.val.val, i64 noundef %.val33, ptr noundef %i.n)
          to label %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" unwind label %bb.t

"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48": ; preds = %.lr.ph112
  %i.ce = add nuw i64 %.0111, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.bc
  br i1 %exitcond.not, label %.thread, label %.lr.ph112, !llvm.loop !398

bb.t:                                             ; preds = %.lr.ph112
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.thread83

bb.u:                                             ; preds = %bb.n, %bb.m, %bb.j
  %.sroa.056.0.lcssa137 = phi ptr [ %.sroa.056.0.lcssa136144, %bb.n ], [ %.sroa.056.0.lcssa136144, %bb.m ], [ %.sroa.056.1, %bb.j ] ; 3 uses
  %.sroa.21.0.lcssa134 = phi ptr [ %.sroa.21.0.lcssa131145, %bb.n ], [ %.sroa.21.0.lcssa131145, %bb.m ], [ %.sroa.21.1, %bb.j ]
  %.not.i.i.i = icmp eq ptr %.sroa.056.0.lcssa137, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.u
  %.pre = ptrtoint ptr %.sroa.056.0.lcssa137 to i64
  br label %.thread

.thread:                                          ; preds = %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48", %..thread_crit_edge, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader", %bb.p
  %.sroa.056.0.lcssa138 = phi ptr [ %.sroa.056.0.lcssa137, %..thread_crit_edge ], [ %.sroa.056.1, %bb.p ], [ %.sroa.056.1, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ], [ %.sroa.056.1, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ]
  %.sroa.21.0.lcssa133 = phi ptr [ %.sroa.21.0.lcssa134, %..thread_crit_edge ], [ %.sroa.21.1, %bb.p ], [ %.sroa.21.1, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ], [ %.sroa.21.1, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ]
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.ba, %bb.p ], [ %i.ba, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ], [ %i.ba, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ]
  %i.cg = ptrtoint ptr %.sroa.21.0.lcssa133 to i64
  %i.ch = sub i64 %i.cg, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.0.lcssa138, i64 noundef %i.ch) #31
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit: ; preds = %.thread, %bb.u, %bb.a
  ret void

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %.sroa.21.0100 = phi ptr [ %.sroa.21.0.lcssa132, %bb.k ], [ %.sroa.15.0105, %.loopexit ], [ %.sroa.15.0105, %.loopexit.split-lp ]
  %.sroa.056.092 = phi ptr [ %.sroa.056.0.lcssa139, %bb.k ], [ %.sroa.056.0106, %.loopexit ], [ %.sroa.056.0106, %.loopexit.split-lp ] ; 3 uses
  %.pn29.pn = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %.sroa.056.092, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit50, label %..thread83_crit_edge

..thread83_crit_edge:                             ; preds = %bb.v
  %.pre119 = ptrtoint ptr %.sroa.056.092 to i64
  br label %.thread83

.thread83:                                        ; preds = %..thread83_crit_edge, %bb.s, %bb.t, %bb.q
  %.pre-phi120 = phi i64 [ %.pre119, %..thread83_crit_edge ], [ %i.ba, %bb.s ], [ %i.ba, %bb.t ], [ %i.ba, %bb.q ]
  %.sroa.21.099 = phi ptr [ %.sroa.21.0100, %..thread83_crit_edge ], [ %.sroa.21.1, %bb.s ], [ %.sroa.21.1, %bb.t ], [ %.sroa.21.1, %bb.q ]
  %.sroa.056.094 = phi ptr [ %.sroa.056.092, %..thread83_crit_edge ], [ %.sroa.056.1, %bb.s ], [ %.sroa.056.1, %bb.t ], [ %.sroa.056.1, %bb.q ]
  %.pn29.pn86 = phi { ptr, i32 } [ %.pn29.pn, %..thread83_crit_edge ], [ %i.bz, %bb.s ], [ %i.cf, %bb.t ], [ %i.bp, %bb.q ]
  %i.ci = ptrtoint ptr %.sroa.21.099 to i64
  %i.cj = sub i64 %i.ci, %.pre-phi120
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.094, i64 noundef %i.cj) #31
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit50

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit50: ; preds = %bb.v, %.thread83
  %.pn29.pn87 = phi { ptr, i32 } [ %.pn29.pn, %bb.v ], [ %.pn29.pn86, %.thread83 ]
  resume { ptr, i32 } %.pn29.pn87
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 3) i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 3 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.0.in.i = select i1 %i.c, ptr %0, ptr %i.d
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !399
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !295  ; 3 uses
  %i.g = icmp ult i32 %i.f, 39
  %switch.maskindex = zext nneg i32 %i.f to i64
  %switch.shifted = lshr i64 275280560129, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond23 = select i1 %i.g, i1 %switch.lobit, i1 false
  br i1 %or.cond23, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i8, ptr %i.h, align 8, !tbaa !400, !range !132, !noundef !133
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.j, i32 1, i32 2
  br label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !311  ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  %or.cond = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !293
  %i.t = icmp ne i64 %i.m, %i.s
  %cond.fr = freeze i1 %i.t
  %spec.select = select i1 %cond.fr, i32 0, i32 2
  br label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.u = zext nneg i32 %i.f to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE, i64 %i.u
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit

_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit: ; preds = %switch.lookup, %bb.e, %bb.d, %bb.c
  %.1 = phi i32 [ %switch.ext, %switch.lookup ], [ %i.k, %bb.c ], [ 1, %bb.d ], [ %spec.select, %bb.e ]
  ret i32 %.1
}

declare void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute6detail14KernelExecutor10MakeScalarEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.145") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutorESt14default_deleteIS4_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #29, !noalias !405 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false), !noalias !405
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutorE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !63, !noalias !405
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %i.b, align 8, !tbaa !250, !noalias !405
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 91
  store i8 1, ptr %i.c, align 1, !tbaa !252, !noalias !405
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, i8 0, i64 88, i1 false), !noalias !405
  store ptr %i.a, ptr %0, align 8, !tbaa !408
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute6detail14KernelExecutor10MakeVectorEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.145") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN5arrow7compute6detail12_GLOBAL__N_114VectorExecutorESt14default_deleteIS4_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #29, !noalias !411 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.a, i8 0, i64 192, i1 false), !noalias !411
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_114VectorExecutorE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !63, !noalias !411
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 83
  store i8 1, ptr %i.b, align 1, !tbaa !252, !noalias !411
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i8 0, i64 88, i1 false), !noalias !411
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !noalias !411
  store ptr %i.a, ptr %0, align 8, !tbaa !408
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute6detail14KernelExecutor19MakeScalarAggregateEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.145") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutorESt14default_deleteIS4_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #29, !noalias !414 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.a, i8 0, i64 208, i1 false), !noalias !414
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutorE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !63, !noalias !414
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 83
  store i8 1, ptr %i.b, align 1, !tbaa !252, !noalias !414
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i8 0, i64 88, i1 false), !noalias !414
  store ptr %i.a, ptr %0, align 8, !tbaa !408
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute11ExecContextC2EPNS_10MemoryPoolEPNS_8internal8ExecutorEPNS0_16FunctionRegistryE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(34) initializes((0, 34)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !417
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !422
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !423
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.c, align 8, !tbaa !424
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !425
  %i.e = icmp eq ptr %3, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN5arrow7compute19GetFunctionRegistryEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %3, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !426
  ret void
}

declare noundef ptr @_ZN5arrow7compute19GetFunctionRegistryEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK5arrow7compute11ExecContext8cpu_infoEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(34) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
  ret ptr %i.a
}

declare noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute15SelectionVectorC2ESt10shared_ptrINS_9ArrayDataEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %i.b, align 8, !tbaa !70
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !153
  %i.d = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !318
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !319  ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !272
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !337, !range !132, !noundef !133
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %i.m, ptr %i.o, ptr null, !prof !124
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.j
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit:     ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i, ptr %i.r, align 8, !tbaa !427
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN5arrow7compute15SelectionVectorC2ERKNS_5ArrayE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr %i.b, ptr %0, align 8, !tbaa !153
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.j, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !318
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !319  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i3, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !272
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !337, !range !132, !noundef !133
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !124
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.p
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, %bb.e
  %.0.i.i.i = phi ptr [ %i.w, %bb.e ], [ null, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !427
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5arrow7compute15SelectionVector6lengthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !211
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute15SelectionVector8FromMaskERKNS_12BooleanArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.177") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN5arrow6Status8FromArgsIJRA9_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(9) @.str.26)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_7compute15SelectionVectorEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  %i.a = load ptr, ptr %2, align 8, !tbaa !121    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !126, !range !132, !noundef !133
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_7compute15SelectionVectorEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.22", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !121
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !121
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !69

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv:bb.a
  store i32 0, ptr %i.s, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !84
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !551
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !551
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.j ], [ %i.af, %bb.k ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %bb.f
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !333
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !318
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !319 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !337, !range !132, !noundef !133
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !132
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false, !prof !124
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = select i1 %i.ar, ptr %i.at, ptr null, !prof !124
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.au, ptr %i.av, align 8, !tbaa !344
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !552
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.d, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aw = load ptr, ptr %2, align 8, !tbaa !121   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.m, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !124

bb.m:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i7, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ba, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !84
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #27, !inline_history !555
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #27, !inline_history !555
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.q ], [ %i.bn, %bb.r ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.s, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, !prof !69

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.o, %bb.m
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !121  ; 2 uses
  %.not.i.i8 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i8, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bp = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i ], [ %i.aw, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !126, !range !132, !noundef !133
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.u

bb.u:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow6BufferEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #27, !inline_history !556
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !557  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !72
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.255", align 16 ; 5 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow6BufferE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !559
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !337
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !560
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !561
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.e, align 8, !tbaa !562
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !563
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.255") align 8 %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <2 x ptr>, ptr %3, align 16, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !70   ; 8 uses
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !71
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !84
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #27, !inline_history !564
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #27, !inline_history !564
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #27
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !565
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !566 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !569, !range !132, !noundef !133
  store i8 %i.af, ptr %i.b, align 1, !tbaa !337
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.ad)
          to label %bb.i unwind label %bb.q, !inline_history !574

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !563
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !70  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.al, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !84
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !575
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  ret void

bb.p:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.ba, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #27
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27
  resume { ptr, i32 } %.pn
}

declare void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.255") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow6BufferE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !575
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !84
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27, !inline_history !576
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27, !inline_history !576
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD0Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow6Buffer17device_sync_eventEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.113") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #20

declare void @_ZN5arrow7compute13KernelContext14AllocateBitmapEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.274") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !84
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !577
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !577
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !126, !range !132, !noundef !133
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.136", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !84
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %i.d, align 8, !tbaa !70
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !319
  %i.f = load i64, ptr %2, align 8, !tbaa !181
  %i.g = load i64, ptr %3, align 8, !tbaa !181
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull %4, i64 noundef %i.f, i64 noundef %i.g)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !84
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !578
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !578
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.255", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !319
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !560
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %2
  tail call void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.d, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !70   ; 8 uses
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !84
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #27, !inline_history !579
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #27, !inline_history !579
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #27
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !319  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !565  ; 3 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !565
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 4 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !70
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i4 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !565
  %.pre7 = load ptr, ptr %i.aa, align 8, !tbaa !70
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, %bb.i, %bb.j
  %i.ai = phi ptr [ null, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit ], [ %i.ac, %bb.i ], [ %.pre7, %bb.j ]
  %i.aj = phi ptr [ %i.z, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit ], [ %i.z, %bb.i ], [ %.pre, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !580
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !70 ; 8 uses
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !70
  %.not.i.i.i.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i5, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.an, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !84
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27, !inline_history !564
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27, !inline_history !564
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
end_hunk_5
begin_hunk_6_@_ZN5arrow6Status8FromArgsIJRA45_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !605
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !72
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA44_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(44) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !608
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !608
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585, !noalias !608, !nonnull !133, !align !595
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(44) %2) #27, !noalias !608
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(44) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !608 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !608
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !608
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !72
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA86_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(86) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !611
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !611
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585, !noalias !611, !nonnull !133, !align !595
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(86) %2) #27, !noalias !611
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(86) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA86_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !611 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA86_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA86_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA86_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !611
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA86_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA86_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !611
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA86_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA86_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !72
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutorD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutorE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !519
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !519
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit2.i

_ZNSt6vectorIlSaIlEED2Ev.exit2.i:                 ; preds = %bb.c, %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !161  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i, label %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit2.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !508
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #31
  br label %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit

_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit2.i, %bb.d
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.v, align 8           ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i = load ptr, ptr %i.w, align 8
  %i.x = ptrtoint ptr %.val1.i to i64
  %i.y = ptrtoint ptr %.val.i to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.z) #31, !inline_history !614
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i: ; preds = %bb.e, %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i2.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ac, align 8, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !84
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #27, !inline_history !615
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #27, !inline_history !615
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.af, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.k, label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEED2Ev.exit, !prof !69

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #27, !inline_history !614
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEED2Ev.exit

_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutorD0Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutorD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE4InitEPNS0_13KernelContextENS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((8, 24)) %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.arrow::compute::KernelInitArgs") align 8 captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.319", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !616
  %i.b = load ptr, ptr %3, align 8, !tbaa !626    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !632
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !635, !nonnull !133, !align !595
  call void @_ZNK5arrow7compute10OutputType7ResolveEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.319") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load ptr, ptr %4, align 8, !tbaa !121
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultINS_10TypeHolderEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70, !noalias !636
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load <2 x ptr>, ptr %i.k, align 8, !tbaa !399, !noalias !636
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 8 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !70
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !84
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !69

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !642
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZN5arrow10TypeHolderD2Ev.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !121   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, !prof !124

bb.k:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.al, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !84
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.o ], [ %i.ay, %bb.p ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.q, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, !prof !69

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i

_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.m, %bb.k
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !121  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ba = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !126, !range !132, !noundef !133
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  br label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit

_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit:      ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %4 = alloca %"struct.arrow::compute::ExecSpan", align 8 ; 14 uses
  %5 = alloca %"struct.arrow::compute::ExecResult", align 16 ; 14 uses
  %6 = alloca %"class.arrow::Result.368", align 8 ; 21 uses
  %7 = alloca %"class.std::shared_ptr.35", align 16 ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %11 = alloca %"class.std::shared_ptr.35", align 16 ; 6 uses
  %12 = alloca %"class.std::shared_ptr.35", align 16 ; 13 uses
  %13 = alloca %"struct.arrow::compute::ExecSpan", align 8 ; 14 uses
  %14 = alloca %"struct.arrow::compute::ExecResult", align 8 ; 17 uses
  %15 = alloca %"class.arrow::Result.368", align 8 ; 13 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %17 = alloca %"class.std::shared_ptr.35", align 8 ; 6 uses
  %18 = alloca %"class.arrow::Result.368", align 8 ; 19 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %21 = alloca %"class.std::shared_ptr.35", align 8 ; 6 uses
  %22 = alloca %"struct.arrow::compute::ExecValue", align 8 ; 14 uses
  %23 = alloca %"struct.arrow::DataTypeLayout", align 8 ; 6 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %25 = alloca %"class.arrow::Result.109", align 8 ; 13 uses
  %26 = alloca %"class.std::shared_ptr.57", align 8 ; 9 uses
  %27 = alloca %"class.std::shared_ptr.60", align 16 ; 6 uses
  %28 = alloca %"class.std::shared_ptr.35", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.val29 = load ptr, ptr %i.b, align 8, !tbaa !616
  %.val29.val = load ptr, ptr %.val29, align 8, !tbaa !646
  %i.c = getelementptr inbounds nuw i8, ptr %.val29.val, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !423
  call void @_ZN5arrow7compute6detail16ExecSpanIterator4InitERKNS0_9ExecBatchElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %24, ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.d, i1 noundef zeroext true)
  %i.e = load ptr, ptr %24, align 8, !tbaa !121   ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.a, label %bb.iv

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !653, !noalias !650 ; 3 uses
  %.not.i35 = icmp eq ptr %i.k, null
  br i1 %.not.i35, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.l = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !660, !noalias !661 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !70, !alias.scope !661
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = load atomic i32, ptr %i.p monotonic, align 8, !noalias !661
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.d ], [ %i.u, %bb.f ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.s = cmpxchg weak ptr %i.p, i32 %.06.i.i.i.i.i.i.i, i32 %i.r acq_rel monotonic, align 8, !noalias !661 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1
  %i.u = extractvalue { i32, i1 } %i.s, 0
  br i1 %i.t, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.e, !llvm.loop !662

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.c
  %i.v = call ptr @__cxa_allocate_exception(i64 8) #27, !noalias !661 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt12bad_weak_ptr, i32 0, i32 0, i32 2), ptr %i.v, align 8, !tbaa !63, !noalias !661
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28, !noalias !661
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !663, !noalias !661
  store ptr %i.x, ptr %26, align 8, !tbaa !289, !alias.scope !661
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false), !alias.scope !650
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i
  %.val = load ptr, ptr %i.b, align 8, !tbaa !616
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !646
  %i.y = load ptr, ptr %.val.val, align 8, !tbaa !417
  invoke void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.109") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 noundef 0, ptr noundef %i.y)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70  ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !84
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #27, !inline_history !581
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #27, !inline_history !581
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #27
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.aq = load ptr, ptr %25, align 8, !tbaa !121
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.s, label %bb.p, !prof !124

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !121
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %common.resume

bb.r:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.au = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ax = load <2 x ptr>, ptr %i.au, align 8, !tbaa !71, !noalias !670
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !118, !noalias !670 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !70, !noalias !670
  store <2 x ptr> %i.ax, ptr %27, align 16, !tbaa !71, !alias.scope !670
  store ptr null, ptr %i.au, align 8, !tbaa !118, !noalias !670
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.az, align 8, !tbaa !71
  store <2 x ptr> %i.bd, ptr %28, align 16, !tbaa !71
  %.not.i.i.i36 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i36, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.v:                                             ; preds = %bb.t
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %bb.s, %bb.u, %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 90
  %.val30 = load i8, ptr %i.bj, align 2, !tbaa !251, !range !132, !noundef !133
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor10EmitResultESt10shared_ptrINS_9ArrayDataEEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i8 %.val30, ptr noundef %28, ptr noundef %3)
          to label %bb.w unwind label %bb.aj

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !70 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bl, align 8, !tbaa !82
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !84
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !156
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !156
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i38 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i38, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

bb.ab:                                            ; preds = %bb.z
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i40 = phi i32 [ %i.bo, %bb.aa ], [ %i.by, %bb.ab ]
  %i.bz = icmp eq i32 %.0.i.i.i.i40, 1
  br i1 %i.bz, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39, %bb.ac
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !70 ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cb, align 8, !tbaa !82
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE:_ZN5arrow6StatusD2Ev.exit
  %i.qg = sub i64 %i.qe, %i.qf
  call void @_ZdlPvm(ptr noundef nonnull %i.qb, i64 noundef %i.qg) #31
  br label %_ZN5arrow7compute8ExecSpanD2Ev.exit.i

_ZN5arrow7compute8ExecSpanD2Ev.exit.i:            ; preds = %bb.ex, %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !702
  %i.qh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !70, !noalias !702 ; 8 uses
  %.not.i.i131.i = icmp eq ptr %i.qi, null
  br i1 %.not.i.i131.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor12ExecuteSpansEPNS1_12ExecListenerE.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZN5arrow7compute8ExecSpanD2Ev.exit.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8 ; 4 uses
  %i.qk = load atomic i64, ptr %i.qj acquire, align 8 ; 2 uses
  %i.ql = icmp eq i64 %i.qk, 4294967297
  %i.qm = trunc i64 %i.qk to i32                  ; 2 uses
  br i1 %i.ql, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i32 0, ptr %i.qj, align 8, !tbaa !82
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  store i32 0, ptr %i.qn, align 4, !tbaa !84
  %i.qo = load ptr, ptr %i.qi, align 8, !tbaa !63
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(16) %i.qi) #27, !inline_history !712
  %i.qr = load ptr, ptr %i.qi, align 8, !tbaa !63
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8
  call void %i.qt(ptr noundef nonnull align 8 dereferenceable(16) %i.qi) #27, !inline_history !712
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor12ExecuteSpansEPNS1_12ExecListenerE.exit

bb.fa:                                            ; preds = %bb.ey
  %i.qu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !702
  %.not.i.i.i132.i = icmp eq i8 %i.qu, 0
  br i1 %.not.i.i.i132.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.qv = add nsw i32 %i.qm, -1
  store i32 %i.qv, ptr %i.qj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133.i

bb.fc:                                            ; preds = %bb.fa
  %i.qw = atomicrmw volatile add ptr %i.qj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133.i: ; preds = %bb.fc, %bb.fb
  %.0.i.i.i.i134.i = phi i32 [ %i.qm, %bb.fb ], [ %i.qw, %bb.fc ]
  %i.qx = icmp eq i32 %.0.i.i.i.i134.i, 1
  br i1 %i.qx, label %bb.fd, label %_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor12ExecuteSpansEPNS1_12ExecListenerE.exit, !prof !69

bb.fd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qi) #27
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor12ExecuteSpansEPNS1_12ExecListenerE.exit

bb.fe:                                            ; preds = %bb.dt, %bb.cu, %bb.co, %bb.bq, %bb.bp
  %.pn51.pn.pn.i = phi { ptr, i32 } [ %i.hv, %bb.bp ], [ %i.hw, %bb.bq ], [ %.pn51.i, %bb.co ], [ %.pn45.i, %bb.dt ], [ %i.km, %bb.cu ]
  call void @_ZN5arrow7compute10ExecResultD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !702
  call void @_ZN5arrow7compute8ExecSpanD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !702
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !702
  br label %common.resume

_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor12ExecuteSpansEPNS1_12ExecListenerE.exit: ; preds = %_ZN5arrow7compute8ExecSpanD2Ev.exit.i, %bb.ez, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133.i, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %bb.iv

bb.ff:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !noalias !728
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !728
  %i.qy = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %5, i8 0, i64 16, i1 false), !noalias !728
  store i64 -1, ptr %i.qy, align 16, !tbaa !311, !noalias !728
  %i.qz = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.qz, i8 0, i64 105, i1 false), !noalias !728
  %i.ra = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.rc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 90
  br label %bb.fg

bb.fg:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i90, %bb.ff
  %i.rh = invoke noundef zeroext i1 @_ZN5arrow7compute6detail16ExecSpanIterator4NextEPNS0_8ExecSpanE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull %4)
          to label %bb.fh unwind label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.rh, label %bb.fi, label %bb.he

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !728
  %i.ri = load i64, ptr %4, align 8, !tbaa !275, !noalias !728
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE13PrepareOutputEl(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef %i.ri)
          to label %bb.fj unwind label %bb.fm

bb.fj:                                            ; preds = %bb.fi
  %i.rj = load ptr, ptr %6, align 8, !tbaa !121, !noalias !728
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %bb.fo, label %bb.fk, !prof !124

bb.fk:                                            ; preds = %bb.fj
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !728
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.critedge50.i unwind label %bb.fn

bb.fl:                                            ; preds = %bb.fg
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

bb.fm:                                            ; preds = %bb.fi
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

bb.fn:                                            ; preds = %bb.fk
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.fo:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !728
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.ro = load <2 x ptr>, ptr %i.ra, align 8, !tbaa !71, !noalias !737
  store ptr null, ptr %i.rc, align 8, !tbaa !70, !noalias !737
  store <2 x ptr> %i.ro, ptr %7, align 16, !tbaa !71, !alias.scope !738, !noalias !728
  store ptr null, ptr %i.ra, align 8, !tbaa !153, !noalias !737
  %i.rp = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %5, ptr noundef nonnull align 8 dereferenceable(16) %7) #27 ; 0 uses
  %i.rq = load ptr, ptr %i.rb, align 8, !tbaa !70, !noalias !728 ; 8 uses
  %.not.i.i.i82 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i82, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 4 uses
  %i.rs = load atomic i64, ptr %i.rr acquire, align 8 ; 2 uses
  %i.rt = icmp eq i64 %i.rs, 4294967297
  %i.ru = trunc i64 %i.rs to i32                  ; 2 uses
  br i1 %i.rt, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  store i32 0, ptr %i.rr, align 8, !tbaa !82
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 12
  store i32 0, ptr %i.rv, align 4, !tbaa !84
  %i.rw = load ptr, ptr %i.rq, align 8, !tbaa !63
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #27, !inline_history !739
  %i.rz = load ptr, ptr %i.rq, align 8, !tbaa !63
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #27, !inline_history !739
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84

bb.fr:                                            ; preds = %bb.fp
  %i.sc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !728
  %.not.i.i.i.i83 = icmp eq i8 %i.sc, 0
  br i1 %.not.i.i.i.i83, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.sd = add nsw i32 %i.ru, -1
  store i32 %i.sd, ptr %i.rr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ft:                                            ; preds = %bb.fr
  %i.se = atomicrmw volatile add ptr %i.rr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ft, %bb.fs
  %.0.i.i.i.i.i = phi i32 [ %i.ru, %bb.fs ], [ %i.se, %bb.ft ]
  %i.sf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.sf, label %bb.fu, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84, !prof !69

bb.fu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84: ; preds = %bb.fu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.fq, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !728
  %i.sg = load i8, ptr %i.rd, align 16, !tbaa !724, !noalias !728
  switch i8 %i.sg, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke.i.loopexit [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke.i
  ], !prof !740

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke.i.loopexit: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke.i

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke.i: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke.i.loopexit
  %.str.29.sink.i = phi ptr [ @.str.29, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke.i.loopexit ], [ @.str.28, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84 ]
  %i.sh = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.sh, align 8, !tbaa !63
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  store ptr %.str.29.sink.i, ptr %i.si, align 8, !tbaa !100
  invoke void @__cxa_throw(ptr nonnull %i.sh, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont.i unwind label %bb.fw

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont.i: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke.i
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84
  %i.sj = load ptr, ptr %5, align 16, !tbaa !153, !noalias !728 ; 3 uses
  %i.sk = load ptr, ptr %i.do, align 8, !tbaa !674, !noalias !728
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 40
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !295
  %i.sn = icmp eq i32 %i.sm, 0
  br i1 %i.sn, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !211
  br label %_ZN5arrow6StatusD2Ev.exit56.sink.split.i

bb.fw:                                            ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke.i
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.fx:                                            ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i
  %i.sr = load ptr, ptr %i.fu, align 8, !tbaa !631, !noalias !728
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 84
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !683
  switch i32 %i.st, label %_ZN5arrow6StatusD2Ev.exit56.i [
    i32 0, label %bb.fy
    i32 3, label %_ZN5arrow6StatusD2Ev.exit56.sink.split.i
  ]

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !728
  %i.su = load ptr, ptr %i.b, align 8, !tbaa !616, !noalias !728
  invoke void @_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef %i.su, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.sj)
          to label %_ZN5arrow6StatusD2Ev.exit.i96 unwind label %bb.fz

_ZN5arrow6StatusD2Ev.exit.i96:                    ; preds = %bb.fy
  %i.sv = load ptr, ptr %8, align 8, !tbaa !121, !noalias !728 ; 2 uses
  store ptr %i.sv, ptr %0, align 8, !tbaa !121, !alias.scope !728
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !728
  %i.sw = icmp eq ptr %i.sv, null
  br i1 %i.sw, label %_ZN5arrow6StatusD2Ev.exit56.i, label %.critedge50.i

bb.fz:                                            ; preds = %bb.fy
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !728
  br label %bb.gv

_ZN5arrow6StatusD2Ev.exit56.sink.split.i:         ; preds = %bb.fx, %bb.fv
  %.sink.i85 = phi i64 [ %i.sp, %bb.fv ], [ 0, %bb.fx ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sj, i64 24
  store atomic i64 %.sink.i85, ptr %i.sy seq_cst, align 8
  br label %_ZN5arrow6StatusD2Ev.exit56.i

_ZN5arrow6StatusD2Ev.exit56.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit56.sink.split.i, %_ZN5arrow6StatusD2Ev.exit.i96, %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !728
  %i.sz = load ptr, ptr %i.fu, align 8, !tbaa !631, !noalias !728
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 72
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !741
  %i.tc = load ptr, ptr %i.b, align 8, !tbaa !616, !noalias !728
  invoke void %i.tb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef %i.tc, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %5)
          to label %_ZN5arrow6StatusD2Ev.exit58.i unwind label %bb.ga

_ZN5arrow6StatusD2Ev.exit58.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit56.i
  %i.td = load ptr, ptr %9, align 8, !tbaa !121, !noalias !728 ; 2 uses
  store ptr %i.td, ptr %0, align 8, !tbaa !121, !alias.scope !728
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !728
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %_ZN5arrow6StatusD2Ev.exit62.i, label %.critedge50.i

bb.ga:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit56.i
  %i.tf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !728
  br label %bb.gv

_ZN5arrow6StatusD2Ev.exit62.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit58.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !728
  %i.tg = load i8, ptr %i.rd, align 16, !tbaa !724, !noalias !728
  switch i8 %i.tg, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.invoke.i.loopexit [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit66.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.invoke.i
  ], !prof !740

_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.invoke.i.loopexit: ; preds = %_ZN5arrow6StatusD2Ev.exit62.i
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.invoke.i

_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.invoke.i: ; preds = %_ZN5arrow6StatusD2Ev.exit62.i, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.invoke.i.loopexit
  %.str.29.sink135.i = phi ptr [ @.str.29, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.invoke.i.loopexit ], [ @.str.28, %_ZN5arrow6StatusD2Ev.exit62.i ]
  %i.th = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.th, align 8, !tbaa !63
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store ptr %.str.29.sink135.i, ptr %i.ti, align 8, !tbaa !100
  invoke void @__cxa_throw(ptr nonnull %i.th, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.cont.i unwind label %bb.gk

_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.cont.i: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.invoke.i
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit66.i: ; preds = %_ZN5arrow6StatusD2Ev.exit62.i
  %i.tj = load ptr, ptr %i.rf, align 8, !tbaa !70, !noalias !728 ; 2 uses
  %i.tk = load <2 x ptr>, ptr %5, align 16, !tbaa !71, !noalias !728
  store <2 x ptr> %i.tk, ptr %11, align 16, !tbaa !71, !noalias !728
  %.not.i.i.i67.i = icmp eq ptr %i.tj, null
  br i1 %.not.i.i.i67.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i, label %bb.gb

bb.gb:                                            ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit66.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 8 ; 3 uses
  %i.tm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !728
  %.not.i.i.i.i.i86 = icmp eq i8 %i.tm, 0
  br i1 %.not.i.i.i.i.i86, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.tn = load i32, ptr %i.tl, align 4, !tbaa !3
  %i.to = add nsw i32 %i.tn, 1
  store i32 %i.to, ptr %i.tl, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i

bb.gd:                                            ; preds = %bb.gb
  %i.tp = atomicrmw volatile add ptr %i.tl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i: ; preds = %bb.gd, %bb.gc, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit66.i
  %.val.i87 = load i8, ptr %i.rg, align 2, !tbaa !251, !range !132, !noalias !728, !noundef !133
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor10EmitResultESt10shared_ptrINS_9ArrayDataEEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nonnull writable align 8 %10, i8 %.val.i87, ptr noundef %11, ptr noundef %3)
          to label %_ZN5arrow6StatusD2Ev.exit69.i unwind label %bb.gl

_ZN5arrow6StatusD2Ev.exit69.i:                    ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i
  %i.tq = load ptr, ptr %10, align 8, !tbaa !121, !noalias !728 ; 2 uses
  store ptr %i.tq, ptr %0, align 8, !tbaa !121, !alias.scope !728
  store ptr null, ptr %10, align 8, !tbaa !121, !noalias !728
  %i.tr = load ptr, ptr %i.re, align 8, !tbaa !70, !noalias !728 ; 8 uses
  %.not.i.i70.i = icmp eq ptr %i.tr, null
  br i1 %.not.i.i70.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i, label %bb.ge

bb.ge:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit69.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8 ; 4 uses
  %i.tt = load atomic i64, ptr %i.ts acquire, align 8 ; 2 uses
  %i.tu = icmp eq i64 %i.tt, 4294967297
  %i.tv = trunc i64 %i.tt to i32                  ; 2 uses
  br i1 %i.tu, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  store i32 0, ptr %i.ts, align 8, !tbaa !82
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 12
  store i32 0, ptr %i.tw, align 4, !tbaa !84
  %i.tx = load ptr, ptr %i.tr, align 8, !tbaa !63
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8
  call void %i.tz(ptr noundef nonnull align 8 dereferenceable(16) %i.tr) #27, !inline_history !739
  %i.ua = load ptr, ptr %i.tr, align 8, !tbaa !63
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  %i.uc = load ptr, ptr %i.ub, align 8
  call void %i.uc(ptr noundef nonnull align 8 dereferenceable(16) %i.tr) #27, !inline_history !739
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74thread-pre-split.i

bb.gg:                                            ; preds = %bb.ge
  %i.ud = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !728
  %.not.i.i.i71.i = icmp eq i8 %i.ud, 0
  br i1 %.not.i.i.i71.i, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ue = add nsw i32 %i.tv, -1
  store i32 %i.ue, ptr %i.ts, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72.i

bb.gi:                                            ; preds = %bb.gg
  %i.uf = atomicrmw volatile add ptr %i.ts, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72.i: ; preds = %bb.gi, %bb.gh
  %.0.i.i.i.i73.i = phi i32 [ %i.tv, %bb.gh ], [ %i.uf, %bb.gi ]
  %i.ug = icmp eq i32 %.0.i.i.i.i73.i, 1
  br i1 %i.ug, label %bb.gj, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74thread-pre-split.i, !prof !69

bb.gj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tr) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74thread-pre-split.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74thread-pre-split.i: ; preds = %bb.gj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72.i, %bb.gf
  %.pr.i88 = load ptr, ptr %0, align 8, !tbaa !121, !alias.scope !728
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74thread-pre-split.i, %_ZN5arrow6StatusD2Ev.exit69.i
  %i.uh = phi ptr [ %.pr.i88, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74thread-pre-split.i ], [ %i.tq, %_ZN5arrow6StatusD2Ev.exit69.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !728
  %i.ui = icmp eq ptr %i.uh, null
  %i.uj = load ptr, ptr %6, align 8, !tbaa !121, !noalias !728 ; 3 uses
  %i.uk = icmp eq ptr %i.uj, null                 ; 2 uses
  br i1 %i.ui, label %_ZN5arrow6StatusD2Ev.exit78.i, label %.critedge51.i

bb.gk:                                            ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i63.invoke.i
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gl:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i
  %i.um = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #27
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.pn40.pn.i = phi { ptr, i32 } [ %i.um, %bb.gl ], [ %i.ul, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !728
  br label %bb.gv

_ZN5arrow6StatusD2Ev.exit78.i:                    ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i
  br i1 %i.uk, label %bb.gn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i89, !prof !124

bb.gn:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit78.i
  %i.un = load ptr, ptr %i.rc, align 8, !tbaa !70, !noalias !728 ; 8 uses
  %.not.i.i.i.i.i.i91 = icmp eq ptr %i.un, null
  br i1 %.not.i.i.i.i.i.i91, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i90, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8 ; 4 uses
  %i.up = load atomic i64, ptr %i.uo acquire, align 8 ; 2 uses
  %i.uq = icmp eq i64 %i.up, 4294967297
  %i.ur = trunc i64 %i.up to i32                  ; 2 uses
  br i1 %i.uq, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  store i32 0, ptr %i.uo, align 8, !tbaa !82
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  store i32 0, ptr %i.us, align 4, !tbaa !84
  %i.ut = load ptr, ptr %i.un, align 8, !tbaa !63
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(16) %i.un) #27, !inline_history !742
  %i.uw = load ptr, ptr %i.un, align 8, !tbaa !63
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 24
  %i.uy = load ptr, ptr %i.ux, align 8
  call void %i.uy(ptr noundef nonnull align 8 dereferenceable(16) %i.un) #27, !inline_history !742
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i95

bb.gq:                                            ; preds = %bb.go
  %i.uz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !728
  %.not.i.i.i.i.i.i.i92 = icmp eq i8 %i.uz, 0
  br i1 %.not.i.i.i.i.i.i.i92, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.va = add nsw i32 %i.ur, -1
  store i32 %i.va, ptr %i.uo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i93

bb.gs:                                            ; preds = %bb.gq
  %i.vb = atomicrmw volatile add ptr %i.uo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i93

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i93: ; preds = %bb.gs, %bb.gr
  %.0.i.i.i.i.i.i.i.i94 = phi i32 [ %i.ur, %bb.gr ], [ %i.vb, %bb.gs ]
  %i.vc = icmp eq i32 %.0.i.i.i.i.i.i.i.i94, 1
  br i1 %i.vc, label %bb.gt, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i95, !prof !69

bb.gt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i93
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.un) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i95

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i95: ; preds = %bb.gt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i93, %bb.gp
  %.pr.i.pr.i = load ptr, ptr %6, align 8, !tbaa !121, !noalias !728 ; 2 uses
  %.not.i.i79.i = icmp eq ptr %.pr.i.pr.i, null
  br i1 %.not.i.i79.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i90, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i89, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i89: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i95, %_ZN5arrow6StatusD2Ev.exit78.i
  %i.vd = phi ptr [ %.pr.i.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i95 ], [ %i.uj, %_ZN5arrow6StatusD2Ev.exit78.i ]
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 1
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !126, !range !132, !noundef !133
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i90, label %bb.gu

bb.gu:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i89
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i90

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i90: ; preds = %bb.gu, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i89, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i95, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !728
  br label %bb.fg, !llvm.loop !743

bb.gv:                                            ; preds = %bb.gm, %bb.ga, %bb.fz, %bb.fw, %bb.fn
  %.pn44.i = phi { ptr, i32 } [ %i.rn, %bb.fn ], [ %i.sq, %bb.fw ], [ %.pn40.pn.i, %bb.gm ], [ %i.tf, %bb.ga ], [ %i.sx, %bb.fz ]
  %i.vh = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.vi = icmp eq ptr %i.vh, null
  br i1 %i.vi, label %bb.gw, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !124

bb.gw:                                            ; preds = %bb.gv
  %i.vj = load ptr, ptr %i.rc, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i102 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i.i.i.i102, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor11WrapResultsERKSt6vectorINS_5DatumESaIS5_EES9_:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

common.resume:                                    ; preds = %bb.l, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.ag, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %common.resume

bb.k:                                             ; preds = %.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 -1, ptr %i.af, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8, !tbaa !168
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZN5arrow5DatumC2ERKS0_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %0) #27
  br label %common.resume

_ZN5arrow5DatumC2ERKS0_.exit:                     ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !76
  store i8 %i.ai, ptr %i.af, align 8, !tbaa !76
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e, %bb.c, %_ZN5arrow5DatumC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE15CheckResultTypeERKNS_5DatumEPKc(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !750
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !674
  %i.f = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i1 noundef zeroext false)
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !674  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !751
  invoke void @_ZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(43) @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(16) @.str.47, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(13) @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %4, align 8, !tbaa !95, !noalias !751 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !72, !noalias !751
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %4, align 8, !tbaa !95, !noalias !751 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !72, !noalias !751
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !751
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !751
  %i.z = load ptr, ptr %6, align 8, !tbaa !95     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !72
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ae = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !72
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.h:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %.body
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !72
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.aq = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !72
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !756
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1 = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.e) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i2, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !84
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !759
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !759
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #23 align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

declare void @_ZNK5arrow7compute10OutputType7ResolveEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind writable sret(%"class.arrow::Result.319") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_10TypeHolderEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !84
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !760
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !760
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit

_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread, !prof !195

_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !126, !range !132, !noundef !133
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute12_GLOBAL__N_122ComputeDataPreallocateERKNS_8DataTypeEPSt6vectorINS1_19BufferPreallocationESaIS6_EE:bb.a
middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.bp, %n.vec62
  br i1 %cmp.n71, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i, label %.lr.ph.i.i.i.i.i15.preheader95

.lr.ph.i.i.i.i.i15.preheader95:                   ; preds = %.lr.ph.i.i.i.i.i15.preheader, %middle.block70
  %.03.i.i.i.i.i16.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i15.preheader ], [ %i.bs, %middle.block70 ]
  %.092.i.i.i.i.i17.ph = phi ptr [ %.val.i.i, %.lr.ph.i.i.i.i.i15.preheader ], [ %i.bt, %middle.block70 ]
  br label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %.lr.ph.i.i.i.i.i15.preheader95, %.lr.ph.i.i.i.i.i15
  %.03.i.i.i.i.i16 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i15 ], [ %.03.i.i.i.i.i16.ph, %.lr.ph.i.i.i.i.i15.preheader95 ] ; 2 uses
  %.092.i.i.i.i.i17 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i15 ], [ %.092.i.i.i.i.i17.ph, %.lr.ph.i.i.i.i.i15.preheader95 ] ; 2 uses
  %.09.val.i.i.i.i.i18 = load i64, ptr %.092.i.i.i.i.i17, align 4
  store i64 %.09.val.i.i.i.i.i18, ptr %.03.i.i.i.i.i16, align 4, !alias.scope !777
  %i.by = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i17, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i16, i64 8 ; 2 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.by, %i.as
  br i1 %.not.i.i.i.i.i19, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !781

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i: ; preds = %.lr.ph.i.i.i.i.i15, %middle.block70, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12
  %.0.lcssa.i.i.i.i.i20 = phi ptr [ %i.bi, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12 ], [ %i.bs, %middle.block70 ], [ %i.bz, %.lr.ph.i.i.i.i.i15 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i20, i64 8
  %.not.i41.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i41.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.az) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i
  store ptr %i.bi, ptr %1, align 8, !tbaa !697
  store ptr %i.ca, ptr %i.ar, align 8, !tbaa !698
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.cb, ptr %i.at, align 8, !tbaa !768
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !698 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !768
  %.not.i21 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 64, ptr %i.cd, align 4, !tbaa !769
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 1, ptr %i.cg, align 4, !tbaa !771
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !698
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.n:                                             ; preds = %bb.l
  %.val.i.i22 = load ptr, ptr %1, align 8, !tbaa !697 ; 7 uses
  %i.ci = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cj = ptrtoint ptr %.val.i.i22 to i64         ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %bb.o, label %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23: ; preds = %bb.n
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %i.cn = icmp eq ptr %i.cd, %.val.i.i22          ; 2 uses
  %.sroa.speculated.i.i.i24 = select i1 %i.cn, i64 1, i64 %i.cm
  %i.co = add nsw i64 %.sroa.speculated.i.i.i24, %i.cm ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cm
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i.i.i25 = icmp ne i64 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i25)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #29 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ck ; 2 uses
  store i32 64, ptr %i.cu, align 4, !tbaa !769
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 1, ptr %i.cv, align 4, !tbaa !771
  br i1 %i.cn, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31, label %.lr.ph.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23
  %i.cw = ptrtoaddr ptr %i.ct to i64
  %i.cx = add i64 %i.ci, -8
  %i.cy = sub i64 %i.cx, %i.cj                    ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 56
  %i.db = sub i64 %i.cw, %i.cj
  %diff.check = icmp ult i64 %i.db, 32
  %or.cond93 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond93, label %.lr.ph.i.i.i.i.i26.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.da, 4611686018427387900     ; 3 uses
  %i.dc = shl i64 %n.vec, 3                       ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ct, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %.val.i.i22, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.df ; 2 uses
  %next.gep53 = getelementptr i8, ptr %.val.i.i22, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep53, align 4
  %wide.load54 = load <2 x i64>, ptr %i.dg, align 4
  %i.dh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !782
  store <2 x i64> %wide.load54, ptr %i.dh, align 4, !alias.scope !782
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !785

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31, label %.lr.ph.i.i.i.i.i26.preheader97

.lr.ph.i.i.i.i.i26.preheader97:                   ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block
  %.03.i.i.i.i.i27.ph = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.dd, %middle.block ]
  %.092.i.i.i.i.i28.ph = phi ptr [ %.val.i.i22, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader97, %.lr.ph.i.i.i.i.i26
  %.03.i.i.i.i.i27 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i26 ], [ %.03.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader97 ] ; 2 uses
  %.092.i.i.i.i.i28 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i26 ], [ %.092.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader97 ] ; 2 uses
  %.09.val.i.i.i.i.i29 = load i64, ptr %.092.i.i.i.i.i28, align 4
  store i64 %.09.val.i.i.i.i.i29, ptr %.03.i.i.i.i.i27, align 4, !alias.scope !782
  %i.dj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i28, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.dj, %i.cd
  br i1 %.not.i.i.i.i.i30, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31, label %.lr.ph.i.i.i.i.i26, !llvm.loop !786

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31: ; preds = %.lr.ph.i.i.i.i.i26, %middle.block, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23
  %.0.lcssa.i.i.i.i.i32 = phi ptr [ %i.ct, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23 ], [ %i.dd, %middle.block ], [ %i.dk, %.lr.ph.i.i.i.i.i26 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i32, i64 8
  %.not.i41.i.i33 = icmp eq ptr %.val.i.i22, null
  br i1 %.not.i41.i.i33, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i22, i64 noundef %i.ck) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34: ; preds = %bb.p, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31
  store ptr %i.ct, ptr %1, align 8, !tbaa !697
  store ptr %i.dl, ptr %i.cc, align 8, !tbaa !698
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.dm, ptr %i.ce, align 8, !tbaa !768
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit: ; preds = %bb.a, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34, %bb.m, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.h, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE13PrepareOutputEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.35", align 16 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.57", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Result.274", align 8 ; 10 uses
  %6 = alloca %"class.arrow::Result.372", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !653, !noalias !787 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !660, !noalias !796 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !70, !alias.scope !796
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 8, !noalias !796
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.c ], [ %i.l, %bb.e ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.j = cmpxchg weak ptr %i.g, i32 %.06.i.i.i.i.i.i.i, i32 %i.i acq_rel monotonic, align 8, !noalias !796 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  %i.l = extractvalue { i32, i1 } %i.j, 0
  br i1 %i.k, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.d, !llvm.loop !662

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #27, !noalias !796 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt12bad_weak_ptr, i32 0, i32 0, i32 2), ptr %i.m, align 8, !tbaa !63, !noalias !796
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28, !noalias !796
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !663, !noalias !796 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !289, !alias.scope !796
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !787
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit:      ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, %bb.f
  %i.p = phi ptr [ %i.o, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ], [ null, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #29
          to label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.k ; 10 uses

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !82, !noalias !797
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !84, !noalias !797
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.r, align 8, !tbaa !63, !noalias !797
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70, !noalias !797
  store ptr %i.p, ptr %i.u, align 8, !tbaa !289, !noalias !797
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !70, !noalias !797
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %2, ptr %i.y, align 8, !tbaa !211, !noalias !797
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 -1, ptr %i.z, align 8, !tbaa !800, !noalias !797
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i8 0, i64 88, i1 false), !noalias !797
  store ptr %i.r, ptr %i.q, align 8, !tbaa !70, !alias.scope !797
  store ptr %i.u, ptr %3, align 16, !tbaa !710, !alias.scope !797
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !680 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %.not96 = icmp eq i32 %.pre, 0
  br i1 %.not96, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = sext i32 %.pre to i64
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.ac)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit unwind label %bb.l

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !682, !range !132, !noundef !133
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !616
  invoke void @_ZN5arrow7compute13KernelContext14AllocateBitmapEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.274") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %5, align 8, !tbaa !121
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %bb.n, label %bb.j, !prof !124

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bg

bb.l:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.m:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !71, !noalias !801
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !318 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70 ; 8 uses
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !71
  %.not.i.i.i.i41 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i41, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.as, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !84
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27, !inline_history !551
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27, !inline_history !551
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.r ], [ %i.bf, %bb.s ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t, %bb.j
  %i.bh = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.u, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !124

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i46, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bl, align 8, !tbaa !82
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !84
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !555
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !555
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.y ], [ %i.by, %bb.z ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.aa, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, !prof !69

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.w, %bb.u
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !121  ; 2 uses
  %.not.i.i47 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i47, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i ], [ %i.bh, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !126, !range !132, !noundef !133
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %i.aj, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !631
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 84
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !683
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE13PrepareOutputEl:bb.a
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #27, !inline_history !579
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i49 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i.i49, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50

bb.ap:                                            ; preds = %bb.an
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i51 = phi i32 [ %i.dm, %bb.ao ], [ %i.dw, %bb.ap ]
  %i.dx = icmp eq i32 %.0.i.i.i.i.i.i51, 1
  br i1 %i.dx, label %bb.aq, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #27
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ak, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50, %bb.aq, %bb.ai
  %i.dy = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ar, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !124

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ea = load ptr, ptr %i.cp, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i56 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.eb, align 8, !tbaa !82
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !84
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !63
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27, !inline_history !811
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !63
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27, !inline_history !811
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.au:                                            ; preds = %bb.as
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i57 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i.i.i57, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58

bb.aw:                                            ; preds = %bb.au
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i59 = phi i32 [ %i.ee, %bb.av ], [ %i.eo, %bb.aw ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i.i.i59, 1
  br i1 %i.ep, label %bb.ax, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !69

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58, %bb.at
  %.pr.i60.pr = load ptr, ptr %6, align 8, !tbaa !121 ; 2 uses
  %.not.i.i61 = icmp eq ptr %.pr.i60.pr, null
  br i1 %.not.i.i61, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eq = phi ptr [ %.pr.i60.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.dy, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !126, !range !132, !noundef !133
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %bb.ar, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %i.cz, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge, label %.loopexit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.val.pre = load ptr, ptr %i.cl, align 8, !tbaa !697
  %.val38.pre = load ptr, ptr %i.cm, align 8, !tbaa !698
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge, %bb.af
  %.val38 = phi ptr [ %.val38.pre, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge ], [ %.val3881, %bb.af ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge ], [ %.val79, %bb.af ] ; 2 uses
  %i.eu = add nuw i64 %.02676, 1                  ; 2 uses
  %i.ev = ptrtoint ptr %.val38 to i64
  %i.ew = ptrtoint ptr %.val to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 3
  %.not = icmp ult i64 %i.eu, %i.ey
  br i1 %.not, label %bb.af, label %.thread, !llvm.loop !812

.thread:                                          ; preds = %.critedge, %bb.ae
  store ptr null, ptr %0, align 8, !tbaa !121
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fa = load <2 x ptr>, ptr %3, align 16, !tbaa !71
  store <2 x ptr> %i.fa, ptr %i.ez, align 8, !tbaa !71
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.loopexit:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit
  %.pr = load ptr, ptr %i.q, align 8, !tbaa !70   ; 8 uses
  %.not.i.i62 = icmp eq ptr %.pr, null
  br i1 %.not.i.i62, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.fb = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fb, align 8, !tbaa !82
  %i.ff = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !84
  %i.fg = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !156
  %i.fj = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !156
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bb:                                            ; preds = %bb.az
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i63 = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i63, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

bb.bd:                                            ; preds = %bb.bb
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i65 = phi i32 [ %i.fe, %bb.bc ], [ %i.fo, %bb.bd ]
  %i.fp = icmp eq i32 %.0.i.i.i.i65, 1
  br i1 %i.fp, label %bb.be, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %.loopexit, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.bf:                                            ; preds = %bb.aj, %bb.m, %bb.l
  %.pn32.pn = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.al, %bb.l ], [ %i.da, %bb.aj ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.k
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.bf ], [ %i.ak, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn32.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor17ExecuteSingleSpanERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !724
  switch i8 %i.b, label %bb.b [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !740

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.29, ptr %i.d, align 8, !tbaa !100
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.e, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.28, ptr %i.f, align 8, !tbaa !100
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !674
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !295
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !293
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !311
  br label %_ZN5arrow6StatusD2Ev.exit

bb.d:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !631
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.r = load i32, ptr %i.q, align 4, !tbaa !683
  switch i32 %i.r, label %_ZN5arrow6StatusD2Ev.exit [
    i32 0, label %bb.e
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = load i8, ptr %i.s, align 8, !tbaa !694, !range !132, !noundef !133
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %3)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !311
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %bb.c, %bb.g, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !631
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !741
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !616
  call void %i.z(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %3)
  %i.ac = load ptr, ptr %4, align 8, !tbaa !121   ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !813
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !84
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !816
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !816
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !126, !range !132, !noundef !133
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute10ExecResultD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !724
  switch i8 %i.b, label %bb.c [
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS2_9ArrayDataEEEED2Ev.exit
    i8 0, label %bb.b
  ], !prof !726

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef nonnull align 8 dereferenceable(129) %0)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS2_9ArrayDataEEEED2Ev.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS2_9ArrayDataEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.e, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !84
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !817
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !817
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS2_9ArrayDataEEEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

end_hunk_10
begin_hunk_11_@_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_:bb.a
  store i32 0, ptr %i.f, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !84
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !837
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !837
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.h:                                             ; preds = %bb.a
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef nonnull align 8 dereferenceable(129) %0)
          to label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit unwind label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.w, align 8, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !84
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !838
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !838
  br label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit, !prof !69

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27
  br label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit

_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %i.am, align 8, !tbaa !70
  store <2 x ptr> %i.an, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !153
  store i8 1, ptr %i.a, align 8, !tbaa !724
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %_ZSt3getILm1EJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit, %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit
  ret ptr %0

bb.p:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ToChunkedArrayERKSt6vectorINS_5DatumESaIS4_EERKNS_10TypeHolderE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.65", align 8    ; 14 uses
  %4 = alloca %"class.std::shared_ptr.60", align 16 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.57", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !34     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.g, 4
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #29
          to label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %bb.i ; 3 uses

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %3, align 8, !tbaa !183
  store ptr %i.k, ptr %i.l, align 8, !tbaa !187
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.g
  store ptr %i.m, ptr %i.i, align 8, !tbaa !186
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.c
  %i.n = icmp eq ptr %i.c, %i.b
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %bb.w, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.q = load ptr, ptr %2, align 8, !tbaa !653, !noalias !839 ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !660, !noalias !848 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !70, !alias.scope !848
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 8, !noalias !848
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.e ], [ %i.aa, %bb.g ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.y = cmpxchg weak ptr %i.v, i32 %.06.i.i.i.i.i.i.i, i32 %i.x acq_rel monotonic, align 8, !noalias !848 ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  %i.aa = extractvalue { i32, i1 } %i.y, 0
  br i1 %i.z, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.f, !llvm.loop !662

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  %i.ab = call ptr @__cxa_allocate_exception(i64 8) #27, !noalias !848 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt12bad_weak_ptr, i32 0, i32 0, i32 2), ptr %i.ab, align 8, !tbaa !63, !noalias !848
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28
          to label %.noexc18 unwind label %bb.ao

.noexc18:                                         ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !663, !noalias !848
  store ptr %i.ad, ptr %5, align 8, !tbaa !289, !alias.scope !848
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !839
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

bb.i:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.j:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.027.030 = phi ptr [ %i.c, %.lr.ph ], [ %i.bd, %bb.w ] ; 3 uses
  %i.af = invoke noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.030)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.w, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.60") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.030)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !187 ; 5 uses
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !186
  %.not.i19 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i19, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr null, ptr %i.ak, align 8, !tbaa !70
  %i.al = load <2 x ptr>, ptr %4, align 16, !tbaa !71
  store ptr null, ptr %i.p, align 8, !tbaa !70
  store <2 x ptr> %i.al, ptr %i.ai, align 8, !tbaa !71
  store ptr null, ptr %4, align 16, !tbaa !118
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.am, ptr %i.o, align 8, !tbaa !187
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.y

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.p, %bb.o
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !70  ; 8 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ao, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !84
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #27, !inline_history !134
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #27, !inline_history !134
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi i32 [ %i.ar, %bb.t ], [ %i.bb, %bb.u ]
  %i.bc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bc, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.k, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.027.030, i64 24 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.b
  br i1 %i.be, label %._crit_edge, label %bb.j

bb.x:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn13 = phi { ptr, i32 } [ %i.bg, %bb.y ], [ %i.bf, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ar

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit:      ; preds = %bb.h, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  store ptr null, ptr %0, align 8, !tbaa !135, !alias.scope !849
  %i.bh = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29
          to label %.noexc21 unwind label %bb.ap  ; 6 uses

.noexc21:                                         ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 1, ptr %i.bi, align 8, !tbaa !82, !noalias !849
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 1, ptr %i.bj, align 4, !tbaa !84, !noalias !849
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.bh, align 8, !tbaa !63, !noalias !849
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EES3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !849

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc21
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 104) #31, !noalias !849
  br label %.body

bb.aa:                                            ; preds = %.noexc21
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bm, align 8, !tbaa !70, !alias.scope !849
  store ptr %i.bk, ptr %0, align 8, !tbaa !852, !alias.scope !849
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !70 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bp, align 8, !tbaa !82
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !84
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #27, !inline_history !581
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #27, !inline_history !581
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i23 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i23, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.af:                                            ; preds = %bb.ad
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i25 = phi i32 [ %i.bs, %bb.ae ], [ %i.cc, %bb.af ]
  %i.cd = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.cd, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #27
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ce = load ptr, ptr %3, align 8, !tbaa !183   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !187 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cy, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.ce, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.cj, align 8, !tbaa !82
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !84
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !63
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #27, !inline_history !206
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #27, !inline_history !206
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cm, %bb.ak ], [ %i.cw, %bb.al ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cx, label %bb.am, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !69

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ai, %.lr.ph.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.cy, %i.cg
  br i1 %.not.i.i.i26, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !207

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !183
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ce, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !186
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #31
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.ao:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.ap
  %eh.lpad-body = phi { ptr, i32 } [ %i.df, %bb.ap ], [ %i.bl, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %bb.aq

bb.aq:                                            ; preds = %.body, %bb.ao
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.de, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.l, %bb.z, %bb.aq, %bb.i
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %.pn, %bb.aq ], [ %.pn13, %bb.z ], [ %i.ah, %bb.l ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !183    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
end_hunk_11
begin_hunk_12_@_ZN5arrow12ChunkedArrayD2Ev:bb.a

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.y, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ad, align 8, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !84
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #27, !inline_history !206
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #27, !inline_history !206
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.l ], [ %i.aq, %bb.m ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !69

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !207

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !183
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !186
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #31
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.o
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(13) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585, !nonnull !133, !align !595
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %1) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(43) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E4_clIS4_EEDaSL_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E4_clIS4_EEDaSL_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !585, !nonnull !133, !align !595 ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !750    ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E4_clIS4_EEDaSL_.exit
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !865
  %i.m = or i32 %i.l, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.j, i32 noundef %i.m)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E3_clIS6_EEDaSL_.exit unwind label %bb.f

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E4_clIS4_EEDaSL_.exit
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #27
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.f, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E3_clIS6_EEDaSL_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E3_clIS6_EEDaSL_.exit: ; preds = %bb.b, %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !585, !nonnull !133, !align !595
  %i.q = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %3) #27
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 noundef %i.q)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E2_clIS8_EEDaSL_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E2_clIS8_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E3_clIS6_EEDaSL_.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !585, !nonnull !133, !align !595
  %i.t = load ptr, ptr %4, align 8, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !99
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t, i64 noundef %i.v)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E1_clISE_EEDaSL_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E1_clISE_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E2_clIS8_EEDaSL_.exit
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !585, !nonnull !133, !align !595
  %i.y = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %5) #27
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 1 dereferenceable(13) %5, i64 noundef %i.y)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E0_clISG_EEDaSL_.exit unwind label %bb.i ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E0_clISG_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E1_clISE_EEDaSL_.exit
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !585, !nonnull !133, !align !595
  %i.ab = load ptr, ptr %6, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !99
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E_clISE_EEDaSL_.exit unwind label %bb.j ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E_clISE_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E0_clISG_EEDaSL_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E_clISE_EEDaSL_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.e:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E3_clIS6_EEDaSL_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E2_clIS8_EEDaSL_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E1_clISE_EEDaSL_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E0_clISG_EEDaSL_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_ENKUlOT_E_clISE_EEDaSL_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.h, %bb.f, %bb.k
  %.pn18 = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.af, %bb.e ], [ %i.ag, %bb.f ], [ %i.ah, %bb.g ], [ %i.ai, %bb.h ], [ %i.ak, %bb.j ], [ %i.aj, %bb.i ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutorD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(216) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.241, align 1            ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_114VectorExecutorE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #30
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !89

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.h = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !519
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !519
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit2.i

_ZNSt6vectorIlSaIlEED2Ev.exit2.i:                 ; preds = %bb.e, %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !161 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i3.i, label %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit2.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !508
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #31
  br label %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit

_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit2.i, %bb.f
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.ai, align 8          ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i = load ptr, ptr %i.aj, align 8
  %i.ak = ptrtoint ptr %.val1.i to i64
  %i.al = ptrtoint ptr %.val.i to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.am) #31, !inline_history !872
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i: ; preds = %bb.g, %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i2.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ap, align 8, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !84
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #27, !inline_history !873
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #27, !inline_history !873
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %i.bc, %bb.l ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.m, label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #27, !inline_history !872
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEED2Ev.exit

_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutorD0Ev(ptr noundef nonnull align 8 dereferenceable(216) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutorD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEE4InitEPNS0_13KernelContextENS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((8, 24)) %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.arrow::compute::KernelInitArgs") align 8 captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.319", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !874
  %i.b = load ptr, ptr %3, align 8, !tbaa !626    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !877
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !632
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !635, !nonnull !133, !align !595
  call void @_ZNK5arrow7compute10OutputType7ResolveEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.319") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load ptr, ptr %4, align 8, !tbaa !121
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultINS_10TypeHolderEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70, !noalias !878
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load <2 x ptr>, ptr %i.k, align 8, !tbaa !399, !noalias !878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 8 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !70
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !84
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !69

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !883
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZN5arrow10TypeHolderD2Ev.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !121   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, !prof !124

bb.k:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.al, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !84
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !899
  %i.jl = icmp eq ptr %.pr.i, null
  br i1 %i.jl, label %bb.r, label %_ZN5arrow6StatusD2Ev.exit101.thread

_ZN5arrow6StatusD2Ev.exit101.thread:              ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  store ptr %.pr.i, ptr %0, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %.critedge

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit32.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !899
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i8 0, ptr %i.jm, align 16, !tbaa !76, !noalias !899
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !899
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !50, !noalias !899
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEE13PrepareOutputEl(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %i.jo)
          to label %bb.s unwind label %bb.u, !noalias !899

bb.s:                                             ; preds = %bb.r
  %i.jp = load ptr, ptr %11, align 8, !tbaa !121, !noalias !899
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.w, label %bb.t, !prof !124

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %22, align 8, !tbaa !121, !alias.scope !899
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge.i unwind label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.v:                                             ; preds = %bb.al, %bb.t
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !899
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.jt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jw = load <2 x ptr>, ptr %i.jt, align 8, !tbaa !71, !noalias !912
  store ptr null, ptr %i.jv, align 8, !tbaa !70, !noalias !912
  store <2 x ptr> %i.jw, ptr %12, align 16, !tbaa !71, !alias.scope !913, !noalias !899
  store ptr null, ptr %i.jt, align 8, !tbaa !153, !noalias !912
  %i.jx = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS2_S5_S7_S9_SB_SD_EE4typeEE18is_constructible_vISL_SI_E15is_assignable_vIRSL_SI_EERSE_E4typeESJ_(ptr noundef nonnull align 8 dereferenceable(17) %10, ptr noundef nonnull align 8 dereferenceable(16) %12) #27, !noalias !899 ; 0 uses
  %i.jy = load ptr, ptr %i.ju, align 8, !tbaa !70, !noalias !899 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.ka = load atomic i64, ptr %i.jz acquire, align 8, !noalias !899 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 4294967297
  %i.kc = trunc i64 %i.ka to i32                  ; 2 uses
  br i1 %i.kb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.jz, align 8, !tbaa !82, !noalias !899
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %i.kd, align 4, !tbaa !84, !noalias !899
  %i.ke = load ptr, ptr %i.jy, align 8, !tbaa !63, !noalias !899
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !899
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #27, !noalias !899, !inline_history !914
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !63, !noalias !899
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !899
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #27, !noalias !899, !inline_history !914
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.z:                                             ; preds = %bb.x
  %i.kk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !899
  %.not.i.i.i.i99 = icmp eq i8 %i.kk, 0
  br i1 %.not.i.i.i.i99, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kl = add nsw i32 %i.kc, -1
  store i32 %i.kl, ptr %i.jz, align 8, !tbaa !3, !noalias !899
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.km = atomicrmw volatile add ptr %i.jz, i32 -1 acq_rel, align 4, !noalias !899
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i = phi i32 [ %i.kc, %bb.aa ], [ %i.km, %bb.ab ]
  %i.kn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kn, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !69

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #27, !noalias !899
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !899
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !899
  %i.ko = load ptr, ptr %i.gy, align 8, !tbaa !877, !noalias !899
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 80
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !902, !noalias !899
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !874, !noalias !899
  invoke void %i.kq(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef %i.ks, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %10)
          to label %_ZN5arrow6StatusD2Ev.exit34.i unwind label %bb.ad, !noalias !899

_ZN5arrow6StatusD2Ev.exit34.i:                    ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.kt = load ptr, ptr %13, align 8, !tbaa !121, !noalias !899 ; 2 uses
  store ptr %i.kt, ptr %22, align 8, !tbaa !121, !alias.scope !899
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !899
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.ae, label %.critedge.i

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !899
  br label %bb.bk

bb.ae:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit34.i
  %i.kw = load i8, ptr %i.jm, align 16, !tbaa !76, !noalias !899
  switch i8 %i.kw, label %bb.al [
    i8 2, label %_ZNK5arrow5Datum5arrayEv.exit.i
    i8 3, label %_ZNK5arrow5Datum13chunked_arrayEv.exit.i
  ]

_ZNK5arrow5Datum5arrayEv.exit.i:                  ; preds = %bb.ae
  %i.kx = load ptr, ptr %10, align 16, !tbaa !153, !noalias !899 ; 3 uses
  store ptr %i.kx, ptr %15, align 8, !tbaa !153, !noalias !899
  %i.ky = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !70, !noalias !899 ; 4 uses
  store ptr %i.la, ptr %i.ky, align 8, !tbaa !70, !noalias !899
  %.not.i.i.i40.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i40.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNK5arrow5Datum5arrayEv.exit.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 3 uses
  %i.lc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !899
  %.not.i.i.i.i.i = icmp eq i8 %i.lc, 0
  br i1 %.not.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ld = load i32, ptr %i.lb, align 4, !tbaa !3, !noalias !899
  %i.le = add nsw i32 %i.ld, 1
  store i32 %i.le, ptr %i.lb, align 4, !tbaa !3, !noalias !899
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.lf = atomicrmw volatile add ptr %i.lb, i32 1 acq_rel, align 4, !noalias !899 ; 0 uses
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !153, !noalias !899
  %.pre58.i = load ptr, ptr %i.ky, align 8, !tbaa !70, !noalias !899
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i: ; preds = %bb.ah, %bb.ag, %_ZNK5arrow5Datum5arrayEv.exit.i
  %i.lg = phi ptr [ null, %_ZNK5arrow5Datum5arrayEv.exit.i ], [ %i.la, %bb.ag ], [ %.pre58.i, %bb.ah ]
  %i.lh = phi ptr [ %i.kx, %_ZNK5arrow5Datum5arrayEv.exit.i ], [ %i.kx, %bb.ag ], [ %.pre.i, %bb.ah ]
  store ptr %i.lh, ptr %14, align 8, !tbaa !153, !noalias !899
  %i.li = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.ky, align 8, !tbaa !70, !noalias !899
  store ptr %i.lg, ptr %i.li, align 8, !tbaa !70, !noalias !899
  store ptr null, ptr %15, align 8, !tbaa !153, !noalias !899
  %i.lj = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 2, ptr %i.lj, align 8, !tbaa !76, !noalias !899
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor10EmitResultENS_5DatumEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nonnull writable align 8 %22, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %14, ptr noundef %3)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !899
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZN5arrow5DatumD2Ev.exit.i unwind label %bb.aj, !noalias !899

bb.aj:                                            ; preds = %bb.ai
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #30, !noalias !899
  unreachable

_ZN5arrow5DatumD2Ev.exit.i:                       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !899
  br label %.critedge.i

bb.ak:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit.i
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #27, !noalias !899
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #27, !noalias !899
  br label %bb.bk

bb.al:                                            ; preds = %bb.ae
  %i.ln = call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !899 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.ln, align 8, !tbaa !63, !noalias !899
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store ptr @.str.29, ptr %i.lo, align 8, !tbaa !100, !noalias !899
  invoke void @__cxa_throw(ptr nonnull %i.ln, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc47.i unwind label %bb.v, !noalias !899

.noexc47.i:                                       ; preds = %bb.al
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit.i:         ; preds = %bb.ae
  %i.lp = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !70, !noalias !899 ; 2 uses
  %i.ls = load <2 x ptr>, ptr %10, align 16, !tbaa !71, !noalias !899
  store <2 x ptr> %i.ls, ptr %17, align 16, !tbaa !71, !noalias !899
  %.not.i.i.i48.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i48.i, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 3 uses
  %i.lu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !899
  %.not.i.i.i.i49.i = icmp eq i8 %i.lu, 0
  br i1 %.not.i.i.i.i49.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lv = load i32, ptr %i.lt, align 4, !tbaa !3, !noalias !899
  %i.lw = add nsw i32 %i.lv, 1
  store i32 %i.lw, ptr %i.lt, align 4, !tbaa !3, !noalias !899
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.lx = atomicrmw volatile add ptr %i.lt, i32 1 acq_rel, align 4, !noalias !899 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit.i: ; preds = %bb.ao, %bb.an, %_ZNK5arrow5Datum13chunked_arrayEv.exit.i
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull %17)
          to label %bb.ap unwind label %bb.ay, !noalias !899

bb.ap:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit.i
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor10EmitResultENS_5DatumEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nonnull writable align 8 %22, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %16, ptr noundef %3)
          to label %bb.aq unwind label %bb.az

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !899
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZN5arrow5DatumD2Ev.exit50.i unwind label %bb.ar, !noalias !899

bb.ar:                                            ; preds = %bb.aq
  %i.ly = landingpad { ptr, i32 }
          catch ptr null
  %i.lz = extractvalue { ptr, i32 } %i.ly, 0
  call void @__clang_call_terminate(ptr %i.lz) #30, !noalias !899
  unreachable

_ZN5arrow5DatumD2Ev.exit50.i:                     ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !899
  %i.ma = load ptr, ptr %i.lp, align 8, !tbaa !70, !noalias !899 ; 8 uses
  %.not.i.i51.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i51.i, label %.critedge.i, label %bb.as

bb.as:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit50.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8 ; 4 uses
  %i.mc = load atomic i64, ptr %i.mb acquire, align 8, !noalias !899 ; 2 uses
  %i.md = icmp eq i64 %i.mc, 4294967297
  %i.me = trunc i64 %i.mc to i32                  ; 2 uses
  br i1 %i.md, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.mb, align 8, !tbaa !82, !noalias !899
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  store i32 0, ptr %i.mf, align 4, !tbaa !84, !noalias !899
  %i.mg = load ptr, ptr %i.ma, align 8, !tbaa !63, !noalias !899
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !noalias !899
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(16) %i.ma) #27, !noalias !899, !inline_history !915
  %i.mj = load ptr, ptr %i.ma, align 8, !tbaa !63, !noalias !899
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8, !noalias !899
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(16) %i.ma) #27, !noalias !899, !inline_history !915
  br label %.critedge.i

bb.au:                                            ; preds = %bb.as
  %i.mm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !899
  %.not.i.i.i52.i = icmp eq i8 %i.mm, 0
  br i1 %.not.i.i.i52.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mn = add nsw i32 %i.me, -1
  store i32 %i.mn, ptr %i.mb, align 8, !tbaa !3, !noalias !899
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53.i

bb.aw:                                            ; preds = %bb.au
  %i.mo = atomicrmw volatile add ptr %i.mb, i32 -1 acq_rel, align 4, !noalias !899
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i54.i = phi i32 [ %i.me, %bb.av ], [ %i.mo, %bb.aw ]
  %i.mp = icmp eq i32 %.0.i.i.i.i54.i, 1
  br i1 %i.mp, label %bb.ax, label %.critedge.i, !prof !69

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ma) #27, !noalias !899
  br label %.critedge.i

bb.ay:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit.i
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.ap
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #27, !noalias !899
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn23.i = phi { ptr, i32 } [ %i.mr, %bb.az ], [ %i.mq, %bb.ay ]
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #27, !noalias !899
  br label %bb.bk

.critedge.i:                                      ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53.i, %bb.at, %_ZN5arrow5DatumD2Ev.exit50.i, %_ZN5arrow5DatumD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit34.i, %bb.t
  %i.ms = load ptr, ptr %11, align 8, !tbaa !121, !noalias !899 ; 2 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.bb, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i, !prof !124

bb.bb:                                            ; preds = %.critedge.i
  %i.mu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !70, !noalias !899 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 4 uses
  %i.mx = load atomic i64, ptr %i.mw acquire, align 8 ; 2 uses
  %i.my = icmp eq i64 %i.mx, 4294967297
  %i.mz = trunc i64 %i.mx to i32                  ; 2 uses
  br i1 %i.my, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.mw, align 8, !tbaa !82
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  store i32 0, ptr %i.na, align 4, !tbaa !84
  %i.nb = load ptr, ptr %i.mv, align 8, !tbaa !63
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8
  call void %i.nd(ptr noundef nonnull align 8 dereferenceable(16) %i.mv) #27, !inline_history !916
  %i.ne = load ptr, ptr %i.mv, align 8, !tbaa !63
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(16) %i.mv) #27, !inline_history !916
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i

bb.be:                                            ; preds = %bb.bc
  %i.nh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !899
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.nh, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ni = add nsw i32 %i.mz, -1
  store i32 %i.ni, ptr %i.mw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.nj = atomicrmw volatile add ptr %i.mw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.mz, %bb.bf ], [ %i.nj, %bb.bg ]
  %i.nk = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.nk, label %bb.bh, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i, !prof !69

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mv) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i: ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bd, %bb.bb
  %.pr.i.i98 = load ptr, ptr %11, align 8, !tbaa !121, !noalias !899 ; 2 uses
  %.not.i.i55.i = icmp eq ptr %.pr.i.i98, null
  br i1 %.not.i.i55.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i, %.critedge.i
  %i.nl = phi ptr [ %.pr.i.i98, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i ], [ %i.ms, %.critedge.i ]
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 1
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !126, !range !132, !noundef !133
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i: ; preds = %bb.bi, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !899
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !899
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN5arrow6StatusD2Ev.exit101 unwind label %bb.bj

bb.bj:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i
  %i.np = landingpad { ptr, i32 }
          catch ptr null
  %i.nq = extractvalue { ptr, i32 } %i.np, 0
end_hunk_13
begin_hunk_14_@_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE:bb.a
_ZN5arrow6StatusD2Ev.exit163:                     ; preds = %_ZN5arrow5DatumC2ERKS0_.exit
  %i.rz = load ptr, ptr %26, align 8, !tbaa !121  ; 3 uses
  store ptr null, ptr %26, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.cd

bb.cd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit163
  %i.sa = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.rz, ptr %0, align 8
  %i.sb = extractvalue { ptr, i32 } %i.sa, 0
  call void @__clang_call_terminate(ptr %i.sb) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow6StatusD2Ev.exit163
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.sc = icmp eq ptr %i.rz, null
  br i1 %i.sc, label %bb.ca, label %.critedge.loopexit

bb.ce:                                            ; preds = %_ZN5arrow5DatumC2ERKS0_.exit
  %i.sd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %common.resume

.critedge84:                                      ; preds = %bb.ca, %_ZN5arrow6StatusD2Ev.exit161, %_ZN5arrow6StatusD2Ev.exit105
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !925
  br label %.critedge

.critedge79:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit111
  br i1 %.not4.i.i.i.i116, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i184, label %.lr.ph.i.i.i.i169

.lr.ph.i.i.i.i169:                                ; preds = %.critedge79, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180
  %.05.i.i.i.i170 = phi ptr [ %i.sr, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180 ], [ %i.pf, %.critedge79 ] ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i170, i64 104 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !281 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i170, i64 112
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !282 ; 2 uses
  %.not.i.i12.i.i.i.i.i.i.i.i171 = icmp eq ptr %i.sf, %i.sh
  br i1 %.not.i.i12.i.i.i.i.i.i.i.i171, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i178, label %.lr.ph.i.i.i.i.i.i.i.i172

.lr.ph.i.i.i.i.i.i.i.i172:                        ; preds = %.lr.ph.i.i.i.i169, %.noexc.i.i.i.i.i.i.i.i174
  %.0.i.i3.i.i.i.i.i.i.i.i173 = phi ptr [ %i.si, %.noexc.i.i.i.i.i.i.i.i174 ], [ %i.sf, %.lr.ph.i.i.i.i169 ] ; 2 uses
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i.i.i.i173)
          to label %.noexc.i.i.i.i.i.i.i.i174 unwind label %bb.cf, !inline_history !283

.noexc.i.i.i.i.i.i.i.i174:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i172
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i.i.i.i173, i64 128 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i175 = icmp eq ptr %i.si, %i.sh
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i175, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i176, label %.lr.ph.i.i.i.i.i.i.i.i172, !llvm.loop !284

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i172
  %i.sj = landingpad { ptr, i32 }
          catch ptr null
  %i.sk = extractvalue { ptr, i32 } %i.sj, 0
  call void @__clang_call_terminate(ptr %i.sk) #30, !inline_history !285
  unreachable

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i176: ; preds = %.noexc.i.i.i.i.i.i.i.i174
  %.pre.i.i.i.i.i.i.i.i177 = load ptr, ptr %i.se, align 8, !tbaa !281
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i178

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i178: ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i176, %.lr.ph.i.i.i.i169
  %i.sl = phi ptr [ %.pre.i.i.i.i.i.i.i.i177, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i176 ], [ %i.sf, %.lr.ph.i.i.i.i169 ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i179 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i179, label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i178
  %i.sm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i170, i64 120
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !286
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = ptrtoint ptr %i.sl to i64
  %i.sq = sub i64 %i.so, %i.sp
  call void @_ZdlPvm(ptr noundef nonnull %i.sl, i64 noundef %i.sq) #31, !inline_history !287
  br label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180

_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180: ; preds = %bb.cg, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i178
  %i.sr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i170, i64 136 ; 2 uses
  %.not.i.i.i.i181 = icmp eq ptr %i.sr, %i.ph
  br i1 %.not.i.i.i.i181, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i182, label %.lr.ph.i.i.i.i169, !llvm.loop !288

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i182: ; preds = %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180
  %.pr.i.i183 = load ptr, ptr %i.pe, align 8, !tbaa !261
  br label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i184

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i184: ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i182, %.critedge79
  %i.ss = phi ptr [ %.pr.i.i183, %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i182 ], [ %i.pf, %.critedge79 ] ; 3 uses
  %.not.i.i1.i.i185 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i1.i.i185, label %_ZN5arrow7compute8ExecSpanD2Ev.exit186, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i184
  %i.st = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !528
  %i.sv = ptrtoint ptr %i.su to i64
  %i.sw = ptrtoint ptr %i.ss to i64
  %i.sx = sub i64 %i.sv, %i.sw
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef %i.sx) #31
  br label %_ZN5arrow7compute8ExecSpanD2Ev.exit186

_ZN5arrow7compute8ExecSpanD2Ev.exit186:           ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i184, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %.critedge

.critedge.loopexit:                               ; preds = %_ZN5arrow5DatumD2Ev.exit
  store ptr %i.rz, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZN5arrow7compute8ExecSpanD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit101.thread, %_ZN5arrow6StatusD2Ev.exit157, %_ZN5arrow6StatusD2Ev.exit101, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow7compute8ExecSpanD2Ev.exit186, %.critedge84
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor11WrapResultsERKSt6vectorINS_5DatumESaIS5_EES9_(ptr dead_on_unwind noalias writable sret(%"struct.arrow::Datum") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.228, align 8            ; 5 uses
  %5 = alloca %"class.std::shared_ptr.41", align 8 ; 4 uses
  %6 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.57", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !877
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 130
  %i.d = load i8, ptr %i.c, align 2, !tbaa !928, !range !132, !noundef !133
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %3, align 8, !tbaa !34
  br label %bb.ae

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !75    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.f, align 8, !tbaa !75 ; 2 uses
  %.not.i = icmp eq ptr %.val, %.val8
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 24 ; 2 uses
  %.not9.i = icmp eq ptr %i.g, %.val8
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.01.06.i = phi ptr [ %i.g, %bb.c ], [ %.val, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !76
  %.not5.i = icmp eq i8 %i.i, 3
  br i1 %.not5.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit, label %bb.ae

_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit: ; preds = %.lr.ph.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !653, !noalias !929 ; 3 uses
  %.not.i9 = icmp eq ptr %i.s, null
  br i1 %.not.i9, label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !660, !noalias !938 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !70, !alias.scope !938
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 8, !noalias !938
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.e ], [ %i.ac, %bb.g ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.aa = cmpxchg weak ptr %i.x, i32 %.06.i.i.i.i.i.i.i, i32 %i.z acq_rel monotonic, align 8, !noalias !938 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  %i.ac = extractvalue { i32, i1 } %i.aa, 0
  br i1 %i.ab, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.f, !llvm.loop !662

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #27, !noalias !938 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt12bad_weak_ptr, i32 0, i32 0, i32 2), ptr %i.ad, align 8, !tbaa !63, !noalias !938
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28, !noalias !938
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !663, !noalias !938
  %.pre16 = load ptr, ptr %i.t, align 8, !tbaa !70
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit:      ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i
  %i.ag = phi ptr [ %.pre16, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ], [ null, %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit ]
  %i.ah = phi ptr [ %i.af, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ], [ null, %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit ] ; 2 uses
  store ptr %i.ah, ptr %6, align 8, !tbaa !653
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !289
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !70
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !70
  store ptr null, ptr %7, align 8, !tbaa !289
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ToChunkedArrayERKSt6vectorINS_5DatumESaIS4_EERKNS_10TypeHolderE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.h unwind label %bb.ab

bb.h:                                             ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5)
          to label %bb.i unwind label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !70 ; 8 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.an, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !84
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27, !inline_history !138
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27, !inline_history !138
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.aq, %bb.m ], [ %i.ba, %bb.n ]
  %i.bb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bb, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i10 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i10, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bd, align 8, !tbaa !82
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !84
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #27, !inline_history !759
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #27, !inline_history !759
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.bg, %bb.s ], [ %i.bq, %bb.t ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.br, label %bb.u, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !69

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  %i.bs = load ptr, ptr %i.ak, align 8, !tbaa !70 ; 8 uses
  %.not.i.i11 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i11, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5arrow10TypeHolderD2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bt, align 8, !tbaa !82
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !84
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #27, !inline_history !581
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !63
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #27, !inline_history !581
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i12 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i12, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

bb.z:                                             ; preds = %bb.x
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i14 = phi i32 [ %i.bw, %bb.y ], [ %i.cg, %bb.z ]
  %i.ch = icmp eq i32 %.0.i.i.i.i14, 1
  br i1 %i.ch, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #27
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow10TypeHolderD2Ev.exit, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ag

bb.ab:                                            ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %bb.ad

common.resume:                                    ; preds = %bb.af, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.cm, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.ac ], [ %i.ci, %bb.ab ]
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.resume

bb.ae:                                            ; preds = %._crit_edge, %.loopexit
  %i.ck = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %.loopexit ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 -1, ptr %i.cl, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8, !tbaa !168
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_ZN5arrow5DatumC2ERKS0_.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %0) #27
  br label %common.resume

_ZN5arrow5DatumC2ERKS0_.exit:                     ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !76
  store i8 %i.co, ptr %i.cl, align 8, !tbaa !76
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5arrow5DatumC2ERKS0_.exit, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEE15CheckResultTypeERKNS_5DatumEPKc(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !750
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !889
  %i.f = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i1 noundef zeroext false)
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !889  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !939
  invoke void @_ZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(43) @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(16) @.str.47, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(13) @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %4, align 8, !tbaa !95, !noalias !939 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !72, !noalias !939
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %4, align 8, !tbaa !95, !noalias !939 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !72, !noalias !939
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !939
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !939
  %i.z = load ptr, ptr %6, align 8, !tbaa !95     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !72
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ae = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !72
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.h:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %.body
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !72
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.aq = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !72
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !944
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1 = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.e) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i2, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !84
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !759
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !759
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #23 align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor4ExecERKNS0_8ExecSpanEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %5 = alloca %"struct.arrow::compute::ExecResult", align 8 ; 17 uses
  %6 = alloca %"class.arrow::Result.368", align 8 ; 13 uses
  %7 = alloca %"class.std::shared_ptr.35", align 16 ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %11 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.a, align 8, !tbaa !311
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.b, i8 0, i64 105, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.c = load i64, ptr %2, align 8, !tbaa !275
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEE13PrepareOutputEl(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %6, align 8, !tbaa !121
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.c, !prof !124

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !121
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.critedge unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.e:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i41.invoke, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !947)
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !71, !noalias !953
  store ptr null, ptr %i.j, align 8, !tbaa !70, !noalias !953
  store <2 x ptr> %i.k, ptr %7, align 16, !tbaa !71, !alias.scope !953
  store ptr null, ptr %i.h, align 8, !tbaa !153, !noalias !953
  %i.l = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %5, ptr noundef nonnull align 8 dereferenceable(16) %7) #27 ; 0 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.n, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !84
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #27, !inline_history !156
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #27, !inline_history !156
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.j ], [ %i.aa, %bb.k ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !877 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !891
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %_ZN5arrow6StatusD2Ev.exit34

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !724
  switch i8 %i.ai, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !740

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.m
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.m, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.29.sink59 = phi ptr [ @.str.28, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.29, %bb.m ]
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.aj, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.str.29.sink59, ptr %i.ak, align 8, !tbaa !100
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.n

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit: ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !874
  %i.an = load ptr, ptr %5, align 8, !tbaa !153
  invoke void @_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.an)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.ao = load ptr, ptr %8, align 8, !tbaa !121   ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit34_crit_edge, label %.critedge

_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit34_crit_edge: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !877
  br label %_ZN5arrow6StatusD2Ev.exit34

bb.n:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.am

_ZN5arrow6StatusD2Ev.exit34:                      ; preds = %_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit34_crit_edge, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ar = phi ptr [ %.pre, %_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit34_crit_edge ], [ %i.ad, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !954
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !874
  invoke void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef %i.av, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %5)
          to label %_ZN5arrow6StatusD2Ev.exit36 unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %_ZN5arrow6StatusD2Ev.exit34
  %i.aw = load ptr, ptr %9, align 8, !tbaa !121   ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit40, label %.critedge

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit34
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.am

_ZN5arrow6StatusD2Ev.exit40:                      ; preds = %_ZN5arrow6StatusD2Ev.exit36
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !724
  switch i8 %i.ba, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i41.invoke [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit44
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i41
  ], !prof !740

_ZSt26__throw_bad_variant_accessb.exit.i.i.i41:   ; preds = %_ZN5arrow6StatusD2Ev.exit40
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i41.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i41.invoke: ; preds = %_ZN5arrow6StatusD2Ev.exit40, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i41
  %.str.29.sink = phi ptr [ @.str.28, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i41 ], [ @.str.29, %_ZN5arrow6StatusD2Ev.exit40 ]
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.bb, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.str.29.sink, ptr %i.bc, align 8, !tbaa !100
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i41.cont unwind label %bb.e

_ZSt26__throw_bad_variant_accessb.exit.i.i.i41.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i41.invoke
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit44: ; preds = %_ZN5arrow6StatusD2Ev.exit40
  %i.bd = load ptr, ptr %5, align 8, !tbaa !153   ; 3 uses
  store ptr %i.bd, ptr %11, align 8, !tbaa !153
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !70 ; 4 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !70
  %.not.i.i.i45 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i45, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit44
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.r:                                             ; preds = %bb.p
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre52 = load ptr, ptr %11, align 8, !tbaa !153
  %.pre53 = load ptr, ptr %i.be, align 8, !tbaa !70
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit44, %bb.q, %bb.r
  %i.bm = phi ptr [ null, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit44 ], [ %i.bg, %bb.q ], [ %.pre53, %bb.r ]
  %i.bn = phi ptr [ %i.bd, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit44 ], [ %i.bd, %bb.q ], [ %.pre52, %bb.r ]
  store ptr %i.bn, ptr %10, align 8, !tbaa !153
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.be, align 8, !tbaa !70
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !70
  store ptr null, ptr %11, align 8, !tbaa !153
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 2, ptr %i.bp, align 8, !tbaa !76
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor10EmitResultENS_5DatumEPNS1_12ExecListenerE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %10, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.critedge

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #27
  br label %bb.am

.critedge:                                        ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.c, %_ZN5arrow6StatusD2Ev.exit36, %_ZN5arrow6StatusD2Ev.exit
  %i.bt = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.v, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !124

bb.v:                                             ; preds = %.critedge
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bx, align 8, !tbaa !82
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !84
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #27, !inline_history !744
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !63
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #27, !inline_history !744
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.y:                                             ; preds = %bb.w
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.z ], [ %i.ck, %bb.aa ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.ab, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !69

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.x, %bb.v
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !121  ; 2 uses
  %.not.i.i51 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i51, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %.critedge
  %i.cm = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.bt, %.critedge ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !126, !range !132, !noundef !133
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !724
  switch i8 %i.cr, label %bb.ae [
    i8 -1, label %_ZN5arrow7compute10ExecResultD2Ev.exit
    i8 0, label %bb.ad
  ], !prof !726

bb.ad:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef nonnull align 8 dereferenceable(136) %5)
          to label %_ZN5arrow7compute10ExecResultD2Ev.exit unwind label %bb.al

bb.ae:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow7compute10ExecResultD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cu, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !84
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #27, !inline_history !749
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #27, !inline_history !749
  br label %_ZN5arrow7compute10ExecResultD2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cx, %bb.ai ], [ %i.dh, %bb.aj ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.di, label %bb.ak, label %_ZN5arrow7compute10ExecResultD2Ev.exit, !prof !69

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #27
  br label %_ZN5arrow7compute10ExecResultD2Ev.exit

bb.al:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #30
  unreachable

_ZN5arrow7compute10ExecResultD2Ev.exit:           ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, %bb.ad, %bb.ae, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.am:                                            ; preds = %bb.u, %bb.o, %bb.n, %bb.e
  %.pn25 = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.bs, %bb.u ], [ %i.ay, %bb.o ], [ %i.aq, %bb.n ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.d
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.am ], [ %i.f, %bb.d ]
  call void @_ZN5arrow7compute10ExecResultD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8ExecSpanC2ERKNS0_9ExecBatchE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50
  store i64 %i.c, ptr %0, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !34     ; 3 uses
  %.not37 = icmp eq ptr %i.e, %i.f
  br i1 %.not37, label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  invoke void @_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.j)
          to label %._ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit_crit_edge23 unwind label %bb.c

._ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit_crit_edge23: ; preds = %bb.b
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !39
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !34
  br label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit: ; preds = %bb.a, %._ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit_crit_edge23
  %i.k = phi ptr [ %.pre24, %._ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit_crit_edge23 ], [ %i.f, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %._ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit_crit_edge23 ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %i.l, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit
  ret void

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit, %bb.e
  %i.n = phi ptr [ %i.aa, %bb.e ], [ %i.k, %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit ] ; 2 uses
  %i.o = phi ptr [ %i.ab, %bb.e ], [ %i.l, %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit ]
  %.01622 = phi i64 [ %i.ac, %bb.e ], [ 0, %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE6resizeEm.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.01622 ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.r = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %.01622 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !76
  switch i8 %i.t, label %bb.d [
    i8 2, label %_ZNK5arrow5Datum5arrayEv.exit
    i8 1, label %_ZNK5arrow5Datum6scalarEv.exit
  ]

_ZNK5arrow5Datum5arrayEv.exit:                    ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !153
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(136) %i.r, ptr noundef nonnull align 8 dereferenceable(120) %i.u)
          to label %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit unwind label %.loopexit

_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit: ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  store ptr null, ptr %i.v, align 8, !tbaa !264
  %.pre25 = load ptr, ptr %i.d, align 8, !tbaa !39
  %.pre26 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.e

.loopexit:                                        ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @.str.29, ptr %i.x, align 8, !tbaa !100
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %bb.d
  unreachable

_ZNK5arrow5Datum6scalarEv.exit:                   ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  store ptr %i.y, ptr %i.z, align 8, !tbaa !264
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit, %_ZNK5arrow5Datum6scalarEv.exit
  %i.aa = phi ptr [ %.pre26, %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit ], [ %i.n, %_ZNK5arrow5Datum6scalarEv.exit ] ; 2 uses
  %i.ab = phi ptr [ %.pre25, %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit ], [ %i.o, %_ZNK5arrow5Datum6scalarEv.exit ] ; 2 uses
  %i.ac = add nuw i64 %.01622, 1                  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 24
  %i.ah = icmp ult i64 %i.ac, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !955

bb.f:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.c
  %.pn = phi { ptr, i32 } [ %i.m, %bb.c ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEE13PrepareOutputEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.35", align 16 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.57", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Result.274", align 8 ; 10 uses
  %6 = alloca %"class.arrow::Result.372", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !653, !noalias !956 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !660, !noalias !965 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !70, !alias.scope !965
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 8, !noalias !965
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.c ], [ %i.l, %bb.e ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.j = cmpxchg weak ptr %i.g, i32 %.06.i.i.i.i.i.i.i, i32 %i.i acq_rel monotonic, align 8, !noalias !965 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  %i.l = extractvalue { i32, i1 } %i.j, 0
  br i1 %i.k, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.d, !llvm.loop !662

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #27, !noalias !965 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt12bad_weak_ptr, i32 0, i32 0, i32 2), ptr %i.m, align 8, !tbaa !63, !noalias !965
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28, !noalias !965
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !663, !noalias !965 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !289, !alias.scope !965
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !956
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit:      ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, %bb.f
  %i.p = phi ptr [ %i.o, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ], [ null, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #29
          to label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.k ; 10 uses

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !82, !noalias !966
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !84, !noalias !966
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.r, align 8, !tbaa !63, !noalias !966
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70, !noalias !966
  store ptr %i.p, ptr %i.u, align 8, !tbaa !289, !noalias !966
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !70, !noalias !966
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %2, ptr %i.y, align 8, !tbaa !211, !noalias !966
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 -1, ptr %i.z, align 8, !tbaa !800, !noalias !966
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i8 0, i64 88, i1 false), !noalias !966
  store ptr %i.r, ptr %i.q, align 8, !tbaa !70, !alias.scope !966
  store ptr %i.u, ptr %3, align 16, !tbaa !710, !alias.scope !966
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !890 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %.not96 = icmp eq i32 %.pre, 0
  br i1 %.not96, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = sext i32 %.pre to i64
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.ac)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit unwind label %bb.l

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !894, !range !132, !noundef !133
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !874
  invoke void @_ZN5arrow7compute13KernelContext14AllocateBitmapEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.274") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %5, align 8, !tbaa !121
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %bb.n, label %bb.j, !prof !124

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bg

bb.l:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.m:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !71, !noalias !969
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !318 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70 ; 8 uses
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !71
  %.not.i.i.i.i41 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i41, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.as, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !84
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27, !inline_history !551
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27, !inline_history !551
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.r ], [ %i.bf, %bb.s ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t, %bb.j
  %i.bh = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.u, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !124

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i46, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bl, align 8, !tbaa !82
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !84
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !555
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !555
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.y ], [ %i.by, %bb.z ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.aa, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, !prof !69

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.w, %bb.u
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !121  ; 2 uses
  %.not.i.i47 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i47, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i ], [ %i.bh, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !126, !range !132, !noundef !133
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %i.aj, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !877
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !891
end_hunk_14
begin_hunk_15_@_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS2_S5_S7_S9_SB_SD_EE4typeEE18is_constructible_vISL_SI_E15is_assignable_vIRSL_SI_EERSE_E4typeESJ_:bb.a
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S5_S7_S9_SB_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit unwind label %bb.i

_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S5_S7_S9_SB_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %i.w, align 8, !tbaa !70
  store <2 x ptr> %i.x, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !153
  store i8 2, ptr %i.a, align 8, !tbaa !76
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %_ZSt3getILm2EJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit, %_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S5_S7_S9_SB_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit
  ret ptr %0

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA80_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(80) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !995
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !995
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585, !noalias !995, !nonnull !133, !align !595
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(80) %2) #27, !noalias !995
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(80) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !995 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !995
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !995
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !72
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA81_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(81) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !998
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !998
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585, !noalias !998, !nonnull !133, !align !595
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(81) %2) #27, !noalias !998
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(81) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !998 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !998
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !998
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !72
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutorD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutorE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !519
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !519
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit2.i

_ZNSt6vectorIlSaIlEED2Ev.exit2.i:                 ; preds = %bb.c, %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !161  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i, label %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit2.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !508
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #31
  br label %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit

_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit2.i, %bb.d
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.v, align 8           ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i = load ptr, ptr %i.w, align 8
  %i.x = ptrtoint ptr %.val1.i to i64
  %i.y = ptrtoint ptr %.val.i to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.z) #31, !inline_history !1001
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i: ; preds = %bb.e, %_ZN5arrow7compute6detail16ExecSpanIteratorD2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i2.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ac, align 8, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !84
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #27, !inline_history !1002
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #27, !inline_history !1002
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.af, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.k, label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEED2Ev.exit, !prof !69

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #27, !inline_history !1001
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEED2Ev.exit

_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutorD0Ev(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutorD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutor4InitEPNS0_13KernelContextENS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) initializes((8, 24), (192, 208)) %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.arrow::compute::KernelInitArgs") align 8 captures(none) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.c = load <2 x ptr>, ptr %i.a, align 8, !tbaa !71
  store <2 x ptr> %i.c, ptr %i.b, align 8, !tbaa !71
  tail call void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEE4InitEPNS0_13KernelContextENS0_14KernelInitArgsE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef nonnull byval(%"struct.arrow::compute::KernelInitArgs") align 8 %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %5 = alloca %class.anon.241, align 1            ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.arrow::Result.414", align 8 ; 11 uses
  %7 = alloca %"struct.arrow::compute::KernelInitArgs", align 8 ; 5 uses
  %8 = alloca %"class.arrow::compute::KernelContext", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %12 = alloca %"struct.arrow::compute::ExecSpan", align 8 ; 11 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %14 = alloca %"struct.arrow::Datum", align 16   ; 10 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %17 = alloca %"struct.arrow::Datum", align 16   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !1003
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !646
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !423
  call void @_ZN5arrow7compute6detail16ExecSpanIterator4InitERKNS0_9ExecBatchElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.e, i1 noundef zeroext false)
  %i.f = load ptr, ptr %11, align 8, !tbaa !121   ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.a, label %bb.aa

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %_ZN5arrow6StatusD2Ev.exit50

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZN5arrow6StatusD2Ev.exit50.backedge, %bb.a
  %i.n = invoke noundef zeroext i1 @_ZN5arrow7compute6detail16ExecSpanIterator4NextEPNS0_8ExecSpanE(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull %12)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit50
  br i1 %i.n, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %12, align 8, !tbaa !275
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit50.backedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !1006
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !1009, !noalias !1006 ; 4 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !1003, !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !1006
  store ptr %i.q, ptr %7, align 8, !tbaa !626, !noalias !1006
  %i.s = load <2 x ptr>, ptr %i.j, align 8, !tbaa !71, !noalias !1006
  store <2 x ptr> %i.s, ptr %i.i, align 8, !tbaa !71, !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1006
  store ptr %i.r, ptr %i.a, align 8, !tbaa !918, !noalias !1010
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !917, !noalias !1010
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZNKSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEclESA_SD_.exit.i

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8
  invoke void @_ZSt25__throw_bad_function_callv() #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEclESA_SD_.exit.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1013, !noalias !1010
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.414") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %.noexc44 unwind label %.loopexit, !inline_history !1014

.noexc44:                                         ; preds = %_ZNKSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEclESA_SD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !1006
  %i.y = load ptr, ptr %6, align 8, !tbaa !121, !noalias !1006
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %bb.f, !prof !124

bb.f:                                             ; preds = %.noexc44
  store ptr null, ptr %13, align 8, !tbaa !121, !alias.scope !1006
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  br label %_ZNSt10unique_ptrIN5arrow7compute11KernelStateESt14default_deleteIS2_EED2Ev.exit47.i

bb.h:                                             ; preds = %.noexc44
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !1015, !noalias !1016 ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 6 uses
  store ptr null, ptr %i.k, align 8, !tbaa !1015, !noalias !1016
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
end_hunk_15
begin_hunk_16_@_ZN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE:_ZN5arrow6StatusD2Ev.exit
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #31
  br label %_ZN5arrow7compute8ExecSpanD2Ev.exit

_ZN5arrow7compute8ExecSpanD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.aa

bb.z:                                             ; preds = %bb.v, %.body, %bb.p
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %.body ], [ %.pn29.pn, %bb.v ], [ %i.bk, %bb.p ]
  call void @_ZN5arrow7compute8ExecSpanD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  resume { ptr, i32 } %.pn32.pn

bb.aa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow7compute8ExecSpanD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutor11WrapResultsERKSt6vectorINS_5DatumESaIS5_EES9_(ptr dead_on_unwind noalias writable sret(%"struct.arrow::Datum") align 8 initializes((16, 17)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.228, align 8            ; 5 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 -1, ptr %i.b, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8, !tbaa !168
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN5arrow5DatumC2ERKS0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %0) #27
  resume { ptr, i32 } %i.c

_ZN5arrow5DatumC2ERKS0_.exit:                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !76
  store i8 %i.e, ptr %i.b, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEE15CheckResultTypeERKNS_5DatumEPKc(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !750
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1032
  %i.f = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i1 noundef zeroext false)
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1032 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !1033
  invoke void @_ZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(43) @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(16) @.str.47, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(13) @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %4, align 8, !tbaa !95, !noalias !1033 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !72, !noalias !1033
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %4, align 8, !tbaa !95, !noalias !1033 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !72, !noalias !1033
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !1033
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !1033
  %i.z = load ptr, ptr %6, align 8, !tbaa !95     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !72
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ae = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !72
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.h:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %.body
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !72
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.aq = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !72
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !1038
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1 = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.e) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i2, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !84
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !759
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !759
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #23 align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEE4InitEPNS0_13KernelContextENS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((8, 24)) %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.arrow::compute::KernelInitArgs") align 8 captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.319", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1003
  %i.b = load ptr, ptr %3, align 8, !tbaa !626    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !1009
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !632
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !635, !nonnull !133, !align !595
  call void @_ZNK5arrow7compute10OutputType7ResolveEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.319") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load ptr, ptr %4, align 8, !tbaa !121
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultINS_10TypeHolderEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70, !noalias !1041
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load <2 x ptr>, ptr %i.k, align 8, !tbaa !399, !noalias !1041
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 8 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !70
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !84
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !69

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !1046
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZN5arrow10TypeHolderD2Ev.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !121   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, !prof !124

bb.k:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.al, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !84
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i
end_hunk_16
