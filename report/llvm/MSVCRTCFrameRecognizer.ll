Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MSVCRTCFrameRecognizer?download=true
inline.NumInlined: 277
inline.NumDeleted: 181
begin_hunk_0_@_ZN12lldb_private22MSVCRTCFrameRecognizer14RecognizeFrameESt10shared_ptrINS_10StackFrameEE:bb.a
  switch i32 %.3, label %.loopexit [
    i32 4, label %bb.an
    i32 2, label %.loopexit.sink.split
  ]

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private8VariableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ee = add nuw i64 %.0956, 1                   ; 2 uses
  %i.ef = load ptr, ptr %4, align 8, !tbaa !45
  %i.eg = call noundef i64 @_ZNK12lldb_private12VariableList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ef) #13
  %i.eh = icmp ult i64 %i.ee, %i.eg
  br i1 %i.eh, label %bb.g, label %.loopexit.sink.split, !llvm.loop !82

.loopexit.sink.split:                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private8VariableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.an, %.preheader, %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt12__shared_ptrIN12lldb_private8VariableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.loopexit.sink.split
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !34 ; 8 uses
  %.not.i.i36 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i36, label %_ZNSt12__shared_ptrIN12lldb_private12VariableListELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = icmp eq i64 %i.el, 4294967297
  %i.en = trunc i64 %i.el to i32                  ; 2 uses
  br i1 %i.em, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ek, align 8, !tbaa !16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 0, ptr %i.eo, align 4, !tbaa !19
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #13, !inline_history !83
  %i.es = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #13, !inline_history !83
  br label %_ZNSt12__shared_ptrIN12lldb_private12VariableListELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i37 = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i37, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ew = add nsw i32 %i.en, -1
  store i32 %i.ew, ptr %i.ek, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38

bb.as:                                            ; preds = %bb.aq
  %i.ex = atomicrmw volatile add ptr %i.ek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i39 = phi i32 [ %i.en, %bb.ar ], [ %i.ex, %bb.as ]
  %i.ey = icmp eq i32 %.0.i.i.i.i39, 1
  br i1 %i.ey, label %bb.at, label %_ZNSt12__shared_ptrIN12lldb_private12VariableListELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #13
  br label %_ZNSt12__shared_ptrIN12lldb_private12VariableListELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private12VariableListELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.d, %bb.e, %_ZNSt12__shared_ptrIN12lldb_private12VariableListELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  ret void
}

declare noundef i64 @_ZNK12lldb_private12VariableList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNK12lldb_private12VariableList18GetVariableAtIndexEm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.199") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare ptr @_ZNK12lldb_private8Variable7GetNameEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

declare void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

declare noundef i64 @_ZN12lldb_private7Process21ReadCStringFromMemoryEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224), i64 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK12lldb_private6Status7SuccessEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !54, !alias.scope !84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !56, !alias.scope !84
  store i8 0, ptr %i.e, align 8, !tbaa !27, !alias.scope !84
  %i.g = add i64 %i.d, %i.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g) #13
  %i.h = load i64, ptr %i.f, align 8, !tbaa !56, !alias.scope !84
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a) #13 ; 0 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !56, !alias.scope !84
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %bb.c, label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #15
  unreachable

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d) #13 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private22MSVCRTCRecognizedFrameC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !56
  store i8 0, ptr %i.d, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12lldb_private22MSVCRTCRecognizedFrameE, i64 16), ptr %0, align 8, !tbaa !20
  %i.f = load ptr, ptr %1, align 8, !tbaa !79     ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !56   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %1, %i.c
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  switch i64 %i.j, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.f, align 1, !tbaa !27
  store i8 %i.l, ptr %i.d, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.m = load i64, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  store i64 %i.m, ptr %i.e, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !27
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.f, ptr %i.c, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56
  store i64 %i.p, ptr %i.e, align 8, !tbaa !56
  %i.q = load i64, ptr %i.g, align 8, !tbaa !27
  store i64 %i.q, ptr %i.d, align 8, !tbaa !27
  store ptr %i.g, ptr %1, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e
  %i.r = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.g, %bb.e ], [ %i.f, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !56
  store i8 0, ptr %i.r, align 1, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10shared_ptrIN12lldb_private20RecognizedStackFrameEEC2INS0_22MSVCRTCRecognizedFrameEvEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !34
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  store i32 1, ptr %i.d, align 4, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private22MSVCRTCRecognizedFrameELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !90
  store ptr %i.b, ptr %i.a, align 8, !tbaa !34
  %i.f = icmp eq ptr %1, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.f, label %_ZNSt12__shared_ptrIN12lldb_private20RecognizedStackFrameELN9__gnu_cxx12_Lock_policyE2EEC2INS0_22MSVCRTCRecognizedFrameEvEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN12lldb_private20RecognizedStackFrameELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i

_ZNKSt10__weak_ptrIN12lldb_private20RecognizedStackFrameELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN12lldb_private20RecognizedStackFrameELN9__gnu_cxx12_Lock_policyE2EEC2INS0_22MSVCRTCRecognizedFrameEvEEPT_.exit

bb.c:                                             ; preds = %_ZNKSt10__weak_ptrIN12lldb_private20RecognizedStackFrameELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i, %bb.b
  store ptr %1, ptr %i.g, align 8, !tbaa !93
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i3.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.d, align 4, !tbaa !28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i7.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i7.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.p, align 4, !tbaa !28   ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.t, %bb.h ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #13, !inline_history !95
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i
  store ptr %i.b, ptr %i.h, align 8, !tbaa !29
  br label %_ZNSt12__shared_ptrIN12lldb_private20RecognizedStackFrameELN9__gnu_cxx12_Lock_policyE2EEC2INS0_22MSVCRTCRecognizedFrameEvEEPT_.exit

_ZNSt12__shared_ptrIN12lldb_private20RecognizedStackFrameELN9__gnu_cxx12_Lock_policyE2EEC2INS0_22MSVCRTCRecognizedFrameEvEEPT_.exit: ; preds = %bb.a, %_ZNKSt10__weak_ptrIN12lldb_private20RecognizedStackFrameELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private22MSVCRTCFrameRecognizer7GetNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 38, ptr %i.a, align 8, !tbaa !96
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !79
  %i.d = load i64, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.c, ptr noundef nonnull align 1 dereferenceable(38) @.str.4, i64 38, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private22MSVCRTCFrameRecognizerD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN12lldb_private20StackFrameRecognizerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !28   ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZN12lldb_private20StackFrameRecognizerD2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !97
  br label %_ZN12lldb_private20StackFrameRecognizerD2Ev.exit

_ZN12lldb_private20StackFrameRecognizerD2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !28   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !98
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private20RecognizedStackFrameD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12lldb_private20RecognizedStackFrameE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
end_hunk_0
