inline.NumInlined: 31
inline.NumDeleted: 28
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal16LogFatalNodeTypeEPNS1_7CordRepE:bb.a
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.k = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.k(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 36, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit unwind label %bb.b

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit: ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #6
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213cord_internal16LogFatalNodeTypeEPNS1_7CordRepE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !21
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_:bb.a

bb.c:                                             ; preds = %.critedge
  %i.c = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void %i.d(ptr noundef nonnull %.012), !inline_history !24
  br label %.loopexit

bb.d:                                             ; preds = %.critedge
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.012, i64 noundef 32) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load atomic i32, ptr %i.g acquire, align 4
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!14, !15, i64 8}
!18 = !{!19, !15, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !9, i64 8, !5, i64 16}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!21 = !{!5, !5, i64 0}
!22 = !{!23, !16, i64 24}
!23 = !{!"_ZTSN4absl12lts_2025051213cord_internal15CordRepExternalE", !8, i64 0, !15, i64 16, !16, i64 24}
!24 = distinct !{null}
!25 = !{!26, !27, i64 24}
!26 = !{!"_ZTSN4absl12lts_2025051213cord_internal16CordRepSubstringE", !8, i64 0, !9, i64 16, !27, i64 24}
!27 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal7CordRepE", !16, i64 0}
end_hunk_3
