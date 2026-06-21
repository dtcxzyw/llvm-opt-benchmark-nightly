inline.NumInlined: 10069
inline.NumDeleted: 2207
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEED2Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3135
  br label %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit

_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !108
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !111
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !197
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 8), (32, 40)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEEE, i64 16), ptr %i.a, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3136
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3136
  br label %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit.i, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3137
  br label %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit.i

_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !108
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !111
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !3138
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !3138
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.m, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEED2Ev.exit, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !3139
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEED2Ev.exit: ; preds = %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.508, align 1            ; 3 uses
  %5 = alloca %class.anon.510, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.508, align 1            ; 3 uses
  %8 = alloca %class.anon.510, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge68

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !3140
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.q = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3140 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !84, !noalias !3140
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3140 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !84, !noalias !3140
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3140
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3140
  %i.ab = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !84
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge68

bb.g:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ah = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !84
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !158
  %.not54105 = icmp sgt i64 %i.ao, 0
  br i1 %.not54105, label %_ZN5arrow6StatusD2Ev.exit89.lr.ph, label %.critedge70

_ZN5arrow6StatusD2Ev.exit89.lr.ph:                ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit89

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !158
  %i.au = shl i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !466
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.au, ptr noundef %i.aw)
  %i.ax = load ptr, ptr %11, align 8, !tbaa !140
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge66 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  call void @llvm.experimental.noalias.scope.decl(metadata !3148)
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !204, !noalias !3151 ; 2 uses
  store i64 %i.bb, ptr %12, align 8, !tbaa !204, !alias.scope !3151
  store ptr null, ptr %i.ba, align 8, !tbaa !204, !noalias !3151
  %.cast = inttoptr i64 %i.bb to ptr              ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !121, !range !129, !noundef !130
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !range !129
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = select i1 %i.be, i1 %i.bh, i1 false, !prof !97
  %i.bj = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = select i1 %i.bi, ptr %i.bk, ptr null, !prof !97
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !158
  %.not56.not103 = icmp sgt i64 %i.bo, 0
  br i1 %.not56.not103, label %.lr.ph, label %.critedge64

.lr.ph:                                           ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.br = add nuw nsw i64 %.039104, 1             ; 2 uses
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !158
  %.not56.not = icmp slt i64 %i.br, %i.bu
  br i1 %.not56.not, label %bb.n, label %.critedge64, !llvm.loop !3152

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.039104 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !3153
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %.039104
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !85
  store i16 %i.bx, ptr %i.a, align 2, !tbaa !85
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.039104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !3155
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !3155
  invoke void @_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEE11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNS8_ItEES9_SB_SC_EUliE0_EES9_SB_OT0_OT1_SC_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(100) %i.bp, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.by)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !3155
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !3155
  %i.bz = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.bz, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.m, label %.critedge72

bb.o:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.z

.critedge64:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc82 unwind label %bb.y

.noexc82:                                         ; preds = %.critedge64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !112 ; 8 uses
  %i.ce = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.cf = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.cf, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.ce, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.noexc82
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.cg, align 8, !tbaa !108
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !111
  %i.cl = load ptr, ptr %i.cd, align 8, !tbaa !87
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #25, !inline_history !1749
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !87
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #25, !inline_history !1749
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.cj, %bb.s ], [ %i.ct, %bb.t ]
  %i.cu = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cu, label %bb.u, label %bb.v, !prof !98

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cv = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i83 = icmp eq ptr %i.cv, null
  br i1 %.not.i83, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.v
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !87
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cv) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.cz = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.db = load ptr, ptr %i.ba, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i84, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !87
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.db) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.df = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.cz, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !143, !range !129, !noundef !130
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

bb.y:                                             ; preds = %.critedge64
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn57 = phi { ptr, i32 } [ %i.dj, %bb.y ], [ %i.cb, %bb.o ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i85 = icmp eq ptr %15, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86: ; preds = %bb.z
  %i.dk = load ptr, ptr %15, align 8, !tbaa !87
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87, %bb.k
  %.pn60 = phi { ptr, i32 } [ %i.az, %bb.k ], [ %.pn57, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit89:                      ; preds = %_ZN5arrow6StatusD2Ev.exit89.lr.ph, %_ZN5arrow6StatusD2Ev.exit93
  %.037106 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit89.lr.ph ], [ %i.ds, %_ZN5arrow6StatusD2Ev.exit93 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.dn = load ptr, ptr %i.aq, align 8, !tbaa !3153
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %.037106
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !85
  store i16 %i.dp, ptr %i.c, align 2, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !3158
  call void @_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEE11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNS8_ItEES9_SB_SC_EUliE0_EES9_SB_OT0_OT1_SC_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(100) %i.ap, ptr noundef nonnull align 2 dereferenceable(2) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !3158
  %i.dq = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.dq, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dr = icmp eq ptr %i.dq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.dr, label %_ZN5arrow6StatusD2Ev.exit93, label %.critedge68

_ZN5arrow6StatusD2Ev.exit93:                      ; preds = %_ZN5arrow6StatusD2Ev.exit89
  %i.ds = add nuw nsw i64 %.037106, 1             ; 2 uses
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !158
  %.not54 = icmp slt i64 %i.ds, %i.dv
  br i1 %.not54, label %_ZN5arrow6StatusD2Ev.exit89, label %.critedge70, !llvm.loop !3161

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit93, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !3162
  br label %.critedge68

.critedge66:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge68

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i94 = icmp eq ptr %16, null
  br i1 %.not.i94, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit96, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i95

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i95: ; preds = %.critedge72
  %i.dw = load ptr, ptr %16, align 8, !tbaa !87
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit96

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit96: ; preds = %.critedge72, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.dz = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i97, !prof !97

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit96
  %i.eb = load ptr, ptr %i.ba, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i98, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i99

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i99: ; preds = %bb.ab
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !87
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.eb) #25, !inline_history !215
  %.pr.pre.i100 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i101 = icmp eq ptr %.pr.pre.i100, null
  br i1 %.not.i.i101, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i97, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i97: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i99, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit96
  %i.ef = phi ptr [ %.pr.pre.i100, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i99 ], [ %i.dz, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit96 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !143, !range !129, !noundef !130
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit102, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i97
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit102

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit102: ; preds = %bb.ab, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i99, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i97, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge68

.critedge68:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit89, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit102, %.critedge70, %.critedge66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn60.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn60, %bb.aa ]
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !474
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !480
  %i.g = icmp ne i32 %i.f, -1
  %i.h = zext i1 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.d                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEEC2EPNS_10MemoryPoolEll:bb.a

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !3478
  store i64 2147483646, ptr %i.b, align 8, !tbaa !86, !noalias !3478
  invoke void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 1 dereferenceable(32) @.str.39, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !3478
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !140, !noalias !3475 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !3478
  store ptr %.pr.i, ptr %6, align 8, !tbaa !140, !alias.scope !3475
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !3475
  %i.ah = icmp eq ptr %.pr.i, null
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11ReserveDataEl.exit.thread18

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %.noexc
  %.pre.i = load i64, ptr %i.ad, align 8, !tbaa !1063, !noalias !3481
  %.pre12.i = add nsw i64 %.pre.i, %i.y
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ %i.af, %_ZN5arrow6StatusD2Ev.exit10.thread.i ] ; 2 uses
  %i.ai = load i64, ptr %i.t, align 8, !tbaa !1722, !noalias !3481 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre-phi.i, %i.ai
  br i1 %.not.i.i.i, label %bb.f, label %_ZN5arrow6StatusD2Ev.exit16

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %i.ai, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %.pre-phi.i, i64 %i.aj)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 noundef %.sroa.speculated.i.i.i.i, i1 noundef zeroext false)
          to label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11ReserveDataEl.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.d) #25
  call void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_13BinaryBuilderEE7PayloadEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #25
  resume { ptr, i32 } %i.ak

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11ReserveDataEl.exit: ; preds = %bb.f
  %.pr = load ptr, ptr %6, align 8, !tbaa !140    ; 2 uses
  %.not.i15 = icmp eq ptr %.pr, null
  br i1 %.not.i15, label %_ZN5arrow6StatusD2Ev.exit16, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11ReserveDataEl.exit.thread18, !prof !3486

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11ReserveDataEl.exit.thread18: ; preds = %.noexc, %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11ReserveDataEl.exit
  %i.al = phi ptr [ %.pr, %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11ReserveDataEl.exit ], [ %.pr.i, %.noexc ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !143, !range !129, !noundef !130
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN5arrow6StatusD2Ev.exit16, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11ReserveDataEl.exit.thread18
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit16

_ZN5arrow6StatusD2Ev.exit16:                      ; preds = %bb.e, %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11ReserveDataEl.exit, %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11ReserveDataEl.exit.thread18, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !3487
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3488
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3488
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3487
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.563, align 1            ; 3 uses
  %5 = alloca %class.anon.565, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.563, align 1            ; 3 uses
  %8 = alloca %class.anon.565, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !3489
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3489 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !3489
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3489 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !3489
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3489
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3489
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56109 = icmp sgt i64 %i.am, 0
  br i1 %.not56109, label %_ZN5arrow6StatusD2Ev.exit93.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit93.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !158
  %i.at = shl i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !535
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.at, ptr noundef %i.av)
  %i.aw = load ptr, ptr %11, align 8, !tbaa !140
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3494)
  call void @llvm.experimental.noalias.scope.decl(metadata !3497)
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !204, !noalias !3500 ; 2 uses
  store i64 %i.ba, ptr %12, align 8, !tbaa !204, !alias.scope !3500
  store ptr null, ptr %i.az, align 8, !tbaa !204, !noalias !3500
  %.cast = inttoptr i64 %i.ba to ptr              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !129
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false, !prof !97
  %i.bi = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %i.bh, ptr %i.bj, ptr null, !prof !97
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !158
  %.not58.not107 = icmp sgt i64 %i.bn, 0
  br i1 %.not58.not107, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.br = add nuw nsw i64 %.053108, 1             ; 2 uses
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.br, %i.bu
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !3501

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053108 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !3502
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.053108 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3  ; 2 uses
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !3504
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.bw, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = sub nsw i32 %i.cc, %i.bx
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.053108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !3505
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !3505
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bo, ptr noundef %i.ca, i32 noundef %i.cd, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.ce)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !3505
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !3505
  %i.cf = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.m, label %.critedge74

bb.o:                                             ; preds = %bb.n
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.z

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.y

.noexc84:                                         ; preds = %.critedge66
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112 ; 8 uses
  %i.ck = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.cl = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.cl, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.ck, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.noexc84
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.cm, align 8, !tbaa !108
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !111
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !87
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25, !inline_history !1749
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !87
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25, !inline_history !1749
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.cp, %bb.s ], [ %i.cz, %bb.t ]
  %i.da = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.da, label %bb.u, label %bb.v, !prof !98

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.db = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.db, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.v
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !87
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.db) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.df = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dh = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !87
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dh) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dl = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.df, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !143, !range !129, !noundef !130
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.y:                                             ; preds = %.critedge66
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.dp, %bb.y ], [ %i.ch, %bb.o ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.z
  %i.dq = load ptr, ptr %15, align 8, !tbaa !87
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit93:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93.lr.ph, %_ZN5arrow6StatusD2Ev.exit97
  %.046110 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit93.lr.ph ], [ %i.ee, %_ZN5arrow6StatusD2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dt = load ptr, ptr %i.ao, align 8, !tbaa !3502
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.046110 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3  ; 2 uses
  %i.dw = load ptr, ptr %i.ap, align 8, !tbaa !3504
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.du, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = sub nsw i32 %i.ea, %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !3510
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !3510
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dy, i32 noundef %i.eb, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !3510
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !3510
  %i.ec = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.ec, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.ed = icmp eq ptr %i.ec, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.ed, label %_ZN5arrow6StatusD2Ev.exit97, label %.critedge70

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93
  %i.ee = add nuw nsw i64 %.046110, 1             ; 2 uses
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.ee, %i.eh
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit93, label %.critedge72, !llvm.loop !3515

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit97, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !3516
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i98 = icmp eq ptr %16, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99: ; preds = %.critedge74
  %i.ei = load ptr, ptr %16, align 8, !tbaa !87
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.el = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !97

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.en = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103: ; preds = %bb.ab
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !87
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.en) #25, !inline_history !215
  %.pr.pre.i104 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i105 = icmp eq ptr %.pr.pre.i104, null
  br i1 %.not.i.i105, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.er = phi ptr [ %.pr.pre.i104, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103 ], [ %i.el, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !143, !range !129, !noundef !130
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106: ; preds = %bb.ab, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit93, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.aa ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10StringTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3519
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3474
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_1
begin_hunk_2_@_ZN5arrow8internalL17ComputeNullBitmapINS0_15BinaryMemoTableINS_13BinaryBuilderEEEEENS_6StatusEPNS_10MemoryPoolERKT_lPlPSt10shared_ptrINS_6BufferEE:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #25, !inline_history !212
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #25, !inline_history !212
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.v ], [ %i.bn, %bb.w ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.x, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !98

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.t, %bb.r
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !140  ; 2 uses
  %.not.i.i37 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i37, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bp = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.aw, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !143, !range !129, !noundef !130
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.ac, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !3679
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %bb.z
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !3682
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3683
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3683
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3682
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.563, align 1            ; 3 uses
  %5 = alloca %class.anon.565, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.563, align 1            ; 3 uses
  %8 = alloca %class.anon.565, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !3684
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3684 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !3684
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3684 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !3684
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3684
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3684
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ae

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56107 = icmp sgt i64 %i.am, 0
  br i1 %.not56107, label %_ZN5arrow6StatusD2Ev.exit91.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit91.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_ZN5arrow6StatusD2Ev.exit91

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !158
  %i.ar = shl i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !559
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.ar, ptr noundef %i.at)
  %i.au = load ptr, ptr %11, align 8, !tbaa !140
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  call void @llvm.experimental.noalias.scope.decl(metadata !3692)
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !204, !noalias !3695 ; 2 uses
  store i64 %i.ay, ptr %12, align 8, !tbaa !204, !alias.scope !3695
  store ptr null, ptr %i.ax, align 8, !tbaa !204, !noalias !3695
  %.cast = inttoptr i64 %i.ay to ptr              ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !range !129
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false, !prof !97
  %i.bg = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = select i1 %i.bf, ptr %i.bh, ptr null, !prof !97
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !158
  %.not58.not105 = icmp sgt i64 %i.bl, 0
  br i1 %.not58.not105, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bn = add nuw nsw i64 %.053106, 1             ; 2 uses
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.bn, %i.bq
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !3696

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053106 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.br = invoke { i64, ptr } @_ZNK5arrow15BinaryViewArray7GetViewEl(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %.053106)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bs = extractvalue { i64, ptr } %i.br, 0
  %i.bt = extractvalue { i64, ptr } %i.br, 1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.053106
  %i.bv = trunc i64 %i.bs to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !3697
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !3697
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bm, ptr noundef %i.bt, i32 noundef %i.bv, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.bu)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.p

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !3697
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !3697
  %i.bw = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.m, label %.critedge74

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.aa

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.z

.noexc84:                                         ; preds = %.critedge66
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !112 ; 8 uses
  %i.cb = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.cc = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.cc, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.cb, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %.noexc84
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cd, align 8, !tbaa !108
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !111
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25, !inline_history !1749
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !87
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25, !inline_history !1749
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.cg, %bb.t ], [ %i.cq, %bb.u ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cr, label %bb.v, label %bb.w, !prof !98

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cs = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.cs, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.w
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !87
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cs) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.w, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.cw = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.x, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.cy = load ptr, ptr %i.ax, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.x
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !87
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cy) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dc = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.cw, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !143, !range !129, !noundef !130
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.x, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.z:                                             ; preds = %.critedge66
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.p
  %.pn59 = phi { ptr, i32 } [ %i.dg, %bb.z ], [ %i.by, %bb.p ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.aa
  %i.dh = load ptr, ptr %15, align 8, !tbaa !87
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ae

_ZN5arrow6StatusD2Ev.exit91:                      ; preds = %_ZN5arrow6StatusD2Ev.exit91.lr.ph, %_ZN5arrow6StatusD2Ev.exit95
  %.046108 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit91.lr.ph ], [ %i.dq, %_ZN5arrow6StatusD2Ev.exit95 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dk = call { i64, ptr } @_ZNK5arrow15BinaryViewArray7GetViewEl(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %.046108) ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0
  %i.dm = extractvalue { i64, ptr } %i.dk, 1
  %i.dn = trunc i64 %i.dl to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !3702
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !3702
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dm, i32 noundef %i.dn, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !3702
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !3702
  %i.do = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.do, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dp = icmp eq ptr %i.do, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dp, label %_ZN5arrow6StatusD2Ev.exit95, label %.critedge70

_ZN5arrow6StatusD2Ev.exit95:                      ; preds = %_ZN5arrow6StatusD2Ev.exit91
  %i.dq = add nuw nsw i64 %.046108, 1             ; 2 uses
  %i.dr = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.dq, %i.dt
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit91, label %.critedge72, !llvm.loop !3707

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit95, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !3708
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i96 = icmp eq ptr %16, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i97

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i97: ; preds = %.critedge74
  %i.du = load ptr, ptr %16, align 8, !tbaa !87
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.dx = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ac, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i99, !prof !97

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98
  %i.dz = load ptr, ptr %i.ax, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i100, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i101

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i101: ; preds = %bb.ac
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dz) #25, !inline_history !215
  %.pr.pre.i102 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i103 = icmp eq ptr %.pr.pre.i102, null
  br i1 %.not.i.i103, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i99, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i99: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i101, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98
  %i.ed = phi ptr [ %.pr.pre.i102, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i101 ], [ %i.dx, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !143, !range !129, !noundef !130
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104, label %bb.ad

bb.ad:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i99
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104: ; preds = %bb.ac, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i101, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i99, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit91, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ae:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.ab ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14StringViewTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3519
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3474
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_2
begin_hunk_3_@_ZN5arrow17BinaryViewBuilderD2Ev:bb.a
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZN5arrow8internal17StringHeapBuilderD2Ev.exit

_ZN5arrow8internal17StringHeapBuilderD2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow15ResizableBufferEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !112 ; 8 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1, label %_ZN5arrow18TypedBufferBuilderINS_14BinaryViewType6c_typeEvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow8internal17StringHeapBuilderD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !111
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !3759
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !3759
  br label %_ZN5arrow18TypedBufferBuilderINS_14BinaryViewType6c_typeEvED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZN5arrow18TypedBufferBuilderINS_14BinaryViewType6c_typeEvED2Ev.exit, !prof !98

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25
  br label %_ZN5arrow18TypedBufferBuilderINS_14BinaryViewType6c_typeEvED2Ev.exit

_ZN5arrow18TypedBufferBuilderINS_14BinaryViewType6c_typeEvED2Ev.exit: ; preds = %_ZN5arrow8internal17StringHeapBuilderD2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !3760
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3761
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3761
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3760
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.563, align 1            ; 3 uses
  %5 = alloca %class.anon.565, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.563, align 1            ; 3 uses
  %8 = alloca %class.anon.565, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !3762
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3762 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !3762
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3762 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !3762
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3762
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3762
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56109 = icmp sgt i64 %i.am, 0
  br i1 %.not56109, label %_ZN5arrow6StatusD2Ev.exit93.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit93.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !158
  %i.at = shl i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !568
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.at, ptr noundef %i.av)
  %i.aw = load ptr, ptr %11, align 8, !tbaa !140
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3767)
  call void @llvm.experimental.noalias.scope.decl(metadata !3770)
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !204, !noalias !3773 ; 2 uses
  store i64 %i.ba, ptr %12, align 8, !tbaa !204, !alias.scope !3773
  store ptr null, ptr %i.az, align 8, !tbaa !204, !noalias !3773
  %.cast = inttoptr i64 %i.ba to ptr              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !129
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false, !prof !97
  %i.bi = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %i.bh, ptr %i.bj, ptr null, !prof !97
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !158
  %.not58.not107 = icmp sgt i64 %i.bn, 0
  br i1 %.not58.not107, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.br = add nuw nsw i64 %.053108, 1             ; 2 uses
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.br, %i.bu
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !3774

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053108 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !3502
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.053108 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3  ; 2 uses
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !3504
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.bw, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = sub nsw i32 %i.cc, %i.bx
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.053108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !3775
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !3775
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bo, ptr noundef %i.ca, i32 noundef %i.cd, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.ce)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !3775
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !3775
  %i.cf = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.m, label %.critedge74

bb.o:                                             ; preds = %bb.n
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.z

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.y

.noexc84:                                         ; preds = %.critedge66
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112 ; 8 uses
  %i.ck = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.cl = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.cl, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.ck, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.noexc84
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.cm, align 8, !tbaa !108
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !111
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !87
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25, !inline_history !1749
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !87
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25, !inline_history !1749
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.cp, %bb.s ], [ %i.cz, %bb.t ]
  %i.da = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.da, label %bb.u, label %bb.v, !prof !98

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.db = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.db, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.v
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !87
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.db) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.df = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dh = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !87
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dh) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dl = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.df, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !143, !range !129, !noundef !130
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.y:                                             ; preds = %.critedge66
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.dp, %bb.y ], [ %i.ch, %bb.o ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.z
  %i.dq = load ptr, ptr %15, align 8, !tbaa !87
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit93:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93.lr.ph, %_ZN5arrow6StatusD2Ev.exit97
  %.046110 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit93.lr.ph ], [ %i.ee, %_ZN5arrow6StatusD2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dt = load ptr, ptr %i.ao, align 8, !tbaa !3502
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.046110 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3  ; 2 uses
  %i.dw = load ptr, ptr %i.ap, align 8, !tbaa !3504
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.du, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = sub nsw i32 %i.ea, %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !3780
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !3780
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dy, i32 noundef %i.eb, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !3780
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !3780
  %i.ec = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.ec, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.ed = icmp eq ptr %i.ec, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.ed, label %_ZN5arrow6StatusD2Ev.exit97, label %.critedge70

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93
  %i.ee = add nuw nsw i64 %.046110, 1             ; 2 uses
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.ee, %i.eh
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit93, label %.critedge72, !llvm.loop !3785

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit97, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !3786
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i98 = icmp eq ptr %16, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99: ; preds = %.critedge74
  %i.ei = load ptr, ptr %16, align 8, !tbaa !87
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.el = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !97

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.en = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103: ; preds = %bb.ab
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !87
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.en) #25, !inline_history !215
  %.pr.pre.i104 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i105 = icmp eq ptr %.pr.pre.i104, null
  br i1 %.not.i.i105, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.er = phi ptr [ %.pr.pre.i104, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103 ], [ %i.el, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !143, !range !129, !noundef !130
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106: ; preds = %bb.ab, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit93, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.aa ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10BinaryTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3519
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3474
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal16DictionaryTraitsINS_10BinaryTypeEvE22GetDictionaryArrayDataEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEERKNS0_15BinaryMemoTableINS_13BinaryBuilderEEEl:bb.a

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit84: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bz

bb.by:                                            ; preds = %.loopexit95, %.loopexit.split-lp, %bb.h, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit79
  %.pn39.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.h ], [ %.pn39.pn.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit79 ], [ %lpad.loopexit, %.loopexit95 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.jt = load ptr, ptr %6, align 8, !tbaa !204   ; 3 uses
  %.not.i85 = icmp eq ptr %i.jt, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86: ; preds = %bb.by
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !87
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.jt) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn.pn.pn

bb.bz:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit84, %bb.b
  %i.jx = load ptr, ptr %5, align 8, !tbaa !140   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.ca, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i88, !prof !97

bb.ca:                                            ; preds = %bb.bz
  %i.jz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i.i89, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit93, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i90

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i90: ; preds = %bb.ca
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !87
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ka) #25, !inline_history !215
  %.pr.pre.i91 = load ptr, ptr %5, align 8, !tbaa !140 ; 2 uses
  %.not.i.i92 = icmp eq ptr %.pr.pre.i91, null
  br i1 %.not.i.i92, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit93, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i88, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i88: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i90, %bb.bz
  %i.ke = phi ptr [ %.pr.pre.i91, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i90 ], [ %i.jx, %bb.bz ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !143, !range !129, !noundef !130
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit93, label %bb.cb

bb.cb:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i88
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit93

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit93: ; preds = %bb.ca, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i90, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i88, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !3826
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3827
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3827
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3826
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.563, align 1            ; 3 uses
  %5 = alloca %class.anon.565, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.563, align 1            ; 3 uses
  %8 = alloca %class.anon.565, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !3828
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3828 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !3828
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3828 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !3828
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3828
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3828
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ae

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56107 = icmp sgt i64 %i.am, 0
  br i1 %.not56107, label %_ZN5arrow6StatusD2Ev.exit91.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit91.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_ZN5arrow6StatusD2Ev.exit91

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !158
  %i.ar = shl i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !577
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.ar, ptr noundef %i.at)
  %i.au = load ptr, ptr %11, align 8, !tbaa !140
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3833)
  call void @llvm.experimental.noalias.scope.decl(metadata !3836)
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !204, !noalias !3839 ; 2 uses
  store i64 %i.ay, ptr %12, align 8, !tbaa !204, !alias.scope !3839
  store ptr null, ptr %i.ax, align 8, !tbaa !204, !noalias !3839
  %.cast = inttoptr i64 %i.ay to ptr              ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !range !129
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false, !prof !97
  %i.bg = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = select i1 %i.bf, ptr %i.bh, ptr null, !prof !97
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !158
  %.not58.not105 = icmp sgt i64 %i.bl, 0
  br i1 %.not58.not105, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bn = add nuw nsw i64 %.053106, 1             ; 2 uses
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.bn, %i.bq
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !3840

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053106 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.br = invoke { i64, ptr } @_ZNK5arrow15BinaryViewArray7GetViewEl(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %.053106)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bs = extractvalue { i64, ptr } %i.br, 0
  %i.bt = extractvalue { i64, ptr } %i.br, 1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.053106
  %i.bv = trunc i64 %i.bs to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !3841
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !3841
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bm, ptr noundef %i.bt, i32 noundef %i.bv, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.bu)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.p

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !3841
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !3841
  %i.bw = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.m, label %.critedge74

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.aa

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.z

.noexc84:                                         ; preds = %.critedge66
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !112 ; 8 uses
  %i.cb = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.cc = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.cc, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.cb, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %.noexc84
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cd, align 8, !tbaa !108
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !111
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25, !inline_history !1749
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !87
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25, !inline_history !1749
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.cg, %bb.t ], [ %i.cq, %bb.u ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cr, label %bb.v, label %bb.w, !prof !98

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cs = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.cs, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.w
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !87
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cs) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.w, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.cw = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.x, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.cy = load ptr, ptr %i.ax, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.x
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !87
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cy) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dc = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.cw, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !143, !range !129, !noundef !130
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.x, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.z:                                             ; preds = %.critedge66
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.p
  %.pn59 = phi { ptr, i32 } [ %i.dg, %bb.z ], [ %i.by, %bb.p ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.aa
  %i.dh = load ptr, ptr %15, align 8, !tbaa !87
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ae

_ZN5arrow6StatusD2Ev.exit91:                      ; preds = %_ZN5arrow6StatusD2Ev.exit91.lr.ph, %_ZN5arrow6StatusD2Ev.exit95
  %.046108 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit91.lr.ph ], [ %i.dq, %_ZN5arrow6StatusD2Ev.exit95 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dk = call { i64, ptr } @_ZNK5arrow15BinaryViewArray7GetViewEl(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %.046108) ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0
  %i.dm = extractvalue { i64, ptr } %i.dk, 1
  %i.dn = trunc i64 %i.dl to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !3846
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !3846
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dm, i32 noundef %i.dn, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !3846
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !3846
  %i.do = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.do, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dp = icmp eq ptr %i.do, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dp, label %_ZN5arrow6StatusD2Ev.exit95, label %.critedge70

_ZN5arrow6StatusD2Ev.exit95:                      ; preds = %_ZN5arrow6StatusD2Ev.exit91
  %i.dq = add nuw nsw i64 %.046108, 1             ; 2 uses
  %i.dr = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.dq, %i.dt
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit91, label %.critedge72, !llvm.loop !3851

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit95, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !3852
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i96 = icmp eq ptr %16, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i97

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i97: ; preds = %.critedge74
  %i.du = load ptr, ptr %16, align 8, !tbaa !87
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.dx = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ac, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i99, !prof !97

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98
  %i.dz = load ptr, ptr %i.ax, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i100, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i101

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i101: ; preds = %bb.ac
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dz) #25, !inline_history !215
  %.pr.pre.i102 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i103 = icmp eq ptr %.pr.pre.i102, null
  br i1 %.not.i.i103, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i99, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i99: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i101, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98
  %i.ed = phi ptr [ %.pr.pre.i102, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i101 ], [ %i.dx, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !143, !range !129, !noundef !130
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104, label %bb.ad

bb.ad:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i99
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104: ; preds = %bb.ac, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i101, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i99, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit91, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit104, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ae:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.ab ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14BinaryViewTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3519
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3474
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEEC2EPNS_10MemoryPoolEll:bb.a

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !3885
  store i64 9223372036854775806, ptr %i.b, align 8, !tbaa !86, !noalias !3885
  invoke void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 1 dereferenceable(32) @.str.39, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !3885
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !140, !noalias !3882 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !3885
  store ptr %.pr.i, ptr %6, align 8, !tbaa !140, !alias.scope !3882
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !3882
  %i.ah = icmp eq ptr %.pr.i, null
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11ReserveDataEl.exit.thread18

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %.noexc
  %.pre.i = load i64, ptr %i.ad, align 8, !tbaa !1063, !noalias !3888
  %.pre12.i = add nsw i64 %.pre.i, %i.y
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ %i.af, %_ZN5arrow6StatusD2Ev.exit10.thread.i ] ; 2 uses
  %i.ai = load i64, ptr %i.t, align 8, !tbaa !1722, !noalias !3888 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre-phi.i, %i.ai
  br i1 %.not.i.i.i, label %bb.f, label %_ZN5arrow6StatusD2Ev.exit16

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %i.ai, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %.pre-phi.i, i64 %i.aj)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 noundef %.sroa.speculated.i.i.i.i, i1 noundef zeroext false)
          to label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11ReserveDataEl.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.d) #25
  call void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_18LargeBinaryBuilderEE7PayloadEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #25
  resume { ptr, i32 } %i.ak

_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11ReserveDataEl.exit: ; preds = %bb.f
  %.pr = load ptr, ptr %6, align 8, !tbaa !140    ; 2 uses
  %.not.i15 = icmp eq ptr %.pr, null
  br i1 %.not.i15, label %_ZN5arrow6StatusD2Ev.exit16, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11ReserveDataEl.exit.thread18, !prof !3486

_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11ReserveDataEl.exit.thread18: ; preds = %.noexc, %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11ReserveDataEl.exit
  %i.al = phi ptr [ %.pr, %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11ReserveDataEl.exit ], [ %.pr.i, %.noexc ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !143, !range !129, !noundef !130
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN5arrow6StatusD2Ev.exit16, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11ReserveDataEl.exit.thread18
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit16

_ZN5arrow6StatusD2Ev.exit16:                      ; preds = %bb.e, %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11ReserveDataEl.exit, %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11ReserveDataEl.exit.thread18, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !3893
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3894
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3894
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !3893
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.595, align 1            ; 3 uses
  %5 = alloca %class.anon.597, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.595, align 1            ; 3 uses
  %8 = alloca %class.anon.597, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !3895
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3895 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !3895
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !3895 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !3895
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3895
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !3895
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56109 = icmp sgt i64 %i.am, 0
  br i1 %.not56109, label %_ZN5arrow6StatusD2Ev.exit93.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit93.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !158
  %i.at = shl i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !586
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.at, ptr noundef %i.av)
  %i.aw = load ptr, ptr %11, align 8, !tbaa !140
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3900)
  call void @llvm.experimental.noalias.scope.decl(metadata !3903)
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !204, !noalias !3906 ; 2 uses
  store i64 %i.ba, ptr %12, align 8, !tbaa !204, !alias.scope !3906
  store ptr null, ptr %i.az, align 8, !tbaa !204, !noalias !3906
  %.cast = inttoptr i64 %i.ba to ptr              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !129
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false, !prof !97
  %i.bi = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %i.bh, ptr %i.bj, ptr null, !prof !97
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !158
  %.not58.not107 = icmp sgt i64 %i.bn, 0
  br i1 %.not58.not107, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.br = add nuw nsw i64 %.053108, 1             ; 2 uses
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.br, %i.bu
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !3907

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053108 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !3908
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.053108 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !86 ; 2 uses
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !3910
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !86
  %i.cc = sub nsw i64 %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.053108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !3911
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !3911
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKvlPiEUliE_ZNS3_11GetOrInsertES6_lS7_EUliE0_EENS_6StatusES6_lOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bo, ptr noundef %i.bz, i64 noundef %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.cd)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !3911
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !3911
  %i.ce = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.ce, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.m, label %.critedge74

bb.o:                                             ; preds = %bb.n
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.z

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.y

.noexc84:                                         ; preds = %.critedge66
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !112 ; 8 uses
  %i.cj = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.ck = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.ck, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.cj, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.noexc84
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.cl, align 8, !tbaa !108
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !111
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #25, !inline_history !1749
  %i.ct = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #25, !inline_history !1749
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.co, %bb.s ], [ %i.cy, %bb.t ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.u, label %bb.v, !prof !98

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.da = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.da, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.v
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !87
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.da) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.de = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dg = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !87
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dg) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dk = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.de, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !143, !range !129, !noundef !130
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.y:                                             ; preds = %.critedge66
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.do, %bb.y ], [ %i.cg, %bb.o ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.z
  %i.dp = load ptr, ptr %15, align 8, !tbaa !87
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit93:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93.lr.ph, %_ZN5arrow6StatusD2Ev.exit97
  %.046110 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit93.lr.ph ], [ %i.ec, %_ZN5arrow6StatusD2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !3908
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.046110 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !86 ; 2 uses
  %i.dv = load ptr, ptr %i.ap, align 8, !tbaa !3910
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.du
  %i.dx = getelementptr i8, ptr %i.dt, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !86
  %i.dz = sub nsw i64 %i.dy, %i.du
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !3916
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !3916
  call void @_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKvlPiEUliE_ZNS3_11GetOrInsertES6_lS7_EUliE0_EENS_6StatusES6_lOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dw, i64 noundef %i.dz, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !3916
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !3916
  %i.ea = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.ea, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.eb = icmp eq ptr %i.ea, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.eb, label %_ZN5arrow6StatusD2Ev.exit97, label %.critedge70

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93
  %i.ec = add nuw nsw i64 %.046110, 1             ; 2 uses
  %i.ed = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.ec, %i.ef
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit93, label %.critedge72, !llvm.loop !3921

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit97, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !3922
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i98 = icmp eq ptr %16, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99: ; preds = %.critedge74
  %i.eg = load ptr, ptr %16, align 8, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ej = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !97

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.el = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103: ; preds = %bb.ab
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !87
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.el) #25, !inline_history !215
  %.pr.pre.i104 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i105 = icmp eq ptr %.pr.pre.i104, null
  br i1 %.not.i.i105, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ep = phi ptr [ %.pr.pre.i104, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103 ], [ %i.ej, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !143, !range !129, !noundef !130
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106: ; preds = %bb.ab, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit93, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.aa ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeStringTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3925
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3881
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_5
begin_hunk_6_@_ZN5arrow8internalL17ComputeNullBitmapINS0_15BinaryMemoTableINS_18LargeBinaryBuilderEEEEENS_6StatusEPNS_10MemoryPoolERKT_lPlPSt10shared_ptrINS_6BufferEE:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #25, !inline_history !212
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #25, !inline_history !212
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.v ], [ %i.bn, %bb.w ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.x, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !98

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.t, %bb.r
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !140  ; 2 uses
  %.not.i.i37 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i37, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bp = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.aw, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !143, !range !129, !noundef !130
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.ac, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !4081
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %bb.z
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !4084
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4085
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4085
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4084
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.595, align 1            ; 3 uses
  %5 = alloca %class.anon.597, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.595, align 1            ; 3 uses
  %8 = alloca %class.anon.597, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !4086
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !4086 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !4086
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !4086 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !4086
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !4086
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !4086
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56109 = icmp sgt i64 %i.am, 0
  br i1 %.not56109, label %_ZN5arrow6StatusD2Ev.exit93.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit93.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !158
  %i.at = shl i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !602
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.at, ptr noundef %i.av)
  %i.aw = load ptr, ptr %11, align 8, !tbaa !140
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4091)
  call void @llvm.experimental.noalias.scope.decl(metadata !4094)
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !204, !noalias !4097 ; 2 uses
  store i64 %i.ba, ptr %12, align 8, !tbaa !204, !alias.scope !4097
  store ptr null, ptr %i.az, align 8, !tbaa !204, !noalias !4097
  %.cast = inttoptr i64 %i.ba to ptr              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !129
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false, !prof !97
  %i.bi = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %i.bh, ptr %i.bj, ptr null, !prof !97
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !158
  %.not58.not107 = icmp sgt i64 %i.bn, 0
  br i1 %.not58.not107, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.br = add nuw nsw i64 %.053108, 1             ; 2 uses
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.br, %i.bu
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !4098

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053108 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !3908
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.053108 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !86 ; 2 uses
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !3910
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !86
  %i.cc = sub nsw i64 %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.053108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !4099
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !4099
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKvlPiEUliE_ZNS3_11GetOrInsertES6_lS7_EUliE0_EENS_6StatusES6_lOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bo, ptr noundef %i.bz, i64 noundef %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.cd)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !4099
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4099
  %i.ce = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.ce, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.m, label %.critedge74

bb.o:                                             ; preds = %bb.n
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.z

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.y

.noexc84:                                         ; preds = %.critedge66
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !112 ; 8 uses
  %i.cj = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.ck = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.ck, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.cj, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.noexc84
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.cl, align 8, !tbaa !108
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !111
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #25, !inline_history !1749
  %i.ct = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #25, !inline_history !1749
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.co, %bb.s ], [ %i.cy, %bb.t ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.u, label %bb.v, !prof !98

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.da = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.da, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.v
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !87
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.da) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.de = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dg = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !87
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dg) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dk = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.de, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !143, !range !129, !noundef !130
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.y:                                             ; preds = %.critedge66
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.do, %bb.y ], [ %i.cg, %bb.o ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.z
  %i.dp = load ptr, ptr %15, align 8, !tbaa !87
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit93:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93.lr.ph, %_ZN5arrow6StatusD2Ev.exit97
  %.046110 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit93.lr.ph ], [ %i.ec, %_ZN5arrow6StatusD2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !3908
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.046110 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !86 ; 2 uses
  %i.dv = load ptr, ptr %i.ap, align 8, !tbaa !3910
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.du
  %i.dx = getelementptr i8, ptr %i.dt, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !86
  %i.dz = sub nsw i64 %i.dy, %i.du
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !4104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !4104
  call void @_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKvlPiEUliE_ZNS3_11GetOrInsertES6_lS7_EUliE0_EENS_6StatusES6_lOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dw, i64 noundef %i.dz, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !4104
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4104
  %i.ea = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.ea, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.eb = icmp eq ptr %i.ea, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.eb, label %_ZN5arrow6StatusD2Ev.exit97, label %.critedge70

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93
  %i.ec = add nuw nsw i64 %.046110, 1             ; 2 uses
  %i.ed = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.ec, %i.ef
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit93, label %.critedge72, !llvm.loop !4109

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit97, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !4110
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i98 = icmp eq ptr %16, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99: ; preds = %.critedge74
  %i.eg = load ptr, ptr %16, align 8, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ej = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !97

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.el = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103: ; preds = %bb.ab
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !87
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.el) #25, !inline_history !215
  %.pr.pre.i104 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i105 = icmp eq ptr %.pr.pre.i104, null
  br i1 %.not.i.i105, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ep = phi ptr [ %.pr.pre.i104, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103 ], [ %i.ej, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !143, !range !129, !noundef !130
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106: ; preds = %bb.ab, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit93, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.aa ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_15LargeBinaryTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3925
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3881
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal16DictionaryTraitsINS_15LargeBinaryTypeEvE22GetDictionaryArrayDataEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEERKNS0_15BinaryMemoTableINS_18LargeBinaryBuilderEEEl:bb.a

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit84: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bz

bb.by:                                            ; preds = %.loopexit95, %.loopexit.split-lp, %bb.h, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit79
  %.pn39.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.h ], [ %.pn39.pn.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit79 ], [ %lpad.loopexit, %.loopexit95 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.js = load ptr, ptr %6, align 8, !tbaa !204   ; 3 uses
  %.not.i85 = icmp eq ptr %i.js, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86: ; preds = %bb.by
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !87
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.js) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn.pn.pn

bb.bz:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit84, %bb.b
  %i.jw = load ptr, ptr %5, align 8, !tbaa !140   ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.ca, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i88, !prof !97

bb.ca:                                            ; preds = %bb.bz
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i89, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit93, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i90

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i90: ; preds = %bb.ca
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !87
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.jz) #25, !inline_history !215
  %.pr.pre.i91 = load ptr, ptr %5, align 8, !tbaa !140 ; 2 uses
  %.not.i.i92 = icmp eq ptr %.pr.pre.i91, null
  br i1 %.not.i.i92, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit93, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i88, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i88: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i90, %bb.bz
  %i.kd = phi ptr [ %.pr.pre.i91, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i90 ], [ %i.jw, %bb.bz ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !143, !range !129, !noundef !130
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit93, label %bb.cb

bb.cb:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i88
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit93

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit93: ; preds = %bb.ca, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i90, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i88, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !4150
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4151
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4151
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4150
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.563, align 1            ; 3 uses
  %5 = alloca %class.anon.565, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.563, align 1            ; 3 uses
  %8 = alloca %class.anon.565, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !4152
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !4152 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !4152
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !4152 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !4152
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !4152
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !4152
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56109 = icmp sgt i64 %i.am, 0
  br i1 %.not56109, label %_ZN5arrow6StatusD2Ev.exit93.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit93.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZN5arrow6StatusD2Ev.exit93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !158
  %i.at = shl i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !611
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.at, ptr noundef %i.av)
  %i.aw = load ptr, ptr %11, align 8, !tbaa !140
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4157)
  call void @llvm.experimental.noalias.scope.decl(metadata !4160)
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !204, !noalias !4163 ; 2 uses
  store i64 %i.ba, ptr %12, align 8, !tbaa !204, !alias.scope !4163
  store ptr null, ptr %i.az, align 8, !tbaa !204, !noalias !4163
  %.cast = inttoptr i64 %i.ba to ptr              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !129
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false, !prof !97
  %i.bi = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %i.bh, ptr %i.bj, ptr null, !prof !97
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !158
  %.not58.not107 = icmp sgt i64 %i.bn, 0
  br i1 %.not58.not107, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.br = add nuw nsw i64 %.053108, 1             ; 2 uses
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.br, %i.bu
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !4164

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053108 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !4165
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !4167 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %.053108, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.053108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !4168
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !4168
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bq, ptr noundef %i.bz, i32 noundef %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.ca)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !4168
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4168
  %i.cb = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.m, label %.critedge74

bb.o:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.z

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.y

.noexc84:                                         ; preds = %.critedge66
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !112 ; 8 uses
  %i.cg = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.ch = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.ch, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.cg, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.noexc84
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ci, align 8, !tbaa !108
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !111
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !1749
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !1749
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.cl, %bb.s ], [ %i.cv, %bb.t ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.u, label %bb.v, !prof !98

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cx = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.cx, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.v
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cx) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.db = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dd = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dd) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dh = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.db, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !143, !range !129, !noundef !130
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.y:                                             ; preds = %.critedge66
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.dl, %bb.y ], [ %i.cd, %bb.o ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.z
  %i.dm = load ptr, ptr %15, align 8, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit93:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93.lr.ph, %_ZN5arrow6StatusD2Ev.exit97
  %.046110 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit93.lr.ph ], [ %i.dw, %_ZN5arrow6StatusD2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dp = load ptr, ptr %i.ao, align 8, !tbaa !4165
  %i.dq = load i32, ptr %i.ap, align 8, !tbaa !4167 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %.046110, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !4173
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !4173
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dt, i32 noundef %i.dq, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !4173
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4173
  %i.du = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dv = icmp eq ptr %i.du, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dv, label %_ZN5arrow6StatusD2Ev.exit97, label %.critedge70

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93
  %i.dw = add nuw nsw i64 %.046110, 1             ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.dw, %i.dz
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit93, label %.critedge72, !llvm.loop !4178

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit97, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !4179
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i98 = icmp eq ptr %16, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99: ; preds = %.critedge74
  %i.ea = load ptr, ptr %16, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ed = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !97

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103: ; preds = %bb.ab
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ef) #25, !inline_history !215
  %.pr.pre.i104 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i105 = icmp eq ptr %.pr.pre.i104, null
  br i1 %.not.i.i105, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ej = phi ptr [ %.pr.pre.i104, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103 ], [ %i.ed, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !143, !range !129, !noundef !130
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106: ; preds = %bb.ab, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit93, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.aa ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19FixedSizeBinaryTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3519
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3474
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal16DictionaryTraitsINS_19DayTimeIntervalTypeEvE22GetDictionaryArrayDataEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEERKNS0_15ScalarMemoTableINS2_15DayMillisecondsENS0_9HashTableEEEl:bb.a
  br i1 %i.ir, label %bb.cb, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72, !prof !98

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67, %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ce

bb.cc:                                            ; preds = %bb.bo, %.body
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.bo ], [ %.pn24, %.body ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit39
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.cc ], [ %i.ch, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn26.pn.pn.pn

bb.ce:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72, %bb.b
  %i.is = load ptr, ptr %6, align 8, !tbaa !140   ; 2 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.cf, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.cf:                                            ; preds = %bb.ce
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i73, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.cf
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !87
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.iv) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %6, align 8, !tbaa !140 ; 2 uses
  %.not.i.i74 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i74, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.ce
  %i.iz = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.is, %bb.ce ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !143, !range !129, !noundef !130
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.cf, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !4911
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4912
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4912
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4911
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.563, align 1            ; 3 uses
  %5 = alloca %class.anon.565, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.563, align 1            ; 3 uses
  %8 = alloca %class.anon.565, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !4913
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !4913 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !4913
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !4913 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !4913
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !4913
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !4913
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56109 = icmp sgt i64 %i.am, 0
  br i1 %.not56109, label %_ZN5arrow6StatusD2Ev.exit93.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit93.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZN5arrow6StatusD2Ev.exit93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !158
  %i.at = shl i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !764
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.at, ptr noundef %i.av)
  %i.aw = load ptr, ptr %11, align 8, !tbaa !140
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4918)
  call void @llvm.experimental.noalias.scope.decl(metadata !4921)
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !204, !noalias !4924 ; 2 uses
  store i64 %i.ba, ptr %12, align 8, !tbaa !204, !alias.scope !4924
  store ptr null, ptr %i.az, align 8, !tbaa !204, !noalias !4924
  %.cast = inttoptr i64 %i.ba to ptr              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !129
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false, !prof !97
  %i.bi = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %i.bh, ptr %i.bj, ptr null, !prof !97
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !158
  %.not58.not107 = icmp sgt i64 %i.bn, 0
  br i1 %.not58.not107, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.br = add nuw nsw i64 %.053108, 1             ; 2 uses
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.br, %i.bu
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !4925

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053108 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !4165
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !4167 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %.053108, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.053108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !4926
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !4926
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bq, ptr noundef %i.bz, i32 noundef %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.ca)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !4926
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4926
  %i.cb = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.m, label %.critedge74

bb.o:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.z

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.y

.noexc84:                                         ; preds = %.critedge66
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !112 ; 8 uses
  %i.cg = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.ch = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.ch, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.cg, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.noexc84
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ci, align 8, !tbaa !108
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !111
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !1749
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !1749
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.cl, %bb.s ], [ %i.cv, %bb.t ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.u, label %bb.v, !prof !98

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cx = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.cx, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.v
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cx) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.db = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dd = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dd) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dh = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.db, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !143, !range !129, !noundef !130
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.y:                                             ; preds = %.critedge66
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.dl, %bb.y ], [ %i.cd, %bb.o ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.z
  %i.dm = load ptr, ptr %15, align 8, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit93:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93.lr.ph, %_ZN5arrow6StatusD2Ev.exit97
  %.046110 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit93.lr.ph ], [ %i.dw, %_ZN5arrow6StatusD2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dp = load ptr, ptr %i.ao, align 8, !tbaa !4165
  %i.dq = load i32, ptr %i.ap, align 8, !tbaa !4167 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %.046110, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !4931
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !4931
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dt, i32 noundef %i.dq, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !4931
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4931
  %i.du = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dv = icmp eq ptr %i.du, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dv, label %_ZN5arrow6StatusD2Ev.exit97, label %.critedge70

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93
  %i.dw = add nuw nsw i64 %.046110, 1             ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.dw, %i.dz
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit93, label %.critedge72, !llvm.loop !4936

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit97, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !4937
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i98 = icmp eq ptr %16, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99: ; preds = %.critedge74
  %i.ea = load ptr, ptr %16, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ed = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !97

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103: ; preds = %bb.ab
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ef) #25, !inline_history !215
  %.pr.pre.i104 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i105 = icmp eq ptr %.pr.pre.i104, null
  br i1 %.not.i.i105, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ej = phi ptr [ %.pr.pre.i104, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103 ], [ %i.ed, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !143, !range !129, !noundef !130
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106: ; preds = %bb.ab, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit93, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.aa ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal32TypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3519
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3474
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal16DictionaryTraitsINS_13Decimal32TypeEvE22GetDictionaryArrayDataEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEERKNS0_15BinaryMemoTableINS_13BinaryBuilderEEEl:bb.a
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.m
  %.pn32.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn, %bb.bi ], [ %i.bw, %bb.m ]
  %i.hm = load ptr, ptr %6, align 8, !tbaa !204   ; 3 uses
  %.not.i65 = icmp eq ptr %i.hm, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66: ; preds = %bb.bj
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !87
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hm) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn32.pn.pn.pn

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.hq = load ptr, ptr %5, align 8, !tbaa !140   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.bl, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.bl:                                            ; preds = %bb.bk
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i68, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.bl
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !87
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ht) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !140 ; 2 uses
  %.not.i.i69 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i69, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.bk
  %i.hx = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.hq, %bb.bk ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !143, !range !129, !noundef !130
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.bl, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !4970
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4971
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4971
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !4970
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.563, align 1            ; 3 uses
  %5 = alloca %class.anon.565, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.563, align 1            ; 3 uses
  %8 = alloca %class.anon.565, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !4972
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !4972 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !4972
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !4972 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !4972
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !4972
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !4972
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56109 = icmp sgt i64 %i.am, 0
  br i1 %.not56109, label %_ZN5arrow6StatusD2Ev.exit93.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit93.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZN5arrow6StatusD2Ev.exit93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !158
  %i.at = shl i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !773
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.at, ptr noundef %i.av)
  %i.aw = load ptr, ptr %11, align 8, !tbaa !140
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4977)
  call void @llvm.experimental.noalias.scope.decl(metadata !4980)
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !204, !noalias !4983 ; 2 uses
  store i64 %i.ba, ptr %12, align 8, !tbaa !204, !alias.scope !4983
  store ptr null, ptr %i.az, align 8, !tbaa !204, !noalias !4983
  %.cast = inttoptr i64 %i.ba to ptr              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !129
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false, !prof !97
  %i.bi = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %i.bh, ptr %i.bj, ptr null, !prof !97
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !158
  %.not58.not107 = icmp sgt i64 %i.bn, 0
  br i1 %.not58.not107, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.br = add nuw nsw i64 %.053108, 1             ; 2 uses
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.br, %i.bu
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !4984

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053108 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !4165
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !4167 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %.053108, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.053108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !4985
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !4985
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bq, ptr noundef %i.bz, i32 noundef %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.ca)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !4985
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4985
  %i.cb = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.m, label %.critedge74

bb.o:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.z

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.y

.noexc84:                                         ; preds = %.critedge66
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !112 ; 8 uses
  %i.cg = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.ch = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.ch, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.cg, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.noexc84
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ci, align 8, !tbaa !108
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !111
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !1749
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !1749
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.cl, %bb.s ], [ %i.cv, %bb.t ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.u, label %bb.v, !prof !98

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cx = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.cx, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.v
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cx) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.db = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dd = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dd) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dh = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.db, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !143, !range !129, !noundef !130
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.y:                                             ; preds = %.critedge66
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.dl, %bb.y ], [ %i.cd, %bb.o ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.z
  %i.dm = load ptr, ptr %15, align 8, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit93:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93.lr.ph, %_ZN5arrow6StatusD2Ev.exit97
  %.046110 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit93.lr.ph ], [ %i.dw, %_ZN5arrow6StatusD2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dp = load ptr, ptr %i.ao, align 8, !tbaa !4165
  %i.dq = load i32, ptr %i.ap, align 8, !tbaa !4167 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %.046110, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !4990
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !4990
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dt, i32 noundef %i.dq, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !4990
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4990
  %i.du = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dv = icmp eq ptr %i.du, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dv, label %_ZN5arrow6StatusD2Ev.exit97, label %.critedge70

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93
  %i.dw = add nuw nsw i64 %.046110, 1             ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.dw, %i.dz
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit93, label %.critedge72, !llvm.loop !4995

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit97, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !4996
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i98 = icmp eq ptr %16, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99: ; preds = %.critedge74
  %i.ea = load ptr, ptr %16, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ed = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !97

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103: ; preds = %bb.ab
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ef) #25, !inline_history !215
  %.pr.pre.i104 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i105 = icmp eq ptr %.pr.pre.i104, null
  br i1 %.not.i.i105, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ej = phi ptr [ %.pr.pre.i104, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103 ], [ %i.ed, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !143, !range !129, !noundef !130
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106: ; preds = %bb.ab, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit93, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.aa ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13Decimal64TypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3519
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3474
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal16DictionaryTraitsINS_13Decimal64TypeEvE22GetDictionaryArrayDataEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEERKNS0_15BinaryMemoTableINS_13BinaryBuilderEEEl:bb.a
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.m
  %.pn32.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn, %bb.bi ], [ %i.bw, %bb.m ]
  %i.hm = load ptr, ptr %6, align 8, !tbaa !204   ; 3 uses
  %.not.i65 = icmp eq ptr %i.hm, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66: ; preds = %bb.bj
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !87
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hm) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn32.pn.pn.pn

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.hq = load ptr, ptr %5, align 8, !tbaa !140   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.bl, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.bl:                                            ; preds = %bb.bk
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i68, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.bl
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !87
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ht) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !140 ; 2 uses
  %.not.i.i69 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i69, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.bk
  %i.hx = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.hq, %bb.bk ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !143, !range !129, !noundef !130
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.bl, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !5029
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !5030
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !5030
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !5029
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.563, align 1            ; 3 uses
  %5 = alloca %class.anon.565, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.563, align 1            ; 3 uses
  %8 = alloca %class.anon.565, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !5031
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !5031 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !5031
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !5031 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !5031
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !5031
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !5031
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56109 = icmp sgt i64 %i.am, 0
  br i1 %.not56109, label %_ZN5arrow6StatusD2Ev.exit93.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit93.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZN5arrow6StatusD2Ev.exit93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !158
  %i.at = shl i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !782
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.at, ptr noundef %i.av)
  %i.aw = load ptr, ptr %11, align 8, !tbaa !140
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !5036)
  call void @llvm.experimental.noalias.scope.decl(metadata !5039)
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !204, !noalias !5042 ; 2 uses
  store i64 %i.ba, ptr %12, align 8, !tbaa !204, !alias.scope !5042
  store ptr null, ptr %i.az, align 8, !tbaa !204, !noalias !5042
  %.cast = inttoptr i64 %i.ba to ptr              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !129
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false, !prof !97
  %i.bi = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %i.bh, ptr %i.bj, ptr null, !prof !97
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !158
  %.not58.not107 = icmp sgt i64 %i.bn, 0
  br i1 %.not58.not107, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.br = add nuw nsw i64 %.053108, 1             ; 2 uses
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.br, %i.bu
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !5043

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053108 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !4165
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !4167 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %.053108, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.053108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !5044
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !5044
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bq, ptr noundef %i.bz, i32 noundef %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.ca)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !5044
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !5044
  %i.cb = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.m, label %.critedge74

bb.o:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.z

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.y

.noexc84:                                         ; preds = %.critedge66
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !112 ; 8 uses
  %i.cg = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.ch = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.ch, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.cg, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.noexc84
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ci, align 8, !tbaa !108
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !111
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !1749
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !1749
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.cl, %bb.s ], [ %i.cv, %bb.t ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.u, label %bb.v, !prof !98

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cx = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.cx, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.v
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cx) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.db = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dd = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dd) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dh = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.db, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !143, !range !129, !noundef !130
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.y:                                             ; preds = %.critedge66
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.dl, %bb.y ], [ %i.cd, %bb.o ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.z
  %i.dm = load ptr, ptr %15, align 8, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit93:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93.lr.ph, %_ZN5arrow6StatusD2Ev.exit97
  %.046110 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit93.lr.ph ], [ %i.dw, %_ZN5arrow6StatusD2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dp = load ptr, ptr %i.ao, align 8, !tbaa !4165
  %i.dq = load i32, ptr %i.ap, align 8, !tbaa !4167 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %.046110, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !5049
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !5049
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dt, i32 noundef %i.dq, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !5049
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !5049
  %i.du = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dv = icmp eq ptr %i.du, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dv, label %_ZN5arrow6StatusD2Ev.exit97, label %.critedge70

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93
  %i.dw = add nuw nsw i64 %.046110, 1             ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.dw, %i.dz
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit93, label %.critedge72, !llvm.loop !5054

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit97, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !5055
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i98 = icmp eq ptr %16, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99: ; preds = %.critedge74
  %i.ea = load ptr, ptr %16, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ed = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !97

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103: ; preds = %bb.ab
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ef) #25, !inline_history !215
  %.pr.pre.i104 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i105 = icmp eq ptr %.pr.pre.i104, null
  br i1 %.not.i.i105, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ej = phi ptr [ %.pr.pre.i104, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103 ], [ %i.ed, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !143, !range !129, !noundef !130
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106: ; preds = %bb.ab, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit93, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.aa ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal128TypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3519
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3474
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal16DictionaryTraitsINS_14Decimal128TypeEvE22GetDictionaryArrayDataEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEERKNS0_15BinaryMemoTableINS_13BinaryBuilderEEEl:bb.a
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.m
  %.pn32.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn, %bb.bi ], [ %i.bw, %bb.m ]
  %i.hm = load ptr, ptr %6, align 8, !tbaa !204   ; 3 uses
  %.not.i65 = icmp eq ptr %i.hm, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66: ; preds = %bb.bj
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !87
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hm) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn32.pn.pn.pn

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.hq = load ptr, ptr %5, align 8, !tbaa !140   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.bl, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.bl:                                            ; preds = %bb.bk
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i68, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.bl
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !87
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ht) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !140 ; 2 uses
  %.not.i.i69 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i69, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.bk
  %i.hx = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.hq, %bb.bk ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !143, !range !129, !noundef !130
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.bl, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEED2Ev(ptr noundef nonnull align 8 dereferenceable(356) %i.a) #25, !inline_history !5088
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !5089
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !5089
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEED2Ev.exit, !prof !98

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !5088
  br label %_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEED2Ev.exit

_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEE5UnifyERKNS_5ArrayE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.563, align 1            ; 3 uses
  %5 = alloca %class.anon.565, align 1            ; 3 uses
  %6 = alloca %"class.std::__shared_ptr.22", align 16 ; 5 uses
  %7 = alloca %class.anon.563, align 1            ; 3 uses
  %8 = alloca %class.anon.565, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Result.50", align 8 ; 17 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %.critedge70

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !5090
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !172, !noalias !5090 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84, !noalias !5090
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !172, !noalias !5090 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84, !noalias !5090
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !5090
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !5090
  %i.z = load ptr, ptr %10, align 8, !tbaa !172   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge70

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.af = load ptr, ptr %10, align 8, !tbaa !172  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !158
  %.not56109 = icmp sgt i64 %i.am, 0
  br i1 %.not56109, label %_ZN5arrow6StatusD2Ev.exit93.lr.ph, label %.critedge72

_ZN5arrow6StatusD2Ev.exit93.lr.ph:                ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZN5arrow6StatusD2Ev.exit93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !158
  %i.at = shl i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !791
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %11, i64 noundef %i.at, ptr noundef %i.av)
  %i.aw = load ptr, ptr %11, align 8, !tbaa !140
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.critedge68 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !5095)
  call void @llvm.experimental.noalias.scope.decl(metadata !5098)
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !204, !noalias !5101 ; 2 uses
  store i64 %i.ba, ptr %12, align 8, !tbaa !204, !alias.scope !5101
  store ptr null, ptr %i.az, align 8, !tbaa !204, !noalias !5101
  %.cast = inttoptr i64 %i.ba to ptr              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !121, !range !129, !noundef !130
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !129
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false, !prof !97
  %i.bi = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %i.bh, ptr %i.bj, ptr null, !prof !97
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !158
  %.not58.not107 = icmp sgt i64 %i.bn, 0
  br i1 %.not58.not107, label %.lr.ph, label %.critedge66

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.br = add nuw nsw i64 %.053108, 1             ; 2 uses
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !158
  %.not58.not = icmp slt i64 %i.br, %i.bu
  br i1 %.not58.not, label %bb.n, label %.critedge66, !llvm.loop !5102

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.053108 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !4165
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !4167 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %.053108, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.053108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !5103
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !5103
  invoke void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(356) %i.bq, ptr noundef %i.bz, i32 noundef %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.ca)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !5103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !5103
  %i.cb = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.m, label %.critedge74

bb.o:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.z

.critedge66:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc84 unwind label %bb.y

.noexc84:                                         ; preds = %.critedge66
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !112 ; 8 uses
  %i.cg = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.ch = load <2 x ptr>, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.ch, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.cg, ptr %6, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.noexc84
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ci, align 8, !tbaa !108
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !111
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !1749
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !1749
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.cl, %bb.s ], [ %i.cv, %bb.t ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.u, label %bb.v, !prof !98

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cx = load ptr, ptr %12, align 8, !tbaa !204  ; 3 uses
  %.not.i85 = icmp eq ptr %i.cx, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.v
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cx) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.db = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dd = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dd) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dh = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.db, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !143, !range !129, !noundef !130
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge72

bb.y:                                             ; preds = %.critedge66
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.dl, %bb.y ], [ %i.cd, %bb.o ]
  %15 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i87 = icmp eq ptr %15, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.z
  %i.dm = load ptr, ptr %15, align 8, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn59, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit93:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93.lr.ph, %_ZN5arrow6StatusD2Ev.exit97
  %.046110 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit93.lr.ph ], [ %i.dw, %_ZN5arrow6StatusD2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dp = load ptr, ptr %i.ao, align 8, !tbaa !4165
  %i.dq = load i32, ptr %i.ap, align 8, !tbaa !4167 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %.046110, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !5108
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !5108
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(356) %i.an, ptr noundef %i.dt, i32 noundef %i.dq, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !5108
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !5108
  %i.du = load ptr, ptr %14, align 8, !tbaa !140  ; 2 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dv = icmp eq ptr %i.du, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dv, label %_ZN5arrow6StatusD2Ev.exit97, label %.critedge70

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6StatusD2Ev.exit93
  %i.dw = add nuw nsw i64 %.046110, 1             ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !158
  %.not56 = icmp slt i64 %i.dw, %i.dz
  br i1 %.not56, label %_ZN5arrow6StatusD2Ev.exit93, label %.critedge72, !llvm.loop !5113

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit97, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !5114
  br label %.critedge70

.critedge68:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %16 = load ptr, ptr %12, align 8, !tbaa !204    ; 3 uses
  %.not.i98 = icmp eq ptr %16, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99: ; preds = %.critedge74
  %i.ea = load ptr, ptr %16, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ed = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !97

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103: ; preds = %bb.ab
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ef) #25, !inline_history !215
  %.pr.pre.i104 = load ptr, ptr %11, align 8, !tbaa !140 ; 2 uses
  %.not.i.i105 = icmp eq ptr %.pr.pre.i104, null
  br i1 %.not.i.i105, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100
  %i.ej = phi ptr [ %.pr.pre.i104, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103 ], [ %i.ed, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !143, !range !129, !noundef !130
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106: ; preds = %bb.ab, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i103, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i101, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge70

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit93, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit106, %.critedge72, %.critedge68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn62, %bb.aa ]
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_14Decimal256TypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3519
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3474
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
end_hunk_11
