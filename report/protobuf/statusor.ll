inline.NumInlined: 161
inline.NumDeleted: 80
begin_hunk_0_@_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE:bb.a
bb.c:                                             ; preds = %_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit
  %i.j = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.j(i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 89, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit unwind label %bb.e

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit: ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #18
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051217BadStatusOrAccessD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21, !inline_history !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051217BadStatusOrAccessD0Ev:bb.a
bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = inttoptr i64 %i.h to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_ZN4absl12lts_2025051217BadStatusOrAccessD2Ev.exit unwind label %bb.c, !inline_history !34

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #19, !inline_history !34
  unreachable

_ZN4absl12lts_2025051217BadStatusOrAccessD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #18, !inline_history !34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #21
  ret void
}
end_hunk_2
begin_hunk_3_@"_ZN4absl12lts_2025051213base_internal12CallOnceImplIZNKS0_17BadStatusOrAccess8InitWhatEvE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9, !noalias !35 ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %._crit_edge.i.i.i.i.i.i.i, label %.noexc

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !14, !alias.scope !35
  store i16 19279, ptr %i.i, align 8, !alias.scope !35
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.j, align 8, !tbaa !18, !alias.scope !35
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.k, align 2, !tbaa !20, !alias.scope !35
  br label %_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit.i.i.i.i

.noexc:                                           ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
end_hunk_3
begin_hunk_4_@llvm.experimental.noalias.scope.decl
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE: argument 0"}
!33 = distinct !{!33, !"_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE"}
!34 = !{ptr @_ZN4absl12lts_2025051217BadStatusOrAccessD2Ev}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE: argument 0"}
!37 = distinct !{!37, !"_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE"}
end_hunk_4
