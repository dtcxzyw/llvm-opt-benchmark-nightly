inline.NumInlined: 10466
inline.NumDeleted: 4631
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_115CCopyToBindInfoD2Ev:bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36, !inline_history !1670
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36, !inline_history !1670
  br label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.j, %bb.h ], [ %i.t, %bb.i ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.u, label %bb.j, label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EED2Ev.exit, !prof !24

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36
  br label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #36
  ret void

bb.k:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_115CCopyToBindInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_115CCopyToBindInfoE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1435 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1485 ; 2 uses
  %.not2.i = icmp eq ptr %i.d, null
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.k, !inline_history !1671

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_115CCopyToBindInfoD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.g, align 8, !tbaa !97
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !104
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36, !inline_history !1672
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36, !inline_history !1672
  br label %_ZN6duckdb12_GLOBAL__N_115CCopyToBindInfoD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.h ], [ %i.t, %bb.i ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.j, label %_ZN6duckdb12_GLOBAL__N_115CCopyToBindInfoD2Ev.exit, !prof !24

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36, !inline_history !1671
  br label %_ZN6duckdb12_GLOBAL__N_115CCopyToBindInfoD2Ev.exit

bb.k:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #39, !inline_history !1671
  unreachable

_ZN6duckdb12_GLOBAL__N_115CCopyToBindInfoD2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #36, !inline_history !1671
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK6duckdb12_GLOBAL__N_115CCopyToBindInfo4CopyEv(ptr dead_on_unwind noalias nofree readnone sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 32, ptr %i.a, align 8, !tbaa !110
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %2, align 8, !tbaa !25
  %i.e = load i64, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) @.str.44, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !34
  %i.g = load ptr, ptr %2, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #36
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK6duckdb12_GLOBAL__N_115CCopyToBindInfo6EqualsERKNS_12FunctionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %2 = load ptr, ptr %i.a, align 8, !tbaa !1435
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !1435
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %bb.a
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !1485
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %10 = load ptr, ptr %9, align 8, !tbaa !1485
  %11 = icmp eq ptr %8, %10
  br label %12

12:                                               ; preds = %6, %bb.a
  %13 = phi i1 [ false, %bb.a ], [ %11, %6 ]
  ret i1 %13
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_118CCopyToGlobalStateESt14default_deleteIS2_ELb1EEptEv(ptr nofree readnone returned captures(address_is_null, ret: address, provenance) %.0.val) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %1 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_118CCopyToGlobalStateESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_118CCopyToGlobalStateESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %.0.val
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_118CCopyToGlobalStateD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_118CCopyToGlobalStateE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1447 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1491 ; 2 uses
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_118CCopyToGlobalStateD0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_118CCopyToGlobalStateE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1447 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_118CCopyToGlobalStateD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1491 ; 2 uses
  %.not2.i = icmp eq ptr %i.d, null
  br i1 %.not2.i, label %_ZN6duckdb12_GLOBAL__N_118CCopyToGlobalStateD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %_ZN6duckdb12_GLOBAL__N_118CCopyToGlobalStateD2Ev.exit unwind label %bb.d, !inline_history !1673

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #39, !inline_history !1673
  unreachable

_ZN6duckdb12_GLOBAL__N_118CCopyToGlobalStateD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17LocalFunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17LocalFunctionDataD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #28

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_10MetricTypeEEEPKcT_(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb26CAggregateFunctionBindDataD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #36
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb26CAggregateFunctionBindData4CopyEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb26CAggregateFunctionBindDataESt14default_deleteIS1_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84, !nonnull !41, !align !87
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35, !noalias !1674, !inline_history !10 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb26CAggregateFunctionBindDataE, i64 16), ptr %i.c, align 8, !tbaa !11, !noalias !1674
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !13, !noalias !1674
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb26CAggregateFunctionBindData6EqualsERKNS_12FunctionDataE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84, !nonnull !41, !align !87 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !174
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84, !nonnull !41, !align !87 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !174
  %i.i = icmp eq ptr %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvvEZ29duckdb_register_cast_functionE3$_0E9_M_invokeERKSt9_Any_data":bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4, !noalias !1764
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZN6duckdb15make_shared_ptrINS_21CCastFunctionUserDataEJRP21_duckdb_function_infoRPFvPvEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit.i.i.i, !prof !24

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36, !noalias !1764
  br label %_ZN6duckdb15make_shared_ptrINS_21CCastFunctionUserDataEJRP21_duckdb_function_infoRPFvPvEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit.i.i.i

_ZN6duckdb15make_shared_ptrINS_21CCastFunctionUserDataEJRP21_duckdb_function_infoRPFvPvEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !1763, !nonnull !41, !align !87
  %i.ae = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35
          to label %bb.i unwind label %bb.l       ; 4 uses

bb.i:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_21CCastFunctionUserDataEJRP21_duckdb_function_infoRPFvPvEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !147, !noalias !1771
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load <2 x ptr>, ptr %1, align 16, !tbaa !147, !noalias !1771
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !1771
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17CCastFunctionDataE, i64 16), ptr %i.ae, align 8, !tbaa !11, !noalias !1771
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1774, !noalias !1771
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !147, !noalias !1771
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr null, ptr %2, align 8, !tbaa !1779
  store ptr %i.ae, ptr %4, align 8, !tbaa !1781
  invoke void @_ZN6duckdb13BoundCastInfoC1EPFbRNS_6VectorES2_mRNS_14CastParametersEENS_10unique_ptrINS_13BoundCastDataESt14default_deleteIS8_ELb1EEEPFNS7_INS_18FunctionLocalStateES9_ISC_ELb1EEERNS_24CastLocalStateParametersEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @_ZN6duckdbL16CAPICastFunctionERNS_6VectorES1_mRNS_14CastParametersE, ptr noundef nonnull %4, ptr noundef null)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !1783  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i: ; preds = %bb.j
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #36, !inline_history !1784
  br label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1785, !nonnull !41, !align !87
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1786, !nonnull !41, !align !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1783
  store i64 %i.au, ptr %i.as, align 8, !tbaa !1783
  store ptr null, ptr %i.at, align 8, !tbaa !1783
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !1763, !nonnull !41, !align !87
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !406
  invoke void @_ZN6duckdb15CastFunctionSet20RegisterCastFunctionERKNS_11LogicalTypeES3_NS_13BoundCastInfoEl(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull %5, i64 noundef %i.ax)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !1783 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.k
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #36, !inline_history !1787
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i.i.i

_ZN6duckdb13BoundCastInfoD2Ev.exit.i.i.i:         ; preds = %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i, %bb.k
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !1783 ; 3 uses
  %.not.i.i8.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i8.i.i.i, label %"_ZSt10__invoke_rIvRZ29duckdb_register_cast_functionE3$_0JEENSt9enable_ifIXsr7is_voidIT_EE5valueES3_E4typeEOT0_DpOT1_.exit", label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i9.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i9.i.i.i: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i.i.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #36, !inline_history !1787
  br label %"_ZSt10__invoke_rIvRZ29duckdb_register_cast_functionE3$_0JEENSt9enable_ifIXsr7is_voidIT_EE5valueES3_E4typeEOT0_DpOT1_.exit"

bb.l:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_21CCastFunctionUserDataEJRP21_duckdb_function_infoRPFvPvEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !1783  ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i16.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.sink.split.i.i.i

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !1783 ; 3 uses
  %.not.i.i19.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i19.i.i.i, label %_ZN6duckdb13BoundCastInfoD2Ev.exit21.i.i.i, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i20.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i20.i.i.i: ; preds = %bb.n
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #36, !inline_history !1787
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit21.i.i.i

_ZN6duckdb13BoundCastInfoD2Ev.exit21.i.i.i:       ; preds = %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i20.i.i.i, %bb.n
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !1783 ; 2 uses
  %.not.i.i22.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i22.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.sink.split.i.i.i

_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.sink.split.i.i.i: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit21.i.i.i, %bb.m
  %.sink34.i.i.i = phi ptr [ %i.bi, %bb.m ], [ %i.bo, %_ZN6duckdb13BoundCastInfoD2Ev.exit21.i.i.i ] ; 2 uses
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %i.bj, %_ZN6duckdb13BoundCastInfoD2Ev.exit21.i.i.i ]
  %i.bp = load ptr, ptr %.sink34.i.i.i, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink34.i.i.i) #36, !inline_history !1788
  br label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.i.i.i

_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.sink.split.i.i.i, %_ZN6duckdb13BoundCastInfoD2Ev.exit21.i.i.i, %bb.m
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bj, %_ZN6duckdb13BoundCastInfoD2Ev.exit21.i.i.i ], [ %i.bh, %bb.m ], [ %.pn.ph.i.i.i, %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @_ZNSt10unique_ptrIN6duckdb17CCastFunctionDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #36
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.i.i.i, %bb.l
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit18.i.i.i ], [ %i.bg, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @_ZN6duckdb10shared_ptrINS_21CCastFunctionUserDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn.pn.i.i.i

"_ZSt10__invoke_rIvRZ29duckdb_register_cast_functionE3$_0JEENSt9enable_ifIXsr7is_voidIT_EE5valueES3_E4typeEOT0_DpOT1_.exit": ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i.i.i, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZ29duckdb_register_cast_functionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ29duckdb_register_cast_functionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZ29duckdb_register_cast_functionE3$_0", ptr %0, align 8, !tbaa !1697
  br label %"_ZNSt14_Function_base13_Base_managerIZ29duckdb_register_cast_functionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !147
  store ptr %.val, ptr %0, align 8, !tbaa !147
  br label %"_ZNSt14_Function_base13_Base_managerIZ29duckdb_register_cast_functionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1789
  store ptr %i.a, ptr %0, align 8, !tbaa !147
  br label %"_ZNSt14_Function_base13_Base_managerIZ29duckdb_register_cast_functionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !147 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZ29duckdb_register_cast_functionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %.val7.i) #38
  br label %"_ZNSt14_Function_base13_Base_managerIZ29duckdb_register_cast_functionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ29duckdb_register_cast_functionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb8DBConfig16GetCastFunctionsEv(ptr noundef nonnull align 8 dereferenceable(1360)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN6duckdbL16CAPICastFunctionERNS_6VectorES1_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::CCastExecuteInfo", align 8 ; 8 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !515
  %i.b = icmp eq i8 %i.a, 2                       ; 2 uses
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %3, ptr %4, align 8, !tbaa !1790
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !34
  store i8 0, ptr %i.d, align 8, !tbaa !35
  invoke void @_ZNK6duckdb12optional_ptrINS_13BoundCastDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !436
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1774
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull %4, i64 noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %5, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(57) %3)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.i, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

5:                                                ; preds = %bb.c
  %6 = icmp eq i64 %2, 1
  %or.cond = and i1 %6, %i.b
  br i1 %or.cond, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %2, 1
  %or.cond.a = and i1 %i.l, %i.b
  br i1 %or.cond.a, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !629, !range !40, !noundef !41
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.j, label %bb.i

bb.i:                                             ; preds = %5, %bb.h
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %5
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZN6duckdb16CCastExecuteInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.p) #38
  br label %_ZN6duckdb16CCastExecuteInfoD2Ev.exit

_ZN6duckdb16CCastExecuteInfoD2Ev.exit:            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %i.i

bb.k:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.e ]
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZN6duckdb16CCastExecuteInfoD2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.r) #38
  br label %_ZN6duckdb16CCastExecuteInfoD2Ev.exit29

_ZN6duckdb16CCastExecuteInfoD2Ev.exit29:          ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb13BoundCastInfoC1EPFbRNS_6VectorES2_mRNS_14CastParametersEENS_10unique_ptrINS_13BoundCastDataESt14default_deleteIS8_ELb1EEEPFNS7_INS_18FunctionLocalStateES9_ISC_ELb1EEERNS_24CastLocalStateParametersEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6duckdb15CastFunctionSet20RegisterCastFunctionERKNS_11LogicalTypeES3_NS_13BoundCastInfoEl(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb17CCastFunctionDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1779   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17CCastFunctionDataEEclEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !104
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36, !inline_history !1791
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36, !inline_history !1791
  br label %_ZNKSt14default_deleteIN6duckdb17CCastFunctionDataEEclEPS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNKSt14default_deleteIN6duckdb17CCastFunctionDataEEclEPS1_.exit, !prof !24

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36
  br label %_ZNKSt14default_deleteIN6duckdb17CCastFunctionDataEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb17CCastFunctionDataEEclEPS1_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  tail call void @_ZN6duckdb13BoundCastDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %i.a) #36
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #38
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb17CCastFunctionDataEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_21CCastFunctionUserDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb21CCastFunctionUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !104
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !1792
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !1792
  br label %_ZNSt12__shared_ptrIN6duckdb21CCastFunctionUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb21CCastFunctionUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZNSt12__shared_ptrIN6duckdb21CCastFunctionUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb21CCastFunctionUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21CCastFunctionUserDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21CCastFunctionUserDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZSt8_DestroyIN6duckdb21CCastFunctionUserDataEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1793 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.d, null
  br i1 %.not2.i.i, label %_ZSt8_DestroyIN6duckdb21CCastFunctionUserDataEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %_ZSt8_DestroyIN6duckdb21CCastFunctionUserDataEEvPT_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #39
  unreachable

_ZSt8_DestroyIN6duckdb21CCastFunctionUserDataEEvPT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21CCastFunctionUserDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21CCastFunctionUserDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21CCastFunctionUserDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_1
