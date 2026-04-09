inline.NumInlined: 761
inline.NumDeleted: 342
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal10LogMessage10ToSinkAlsoEPNS0_7LogSinkE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.h = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.h(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 350, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit unwind label %bb.g, !inline_history !121

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212log_internal10LogMessage10ToSinkAlsoEPNS0_7LogSinkE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32, !noalias !122 ; 3 uses
  %i.z = trunc i64 %i.y to i1                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !122
  %.sink.i.i.i.i = select i1 %i.z, i64 %i.ab, i64 16
  %.sink1.i.i.i.i = lshr i64 %i.y, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sink1.i.i.i.i, %.sink.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051212log_internal10LogMessage10ToSinkAlsoEPNS0_7LogSinkE:bb.a

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 152 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !122
  %.sink2.i.i.i.i = select i1 %i.z, ptr %i.ad, ptr %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i.i, i64 %.sink1.i.i.i.i
  store ptr %1, ptr %i.ae, align 8, !tbaa !118
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051212log_internal10LogMessage10ToSinkOnlyEPNS0_7LogSinkE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.h = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.h(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 356, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit unwind label %bb.g, !inline_history !121

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051212log_internal10LogMessage10ToSinkOnlyEPNS0_7LogSinkE:bb.a
  %i.af = phi ptr [ %i.w, %bb.i ], [ %.pre, %bb.j ] ; 4 uses
  store i64 0, ptr %i.x, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 144 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32, !noalias !125 ; 3 uses
  %i.ai = trunc i64 %i.ah to i1                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !125
  %.sink.i.i.i.i = select i1 %i.ai, i64 %i.ak, i64 16
  %.sink1.i.i.i.i = lshr i64 %i.ah, 1             ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sink1.i.i.i.i, %.sink.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051212log_internal10LogMessage10ToSinkOnlyEPNS0_7LogSinkE:bb.a

bb.k:                                             ; preds = %_ZN4absl12lts_2025051213InlinedVectorIPNS0_7LogSinkELm16ESaIS3_EE5clearEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 152 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !noalias !125
  %.sink2.i.i.i.i = select i1 %i.ai, ptr %i.am, ptr %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i.i, i64 %.sink1.i.i.i.i
  store ptr %1, ptr %i.an, align 8, !tbaa !118
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !132
  tail call void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE1EEEvSt17basic_string_viewIwSt11char_traitsIwEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.c, ptr %i.a)
  ret ptr %0
}
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIwSt11char_traitsIwEE:bb.a
; Function Attrs: mustprogress noinline uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKwEERS2_RKT_(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !133    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051212log_internal10LogMessagelsEPFRSoS3_E:bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr %1(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.b, !inline_history !134 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.a
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #28
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051212log_internal10LogMessagelsEPFRSt8ios_baseS4_E:bb.a
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = invoke noundef nonnull align 8 dereferenceable(216) ptr %1(ptr noundef nonnull align 8 dereferenceable(216) %i.h)
          to label %_ZNSolsEPFRSt8ios_baseS0_E.exit unwind label %bb.b, !inline_history !135 ; 0 uses

_ZNSolsEPFRSt8ios_baseS0_E.exit:                  ; preds = %bb.a
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #28
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC2ERNS2_14LogMessageDataE:bb.a
  %i.w = load i64, ptr %i.l, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !136
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %i.z, align 8, !tbaa !137
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !138
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !10, !nonnull !18, !align !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 288 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD2Ev:bb.a
bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !136 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !137 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.k, label %bb.g

end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_113WriteToStreamEPKcPv:bb.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !139
  %i.g = or i32 %i.f, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
end_hunk_12
begin_hunk_13_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !32, !noalias !140 ; 4 uses
  %i.b = trunc i64 %i.a to i1                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !140 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !140 ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 7 uses
  %i.g = shl i64 %i.f, 1
  %i.h = select i1 %i.b, i64 %i.g, i64 32         ; 4 uses
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_:bb.a
  store <2 x ptr> %wide.load31, ptr %i.u, align 8, !tbaa !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sink1.i, %n.vec
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_:bb.a
  %i.aa = add nuw nsw i64 %.012.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !146

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader33
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader33 ], [ %i.aa, %.lr.ph.i.prol ]
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.at = add nuw nsw i64 %.012.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.at, %.sink1.i
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !148

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i
  br i1 %i.b, label %bb.c, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit
end_hunk_16
begin_hunk_17_@llvm.experimental.noalias.scope.decl
!118 = !{!119, !119, i64 0}
!119 = !{!"p1 _ZTSN4absl12lts_202505127LogSinkE", !9, i64 0}
!120 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!121 = distinct !{null}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv: argument 0"}
!124 = distinct !{!124, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv: argument 0"}
!127 = distinct !{!127, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv"}
!128 = !{!129, !131, i64 0}
!129 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !130, i64 0, !17, i64 8, !5, i64 16}
!130 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !131, i64 0}
!131 = !{!"p1 wchar_t", !9, i64 0}
!132 = !{!129, !17, i64 8}
!133 = !{!131, !131, i64 0}
!134 = distinct !{null}
!135 = distinct !{null}
!136 = !{!12, !13, i64 40}
!137 = !{!12, !13, i64 32}
!138 = !{!12, !13, i64 48}
!139 = !{!24, !26, i64 32}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv: argument 0"}
!142 = distinct !{!142, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv"}
!143 = distinct !{!143, !87, !144, !145}
!144 = !{!"llvm.loop.isvectorized", i32 1}
!145 = !{!"llvm.loop.unroll.runtime.disable"}
!146 = distinct !{!146, !147}
!147 = !{!"llvm.loop.unroll.disable"}
!148 = distinct !{!148, !87, !144}
end_hunk_17
