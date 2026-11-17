Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StructuredData?download=true
inline.NumInlined: 1891
inline.NumDeleted: 1083
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !395
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !46   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !395
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11make_sharedIN12lldb_private14StructuredData7IntegerImEEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.69") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21, !noalias !399 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  store i32 1, ptr %i.d, align 4, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 3, ptr %i.i, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12lldb_private14StructuredData7IntegerImEE, i64 16), ptr %i.e, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.f, ptr %i.j, align 8, !tbaa !132
  store ptr %i.b, ptr %i.a, align 8, !tbaa !55
  store ptr %i.e, ptr %0, align 8, !tbaa !400
  store ptr %i.e, ptr %i.g, align 8, !tbaa !77
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i3.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i3.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i: ; preds = %bb.a
  store i32 2, ptr %i.d, align 4, !tbaa !46
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData7IntegerImEEEC2ISaIvEJRmEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.l = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !78 ; 4 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData7IntegerImEEEC2ISaIvEJRmEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 12 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i7.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.m, align 4, !tbaa !46   ; 2 uses
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.c ], [ %i.q, %bb.d ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.e, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData7IntegerImEEEC2ISaIvEJRmEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %.pre.i.i.i.i.i, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i) #20, !inline_history !398
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData7IntegerImEEEC2ISaIvEJRmEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

_ZNSt10shared_ptrIN12lldb_private14StructuredData7IntegerImEEEC2ISaIvEJRmEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.b, ptr %i.h, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private14StructuredData7IntegerImEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !59
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !10
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !10
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZNK4llvm4json5Value12getAsIntegerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !31
  switch i16 %i.a, label %.thread7 [
    i16 3, label %bb.b
    i16 4, label %bb.c
    i16 2, label %bb.d
  ], !prof !401

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !51
  br label %.thread7

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %.not = icmp sgt i64 %i.e, -1
  br label %.thread7

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !82
  %i.h = tail call { double, double } @llvm.modf.f64(double %i.g) ; 2 uses
  %i.i = extractvalue { double, double } %i.h, 0
  %i.j = extractvalue { double, double } %i.h, 1  ; 2 uses
  %i.k = fcmp oeq double %i.i, 0.000000e+00
  %i.l = tail call double @llvm.fabs.f64(double %i.j)
  %i.m = fcmp ole double %i.l, f0x43E0000000000000
  %or.cond9 = select i1 %i.k, i1 %i.m, i1 false   ; 2 uses
  %i.n = fptosi double %i.j to i64
  %spec.select11 = select i1 %or.cond9, i64 %i.n, i64 undef, !prof !402
  br label %.thread7

.thread7:                                         ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.4.3.shrunk = phi i1 [ %or.cond9, %bb.d ], [ %.not, %bb.c ], [ true, %bb.b ], [ false, %bb.a ]
  %.sroa.0.4 = phi i64 [ %spec.select11, %bb.d ], [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.4.3 = zext i1 %.sroa.4.3.shrunk to i8
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.4, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.4.3, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11make_sharedIN12lldb_private14StructuredData7IntegerIlEEJRlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.80") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21, !noalias !406 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  store i32 1, ptr %i.d, align 4, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 8, ptr %i.i, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12lldb_private14StructuredData7IntegerIlEE, i64 16), ptr %i.e, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.f, ptr %i.j, align 8, !tbaa !134
  store ptr %i.b, ptr %i.a, align 8, !tbaa !55
  store ptr %i.e, ptr %0, align 8, !tbaa !407
  store ptr %i.e, ptr %i.g, align 8, !tbaa !77
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i3.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i3.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i: ; preds = %bb.a
  store i32 2, ptr %i.d, align 4, !tbaa !46
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData7IntegerIlEEEC2ISaIvEJRlEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.l = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !78 ; 4 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData7IntegerIlEEEC2ISaIvEJRlEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 12 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i7.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.m, align 4, !tbaa !46   ; 2 uses
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.c ], [ %i.q, %bb.d ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.e, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData7IntegerIlEEEC2ISaIvEJRlEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %.pre.i.i.i.i.i, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i) #20, !inline_history !405
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData7IntegerIlEEEC2ISaIvEJRlEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

_ZNSt10shared_ptrIN12lldb_private14StructuredData7IntegerIlEEEC2ISaIvEJRlEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.b, ptr %i.h, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private14StructuredData7IntegerIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !59
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !10
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !10
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11make_sharedIN12lldb_private14StructuredData5FloatEJRdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21, !noalias !411 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  store i32 1, ptr %i.d, align 4, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData5FloatESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load double, ptr %1, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 4, ptr %i.i, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12lldb_private14StructuredData5FloatE, i64 16), ptr %i.e, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store double %i.f, ptr %i.j, align 8, !tbaa !110
  store ptr %i.b, ptr %i.a, align 8, !tbaa !55
  store ptr %i.e, ptr %0, align 8, !tbaa !412
  store ptr %i.e, ptr %i.g, align 8, !tbaa !77
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i3.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i3.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i: ; preds = %bb.a
  store i32 2, ptr %i.d, align 4, !tbaa !46
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData5FloatEEC2ISaIvEJRdEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.l = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !78 ; 4 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData5FloatEEC2ISaIvEJRdEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 12 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i7.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.m, align 4, !tbaa !46   ; 2 uses
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.c ], [ %i.q, %bb.d ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.e, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData5FloatEEC2ISaIvEJRdEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %.pre.i.i.i.i.i, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i) #20, !inline_history !410
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData5FloatEEC2ISaIvEJRdEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

_ZNSt10shared_ptrIN12lldb_private14StructuredData5FloatEEC2ISaIvEJRdEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.b, ptr %i.h, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private14StructuredData5FloatELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !59
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !10
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !10
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11make_sharedIN12lldb_private14StructuredData4NullEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.102") align 8 %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21, !noalias !416 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  store i32 1, ptr %i.d, align 4, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData4NullESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12lldb_private14StructuredData4NullE, i64 16), ptr %i.e, align 8, !tbaa !27
  store ptr %i.b, ptr %i.a, align 8, !tbaa !55
  store ptr %i.e, ptr %0, align 8, !tbaa !417
  store ptr %i.e, ptr %i.f, align 8, !tbaa !77
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i3.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i3.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i: ; preds = %bb.a
  store i32 2, ptr %i.d, align 4, !tbaa !46
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData4NullEEC2ISaIvEJEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.i = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !78 ; 4 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData4NullEEC2ISaIvEJEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 12 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i7.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !46   ; 2 uses
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  %i.o = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.o, label %bb.e, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData4NullEEC2ISaIvEJEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %i.p = load ptr, ptr %.pre.i.i.i.i.i, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i) #20, !inline_history !415
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData4NullEEC2ISaIvEJEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit

_ZNSt10shared_ptrIN12lldb_private14StructuredData4NullEEC2ISaIvEJEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.b, ptr %i.g, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private14StructuredData4NullELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !59
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !10
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !10
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

declare void @_ZN4llvm4json5Value8copyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEE16insert_or_assignIS5_EESt4pairINS_17StringMapIterBaseIS5_Lb0EEEbENS_9StringRefEOT_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #20
  %i.b = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %1, i64 %2, i32 noundef %i.a) #20 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !103
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106  ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %2, 25
  %i.h = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.g, i64 noundef 8) #20 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEE11try_emplaceIJS5_EEESt4pairINS_17StringMapIterBaseIS5_Lb0EEEbENS_9StringRefEDpOT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEE11try_emplaceIJS5_EEESt4pairINS_17StringMapIterBaseIS5_Lb0EEEbENS_9StringRefEDpOT_.exit.thread

_ZN4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEE11try_emplaceIJS5_EEESt4pairINS_17StringMapIterBaseIS5_Lb0EEEbENS_9StringRefEDpOT_.exit.thread: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %2
  store i8 0, ptr %i.j, align 1, !tbaa !56
  store i64 %2, ptr %i.h, align 8, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load <2 x ptr>, ptr %3, align 8, !tbaa !73
  store ptr null, ptr %i.l, align 8, !tbaa !55
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73
  store ptr null, ptr %3, align 8, !tbaa !54
  store ptr %i.h, ptr %i.e, align 8, !tbaa !106
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !135
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !135
  %i.q = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.b) #20
  %i.r = load ptr, ptr %0, align 8, !tbaa !103
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEaSEOS3_.exit

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.w = load <2 x ptr>, ptr %3, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !55   ; 8 uses
  store <2 x ptr> %i.w, ptr %i.u, align 8, !tbaa !73
  %.not.i.i.i.i7 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i7, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEaSEOS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.y, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !59
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #20, !inline_history !418
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #20, !inline_history !418
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEaSEOS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.h ], [ %i.al, %bb.i ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.j, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEaSEOS3_.exit, !prof !60

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #20
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEaSEOS3_.exit

_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEaSEOS3_.exit: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.f, %bb.d, %_ZN4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEE11try_emplaceIJS5_EEESt4pairINS_17StringMapIterBaseIS5_Lb0EEEbENS_9StringRefEDpOT_.exit.thread
  %.pn14 = phi ptr [ %i.t, %_ZN4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEE11try_emplaceIJS5_EEESt4pairINS_17StringMapIterBaseIS5_Lb0EEEbENS_9StringRefEDpOT_.exit.thread ], [ %i.e, %bb.d ], [ %i.e, %bb.f ], [ %i.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %i.e, %bb.j ]
  %.pn = phi i8 [ 1, %_ZN4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEE11try_emplaceIJS5_EEESt4pairINS_17StringMapIterBaseIS5_Lb0EEEbENS_9StringRefEDpOT_.exit.thread ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ 0, %bb.j ]
  %.fca.0.insert.i.i10.pn = insertvalue { ptr, i8 } poison, ptr %.pn14, 0
  %.fca.1.insert.i.i12 = insertvalue { ptr, i8 } %.fca.0.insert.i.i10.pn, i8 %.pn, 1
  ret { ptr, i8 } %.fca.1.insert.i.i12
}

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EEC2INS1_10DictionaryESt14default_deleteIS7_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !45     ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !55
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS1_10DictionaryES7_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private14StructuredData10DictionaryESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private14StructuredData10DictionaryESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 13 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !45
  store ptr null, ptr %1, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN12lldb_private14StructuredData10DictionaryESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !420
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20, label %bb.b

bb.b:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private14StructuredData10DictionaryESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.f, align 8, !tbaa !46
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !55
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pr.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 8 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !59
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20, !inline_history !11
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20, !inline_history !11
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i9.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !60

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.d, ptr %i.b, align 8, !tbaa !55
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private14StructuredData10DictionaryESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  store i32 0, ptr %i.ab, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !59
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !10
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !10
  br label %bb.p

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i6 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7: ; preds = %bb.n, %bb.m
  %.0.i.i.i8 = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i8, 1
  br i1 %i.ap, label %bb.o, label %bb.p, !prof !60

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load atomic i32, ptr %i.at monotonic, align 8
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS1_10DictionaryES7_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %bb.p
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !77
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i3.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i3.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !46
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !46
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !78
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
  %i.bc = phi ptr [ %.pre.i.i.i, %bb.s ], [ %i.as, %bb.r ], [ %i.as, %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i7.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i7.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !46 ; 2 uses
  %i.bg = add nsw i32 %i.bf, -1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.bf, %bb.u ], [ %i.bh, %bb.v ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.w, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #20, !inline_history !419
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !78
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS1_10DictionaryES7_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS1_10DictionaryES7_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %bb.a, %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private14StructuredData10DictionaryESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private14StructuredData10DictionaryESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !423  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN12lldb_private14StructuredData10DictionaryEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #20, !inline_history !421
  br label %_ZNKSt14default_deleteIN12lldb_private14StructuredData10DictionaryEEclEPS2_.exit

_ZNKSt14default_deleteIN12lldb_private14StructuredData10DictionaryEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private14StructuredData10DictionaryESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN12lldb_private14StructuredData10DictionaryESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN12lldb_private14StructuredData10DictionaryESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !73
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !73
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !46
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !46
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEC2ERKS3_.exit

_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEC2ERKS3_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEC2ERKS3_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEC2ERKS3_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEC2ERKS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !73, !alias.scope !432
  store ptr null, ptr %i.z, align 8, !tbaa !55, !alias.scope !432
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !73, !alias.scope !431
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !54, !alias.scope !432
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !427

_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEC2ERKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEC2ERKS3_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ah, %.lr.ph.i.i.i18 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ag, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !73, !alias.scope !434
  store ptr null, ptr %i.ae, align 8, !tbaa !55, !alias.scope !434
  store <2 x ptr> %i.af, ptr %.012.i.i.i19, align 8, !tbaa !73, !alias.scope !433
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !54, !alias.scope !434
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !427

_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ah, %.lr.ph.i.i.i18 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #22
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !107
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EEC2INS1_5ArrayESt14default_deleteIS7_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62     ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !55
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS1_5ArrayES7_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private14StructuredData5ArrayESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private14StructuredData5ArrayESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 13 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !62
  store ptr null, ptr %1, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN12lldb_private14StructuredData5ArrayESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !436
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20, label %bb.b

bb.b:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private14StructuredData5ArrayESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.f, align 8, !tbaa !46
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !55
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pr.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 8 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !59
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20, !inline_history !11
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20, !inline_history !11
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i9.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !60

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.d, ptr %i.b, align 8, !tbaa !55
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN12lldb_private14StructuredData5ArrayESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  store i32 0, ptr %i.ab, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !59
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !10
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !10
  br label %bb.p

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i6 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7: ; preds = %bb.n, %bb.m
  %.0.i.i.i8 = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i8, 1
  br i1 %i.ap, label %bb.o, label %bb.p, !prof !60

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load atomic i32, ptr %i.at monotonic, align 8
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS1_5ArrayES7_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %bb.p
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !77
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i3.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i3.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !46
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !46
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !78
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
  %i.bc = phi ptr [ %.pre.i.i.i, %bb.s ], [ %i.as, %bb.r ], [ %i.as, %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i7.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i7.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !46 ; 2 uses
  %i.bg = add nsw i32 %i.bf, -1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.bf, %bb.u ], [ %i.bh, %bb.v ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.w, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #20, !inline_history !435
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !78
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS1_5ArrayES7_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS1_5ArrayES7_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %bb.a, %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private14StructuredData5ArrayESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private14StructuredData5ArrayESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN12lldb_private14StructuredData5ArrayEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #20, !inline_history !437
  br label %_ZNKSt14default_deleteIN12lldb_private14StructuredData5ArrayEEclEPS2_.exit

_ZNKSt14default_deleteIN12lldb_private14StructuredData5ArrayEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN12lldb_private14StructuredData5ArrayESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN12lldb_private14StructuredData5ArrayESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN12lldb_private14StructuredData5ArrayESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private14StructuredData6StringELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRN4llvm9StringRefEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !445
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #21, !noalias !446 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 4 uses
  store i32 1, ptr %i.e, align 4, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData6StringESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %2, align 8, !tbaa !49 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !51 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 6, ptr %i.h, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12lldb_private14StructuredData6StringE, i64 16), ptr %i.f, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !86
  %i.k = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null
  %i.l = icmp ne i64 %.sroa.2.0.copyload.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.a, align 8, !tbaa !51
  %i.m = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !69
  %i.o = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.o, ptr %i.j, align 8, !tbaa !56
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %.sroa.2.0.copyload.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.q = load i8, ptr %.sroa.0.0.copyload.i.i.i, align 1, !tbaa !56
  store i8 %i.q, ptr %i.p, align 1, !tbaa !56
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.r, ptr %i.s, align 8, !tbaa !70
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  store ptr %i.c, ptr %i.b, align 8, !tbaa !55
  store ptr %i.f, ptr %0, align 8, !tbaa !447
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6StringELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS2_S2_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.h:                                             ; preds = %bb.g, %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !77
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i3.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i3.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !46
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.e, align 4, !tbaa !46
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ad = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !78
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.ae = phi ptr [ %.pre.i.i.i, %bb.j ], [ %i.w, %bb.i ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i7.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i7.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !46 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #20, !inline_history !442
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.c, ptr %i.v, align 8, !tbaa !78
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6StringELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS2_S2_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN12lldb_private14StructuredData6StringELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS2_S2_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData6StringESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData6StringESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #20, !inline_history !448
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData6StringESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData6StringESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData6StringESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7BooleanESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7BooleanESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(29) dereferenceable(29) %i.a) #20, !inline_history !449
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7BooleanESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7BooleanESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7BooleanESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #20, !inline_history !450
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private14StructuredData7IntegerImED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN12lldb_private14StructuredData6ObjectD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZN12lldb_private14StructuredData6ObjectD2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !8
  br label %_ZN12lldb_private14StructuredData6ObjectD2Ev.exit

_ZN12lldb_private14StructuredData6ObjectD2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK12lldb_private14StructuredData7IntegerImE9SerializeERN4llvm4json7OStreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::json::Value", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132
  store i16 4, ptr %2, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !51
  call void @_ZN4llvm4json7OStream5valueERKNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #20
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK12lldb_private14StructuredData7IntegerImE14GetDescriptionERNS_6StreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132
  %i.c = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.15, i64 noundef %i.b) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerIlEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #20, !inline_history !451
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private14StructuredData7IntegerIlED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN12lldb_private14StructuredData6ObjectD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZN12lldb_private14StructuredData6ObjectD2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !8
  br label %_ZN12lldb_private14StructuredData6ObjectD2Ev.exit

_ZN12lldb_private14StructuredData6ObjectD2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK12lldb_private14StructuredData7IntegerIlE9SerializeERN4llvm4json7OStreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::json::Value", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !134
  store i16 3, ptr %2, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !51
  call void @_ZN4llvm4json7OStream5valueERKNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #20
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK12lldb_private14StructuredData7IntegerIlE14GetDescriptionERNS_6StreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !134
  %i.c = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.16, i64 noundef %i.b) #20 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData5FloatESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData5FloatESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #20, !inline_history !452
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData5FloatESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData5FloatESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData5FloatESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData4NullESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData4NullESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.a) #20, !inline_history !453
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData4NullESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData4NullESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData4NullESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

declare noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm4json6isUTF8ENS_9StringRefEPm(ptr, i64, ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm4json7fixUTF8B5cxx11ENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKPvEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !455, !nonnull !111, !align !138
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.d, align 8
  %i.e = call i64 @_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %i.e to i32
  %i.f = and i64 %i.e, 4294967296
  %.not.i.i = icmp eq i64 %i.f, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 2, i32 %.sroa.03.0.extract.trunc.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.g = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.h = load i64, ptr %i.a, align 8
  %spec.select.i.i.i = select i1 %i.g, i64 16, i64 %i.h ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.i = call noundef zeroext i1 @_ZN4llvm18isPrefixedHexStyleENS_13HexPrintStyleE(i32 noundef %spec.select.i.i) #20
  %i.j = add i64 %spec.select.i.i.i, 2
  %.0.i.i.i = select i1 %i.i, i64 %i.j, i64 %spec.select.i.i.i
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.l = ptrtoint ptr %i.k to i64
  call void @_ZN4llvm9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.l, i32 noundef %spec.select.i.i, i64 %.0.i.i.i, i8 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm9StringRef23starts_with_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.17, i64 1) #20
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !101  ; 7 uses
  %.not.i.i = icmp ult i64 %i.c, 2
  br i1 %.not.i.i, label %bb.e, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !102 ; 2 uses
  %i.d = load i16, ptr %.pre.i, align 1
  %i.e = icmp ne i16 %i.d, 11640
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i9

bb.c:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i, i64 2
  %i.i = add i64 %i.c, -2
  store ptr %i.h, ptr %0, align 8, !tbaa !49
  store i64 %i.i, ptr %i.b, align 8, !tbaa !51
  br label %bb.f

_ZNK4llvm9StringRef11starts_withES0_.exit.i9:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.pre.i8 = load ptr, ptr %0, align 8, !tbaa !102 ; 2 uses
  %i.j = load i16, ptr %.pre.i8, align 1
  %i.k = icmp ne i16 %i.j, 11608
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i15

bb.d:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i9
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i8, i64 2
  %i.o = add i64 %i.c, -2
  store ptr %i.n, ptr %0, align 8, !tbaa !49
  store i64 %i.o, ptr %i.b, align 8, !tbaa !51
  br label %bb.f

_ZNK4llvm9StringRef11starts_withES0_.exit.i15:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i9
  %.pre.i14 = load ptr, ptr %0, align 8, !tbaa !102 ; 2 uses
  %i.p = load i16, ptr %.pre.i14, align 1
  %i.q = icmp ne i16 %i.p, 11128
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvm9StringRef13consume_frontES0_.exit18, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread

_ZN4llvm9StringRef13consume_frontES0_.exit18:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i15
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i14, i64 2
  %i.u = add i64 %i.c, -2
  store ptr %i.t, ptr %0, align 8, !tbaa !49
  store i64 %i.u, ptr %i.b, align 8, !tbaa !51
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.not.i.i19 = icmp eq i64 %i.c, 0
  br i1 %.not.i.i19, label %.thread49, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i21

_ZNK4llvm9StringRef11starts_withES0_.exit.i21:    ; preds = %bb.e
  %.pre.i20 = load ptr, ptr %0, align 8, !tbaa !102 ; 2 uses
  %lhsc = load i8, ptr %.pre.i20, align 1
  %i.v = icmp eq i8 %lhsc, 120
  br i1 %i.v, label %_ZN4llvm9StringRef13consume_frontES0_.exit24, label %.thread49

_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i15
  %.pre.i2050 = load ptr, ptr %0, align 8, !tbaa !102 ; 2 uses
  %lhsc51 = load i8, ptr %.pre.i2050, align 1
  %i.w = icmp eq i8 %lhsc51, 120
  br i1 %i.w, label %_ZN4llvm9StringRef13consume_frontES0_.exit24, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i27

_ZN4llvm9StringRef13consume_frontES0_.exit24:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21
  %.pre.i2052 = phi ptr [ %.pre.i2050, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread ], [ %.pre.i20, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21 ]
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i2052, i64 1
  %i.y = add i64 %i.c, -1
  store ptr %i.x, ptr %0, align 8, !tbaa !49
  store i64 %i.y, ptr %i.b, align 8, !tbaa !51
  br label %bb.f

_ZNK4llvm9StringRef11starts_withES0_.exit.i27:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread
  %.pre.i26 = load ptr, ptr %0, align 8, !tbaa !102 ; 2 uses
  %i.z = load i16, ptr %.pre.i26, align 1
  %i.aa = icmp ne i16 %i.z, 11096
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4llvm9StringRef13consume_frontES0_.exit30, label %.thread49

_ZN4llvm9StringRef13consume_frontES0_.exit30:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i27
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i26, i64 2
  %i.ae = add i64 %i.c, -2
  store ptr %i.ad, ptr %0, align 8, !tbaa !49
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !51
  br label %bb.f

.thread49:                                        ; preds = %bb.e, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21, %_ZNK4llvm9StringRef11starts_withES0_.exit.i27
  %i.af = tail call noundef zeroext i1 @_ZN4llvm9StringRef13consume_frontES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.22, i64 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread49, %_ZN4llvm9StringRef13consume_frontES0_.exit30, %_ZN4llvm9StringRef13consume_frontES0_.exit18, %_ZN4llvm9StringRef13consume_frontES0_.exit24, %bb.a, %bb.d, %bb.c
  %.sroa.5.0 = phi i64 [ 4294967297, %bb.c ], [ 4294967296, %bb.d ], [ 0, %bb.a ], [ 4294967299, %_ZN4llvm9StringRef13consume_frontES0_.exit18 ], [ 4294967299, %_ZN4llvm9StringRef13consume_frontES0_.exit24 ], [ 4294967298, %_ZN4llvm9StringRef13consume_frontES0_.exit30 ], [ 4294967298, %.thread49 ]
  ret i64 %.sroa.5.0
}

declare void @_ZN4llvm9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i32 noundef, i64, i8) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm9StringRef23starts_with_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9StringRef13consume_frontES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %.not.i = icmp ult i64 %i.b, %2
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !102   ; 2 uses
  br i1 %i.c, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.pre, ptr %1, i64 %2)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.f = sub nuw i64 %i.b, %2
  store ptr %i.e, ptr %0, align 8, !tbaa !49
  store i64 %i.f, ptr %i.a, align 8, !tbaa !51
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread3: ; preds = %bb.a, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.g = phi i1 [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ false, %bb.a ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

declare noundef zeroext i1 @_ZN4llvm18isPrefixedHexStyleENS_13HexPrintStyleE(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !135
  %i.c = icmp eq i32 %i.b, 0
  %.pre13 = load ptr, ptr %0, align 8, !tbaa !103 ; 4 uses
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.pre13, i64 %.idx
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %.012 = phi ptr [ %i.ab, %bb.j ], [ %.pre13, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.012, align 8, !tbaa !106 ; 4 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr %i.h, align 8, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm14StringMapEntryISt10shared_ptrIN12lldb_private14StructuredData6ObjectEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !59
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20, !inline_history !456
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20, !inline_history !456
  br label %_ZN4llvm14StringMapEntryISt10shared_ptrIN12lldb_private14StructuredData6ObjectEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZN4llvm14StringMapEntryISt10shared_ptrIN12lldb_private14StructuredData6ObjectEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit, !prof !60

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20
  br label %_ZN4llvm14StringMapEntryISt10shared_ptrIN12lldb_private14StructuredData6ObjectEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit

_ZN4llvm14StringMapEntryISt10shared_ptrIN12lldb_private14StructuredData6ObjectEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.aa = add i64 %i.i, 25
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.aa, i64 noundef 8) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm14StringMapEntryISt10shared_ptrIN12lldb_private14StructuredData6ObjectEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit, %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.g
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %bb.j
  %.pre = load ptr, ptr %0, align 8, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.ac = phi ptr [ %.pre, %.loopexit.loopexit ], [ %.pre13, %bb.b ], [ %.pre13, %bb.a ]
  tail call void @free(ptr noundef %i.ac) #20
  ret void
}

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #14

declare void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.b, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %2, i64 %3, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.e = load i64, ptr %i.a, align 8
  %spec.select.i.i = select i1 %i.d, i64 -1, i64 %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i, %bb.a
  %.0.i.i = phi i64 [ -1, %bb.a ], [ %spec.select.i.i, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i ]
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %.0.i.i) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !140  ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %.sroa.speculated.i.i.i, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i) #20 ; 0 uses
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %.sroa.speculated.i.i.i, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !140
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated.i.i.i
  store ptr %i.s, ptr %i.k, align 8, !tbaa !140
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !119    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
  unreachable

_ZNKSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !71
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load <2 x ptr>, ptr %i.s, align 8, !tbaa !73
  store ptr null, ptr %i.t, align 8, !tbaa !55
  store <2 x ptr> %i.u, ptr %i.r, align 8, !tbaa !73
  store ptr null, ptr %i.s, align 8, !tbaa !54
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !71, !alias.scope !466
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.y = load <2 x ptr>, ptr %i.w, align 8, !tbaa !73, !alias.scope !465
  store ptr null, ptr %i.x, align 8, !tbaa !55, !alias.scope !465
  store <2 x ptr> %i.y, ptr %i.v, align 8, !tbaa !73, !alias.scope !464
  store ptr null, ptr %i.w, align 8, !tbaa !54, !alias.scope !465
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !460

_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !71, !alias.scope !469
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.af = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !73, !alias.scope !468
  store ptr null, ptr %i.ae, align 8, !tbaa !55, !alias.scope !468
  store <2 x ptr> %i.af, ptr %i.ac, align 8, !tbaa !73, !alias.scope !467
  store ptr null, ptr %i.ad, align 8, !tbaa !54, !alias.scope !468
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !460

_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #22
  br label %_ZNSt12_Vector_baseISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !119
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !117
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_less_iterEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph21

bb.b:                                             ; preds = %.lr.ph21
  %i.h = icmp eq i64 %i.n, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph21, !llvm.loop !470

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge13.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.r, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_T0_(ptr %0, ptr %storemerge13.lcssa, ptr %storemerge13.lcssa)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %storemerge13.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_RT0_(ptr %0, ptr nonnull %i.i, ptr nonnull %i.i, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.a
  %i.l = icmp sgt i64 %i.k, 32
  br i1 %i.l, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_T0_.exit, !llvm.loop !471

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_T0_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.lr.ph21:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1320 = phi ptr [ %i.r, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01419 = phi i64 [ %i.n, %bb.b ], [ %2, %.lr.ph ]
  %i.m = phi i64 [ %i.u, %bb.b ], [ %i.d, %.lr.ph ]
  %i.n = add nsw i64 %.01419, -1                  ; 3 uses
  %i.o = lshr i64 %i.m, 1
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %storemerge1320, i64 -32
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_SI_T0_(ptr %0, ptr nonnull %i.f, ptr %i.p, ptr nonnull %i.q)
  %i.r = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEET_SI_SI_SI_T0_(ptr nonnull %i.f, ptr %storemerge1320, ptr %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_less_iterEEvT_SI_T0_T1_(ptr %i.r, ptr %storemerge1320, i64 noundef %i.n)
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.a
  %i.u = ashr exact i64 %i.t, 5                   ; 2 uses
  %i.v = icmp sgt i64 %i.u, 16
  br i1 %i.v, label %bb.b, label %.loopexit, !llvm.loop !470

.loopexit:                                        ; preds = %.lr.ph21, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.std::pair.26", align 8     ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit12.i, %bb.b
  %.07.i = phi i64 [ %i.g, %bb.b ], [ %i.ac, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit12.i ] ; 4 uses
  %i.j = getelementptr inbounds [32 x i8], ptr %0, i64 %.07.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.l, ptr %i.h, align 8, !tbaa !73
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvT_T0_SJ_T1_T2_(ptr %0, i64 noundef %.07.i, i64 noundef %i.d, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !55   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit12.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.n, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !59
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #20, !inline_history !472
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #20, !inline_history !472
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit12.i

bb.f:                                             ; preds = %bb.d
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.q, %bb.g ], [ %i.aa, %bb.h ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit12.i, !prof !60

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit12.i

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit12.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e, %bb.c
  %.not.i = icmp eq i64 %.07.i, 0
  %i.ac = add nsw i64 %.07.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_RT0_.exit, label %bb.c, !llvm.loop !473

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_RT0_.exit: ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit12.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ad = icmp ult ptr %1, %2
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_RT0_.exit
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread12, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_RT0_.exit
  ret void

bb.j:                                             ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread12
  %.sroa.0.013 = phi ptr [ %1, %.lr.ph ], [ %i.ar, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread12 ] ; 5 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %.sroa.0.013, align 8, !tbaa !49 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !51 ; 4 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !49 ; 2 uses
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !51 ; 4 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i) ; 3 uses
  %i.af = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.af, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.j
  %i.ag = call i32 @memcmp(ptr noundef %.sroa.05.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i.i.i = freeze i32 %i.ag                 ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.thread.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %bb.j
  %i.ah = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.ah, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %.thread.i.i19.i.i

.thread.i.i.thread.i.i:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.ai = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.ai, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.aj = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.aj, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %.thread.i.i.thread.i.i
  %i.ak = call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i, ptr noundef %.sroa.05.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i14.i.i = freeze i32 %i.ak               ; 2 uses
  %.not.not.i.i15.i.i = icmp eq i32 %.fr.i.i14.i.i, 0
  br i1 %.not.not.i.i15.i.i, label %.thread.i.i19.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i

.thread.i.i19.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i, %.thread.i.i.i.i
  %i.al = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  br i1 %i.al, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread12, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZN4llvmltENS_9StringRefES0_.exit20.i.i:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i
  %i.am = icmp slt i32 %.fr.i.i14.i.i, 0
  br i1 %i.am, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread12, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %.thread.i.i19.i.i, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.aq = icmp ult ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread12

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.thread.i.i.thread.i.i, %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_RT0_(ptr nonnull %0, ptr %1, ptr nonnull %.sroa.0.013, ptr noundef nonnull align 1 dereferenceable(1) %4)
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread12

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread12: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i, %.thread.i.i19.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 32 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %2
  br i1 %i.as, label %bb.j, label %._crit_edge, !llvm.loop !474
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat {
bb.a:
  %.sroa.0 = alloca %"class.llvm::StringRef", align 8 ; 4 uses
  %4 = alloca %"struct.std::pair.26", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !71
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load <2 x ptr>, ptr %i.a, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !55   ; 8 uses
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !73
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !59
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #20, !inline_history !12
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #20, !inline_history !12
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  %i.v = ptrtoint ptr %1 to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !71
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x ptr> %i.c, ptr %i.z, align 8, !tbaa !73
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvT_T0_SJ_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.y, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ac, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !59
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #20, !inline_history !5
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #20, !inline_history !5
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit5

bb.j:                                             ; preds = %bb.h
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.af, %bb.k ], [ %i.ap, %bb.l ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.m, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit5, !prof !60

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit5

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit5: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvT_T0_SJ_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1 ; 3 uses
  %5 = alloca %"struct.std::pair.26", align 8     ; 4 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit
  %.042 = phi i64 [ %i.v, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.042, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 4 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g ; 3 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !49 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !51 ; 4 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !49 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !51 ; 4 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i) ; 3 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.i, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph
  %i.j = tail call i32 @memcmp(ptr noundef %.sroa.05.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i.i.i = freeze i32 %i.j                  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.thread.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph
  %i.k = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %.thread.i.i19.i.i

.thread.i.i.thread.i.i:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.l = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.m = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %.thread.i.i.thread.i.i
  %i.n = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i, ptr noundef %.sroa.05.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i14.i.i = freeze i32 %i.n                ; 2 uses
  %.not.not.i.i15.i.i = icmp eq i32 %.fr.i.i14.i.i, 0
  br i1 %.not.not.i.i15.i.i, label %.thread.i.i19.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i

.thread.i.i19.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i, %.thread.i.i.i.i
  %i.o = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZN4llvmltENS_9StringRefES0_.exit20.i.i:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i
  %i.p = icmp slt i32 %.fr.i.i14.i.i, 0
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %.thread.i.i19.i.i, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.u = icmp ult ptr %i.s, %i.t
  %cond.fr = freeze i1 %i.u
  br i1 %cond.fr, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.thread.i.i.thread.i.i, %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i, %.thread.i.i19.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.v = phi i64 [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit ], [ %i.e, %.thread.i.i19.i.i ], [ %i.e, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i ] ; 4 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %0, i64 %.042 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 16, i1 false), !tbaa.struct !71
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 8 uses
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !73
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.ad, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !59
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !12
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !12
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.e ], [ %i.aq, %bb.f ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.g, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  %i.as = icmp slt i64 %i.v, %i.b
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !475

._crit_edge:                                      ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.v, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit ] ; 5 uses
  %i.at = and i64 %2, 1
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit28

bb.h:                                             ; preds = %._crit_edge
  %i.av = add nsw i64 %2, -2
  %i.aw = ashr exact i64 %i.av, 1
  %i.ax = icmp eq i64 %.0.lcssa, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit28

bb.i:                                             ; preds = %bb.h
  %i.ay = shl nsw i64 %.0.lcssa, 1
  %i.az = or disjoint i64 %i.ay, 1                ; 5 uses
  %i.ba = getelementptr inbounds [32 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 16, i1 false), !tbaa.struct !71
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !55 ; 8 uses
  store <2 x ptr> %i.bf, ptr %i.bd, align 8, !tbaa !73
  %.not.i.i.i.i.i24 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i24, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bh, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !59
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #20, !inline_history !12
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #20, !inline_history !12
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit28

bb.l:                                             ; preds = %bb.j
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i25 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26

bb.n:                                             ; preds = %bb.l
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i27 = phi i32 [ %i.bk, %bb.m ], [ %i.bu, %bb.n ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i27, 1
  br i1 %i.bv, label %bb.o, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit28, !prof !60

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit28

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit28: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26, %bb.k, %bb.i, %bb.h, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.h ], [ %i.az, %bb.i ], [ %i.az, %bb.k ], [ %i.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26 ], [ %i.az, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !71
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ca = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !73
  store ptr null, ptr %i.bz, align 8, !tbaa !55
  store <2 x ptr> %i.ca, ptr %i.bw, align 8, !tbaa !73
  store ptr null, ptr %i.bx, align 8, !tbaa !54
  call void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEElSA_NS0_5__ops14_Iter_less_valEEvT_T0_SJ_T1_RT2_(ptr %0, i64 noundef %.1, i64 noundef %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !55 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.cc, align 8, !tbaa !58
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !59
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #20, !inline_history !5
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #20, !inline_history !5
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.cf, %bb.s ], [ %i.cp, %bb.t ]
  %i.cq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cq, label %bb.u, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit, !prof !60

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit: ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit28, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEElSA_NS0_5__ops14_Iter_less_valEEvT_T0_SJ_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sgt i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit
  %.025 = phi i64 [ %1, %.lr.ph ], [ %.0926, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit ] ; 5 uses
  %.0926.in = add nsw i64 %.025, -1
  %.0926 = sdiv i64 %.0926.in, 2                  ; 4 uses
  %i.c = getelementptr inbounds [32 x i8], ptr %0, i64 %.0926 ; 5 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !49 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !51 ; 4 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !49 ; 2 uses
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !51 ; 4 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i) ; 3 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.d, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.e = tail call i32 @memcmp(ptr noundef %.sroa.05.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i.i.i = freeze i32 %i.e                  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.thread.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %bb.b
  %i.f = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.f, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread, label %.thread.i.i19.i.i

.thread.i.i.thread.i.i:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.g = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.g, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.h = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.h, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %.thread.i.i.thread.i.i
  %i.i = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i, ptr noundef %.sroa.05.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i14.i.i = freeze i32 %i.i                ; 2 uses
  %.not.not.i.i15.i.i = icmp eq i32 %.fr.i.i14.i.i, 0
  br i1 %.not.not.i.i15.i.i, label %.thread.i.i19.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i

.thread.i.i19.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i, %.thread.i.i.i.i
  %i.j = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  br i1 %i.j, label %.critedge, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit

_ZN4llvmltENS_9StringRefES0_.exit20.i.i:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i
  %i.k = icmp slt i32 %.fr.i.i14.i.i, 0
  br i1 %i.k, label %.critedge, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit: ; preds = %.thread.i.i19.i.i, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.o = icmp ult ptr %i.m, %i.n
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread, label %.critedge

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread: ; preds = %.thread.i.i.thread.i.i, %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit
  %i.p = getelementptr inbounds [32 x i8], ptr %0, i64 %.025 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 16, i1 false), !tbaa.struct !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load <2 x ptr>, ptr %i.q, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !55   ; 8 uses
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !73
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.v, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !59
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !12
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !12
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.h, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit, !prof !60

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %i.ak = icmp sgt i64 %.0926, %2
  br i1 %i.ak, label %bb.b, label %.critedge, !llvm.loop !476

.critedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit, %.thread.i.i19.i.i, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.025, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i ], [ %.025, %.thread.i.i19.i.i ], [ %.0926, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit ], [ %.025, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit ]
  %i.al = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !71
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 8 uses
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !73
  %.not.i.i.i.i.i10 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i10, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit14, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ar, align 8, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !59
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #20, !inline_history !12
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #20, !inline_history !12
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit14

bb.k:                                             ; preds = %bb.i
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i11 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i12

bb.m:                                             ; preds = %bb.k
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i12

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i12: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i13 = phi i32 [ %i.au, %bb.l ], [ %i.be, %bb.m ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i13, 1
  br i1 %i.bf, label %bb.n, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit14, !prof !60

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i12
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit14

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit14: ; preds = %.critedge, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i12, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !49 ; 6 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !51 ; 12 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !49 ; 6 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !51 ; 12 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i) ; 3 uses
  %i.a = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.a, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.a
  %i.b = tail call i32 @memcmp(ptr noundef %.sroa.05.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i.i.i = freeze i32 %i.b                  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.thread.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.c, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %.thread.i.i19.i.i

.thread.i.i.thread.i.i:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.d = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.e = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.e, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %.thread.i.i.thread.i.i
  %i.f = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i, ptr noundef %.sroa.05.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i14.i.i = freeze i32 %i.f                ; 2 uses
  %.not.not.i.i15.i.i = icmp eq i32 %.fr.i.i14.i.i, 0
  br i1 %.not.not.i.i15.i.i, label %.thread.i.i19.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i

.thread.i.i19.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i, %.thread.i.i.i.i
  %i.g = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  br i1 %i.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread107, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZN4llvmltENS_9StringRefES0_.exit20.i.i:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i
  %i.h = icmp slt i32 %.fr.i.i14.i.i, 0
  br i1 %i.h, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread107, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %.thread.i.i19.i.i, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.m = icmp ult ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread107

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.thread.i.i.thread.i.i, %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  %.sroa.03.0.copyload.i.i29 = load ptr, ptr %3, align 8, !tbaa !49 ; 4 uses
  %.sroa.24.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.24.0.copyload.i.i31 = load i64, ptr %.sroa.24.0..sroa_idx.i.i30, align 8, !tbaa !51 ; 8 uses
  %.sroa.speculated.i.i.i.i32 = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i31, i64 %.sroa.24.0.copyload.i.i) ; 3 uses
  %i.n = icmp eq i64 %.sroa.speculated.i.i.i.i32, 0
  br i1 %i.n, label %.thread.i.i.i.i44, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i33

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i33: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.o = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i29, i64 noundef %.sroa.speculated.i.i.i.i32) #25
  %.fr.i.i.i.i34 = freeze i32 %i.o                ; 2 uses
  %.not.not.i.i.i.i35 = icmp eq i32 %.fr.i.i.i.i34, 0
  br i1 %.not.not.i.i.i.i35, label %.thread.i.i.thread.i.i43, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i36

.thread.i.i.i.i44:                                ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.p = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i31
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread, label %.thread.i.i19.i.i42

.thread.i.i.thread.i.i43:                         ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i33
  %i.q = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i31
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i37

_ZN4llvmltENS_9StringRefES0_.exit.i.i36:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i33
  %i.r = icmp slt i32 %.fr.i.i.i.i34, 0
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i37

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i37: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i36, %.thread.i.i.thread.i.i43
  %i.s = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i29, ptr noundef %.sroa.03.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i32) #25
  %.fr.i.i14.i.i38 = freeze i32 %i.s              ; 2 uses
  %.not.not.i.i15.i.i39 = icmp eq i32 %.fr.i.i14.i.i38, 0
  br i1 %.not.not.i.i15.i.i39, label %.thread.i.i19.i.i42, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i40

.thread.i.i19.i.i42:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i37, %.thread.i.i.i.i44
  %i.t = icmp ult i64 %.sroa.24.0.copyload.i.i31, %.sroa.24.0.copyload.i.i
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread109, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45

_ZN4llvmltENS_9StringRefES0_.exit20.i.i40:        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i37
  %i.u = icmp slt i32 %.fr.i.i14.i.i38, 0
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread109, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45: ; preds = %.thread.i.i19.i.i42, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.z = icmp ult ptr %i.x, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread109

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread: ; preds = %.thread.i.i.thread.i.i43, %.thread.i.i.i.i44, %_ZN4llvmltENS_9StringRefES0_.exit.i.i36, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.b

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread109: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i40, %.thread.i.i19.i.i42, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45
  %.sroa.speculated.i.i.i.i52 = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i31, i64 %.sroa.26.0.copyload.i.i) ; 3 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i52, 0
  br i1 %i.aa, label %.thread.i.i.i.i64, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i53

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i53: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread109
  %i.ab = tail call i32 @memcmp(ptr noundef %.sroa.05.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i29, i64 noundef %.sroa.speculated.i.i.i.i52) #25
  %.fr.i.i.i.i54 = freeze i32 %i.ab               ; 2 uses
  %.not.not.i.i.i.i55 = icmp eq i32 %.fr.i.i.i.i54, 0
  br i1 %.not.not.i.i.i.i55, label %.thread.i.i.thread.i.i63, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i56

.thread.i.i.i.i64:                                ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread109
  %i.ac = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i31
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit65.thread, label %.thread.i.i19.i.i62

.thread.i.i.thread.i.i63:                         ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i53
  %i.ad = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i31
  br i1 %i.ad, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit65.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i57

_ZN4llvmltENS_9StringRefES0_.exit.i.i56:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i53
  %i.ae = icmp slt i32 %.fr.i.i.i.i54, 0
  br i1 %i.ae, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit65.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i57
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_SI_SI_T0_:bb.a
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread107: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i, %.thread.i.i19.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  %.sroa.03.0.copyload.i.i69 = load ptr, ptr %3, align 8, !tbaa !49 ; 4 uses
  %.sroa.24.0..sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.24.0.copyload.i.i71 = load i64, ptr %.sroa.24.0..sroa_idx.i.i70, align 8, !tbaa !51 ; 8 uses
  %.sroa.speculated.i.i.i.i72 = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i71, i64 %.sroa.26.0.copyload.i.i) ; 3 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i.i72, 0
  br i1 %i.an, label %.thread.i.i.i.i84, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i73

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i73: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread107
  %i.ao = tail call i32 @memcmp(ptr noundef %.sroa.05.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i69, i64 noundef %.sroa.speculated.i.i.i.i72) #25
  %.fr.i.i.i.i74 = freeze i32 %i.ao               ; 2 uses
  %.not.not.i.i.i.i75 = icmp eq i32 %.fr.i.i.i.i74, 0
  br i1 %.not.not.i.i.i.i75, label %.thread.i.i.thread.i.i83, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i76

.thread.i.i.i.i84:                                ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread107
  %i.ap = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i71
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread, label %.thread.i.i19.i.i82

.thread.i.i.thread.i.i83:                         ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i73
  %i.aq = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i71
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i77

_ZN4llvmltENS_9StringRefES0_.exit.i.i76:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i73
  %i.ar = icmp slt i32 %.fr.i.i.i.i74, 0
  br i1 %i.ar, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i77

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i77: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i76, %.thread.i.i.thread.i.i83
  %i.as = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i69, ptr noundef %.sroa.05.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i72) #25
  %.fr.i.i14.i.i78 = freeze i32 %i.as             ; 2 uses
  %.not.not.i.i15.i.i79 = icmp eq i32 %.fr.i.i14.i.i78, 0
  br i1 %.not.not.i.i15.i.i79, label %.thread.i.i19.i.i82, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i80

.thread.i.i19.i.i82:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i77, %.thread.i.i.i.i84
  %i.at = icmp ult i64 %.sroa.24.0.copyload.i.i71, %.sroa.26.0.copyload.i.i
  br i1 %i.at, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread113, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85

_ZN4llvmltENS_9StringRefES0_.exit20.i.i80:        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i77
  %i.au = icmp slt i32 %.fr.i.i14.i.i78, 0
  br i1 %i.au, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread113, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85: ; preds = %.thread.i.i19.i.i82, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i80
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !54
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !54
  %i.az = icmp ult ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread113

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread: ; preds = %.thread.i.i.thread.i.i83, %.thread.i.i.i.i84, %_ZN4llvmltENS_9StringRefES0_.exit.i.i76, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.b

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread113: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i80, %.thread.i.i19.i.i82, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85
  %.sroa.speculated.i.i.i.i92 = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i71, i64 %.sroa.24.0.copyload.i.i) ; 3 uses
  %i.ba = icmp eq i64 %.sroa.speculated.i.i.i.i92, 0
  br i1 %i.ba, label %.thread.i.i.i.i104, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i93

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i93: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread113
  %i.bb = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i69, i64 noundef %.sroa.speculated.i.i.i.i92) #25
  %.fr.i.i.i.i94 = freeze i32 %i.bb               ; 2 uses
  %.not.not.i.i.i.i95 = icmp eq i32 %.fr.i.i.i.i94, 0
  br i1 %.not.not.i.i.i.i95, label %.thread.i.i.thread.i.i103, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i96

.thread.i.i.i.i104:                               ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread113
  %i.bc = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i71
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread, label %.thread.i.i19.i.i102

.thread.i.i.thread.i.i103:                        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i93
  %i.bd = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i71
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i97

_ZN4llvmltENS_9StringRefES0_.exit.i.i96:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i93
  %i.be = icmp slt i32 %.fr.i.i.i.i94, 0
  br i1 %i.be, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i97

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i97: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i96, %.thread.i.i.thread.i.i103
  %i.bf = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i69, ptr noundef %.sroa.03.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i92) #25
  %.fr.i.i14.i.i98 = freeze i32 %i.bf             ; 2 uses
  %.not.not.i.i15.i.i99 = icmp eq i32 %.fr.i.i14.i.i98, 0
  br i1 %.not.not.i.i15.i.i99, label %.thread.i.i19.i.i102, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i100

.thread.i.i19.i.i102:                             ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i97, %.thread.i.i.i.i104
  %i.bg = icmp ult i64 %.sroa.24.0.copyload.i.i71, %.sroa.24.0.copyload.i.i
  br i1 %i.bg, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread115, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105

_ZN4llvmltENS_9StringRefES0_.exit20.i.i100:       ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i97
  %i.bh = icmp slt i32 %.fr.i.i14.i.i98, 0
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread115, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105: ; preds = %.thread.i.i19.i.i102, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i100
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !54
  %i.bm = icmp ult ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread115

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread: ; preds = %.thread.i.i.thread.i.i103, %.thread.i.i.i.i104, %_ZN4llvmltENS_9StringRefES0_.exit.i.i96, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.b

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread115: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i100, %.thread.i.i19.i.i102, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread115, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit65.thread111, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit65.thread
  %.sink127 = phi ptr [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit85.thread ], [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread115 ], [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit105.thread ], [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit45.thread ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit65.thread111 ], [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit65.thread ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink127, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !141
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %.sink127, i64 24
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !55
  %i.bt = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !73
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !55
  store <2 x ptr> %i.bt, ptr %i.bn, align 8, !tbaa !73
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEET_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.030.0 = phi ptr [ %0, %bb.a ], [ %i.ai, %bb.e ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.e ]
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !49 ; 4 uses
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !51 ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, %bb.b
  %.sroa.030.1 = phi ptr [ %.sroa.030.0, %bb.b ], [ %i.n, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread ] ; 11 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %.sroa.030.1, align 8, !tbaa !49 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.030.1, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !51 ; 4 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i) ; 3 uses
  %i.b = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.b, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.c = tail call i32 @memcmp(ptr noundef %.sroa.05.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i.i.i = freeze i32 %i.c                  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.thread.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %bb.c
  %i.d = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %.thread.i.i19.i.i

.thread.i.i.thread.i.i:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.e = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.e, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.f = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.f, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %.thread.i.i.thread.i.i
  %i.g = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i, ptr noundef %.sroa.05.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i14.i.i = freeze i32 %i.g                ; 2 uses
  %.not.not.i.i15.i.i = icmp eq i32 %.fr.i.i14.i.i, 0
  br i1 %.not.not.i.i15.i.i, label %.thread.i.i19.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i

.thread.i.i19.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i, %.thread.i.i.i.i
  %i.h = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  br i1 %i.h, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZN4llvmltENS_9StringRefES0_.exit20.i.i:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i
  %i.i = icmp slt i32 %.fr.i.i14.i.i, 0
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %.thread.i.i19.i.i, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.030.1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.m = icmp ult ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.preheader: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i, %.thread.i.i19.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.thread.i.i.thread.i.i, %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.030.1, i64 32
  br label %bb.c, !llvm.loop !477

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.preheader ], [ %.sroa.0.1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.backedge ] ; 5 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -32 ; 6 uses
  %.sroa.03.0.copyload.i.i11 = load ptr, ptr %.sroa.0.1, align 8, !tbaa !49 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i12 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -24
  %.sroa.24.0.copyload.i.i13 = load i64, ptr %.sroa.24.0..sroa_idx.i.i12, align 8, !tbaa !51 ; 4 uses
  %.sroa.speculated.i.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i13, i64 %.sroa.24.0.copyload.i.i) ; 3 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i.i.i14, 0
  br i1 %i.o, label %.thread.i.i.i.i26, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i15

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i15: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34
  %i.p = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i11, i64 noundef %.sroa.speculated.i.i.i.i14) #25
  %.fr.i.i.i.i16 = freeze i32 %i.p                ; 2 uses
  %.not.not.i.i.i.i17 = icmp eq i32 %.fr.i.i.i.i16, 0
  br i1 %.not.not.i.i.i.i17, label %.thread.i.i.thread.i.i25, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i18

.thread.i.i.i.i26:                                ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34
  %i.q = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i13
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.backedge, label %.thread.i.i19.i.i24

.thread.i.i.thread.i.i25:                         ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i15
  %i.r = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i13
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.backedge, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i19

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.backedge: ; preds = %.thread.i.i.thread.i.i25, %.thread.i.i.i.i26, %_ZN4llvmltENS_9StringRefES0_.exit.i.i18, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34, !llvm.loop !478

_ZN4llvmltENS_9StringRefES0_.exit.i.i18:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i15
  %i.s = icmp slt i32 %.fr.i.i.i.i16, 0
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.backedge, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i19

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i19: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i18, %.thread.i.i.thread.i.i25
  %i.t = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i11, ptr noundef %.sroa.03.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i14) #25
  %.fr.i.i14.i.i20 = freeze i32 %i.t              ; 2 uses
  %.not.not.i.i15.i.i21 = icmp eq i32 %.fr.i.i14.i.i20, 0
  br i1 %.not.not.i.i15.i.i21, label %.thread.i.i19.i.i24, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i22

.thread.i.i19.i.i24:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i19, %.thread.i.i.i.i26
  %i.u = icmp ult i64 %.sroa.24.0.copyload.i.i13, %.sroa.24.0.copyload.i.i
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27.thread36, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27

_ZN4llvmltENS_9StringRefES0_.exit20.i.i22:        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i19
  %i.v = icmp slt i32 %.fr.i.i14.i.i20, 0
  br i1 %i.v, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27.thread36, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27: ; preds = %.thread.i.i19.i.i24, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i22
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -16
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.z = icmp ult ptr %i.x, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread34.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27.thread36

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27.thread36: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i22, %.thread.i.i19.i.i24, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27
  %i.aa = icmp ult ptr %.sroa.030.1, %.sroa.0.1
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27.thread36
  ret ptr %.sroa.030.1

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit27.thread36
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.030.1, i64 16, i1 false), !tbaa.struct !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.030.1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.030.1, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -16 ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.030.1, i64 24
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !55
  %i.ah = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !73
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !55
  store <2 x ptr> %i.ah, ptr %i.ab, align 8, !tbaa !73
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !141
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.030.1, i64 32
  br label %bb.b, !llvm.loop !479
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvT_SI_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0 = alloca %"class.llvm::StringRef", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.08.019 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.08.019, %1
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.08.022 = phi ptr [ %.sroa.08.019, %.lr.ph ], [ %.sroa.08.0, %bb.o ] ; 7 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.022, %bb.o ] ; 4 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %.sroa.08.022, align 8, !tbaa !49 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn21, i64 40
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !51 ; 4 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !49 ; 2 uses
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !51 ; 4 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i) ; 3 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.e, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.f = tail call i32 @memcmp(ptr noundef %.sroa.05.0.copyload.i.i, ptr noundef %.sroa.03.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i.i.i = freeze i32 %i.f                  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.thread.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %bb.b
  %i.g = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %.thread.i.i19.i.i

.thread.i.i.thread.i.i:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.h = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  br i1 %i.h, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.i = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %.thread.i.i.thread.i.i
  %i.j = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i, ptr noundef %.sroa.05.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i14.i.i = freeze i32 %i.j                ; 2 uses
  %.not.not.i.i15.i.i = icmp eq i32 %.fr.i.i14.i.i, 0
  br i1 %.not.not.i.i15.i.i, label %.thread.i.i19.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i

.thread.i.i19.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i, %.thread.i.i.i.i
  %i.k = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZN4llvmltENS_9StringRefES0_.exit20.i.i:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i
  %i.l = icmp slt i32 %.fr.i.i14.i.i, 0
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %.thread.i.i19.i.i, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pn21, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.p = icmp ult ptr %i.n, %i.o
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.thread.i.i.thread.i.i, %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.022, i64 16, i1 false), !tbaa.struct !71
  %i.q = getelementptr inbounds nuw i8, ptr %.pn21, i64 48 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !73
  %i.s = ptrtoint ptr %.sroa.08.022 to i64
  %i.t = sub i64 %i.s, %i.c
  %i.u = ashr exact i64 %i.t, 5                   ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %.pn21, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.at, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.y, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.x, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.i.i.i.i.i ], [ %.sroa.08.022, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 16, i1 false), !tbaa.struct !71
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 8 uses
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !73
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ae, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !59
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #20, !inline_history !480
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #20, !inline_history !480
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.ar, %bb.g ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.h, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.i.i.i.i.i, !prof !60

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.i.i.i.i.i

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.at = add nsw i64 %.010.i.i.i.i.i, -1
  %i.au = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit, !llvm.loop !481

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit: ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !71
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !55  ; 8 uses
  store <2 x ptr> %i.r, ptr %i.b, align 8, !tbaa !73
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aw, align 8, !tbaa !58
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !59
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #20, !inline_history !12
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #20, !inline_history !12
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.az, %bb.l ], [ %i.bj, %bb.m ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.n, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit, !prof !60

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.o

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i, %.thread.i.i19.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.08.022)
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.022, i64 32 ; 2 uses
  %.not = icmp eq ptr %.sroa.08.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !482

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEESt6vectorISA_SaISA_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.08.0.copyload = load ptr, ptr %0, align 8, !tbaa !49 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !51 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !73
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit: ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.backedge, %bb.a
  %.sroa.014.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0, %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.backedge ] ; 11 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.014.0, i64 -32 ; 3 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !49 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.014.0, i64 -24
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !51 ; 4 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i, i64 %.sroa.5.0.copyload) ; 3 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.d, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit
  %i.e = tail call i32 @memcmp(ptr noundef %.sroa.08.0.copyload, ptr noundef %.sroa.03.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i.i.i = freeze i32 %i.e                  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.thread.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit
  %i.f = icmp ult i64 %.sroa.5.0.copyload, %.sroa.24.0.copyload.i.i
  br i1 %i.f, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread, label %.thread.i.i19.i.i

.thread.i.i.thread.i.i:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.g = icmp ult i64 %.sroa.5.0.copyload, %.sroa.24.0.copyload.i.i
  br i1 %i.g, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.h = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.h, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %.thread.i.i.thread.i.i
  %i.i = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i, ptr noundef %.sroa.08.0.copyload, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i14.i.i = freeze i32 %i.i                ; 2 uses
  %.not.not.i.i15.i.i = icmp eq i32 %.fr.i.i14.i.i, 0
  br i1 %.not.not.i.i15.i.i, label %.thread.i.i19.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i

.thread.i.i19.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i, %.thread.i.i.i.i
  %i.j = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.5.0.copyload
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread18, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit

_ZN4llvmltENS_9StringRefES0_.exit20.i.i:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i
  %i.k = icmp slt i32 %.fr.i.i14.i.i, 0
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread18, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit: ; preds = %.thread.i.i19.i.i, %_ZN4llvmltENS_9StringRefES0_.exit20.i.i
  %i.l = getelementptr inbounds i8, ptr %.sroa.014.0, i64 -16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = icmp ult ptr %i.c, %i.m
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread18

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread: ; preds = %.thread.i.i.thread.i.i, %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0, i64 16, i1 false), !tbaa.struct !71
  %i.o = getelementptr inbounds i8, ptr %.sroa.014.0, i64 -16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 24
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !55   ; 8 uses
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !73
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.backedge, label %bb.b

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.backedge: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit, !llvm.loop !483

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.t, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !59
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !12
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !12
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.backedge

bb.d:                                             ; preds = %bb.b
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.e ], [ %i.ag, %bb.f ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.g, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.backedge, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEEaSEOS7_.exit.backedge

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread18: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i, %.thread.i.i19.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit
  store ptr %.sroa.08.0.copyload, ptr %.sroa.014.0, align 8, !tbaa !49
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 8 uses
  store <2 x ptr> %i.b, ptr %i.ai, align 8, !tbaa !73
  %.not.i.i.i.i.i1 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i1, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.al, align 8, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !59
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20, !inline_history !12
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20, !inline_history !12
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i2 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i4 = phi i32 [ %i.ao, %bb.k ], [ %i.ay, %bb.l ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i.i4, 1
  br i1 %i.az, label %bb.m, label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit, !prof !60

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20
  br label %_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit

_ZNSt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEED2Ev.exit: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i3, %bb.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread18
  ret void
}

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsERKN4llvm19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !485, !nonnull !111, !align !138 ; 2 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.b, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %2, i64 %3, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.f = load i64, ptr %i.a, align 8
  %spec.select.i.i = select i1 %i.e, i64 -1, i64 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i, %bb.a
  %.0.i.i = phi i64 [ -1, %bb.a ], [ %spec.select.i.i, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i ]
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !49 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !51
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i, i64 %.0.i.i) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %.sroa.speculated.i.i.i, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i) #20 ; 0 uses
  br label %_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %.sroa.0.0.copyload.i.i, i64 %.sroa.speculated.i.i.i, i1 false)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !140
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.speculated.i.i.i
  store ptr %i.q, ptr %i.i, align 8, !tbaa !140
  br label %_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit

_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{null, null, null}
!1 = distinct !{null}
!2 = distinct !{null, null, null}
!3 = distinct !{!3, !47}
!4 = distinct !{!4, !47}
!5 = distinct !{null, null, null, null}
!6 = distinct !{null, null, null, null, null, null, null, null}
!7 = distinct !{!7, !47}
!8 = distinct !{ptr @_ZN12lldb_private14StructuredData6ObjectD2Ev, null, null, null, null}
!9 = distinct !{null, null}
!10 = distinct !{null, null}
!11 = distinct !{null, null}
!12 = distinct !{null, null, null, null, null, null}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN4llvm5ErrorE", !22, i64 0}
!25 = !{!24, !22, i64 0}
!26 = !{!"vtable pointer", !16, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSN4llvm4json5Value9ValueTypeE", !17, i64 0}
!29 = !{!"_ZTSN4llvm21AlignedCharArrayUnionIbJdlmNS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4json5ArrayENS8_6ObjectEEEE", !17, i64 0}
!30 = !{!"_ZTSN4llvm4json5ValueE", !28, i64 0, !29, i64 8}
!31 = !{!30, !28, i64 0}
!32 = !{!"p1 _ZTSN12lldb_private14StructuredData6ObjectE", !21, i64 0}
!33 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!34 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0}
!35 = !{!"_ZTSSt10__weak_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0, !34, i64 8}
!36 = !{!"_ZTSSt8weak_ptrIN12lldb_private14StructuredData6ObjectEE", !35, i64 0}
!37 = !{!"_ZTSSt23enable_shared_from_thisIN12lldb_private14StructuredData6ObjectEE", !36, i64 0}
!38 = !{!"_ZTSN4lldb18StructuredDataTypeE", !17, i64 0}
!39 = !{!"_ZTSN12lldb_private14StructuredData6ObjectE", !37, i64 8, !38, i64 24}
!40 = !{!39, !38, i64 24}
!41 = !{!"any p2 pointer", !21, i64 0}
!42 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !41, i64 0}
!43 = !{!"_ZTSN4llvm13StringMapImplE", !42, i64 0, !18, i64 8, !18, i64 12, !18, i64 16}
!44 = !{!"p1 _ZTSN12lldb_private14StructuredData10DictionaryE", !21, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!18, !18, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"p1 omnipotent char", !21, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"long", !17, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0}
!53 = !{!"_ZTSSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0, !52, i64 8}
!54 = !{!53, !32, i64 0}
!55 = !{!52, !33, i64 0}
!56 = !{!17, !17, i64 0}
!57 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 8, !18, i64 12}
!58 = !{!57, !18, i64 8}
!59 = !{!57, !18, i64 12}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{!"p1 _ZTSN12lldb_private14StructuredData5ArrayE", !21, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"p1 _ZTSSt10shared_ptrIN12lldb_private14StructuredData6ObjectEE", !21, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN12lldb_private14StructuredData6ObjectEESaIS4_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!64, !63, i64 8}
!66 = !{!64, !63, i64 16}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !48, i64 0}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !67, i64 0, !50, i64 8, !17, i64 16}
!69 = !{!68, !48, i64 0}
!70 = !{!68, !50, i64 8}
!71 = !{i64 0, i64 8, !49, i64 8, i64 8, !51}
!72 = !{!"bool", !17, i64 0}
!73 = !{!21, !21, i64 0}
!74 = !{i8 0, i8 2}
!75 = !{!"_ZTSN12lldb_private14StructuredData7BooleanE", !39, i64 0, !72, i64 28}
!76 = !{!75, !72, i64 28}
!77 = !{!35, !32, i64 0}
!78 = !{!34, !33, i64 0}
!79 = !{!"p1 _ZTSN12lldb_private14StructuredData7IntegerImEE", !21, i64 0}
!80 = !{!"p1 _ZTSN12lldb_private14StructuredData7IntegerIlEE", !21, i64 0}
!81 = !{!"double", !17, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"p1 _ZTSN12lldb_private14StructuredData5FloatE", !21, i64 0}
!84 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!85 = !{!"p1 _ZTSN12lldb_private14StructuredData4NullE", !21, i64 0}
!86 = !{!67, !48, i64 0}
!87 = !{!"p1 _ZTSN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEE", !21, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"_ZTSN4llvm9StringRefE", !48, i64 0, !50, i64 8}
!90 = !{!"_ZTSN4llvm8ArrayRefINS_12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEEEE", !87, i64 0, !50, i64 8}
!91 = !{!"_ZTSN4llvm19formatv_object_baseE", !89, i64 0, !90, i64 16, !72, i64 32}
!92 = !{!91, !72, i64 32}
!93 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !17, i64 0}
!94 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !17, i64 0}
!95 = !{!"_ZTSN4llvm11raw_ostreamE", !93, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !72, i64 40, !94, i64 44}
!96 = !{!95, !93, i64 8}
!97 = !{!95, !72, i64 40}
!98 = !{!95, !94, i64 44}
!99 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!89, !50, i64 8}
!102 = !{!89, !48, i64 0}
!103 = !{!43, !42, i64 0}
!104 = !{!43, !18, i64 8}
end_hunk_1
begin_hunk_2_@bcmp
!202 = !{!201, !79, i64 0}
!203 = !{!"_ZTSSt12__shared_ptrIN12lldb_private14StructuredData7IntegerIlEELN9__gnu_cxx12_Lock_policyE2EE", !80, i64 0, !52, i64 8}
!204 = !{!203, !80, i64 0}
!205 = !{!"branch_weights", i32 0, i32 -290966296, i32 2001000, i32 1000}
!206 = !{!"_ZTSSt12__shared_ptrIN12lldb_private14StructuredData5FloatELN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0, !52, i64 8}
!207 = !{!206, !83, i64 0}
!208 = !{!"_ZTSSt12__shared_ptrIN12lldb_private14StructuredData4NullELN9__gnu_cxx12_Lock_policyE2EE", !85, i64 0, !52, i64 8}
!209 = !{!208, !85, i64 0}
!210 = distinct !{!210, i1 true, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!211 = distinct !{!211, !210, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!212 = distinct !{null}
!213 = distinct !{!213, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!214 = distinct !{!214, !213, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!215 = distinct !{!215, i1 true, !"_ZN4llvm8ExpectedINS_4json5ValueEE9takeErrorEv"}
!216 = distinct !{!216, !215, !"_ZN4llvm8ExpectedINS_4json5ValueEE9takeErrorEv: argument 0"}
!217 = distinct !{null, null, null}
!218 = !{!"_ZTSN4llvm5Twine8NodeKindE", !17, i64 0}
!219 = !{!"_ZTSN4llvm5TwineE", !17, i64 0, !17, i64 16, !218, i64 32, !218, i64 33}
!220 = !{!219, !218, i64 32}
!221 = !{!219, !218, i64 33}
!222 = !{!"p1 _ZTSNSt3_V214error_categoryE", !21, i64 0}
!223 = !{!222, !222, i64 0}
!224 = !{!211}
!225 = !{!"p1 _ZTSN4llvm12MemoryBufferE", !21, i64 0}
!226 = !{!225, !225, i64 0}
!227 = !{!"_ZTSN4llvm12MemoryBufferE", !48, i64 8, !48, i64 16}
!228 = !{!227, !48, i64 8}
!229 = !{!227, !48, i64 16}
!230 = !{!214}
!231 = !{!216}
!232 = distinct !{!232, i1 true, !"_ZN4llvm7formatvIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEDabPKcDpOT_"}
!233 = distinct !{!233, !232, !"_ZN4llvm7formatvIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEDabPKcDpOT_: argument 0"}
!234 = distinct !{!234, i1 true, !"_ZSt10make_tupleIJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSE_"}
!235 = distinct !{!235, !234, !"_ZSt10make_tupleIJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSE_: argument 0"}
!236 = distinct !{!236, i1 true, !"_ZNK4llvm19formatv_object_basecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!237 = distinct !{!237, !236, !"_ZNK4llvm19formatv_object_basecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!238 = distinct !{!238, i1 true, !"_ZNK4llvm19formatv_object_base3strB5cxx11Ev"}
!239 = distinct !{!239, !238, !"_ZNK4llvm19formatv_object_base3strB5cxx11Ev: argument 0"}
!240 = !{!233}
!241 = !{!235}
!242 = !{!235, !233}
!243 = !{!237}
!244 = !{!239}
!245 = !{!239, !237}
!246 = distinct !{!246, i1 true, !"_ZNK4llvm9StringRef5splitEc"}
!247 = distinct !{!247, !246, !"_ZNK4llvm9StringRef5splitEc: argument 0"}
!248 = distinct !{!248, i1 true, !"_ZNK4llvm9StringRef5splitES0_"}
!249 = distinct !{!249, !248, !"_ZNK4llvm9StringRef5splitES0_: argument 0"}
!250 = distinct !{!250, i1 true, !"_ZNK12lldb_private14StructuredData10Dictionary14GetValueForKeyEN4llvm9StringRefE"}
!251 = distinct !{!251, !250, !"_ZNK12lldb_private14StructuredData10Dictionary14GetValueForKeyEN4llvm9StringRefE: argument 0"}
!252 = distinct !{!252, i1 true, !"_ZNK4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEE6lookupENS_9StringRefE"}
!253 = distinct !{!253, !252, !"_ZNK4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEE6lookupENS_9StringRefE: argument 0"}
!254 = distinct !{!254, i1 true, !"_ZNK4llvm9StringRef5splitEc"}
!255 = distinct !{!255, !254, !"_ZNK4llvm9StringRef5splitEc: argument 0"}
!256 = distinct !{!256, i1 true, !"_ZNK4llvm9StringRef5splitES0_"}
!257 = distinct !{!257, !256, !"_ZNK4llvm9StringRef5splitES0_: argument 0"}
!258 = distinct !{!258, i1 true, !"_ZNSt23enable_shared_from_thisIN12lldb_private14StructuredData6ObjectEE16shared_from_thisEv"}
!259 = distinct !{!259, !258, !"_ZNSt23enable_shared_from_thisIN12lldb_private14StructuredData6ObjectEE16shared_from_thisEv: argument 0"}
!260 = distinct !{!260, !47}
!261 = distinct !{!261, i1 true, !"_ZNK12lldb_private14StructuredData5Array14GetItemAtIndexEm"}
!262 = distinct !{!262, !261, !"_ZNK12lldb_private14StructuredData5Array14GetItemAtIndexEm: argument 0"}
!263 = distinct !{!263, i1 true, !"_ZNSt23enable_shared_from_thisIN12lldb_private14StructuredData6ObjectEE16shared_from_thisEv"}
!264 = distinct !{!264, !263, !"_ZNSt23enable_shared_from_thisIN12lldb_private14StructuredData6ObjectEE16shared_from_thisEv: argument 0"}
!265 = !{!247}
!266 = !{!249, !247}
!267 = !{!253, !251}
!268 = !{!255}
!269 = !{!257, !255}
!270 = !{!259}
!271 = !{!"long long", !17, i64 0}
!272 = !{!271, !271, i64 0}
!273 = !{!262}
!274 = !{!264}
!275 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !21, i64 0, !18, i64 8, !18, i64 12}
!276 = !{!275, !21, i64 0}
!277 = !{!275, !18, i64 12}
!278 = !{!"p1 _ZTSN4llvm11raw_ostreamE", !21, i64 0}
!279 = !{!278, !278, i64 0}
!280 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4json7OStream5StateEvEE", !275, i64 0}
!281 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4json7OStream5StateELb1EEE", !280, i64 0}
!282 = !{!"_ZTSN4llvm15SmallVectorImplINS_4json7OStream5StateEEE", !281, i64 0}
!283 = !{!"_ZTSN4llvm18SmallVectorStorageINS_4json7OStream5StateELj16EEE", !17, i64 0}
!284 = !{!"_ZTSN4llvm11SmallVectorINS_4json7OStream5StateELj16EEE", !282, i64 0, !283, i64 16}
!285 = !{!"_ZTSN4llvm4json7OStreamE", !284, i64 0, !89, i64 144, !278, i64 160, !18, i64 168, !18, i64 172}
!286 = !{!285, !18, i64 168}
!287 = !{!285, !18, i64 172}
!288 = !{!275, !18, i64 8}
!289 = !{!72, !72, i64 0}
!290 = distinct !{!290, i1 true, !"_ZN4llvm7formatvIJRKPvEEEDaPKcDpOT_"}
!291 = distinct !{!291, !290, !"_ZN4llvm7formatvIJRKPvEEEDaPKcDpOT_: argument 0"}
!292 = distinct !{!292, i1 true, !"_ZN4llvm7formatvIJRKPvEEEDabPKcDpOT_"}
!293 = distinct !{!293, !292, !"_ZN4llvm7formatvIJRKPvEEEDabPKcDpOT_: argument 0"}
!294 = distinct !{!294, i1 true, !"_ZNK4llvm19formatv_object_base3strB5cxx11Ev"}
!295 = distinct !{!295, !294, !"_ZNK4llvm19formatv_object_base3strB5cxx11Ev: argument 0"}
!296 = !{!293, !291}
!297 = !{!41, !41, i64 0}
!298 = !{!295}
!299 = distinct !{!299, i1 true, !"_ZN4llvm7formatvIJRNS_9StringRefEEEEDaPKcDpOT_"}
!300 = distinct !{!300, !299, !"_ZN4llvm7formatvIJRNS_9StringRefEEEEDaPKcDpOT_: argument 0"}
!301 = distinct !{!301, i1 true, !"_ZN4llvm7formatvIJRNS_9StringRefEEEEDabPKcDpOT_"}
!302 = distinct !{!302, !301, !"_ZN4llvm7formatvIJRNS_9StringRefEEEEDabPKcDpOT_: argument 0"}
!303 = distinct !{!303, !47}
!304 = !{!302, !300}
!305 = !{!120, !120, i64 0}
!306 = distinct !{null, null, null, null, null, null, null}
!307 = distinct !{!307, !47}
!308 = distinct !{ptr @_ZN12lldb_private14StructuredData6StringD2Ev, ptr @_ZN12lldb_private14StructuredData6ObjectD2Ev, null, null, null, null}
!309 = !{ptr @_ZN12lldb_private14StructuredData6StringD2Ev}
!310 = distinct !{ptr @_ZN12lldb_private14StructuredData10DictionaryD2Ev, ptr @_ZN12lldb_private14StructuredData6ObjectD2Ev, null, null, null, null}
!311 = !{ptr @_ZN12lldb_private14StructuredData10DictionaryD2Ev}
!312 = distinct !{null, null, null, null}
!313 = distinct !{!313, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!314 = distinct !{!314, !313, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!315 = distinct !{null}
!316 = distinct !{!316, i1 true, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_"}
!317 = distinct !{!317, !316, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_: argument 0"}
!318 = distinct !{null, null, null}
!319 = distinct !{!319, i1 true, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE"}
!320 = distinct !{!320, !319, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE: argument 0"}
!321 = distinct !{null, null, null}
!322 = distinct !{!322, i1 true, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE"}
!323 = distinct !{!323, !322, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE: argument 0"}
!324 = distinct !{!324, i1 true, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_"}
!325 = distinct !{!325, !324, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_: argument 0"}
!326 = distinct !{!326, i1 true, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE"}
!327 = distinct !{!327, !326, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE: argument 0"}
!328 = distinct !{!328, i1 true, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE"}
!329 = distinct !{!329, !328, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE: argument 0"}
!330 = !{!314}
!331 = !{!317}
!332 = !{!320, !317}
!333 = !{!323, !317}
!334 = !{!325}
!335 = !{!327, !325}
!336 = !{!329, !325}
!337 = distinct !{null}
!338 = distinct !{!338, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!339 = distinct !{!339, !338, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!340 = distinct !{!340, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!341 = distinct !{!341, !340, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!342 = distinct !{!342, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!343 = distinct !{!343, !342, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!344 = distinct !{!344, !342, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!345 = distinct !{!345, !47, !129, !130}
!346 = distinct !{!346, !47, !130, !129}
!347 = distinct !{!347, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!348 = distinct !{!348, !347, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!349 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!350 = distinct !{!350, !47}
!351 = distinct !{null, null, null, null, null, null, null, null}
!352 = distinct !{!352, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!353 = distinct !{!353, !352, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!354 = distinct !{!354, !352, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!355 = distinct !{!355, !47, !129, !130}
!356 = distinct !{!356, !47, !130, !129}
!357 = distinct !{!357, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!358 = distinct !{!358, !357, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!359 = distinct !{!359, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!360 = distinct !{!360, !359, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!361 = distinct !{!361, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!362 = distinct !{!362, !361, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!363 = distinct !{!363, !361, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!364 = !{!339}
!365 = !{!341}
!366 = !{!343}
!367 = !{!344}
!368 = !{!348}
!369 = !{!353}
!370 = !{!354}
!371 = !{!358}
!372 = !{!360}
!373 = !{!362}
!374 = !{!363}
!375 = distinct !{!375, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!376 = distinct !{!376, !375, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!377 = distinct !{!377, !375, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!378 = distinct !{!378, !47, !129, !130}
!379 = distinct !{!379, !47, !130, !129}
!380 = distinct !{!380, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!381 = distinct !{!381, !380, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!382 = distinct !{!382, !380, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!383 = distinct !{!383, i1 false, !"LVerDomain"}
!384 = distinct !{!384, !383}
!385 = distinct !{!385, !383}
!386 = distinct !{!386, !47, !129, !130}
!387 = distinct !{!387, !47, !129}
!388 = !{!376}
!389 = !{!377}
!390 = !{!381}
!391 = !{!382}
!392 = !{!382, !384}
!393 = !{!381, !385}
!394 = !{!384}
!395 = distinct !{null}
!396 = distinct !{!396, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!397 = distinct !{!397, !396, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!398 = distinct !{null, null, null, null, null, null, null}
!399 = !{!397}
!400 = !{!79, !79, i64 0}
!401 = !{!"branch_weights", i32 0, i32 -196919296, i32 2048000, i32 1024}
!402 = !{!"branch_weights", i32 -198967296, i32 4097024}
!403 = distinct !{!403, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!404 = distinct !{!404, !403, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!405 = distinct !{null, null, null, null, null, null, null}
!406 = !{!404}
!407 = !{!80, !80, i64 0}
!408 = distinct !{!408, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData5FloatESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!409 = distinct !{!409, !408, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData5FloatESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!410 = distinct !{null, null, null, null, null, null, null}
!411 = !{!409}
!412 = !{!83, !83, i64 0}
!413 = distinct !{!413, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData4NullESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!414 = distinct !{!414, !413, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData4NullESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!415 = distinct !{null, null, null, null, null, null, null}
!416 = !{!414}
!417 = !{!85, !85, i64 0}
!418 = distinct !{null, null, null, null, null}
!419 = distinct !{null, null, null, null, null}
!420 = !{!136, !44, i64 0}
!421 = distinct !{null}
!422 = !{!"_ZTSSt19_Sp_counted_deleterIPN12lldb_private14StructuredData10DictionaryESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0, !136, i64 16}
!423 = !{!422, !44, i64 16}
!424 = distinct !{!424, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN12lldb_private14StructuredData6ObjectEES4_SaIS4_EEvPT_PT0_RT1_"}
!425 = distinct !{!425, !424, !"_ZSt19__relocate_object_aISt10shared_ptrIN12lldb_private14StructuredData6ObjectEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!426 = distinct !{!426, !424, !"_ZSt19__relocate_object_aISt10shared_ptrIN12lldb_private14StructuredData6ObjectEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!427 = distinct !{!427, !47}
!428 = distinct !{!428, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN12lldb_private14StructuredData6ObjectEES4_SaIS4_EEvPT_PT0_RT1_"}
!429 = distinct !{!429, !428, !"_ZSt19__relocate_object_aISt10shared_ptrIN12lldb_private14StructuredData6ObjectEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!430 = distinct !{!430, !428, !"_ZSt19__relocate_object_aISt10shared_ptrIN12lldb_private14StructuredData6ObjectEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!431 = !{!425}
!432 = !{!426}
!433 = !{!429}
!434 = !{!430}
!435 = distinct !{null, null, null, null, null}
!436 = !{!137, !61, i64 0}
!437 = distinct !{null}
!438 = !{!"_ZTSSt19_Sp_counted_deleterIPN12lldb_private14StructuredData5ArrayESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0, !137, i64 16}
!439 = !{!438, !61, i64 16}
!440 = distinct !{!440, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData6StringESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!441 = distinct !{!441, !440, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData6StringESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!442 = distinct !{null, null, null, null, null}
!443 = !{!"p1 _ZTSN12lldb_private14StructuredData6StringE", !21, i64 0}
!444 = !{!"_ZTSSt12__shared_ptrIN12lldb_private14StructuredData6StringELN9__gnu_cxx12_Lock_policyE2EE", !443, i64 0, !52, i64 8}
!445 = !{!444, !443, i64 0}
!446 = !{!441}
!447 = !{!443, !443, i64 0}
!448 = distinct !{null}
!449 = distinct !{null}
!450 = distinct !{null}
!451 = distinct !{null}
!452 = distinct !{null}
!453 = distinct !{null}
!454 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRKPvEE", !41, i64 0}
!455 = !{!454, !41, i64 0}
!456 = distinct !{null, null, null, null, null}
!457 = distinct !{!457, i1 true, !"_ZSt19__relocate_object_aISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEES8_SaIS8_EEvPT_PT0_RT1_"}
!458 = distinct !{!458, !457, !"_ZSt19__relocate_object_aISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!459 = distinct !{!459, !457, !"_ZSt19__relocate_object_aISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!460 = distinct !{!460, !47}
!461 = distinct !{!461, i1 true, !"_ZSt19__relocate_object_aISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEES8_SaIS8_EEvPT_PT0_RT1_"}
!462 = distinct !{!462, !461, !"_ZSt19__relocate_object_aISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!463 = distinct !{!463, !461, !"_ZSt19__relocate_object_aISt4pairIN4llvm9StringRefESt10shared_ptrIN12lldb_private14StructuredData6ObjectEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!464 = !{!458}
!465 = !{!459}
!466 = !{!458, !459}
!467 = !{!462}
!468 = !{!463}
!469 = !{!462, !463}
!470 = distinct !{!470, !47}
!471 = distinct !{!471, !47}
!472 = distinct !{null, null, null, null, null}
!473 = distinct !{!473, !47}
!474 = distinct !{!474, !47}
!475 = distinct !{!475, !47}
!476 = distinct !{!476, !47}
!477 = distinct !{!477, !47}
!478 = distinct !{!478, !47}
!479 = distinct !{!479, !47}
!480 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!481 = distinct !{!481, !47}
!482 = distinct !{!482, !47}
!483 = distinct !{!483, !47}
!484 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEE", !120, i64 0}
!485 = !{!484, !120, i64 0}
end_hunk_2
