inline.NumInlined: 256
inline.NumDeleted: 123
begin_hunk_0_@_ZN4absl12lts_20250512lsERSoNS0_10StatusCodeE:bb.a
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %i.d

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !14
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef nonnull ptr @_ZN4absl12lts_202505126Status11EmptyStringB5cxx11Ev() local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_202505126Status11EmptyStringB5cxx11EvE6kEmptyB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_202505126Status11EmptyStringB5cxx11EvE6kEmptyB5cxx11) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_202505126Status11EmptyStringB5cxx11EvE6kEmptyB5cxx11, i64 16), ptr @_ZZN4absl12lts_202505126Status11EmptyStringB5cxx11EvE6kEmptyB5cxx11, align 8, !tbaa !7
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_202505126Status11EmptyStringB5cxx11EvE6kEmptyB5cxx11, i64 8), align 8, !tbaa !11
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_202505126Status11EmptyStringB5cxx11EvE6kEmptyB5cxx11, i64 16), align 8, !tbaa !14
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN4absl12lts_202505126Status11EmptyStringB5cxx11EvE6kEmptyB5cxx11) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_202505126Status11EmptyStringB5cxx11EvE6kEmptyB5cxx11) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN4absl12lts_202505126Status11EmptyStringB5cxx11EvE6kEmptyB5cxx11
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN4absl12lts_202505126Status15MovedFromStringB5cxx11Ev() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_202505126Status15MovedFromStringB5cxx11EvE10kMovedFromB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_202505126Status15MovedFromStringB5cxx11EvE10kMovedFromB5cxx11) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212NoDestructorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IJRA28_KcETnNSt9enable_ifIXntsr3std7is_sameIFvDpRNSt5decayIT_E4typeEEFvRS8_EEE5valueEiE4typeELi0EEEDpOSF_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4absl12lts_202505126Status15MovedFromStringB5cxx11EvE10kMovedFromB5cxx11, ptr noundef nonnull align 1 dereferenceable(28) @_ZN4absl12lts_202505126Status16kMovedFromStringE)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN4absl12lts_202505126Status15MovedFromStringB5cxx11EvE10kMovedFromB5cxx11) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_202505126Status15MovedFromStringB5cxx11EvE10kMovedFromB5cxx11) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN4absl12lts_202505126Status15MovedFromStringB5cxx11EvE10kMovedFromB5cxx11

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_202505126Status15MovedFromStringB5cxx11EvE10kMovedFromB5cxx11) #16
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051212NoDestructorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IJRA28_KcETnNSt9enable_ifIXntsr3std7is_sameIFvDpRNSt5decayIT_E4typeEEFvRS8_EEE5valueEiE4typeELi0EEEDpOSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(28) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !16
  %i.f = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.f, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4absl12lts_2025051212NoDestructorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13PlacementImplC2IJRA28_KcEEEDpOT_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.h, ptr %i.g, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051212NoDestructorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13PlacementImplC2IJRA28_KcEEEDpOT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 dereferenceable(28) %1, i64 %i.c, i1 false)
  br label %_ZN4absl12lts_2025051212NoDestructorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13PlacementImplC2IJRA28_KcEEEDpOT_.exit

_ZN4absl12lts_2025051212NoDestructorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13PlacementImplC2IJRA28_KcEEEDpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.i = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !11
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505126StatusC2ENS0_10StatusCodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i32 noundef %1, i64 %2, ptr readonly captures(address_is_null) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 2 uses
  %i.b = sext i32 %1 to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = or disjoint i64 %i.c, 1
  store i64 %i.d, ptr %0, align 8, !tbaa !18
  %.not = icmp eq i32 %1, 0
  %i.e = icmp eq i64 %2, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 8 uses
  store ptr null, ptr %4, align 8, !tbaa !20
  store i32 1, ptr %i.f, align 4, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %1, ptr %i.g, align 4, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !7
  %i.j = icmp eq ptr %3, null
  br i1 %i.j, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #19
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %2, ptr %i.a, align 8, !tbaa !15
  %i.k = icmp ugt i64 %2, 15
  br i1 %i.k, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.i.i.i.thread unwind label %bb.f ; 2 uses

._crit_edge.i.i.i.i.i.thread:                     ; preds = %.noexc.i.i.i.i
  store ptr %i.l, ptr %i.h, align 8, !tbaa !16
  %i.m = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.m, ptr %i.i, align 8, !tbaa !14
  br label %bb.e

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  %cond = icmp eq i64 %2, 1
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %3, align 1, !tbaa !14
  store i8 %i.n, ptr %i.i, align 8, !tbaa !14
  br label %_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.thread, %._crit_edge.i.i.i.i.i
  %i.o = phi ptr [ %i.l, %._crit_edge.i.i.i.i.i.thread ], [ %i.i, %._crit_edge.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %3, i64 %2, i1 false)
  br label %_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit: ; preds = %bb.d, %bb.e
  %i.p = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !11
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !34
  %i.u = ptrtoint ptr %i.f to i64
  store i64 %i.u, ptr %0, align 8, !tbaa !18
  br label %bb.g

bb.f:                                             ; preds = %.noexc.i.i.i.i, %.noexc.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 48) #17
  resume { ptr, i32 } %i.v

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNKSt14default_deleteIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEEEclEPS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZNKSt14default_deleteIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEEEclEPS6_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable

_ZNKSt14default_deleteIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEEEclEPS6_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #17
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEEEclEPS6_.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_202505126Status15PrepareToModifyEm(i64 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit, label %bb.b

_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 7 uses
  %i.c = lshr i64 %0, 2
  %i.d = trunc i64 %i.c to i32
  store i32 1, ptr %i.b, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.d, ptr %i.e, align 4, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !11
  store i8 0, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !34
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %0 to ptr
  %i.k = tail call noundef ptr @_ZNK4absl12lts_2025051215status_internal9StatusRep13CloneAndUnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit
  %.0 = phi ptr [ %i.b, %_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit ], [ %i.k, %bb.b ]
  ret ptr %.0
}

declare noundef ptr @_ZNK4absl12lts_2025051215status_internal9StatusRep13CloneAndUnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505126Status12ToStringSlowB5cxx11EmNS0_18StatusToStringModeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.b = lshr i64 %1, 2
  %i.c = trunc i64 %i.b to i32
  call void @_ZN4absl12lts_2025051218StatusCodeToStringB5cxx11ENS0_10StatusCodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.c)
  %i.d = load ptr, ptr %4, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  store i64 %i.f, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i64 2, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.18, ptr %i.h, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.i = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !14
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.o = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !14
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %bb.a
  %i.t = inttoptr i64 %1 to ptr
  tail call void @_ZNK4absl12lts_2025051215status_internal9StatusRep8ToStringB5cxx11ENS0_18StatusToStringModeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep8ToStringB5cxx11ENS0_18StatusToStringModeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20250512lsERSoRKNS0_6StatusE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.a = load i64, ptr %1, align 8, !tbaa !18, !noalias !35 ; 2 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %._crit_edge.i.i.i, label %bb.b

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !7, !alias.scope !35
  store i16 19279, ptr %i.c, align 8, !alias.scope !35
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213IsUnavailableERKNS0_6StatusE:bb.a
  %i.c = lshr i64 %i.a, 2
  %i.d = trunc i64 %i.c to i32
  br label %_ZNK4absl12lts_202505126Status4codeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.a to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  br label %_ZNK4absl12lts_202505126Status4codeEv.exit

_ZNK4absl12lts_202505126Status4codeEv.exit:       ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %i.h = tail call noundef i32 @_ZN4absl12lts_2025051215status_internal14MapToLocalCodeEi(i32 noundef %.0.i.i)
  %i.i = icmp eq i32 %i.h, 14
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051215IsUnimplementedERKNS0_6StatusE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 2
  %i.d = trunc i64 %i.c to i32
  br label %_ZNK4absl12lts_202505126Status4codeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.a to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  br label %_ZNK4absl12lts_202505126Status4codeEv.exit

_ZNK4absl12lts_202505126Status4codeEv.exit:       ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %i.h = tail call noundef i32 @_ZN4absl12lts_2025051215status_internal14MapToLocalCodeEi(i32 noundef %.0.i.i)
  %i.i = icmp eq i32 %i.h, 12
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_202505129IsUnknownERKNS0_6StatusE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 2
  %i.d = trunc i64 %i.c to i32
  br label %_ZNK4absl12lts_202505126Status4codeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.a to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  br label %_ZNK4absl12lts_202505126Status4codeEv.exit

_ZNK4absl12lts_202505126Status4codeEv.exit:       ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %i.h = tail call noundef i32 @_ZN4absl12lts_2025051215status_internal14MapToLocalCodeEi(i32 noundef %.0.i.i)
  %i.i = icmp eq i32 %i.h, 2
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 15) i32 @_ZN4absl12lts_2025051217ErrnoToStatusCodeEi(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i32 %0, 127
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4absl12lts_2025051217ErrnoToStatusCodeEi, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213ErrnoToStatusEiSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i32 noundef %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef i32 @_ZN4absl12lts_2025051217ErrnoToStatusCodeEi(i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !38
  store i64 %2, ptr %4, align 8, !tbaa !15, !noalias !38
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !41, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !38
  store i64 2, ptr %5, align 8, !noalias !38
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.18, ptr %i.b, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !noalias !38
  call void @_ZN4absl12lts_2025051213base_internal8StrErrorB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i32 noundef %1), !noalias !38
  %i.c = load ptr, ptr %7, align 8, !tbaa !16, !noalias !38
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11, !noalias !38
  store i64 %i.e, ptr %6, align 8, !noalias !38
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.c, ptr %i.f, align 8, !noalias !38
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %7, align 8, !tbaa !16, !noalias !38 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_123MessageForErrnoToStatusB5cxx11EiSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14, !noalias !38
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #17
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_123MessageForErrnoToStatusB5cxx11EiSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %7, align 8, !tbaa !16, !noalias !38 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14, !noalias !38
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !38
  br label %common.resume

_ZN4absl12lts_2025051212_GLOBAL__N_123MessageForErrnoToStatusB5cxx11EiSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !38
  %i.r = load ptr, ptr %8, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  invoke void @_ZN4absl12lts_202505126StatusC1ENS0_10StatusCodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.a, i64 %i.t, ptr %i.r)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_123MessageForErrnoToStatusB5cxx11EiSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.u = load ptr, ptr %8, align 8, !tbaa !16     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !tbaa !14
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_123MessageForErrnoToStatusB5cxx11EiSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN4absl12lts_2025051219StatusMessageAsCStrERKNS0_6StatusE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !18
  %.fr12 = freeze i64 %i.a                        ; 3 uses
  %i.b = trunc i64 %.fr12 to i1
  br i1 %i.b, label %bb.b, label %_ZNK4absl12lts_202505126Status7messageEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.fr12, 2
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.thread5

_ZNK4absl12lts_202505126Status7messageEv.exit:    ; preds = %bb.a
  %i.d = inttoptr i64 %.fr12 to ptr               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.thread5

_ZNK4absl12lts_202505126Status7messageEv.exit.thread5: ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit, %bb.b
  %.sink13.a = phi i64 [ %i.h, %_ZNK4absl12lts_202505126Status7messageEv.exit ], [ %i.c, %bb.b ]
  %.sink12 = phi ptr [ %i.f, %_ZNK4absl12lts_202505126Status7messageEv.exit ], [ @_ZN4absl12lts_202505126Status16kMovedFromStringE, %bb.b ]
  %i.i = icmp eq i64 %.sink13.a, 0
  %spec.select11 = select i1 %i.i, ptr @.str.17, ptr %.sink12
  ret ptr %spec.select11
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef i32 @_ZN4absl12lts_2025051215status_internal14MapToLocalCodeEi(i32 noundef) local_unnamed_addr #7

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

declare void @_ZN4absl12lts_2025051213base_internal8StrErrorB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %i.b, ptr %i.d, ptr %i.c
  %i.f = lshr i64 %i.a, 1                         ; 2 uses
  %.not5.i = icmp eq i64 %i.f, 0
  br i1 %.not5.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN4absl12lts_2025051215status_internal7PayloadD2Ev.exit.i
  %.06.i = phi i64 [ %i.g, %_ZN4absl12lts_2025051215status_internal7PayloadD2Ev.exit.i ], [ %i.f, %bb.a ]
  %i.g = add nsw i64 %.06.i, -1                   ; 3 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN4absl12lts_202505124CordD2Ev.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN4absl12lts_202505124CordD2Ev.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

_ZN4absl12lts_202505124CordD2Ev.exit.i.i:         ; preds = %bb.b, %.lr.ph.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2025051215status_internal7PayloadD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #17
  br label %_ZN4absl12lts_2025051215status_internal7PayloadD2Ev.exit.i

_ZN4absl12lts_2025051215status_internal7PayloadD2Ev.exit.i: ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit, label %.lr.ph.i, !llvm.loop !42

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit: ; preds = %_ZN4absl12lts_2025051215status_internal7PayloadD2Ev.exit.i
  %.pre = load i64, ptr %0, align 8, !tbaa !15
  br label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit, %bb.a
  %i.s = phi i64 [ %.pre, %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit ], [ %i.a, %bb.a ]
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.d, label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE21DeallocateIfAllocatedEv.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = mul i64 %i.w, 48
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #17
  br label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE21DeallocateIfAllocatedEv.exit

_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE21DeallocateIfAllocatedEv.exit: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit, %bb.d
  ret void
}

declare void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!12, !9, i64 0}
!17 = !{!"branch_weights", i32 1, i32 1048575}
!18 = !{!19, !13, i64 0}
!19 = !{!"_ZTSN4absl12lts_202505126StatusE", !13, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EPN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEELb0EE", !22, i64 0}
!22 = !{!"p1 _ZTSN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EEE", !10, i64 0}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!25 = !{!26, !28, i64 4}
!26 = !{!"_ZTSN4absl12lts_2025051215status_internal9StatusRepE", !27, i64 0, !28, i64 4, !12, i64 8, !29, i64 40}
!27 = !{!"_ZTSSt6atomicIiE", !24, i64 0}
!28 = !{!"_ZTSN4absl12lts_2025051210StatusCodeE", !5, i64 0}
!29 = !{!"_ZTSSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EE", !30, i64 0}
!30 = !{!"_ZTSSt15__uniq_ptr_dataIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_ELb1ELb1EE", !31, i64 0}
!31 = !{!"_ZTSSt15__uniq_ptr_implIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EE", !32, i64 0}
!32 = !{!"_ZTSSt5tupleIJPN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EEE", !33, i64 0}
!33 = !{!"_ZTSSt11_Tuple_implILm0EJPN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EEE", !21, i64 0}
!34 = !{!22, !22, i64 0}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE: argument 0"}
!37 = distinct !{!37, !"_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN4absl12lts_2025051212_GLOBAL__N_123MessageForErrnoToStatusB5cxx11EiSt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!40 = distinct !{!40, !"_ZN4absl12lts_2025051212_GLOBAL__N_123MessageForErrnoToStatusB5cxx11EiSt17basic_string_viewIcSt11char_traitsIcEE"}
!41 = !{!9, !9, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
end_hunk_1
