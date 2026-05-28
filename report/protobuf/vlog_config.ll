inline.NumInlined: 626
inline.NumDeleted: 299
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi:bb.a

bb.bh:                                            ; preds = %bb.ae, %.noexc.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.invoke.i, %.noexc.i.i.i.i.i.i.i
  %i.kg = landingpad { ptr, i32 }
          cleanup
  %i.kh = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.ae
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %bb.bh
  %i.kj = load i64, ptr %i.ae, align 8, !tbaa !27
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.kg

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PrependVModuleLockedESt17basic_string_viewIcSt11char_traitsIcEEi.exit: ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit52.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %.val2.i.i = load i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_18global_vE, align 4
  %.0.i.i = select i1 %.not.not73.i, i32 %.val2.i.i, i32 %.sroa.065.0.i
  call void @_ZN4absl12lts_2025051212log_internal15UpdateVLogSitesEv()
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051212log_internal21OnVLogVerbosityUpdateESt8functionIFvvEE(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex, align 8, !tbaa !47
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
  %i.d = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116update_callbacksE, align 8, !tbaa !50 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %i.e, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116update_callbacksE, align 8, !tbaa !50
  br label %bb.h

bb.f:                                             ; preds = %bb.k, %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.f
  resume { ptr, i32 } %i.f

bb.h:                                             ; preds = %bb.e, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.i = phi ptr [ %i.e, %bb.e ], [ %i.d, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  store ptr %i.p, ptr %i.n, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54
  %.not.i.i.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !96
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !54
  store ptr %i.t, ptr %i.s, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i:             ; preds = %bb.j, %bb.i
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.j, align 8, !tbaa !93
  br label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit unwind label %bb.f

_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i, %bb.k
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit1 unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #21
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit1:       ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @_ZN4absl12lts_2025051212log_internal29SetVModuleListHeadForTestOnlyEPNS1_8VLogSiteE(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = atomicrmw xchg ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_114site_list_headE, ptr %0 seq_cst, align 8
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64, ptr, i64, ptr) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #11

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbRiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr readonly captures(address_is_null) %.0.val, i64 %.8.val, i8 %.0.val1, i32 %.0.val3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.val28 = load ptr, ptr %0, align 8, !tbaa !39  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val29 = load ptr, ptr %i.b, align 8, !tbaa !41 ; 4 uses
  %i.c = ptrtoint ptr %.val29 to i64
  %i.d = ptrtoint ptr %.val28 to i64              ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 9223372036854775800
  br i1 %i.f, label %bb.b, label %_ZNKSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.g = sdiv exact i64 %i.e, 40                  ; 3 uses
  %i.h = icmp eq ptr %.val29, %.val28
  %.sroa.speculated.i = select i1 %i.h, i64 1, i64 %i.g
  %i.i = add nsw i64 %.sroa.speculated.i, %i.g    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.d
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %2 = mul nuw nsw i64 %i.l, 40                   ; 2 uses
  %3 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #22 ; 6 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 %i.n ; 8 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %5, ptr %4, align 8, !tbaa !43
  %.not.i.a = icmp eq ptr %.0.val, null
  %6 = icmp ne i64 %.8.val, 0
  %or.cond.i.i.i.i = and i1 %.not.i.a, %6
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #23
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %_ZNKSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %.8.val, ptr %i.a, align 8, !tbaa !44
  %i.o = icmp ugt i64 %.8.val, 15
  br i1 %i.o, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %bb.k   ; 2 uses

.noexc32:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.p, ptr %4, align 8, !tbaa !36
  %i.q = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.q, ptr %5, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc32, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc32 ], [ %5, %bb.c ] ; 2 uses
  switch i64 %.8.val, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.s = load i8, ptr %.0.val, align 1, !tbaa !27
  store i8 %i.s, ptr %i.r, align 1, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr readonly align 1 %.0.val, i64 %.8.val, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !37
  %i.v = load ptr, ptr %4, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.x = and i8 %.0.val1, 1
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %i.x, ptr %i.y, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %.0.val3, ptr %i.z, align 4, !tbaa !38
  %.not1.i.i.i = icmp eq ptr %.val28, %1
  br i1 %.not1.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.03.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %3, %bb.f ] ; 6 uses
  %.092.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %.val28, %bb.f ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.aa = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16 ; 3 uses
  store ptr %i.aa, ptr %.03.i.i.i, align 8, !tbaa !43, !alias.scope !97, !noalias !100
  %i.ab = load ptr, ptr %.092.i.i.i, align 8, !tbaa !36, !alias.scope !100, !noalias !97 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 16 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37, !alias.scope !100, !noalias !97 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false), !alias.scope !102
  br label %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ab, ptr %.03.i.i.i, align 8, !tbaa !36, !alias.scope !97, !noalias !100
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !27, !alias.scope !100, !noalias !97
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !27, !alias.scope !97, !noalias !100
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !37, !alias.scope !100, !noalias !97
  br label %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.g
  %i.aj = phi i64 [ %i.af, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !37, !alias.scope !97, !noalias !100
  store ptr %i.ac, ptr %.092.i.i.i, align 8, !tbaa !36, !alias.scope !100, !noalias !97
  store i64 0, ptr %i.ak, align 8, !tbaa !37, !alias.scope !100, !noalias !97
  store i8 0, ptr %i.ac, align 8, !tbaa !27, !alias.scope !100, !noalias !97
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !100, !noalias !97
  store i64 %i.ao, ptr %i.am, align 8, !alias.scope !97, !noalias !100
  %i.ap = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !103

_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %3, %bb.f ], [ %i.aq, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not1.i.i.i33 = icmp eq ptr %1, %.val29
  br i1 %.not1.i.i.i33, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit43, label %.lr.ph.i.i.i34

.lr.ph.i.i.i34:                                   ; preds = %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40
  %.03.i.i.i35 = phi ptr [ %i.bi, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40 ], [ %i.ar, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.092.i.i.i36 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40 ], [ %1, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.as = getelementptr inbounds nuw i8, ptr %.03.i.i.i35, i64 16 ; 3 uses
  store ptr %i.as, ptr %.03.i.i.i35, align 8, !tbaa !43, !alias.scope !104, !noalias !107
  %i.at = load ptr, ptr %.092.i.i.i36, align 8, !tbaa !36, !alias.scope !107, !noalias !104 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37

bb.h:                                             ; preds = %.lr.ph.i.i.i34
  %i.aw = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !37, !alias.scope !107, !noalias !104 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !109
  br label %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i34
  store ptr %i.at, ptr %.03.i.i.i35, align 8, !tbaa !36, !alias.scope !104, !noalias !107
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !27, !alias.scope !107, !noalias !104
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !27, !alias.scope !104, !noalias !107
  %.phi.trans.insert.i.i.i.i38 = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 8
  %.pre.i.i.i.i39 = load i64, ptr %.phi.trans.insert.i.i.i.i38, align 8, !tbaa !37, !alias.scope !107, !noalias !104
  br label %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40

_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37, %bb.h
  %i.bb = phi i64 [ %i.ax, %bb.h ], [ %.pre.i.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.03.i.i.i35, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !37, !alias.scope !104, !noalias !107
  store ptr %i.au, ptr %.092.i.i.i36, align 8, !tbaa !36, !alias.scope !107, !noalias !104
  store i64 0, ptr %i.bc, align 8, !tbaa !37, !alias.scope !107, !noalias !104
  store i8 0, ptr %i.au, align 8, !tbaa !27, !alias.scope !107, !noalias !104
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i.i.i35, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !107, !noalias !104
  store i64 %i.bg, ptr %i.be, align 8, !alias.scope !104, !noalias !107
  %i.bh = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 40 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03.i.i.i35, i64 40 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bh, %.val29
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit43, label %.lr.ph.i.i.i34, !llvm.loop !103

_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit43: ; preds = %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i42 = phi ptr [ %i.ar, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bi, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %.val28, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit43
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.d
  call void @_ZdlPvm(ptr noundef nonnull %.val28, i64 noundef %i.bm) #24
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit43, %bb.i
  store ptr %3, ptr %0, align 8, !tbaa !39
  store ptr %.0.lcssa.i.i.i42, ptr %i.b, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %i.l
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !42
  ret void

bb.j:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i.i.i.i, %.noexc.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = call ptr @__cxa_begin_catch(ptr %i.bq) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %2) #24
  invoke void @__cxa_rethrow() #23
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bo

bb.m:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #21
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvT_S6_(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEEvT_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !27
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i

_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEEvT_S8_.exit, label %.lr.ph.i, !llvm.loop !59

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

declare { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1), i64, ptr, i64 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto32_baseESt17basic_string_viewIcSt11char_traitsIcEEPii(i64, ptr, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !110    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
  unreachable

_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 24, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56
  store ptr %i.t, ptr %i.r, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !96
  store ptr %i.v, ptr %i.w, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit

_ZNSt8functionIFvvEEC2EOS1_.exit:                 ; preds = %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt8functionIFvvEEC2EOS1_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt8functionIFvvEEC2EOS1_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !111, !noalias !114
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56, !alias.scope !114, !noalias !111
  store ptr %i.z, ptr %i.x, align 8, !tbaa !56, !alias.scope !111, !noalias !114
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54, !alias.scope !114, !noalias !111 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i:         ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !96, !alias.scope !116
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !54, !alias.scope !111, !noalias !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !alias.scope !114, !noalias !111
  br label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !117

_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt8functionIFvvEEC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt8functionIFvvEEC2EOS1_.exit ], [ %i.ae, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.an, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.af, %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.am, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !118, !noalias !121
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56, !alias.scope !121, !noalias !118
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !56, !alias.scope !118, !noalias !121
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !54, !alias.scope !121, !noalias !118 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i21

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i21:       ; preds = %.lr.ph.i.i.i17
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !96, !alias.scope !123
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !54, !alias.scope !118, !noalias !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !alias.scope !121, !noalias !118
  br label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !117

_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.af, %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.an, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFvvEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #24
  br label %_ZNSt12_Vector_baseISt8functionIFvvEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt8functionIFvvEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !110
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
end_hunk_0
