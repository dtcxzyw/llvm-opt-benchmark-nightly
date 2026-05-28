inline.NumInlined: 618
inline.NumDeleted: 303
begin_hunk_0_@_ZN4absl12lts_2024011612log_internal21OnVLogVerbosityUpdateESt8functionIFvvEE:bb.a
  tail call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2024011612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
  %i.d = load ptr, ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116update_callbacksE, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %i.e, ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116update_callbacksE, align 8, !tbaa !49
  br label %bb.h

bb.f:                                             ; preds = %bb.k, %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2024011612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %bb.f
  resume { ptr, i32 } %i.f

bb.h:                                             ; preds = %bb.e, %_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.i = phi ptr [ %i.e, %bb.e ], [ %i.d, %_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit ] ; 3 uses
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55
  store ptr %i.p, ptr %i.n, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !96
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !53
  store ptr %i.t, ptr %i.s, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i

_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i: ; preds = %bb.j, %bb.i
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.j, align 8, !tbaa !93
  br label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit unwind label %bb.f

_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i, %bb.k
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2024011612log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit1 unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #21
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit1:       ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @_ZN4absl12lts_2024011612log_internal29SetVModuleListHeadForTestOnlyEPNS1_8VLogSiteE(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = atomicrmw xchg ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_114site_list_headE, ptr %0 seq_cst, align 8
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64, ptr, i64, ptr) local_unnamed_addr #7

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

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEEvT_S6_(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEEEvT_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !27
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZSt8_DestroyIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i

_ZSt8_DestroyIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEEEvT_S8_.exit, label %.lr.ph.i, !llvm.loop !58

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

declare void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: cold
declare void @_ZN4absl12lts_2024011613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #14

declare void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: cold
declare void @_ZN4absl12lts_2024011613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbRiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr readonly captures(address_is_null) %.0.val, i64 %.8.val, i8 %.0.val1, i32 %.0.val3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val32 = load ptr, ptr %0, align 8, !tbaa !39  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !41 ; 4 uses
  %i.b = ptrtoint ptr %.val33 to i64
  %i.c = ptrtoint ptr %.val32 to i64              ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp eq i64 %i.d, 9223372036854775800
  br i1 %i.e, label %bb.b, label %_ZNKSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
  unreachable

_ZNKSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.f = sdiv exact i64 %i.d, 40                  ; 3 uses
  %i.g = icmp eq ptr %.val33, %.val32
  %.sroa.speculated.i = select i1 %i.g, i64 1, i64 %i.f
  %i.h = add nsw i64 %.sroa.speculated.i, %i.f    ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.h, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 4 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.c
  %.not.i.a = icmp eq i64 %i.k, 0
  br i1 %.not.i.a, label %_ZNSt12_Vector_baseIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_M_allocateEm.exit, label %2

2:                                                ; preds = %_ZNKSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit
  %3 = mul nuw nsw i64 %i.k, 40
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #22
  br label %_ZNSt12_Vector_baseIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit, %2
  %5 = phi ptr [ %4, %2 ], [ null, %_ZNKSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %i.m ; 6 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %7, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %.0.val, null
  %9 = icmp ne i64 %.8.val, 0
  %or.cond.i.i.i.i.i = and i1 %8, %9
  br i1 %or.cond.i.i.i.i.i, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_M_allocateEm.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #23
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_M_allocateEm.exit
  %i.n = icmp ugt i64 %.8.val, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i64 %.8.val, 0
  br i1 %i.o, label %.noexc.i.i.i.i.i, label %bb.e

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
          to label %.noexc36 unwind label %bb.m

.noexc36:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw i64 %.8.val, 1                   ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc9.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !7

.noexc9.i.i.i.i.i:                                ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc37 unwind label %bb.m

.noexc37:                                         ; preds = %.noexc9.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #22
          to label %.noexc38 unwind label %bb.m   ; 2 uses

.noexc38:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.r, ptr %6, align 8, !tbaa !36
  store i64 %.8.val, ptr %7, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc38, %bb.c
  %i.s = phi ptr [ %i.r, %.noexc38 ], [ %7, %bb.c ] ; 3 uses
  switch i64 %.8.val, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.t = load i8, ptr %.0.val, align 1, !tbaa !27
  store i8 %i.t, ptr %i.s, align 1, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr readonly align 1 %.0.val, i64 %.8.val, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.8.val, ptr %i.u, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.8.val
  store i8 0, ptr %i.v, align 1, !tbaa !27
  %i.w = and i8 %.0.val1, 1
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 %i.w, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 %.0.val3, ptr %i.y, align 4, !tbaa !38
  %.not1.i.i.i = icmp eq ptr %.val32, %1
  br i1 %.not1.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.03.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %5, %bb.h ] ; 6 uses
  %.092.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %.val32, %bb.h ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.z = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16 ; 3 uses
  store ptr %i.z, ptr %.03.i.i.i, align 8, !tbaa !43, !alias.scope !97, !noalias !100
  %i.aa = load ptr, ptr %.092.i.i.i, align 8, !tbaa !36, !alias.scope !100, !noalias !97 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !37, !alias.scope !100, !noalias !97 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false), !alias.scope !102
  br label %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aa, ptr %.03.i.i.i, align 8, !tbaa !36, !alias.scope !97, !noalias !100
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !27, !alias.scope !100, !noalias !97
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !27, !alias.scope !97, !noalias !100
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !37, !alias.scope !100, !noalias !97
  br label %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.i
  %i.ai = phi i64 [ %i.ae, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !37, !alias.scope !97, !noalias !100
  store ptr %i.ab, ptr %.092.i.i.i, align 8, !tbaa !36, !alias.scope !100, !noalias !97
  store i64 0, ptr %i.aj, align 8, !tbaa !37, !alias.scope !100, !noalias !97
  store i8 0, ptr %i.ab, align 8, !tbaa !27, !alias.scope !100, !noalias !97
  %i.al = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !100, !noalias !97
  store i64 %i.an, ptr %i.al, align 8, !alias.scope !97, !noalias !100
  %i.ao = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !103

_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi ptr [ %5, %bb.h ], [ %i.ap, %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not1.i.i.i39 = icmp eq ptr %1, %.val33
  br i1 %.not1.i.i.i39, label %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit49, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i46
  %.03.i.i.i41 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i46 ], [ %i.aq, %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.092.i.i.i42 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i46 ], [ %1, %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ar = getelementptr inbounds nuw i8, ptr %.03.i.i.i41, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.03.i.i.i41, align 8, !tbaa !43, !alias.scope !104, !noalias !107
  %i.as = load ptr, ptr %.092.i.i.i42, align 8, !tbaa !36, !alias.scope !107, !noalias !104 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.092.i.i.i42, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43

bb.j:                                             ; preds = %.lr.ph.i.i.i40
  %i.av = getelementptr inbounds nuw i8, ptr %.092.i.i.i42, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !37, !alias.scope !107, !noalias !104 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !109
  br label %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43: ; preds = %.lr.ph.i.i.i40
  store ptr %i.as, ptr %.03.i.i.i41, align 8, !tbaa !36, !alias.scope !104, !noalias !107
  %i.az = load i64, ptr %i.at, align 8, !tbaa !27, !alias.scope !107, !noalias !104
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !27, !alias.scope !104, !noalias !107
  %.phi.trans.insert.i.i.i.i44 = getelementptr inbounds nuw i8, ptr %.092.i.i.i42, i64 8
  %.pre.i.i.i.i45 = load i64, ptr %.phi.trans.insert.i.i.i.i44, align 8, !tbaa !37, !alias.scope !107, !noalias !104
  br label %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i46

_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43, %bb.j
  %i.ba = phi i64 [ %i.aw, %bb.j ], [ %.pre.i.i.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.092.i.i.i42, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.03.i.i.i41, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !37, !alias.scope !104, !noalias !107
  store ptr %i.at, ptr %.092.i.i.i42, align 8, !tbaa !36, !alias.scope !107, !noalias !104
  store i64 0, ptr %i.bb, align 8, !tbaa !37, !alias.scope !107, !noalias !104
  store i8 0, ptr %i.at, align 8, !tbaa !27, !alias.scope !107, !noalias !104
  %i.bd = getelementptr inbounds nuw i8, ptr %.03.i.i.i41, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %.092.i.i.i42, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !107, !noalias !104
  store i64 %i.bf, ptr %i.bd, align 8, !alias.scope !104, !noalias !107
  %i.bg = getelementptr inbounds nuw i8, ptr %.092.i.i.i42, i64 40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03.i.i.i41, i64 40 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.bg, %.val33
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit49, label %.lr.ph.i.i.i40, !llvm.loop !103

_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit49: ; preds = %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i46, %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i48 = phi ptr [ %i.aq, %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bh, %_ZSt19__relocate_object_aIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i46 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i50 = icmp eq ptr %.val32, null
  br i1 %.not.i50, label %_ZNSt12_Vector_baseIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit49
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val32, i64 noundef %i.bl) #24
  br label %_ZNSt12_Vector_baseIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit49, %bb.k
  store ptr %5, ptr %0, align 8, !tbaa !39
  store ptr %.0.lcssa.i.i.i48, ptr %i.a, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %5, i64 %i.k
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !42
  ret void

bb.l:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc9.i.i.i.i.i, %.noexc.i.i.i.i.i, %.noexc.i.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = tail call ptr @__cxa_begin_catch(ptr %i.bp) #19 ; 0 uses
  %10 = mul nuw nsw i64 %i.k, 40
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %10) #24
  invoke void @__cxa_rethrow() #23
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bn

bb.o:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #21
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  store ptr %i.t, ptr %i.r, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i.i, label %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !96
  store ptr %i.v, ptr %i.w, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit: ; preds = %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !111, !noalias !114
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55, !alias.scope !114, !noalias !111
  store ptr %i.z, ptr %i.x, align 8, !tbaa !55, !alias.scope !111, !noalias !114
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53, !alias.scope !114, !noalias !111 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i

_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !96, !alias.scope !116
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !53, !alias.scope !111, !noalias !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !alias.scope !114, !noalias !111
  br label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !117

_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ], [ %i.ae, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
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
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55, !alias.scope !121, !noalias !118
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !55, !alias.scope !118, !noalias !121
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53, !alias.scope !121, !noalias !118 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.not.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i21

_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !96, !alias.scope !123
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !53, !alias.scope !118, !noalias !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !alias.scope !121, !noalias !118
  br label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i21, %.lr.ph.i.i.i17
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
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !95
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #11

declare { i64, ptr } @_ZNK4absl12lts_202401166ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1), i64, ptr, i64 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4absl12lts_2024011616numbers_internal17safe_strto32_baseESt17basic_string_viewIcSt11char_traitsIcEEPii(i64, ptr, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }
end_hunk_0
