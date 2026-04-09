inline.NumInlined: 180
inline.NumDeleted: 103
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal17ScopedMinLogLevelD2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  invoke void %i.b()
          to label %_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE.exit unwind label %bb.c

_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
  ret void
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051221ScopedStderrThresholdC2ENS0_18LogSeverityAtLeastE
define void @_ZN4absl12lts_2025051221ScopedStderrThresholdC2ENS0_18LogSeverityAtLeastE(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115stderrthresholdE.0 acquire, align 4
  store i32 %i.a, ptr %0, align 4, !tbaa !17
  store atomic i32 %1, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115stderrthresholdE.0 release, align 4
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051221ScopedStderrThresholdC2ENS0_18LogSeverityAtLeastE:bb.a
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(), !inline_history !19
  br label %_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit

_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051221ScopedStderrThresholdC2ENS0_18LogSeverityAtLeastE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2025051221ScopedStderrThresholdD2Ev(ptr noundef nonnull readonly align 4 captures(none) dead_on_return(4) dereferenceable(4) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !17
  store atomic i32 %i.a, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115stderrthresholdE.0 release, align 4
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051221ScopedStderrThresholdD2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  invoke void %i.b()
          to label %_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit unwind label %bb.c

_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
  ret void
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.k, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.c = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.f = load i64, ptr %i.d, align 8, !tbaa !26
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.h = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.h(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 138, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit unwind label %bb.i

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.h
  %i.o = load i64, ptr %i.m, align 8, !tbaa !26
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn22 = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.j
  %i.u = load i64, ptr %i.s, align 8, !tbaa !26
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
bb.k:                                             ; preds = %bb.a
  %i.w = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !27
  %i.y = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.y, ptr %i.a, align 8, !tbaa !28
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i, label %._crit_edge.i.i

end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
          to label %.noexc32 unwind label %bb.s   ; 2 uses

.noexc32:                                         ; preds = %.noexc.i
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !21
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc32, %bb.k
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ad = load i8, ptr %0, align 1, !tbaa !26
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !26
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !29
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.aj = atomicrmw xchg ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115android_log_tagE, ptr %i.ai acq_rel, align 8
  %.not14 = icmp eq ptr %i.aj, @_ZN4absl12lts_2025051212_GLOBAL__N_118kDefaultAndroidTagE
  br i1 %.not14, label %bb.y, label %bb.o, !prof !30

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
          to label %bb.r unwind label %bb.v       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.al = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.r
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !26
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.aq = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.aq(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 144, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit37 unwind label %bb.w

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  unreachable
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a
bb.v:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.v
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc:bb.a

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn16 = phi { ptr, i32 } [ %i.ba, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.x
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
end_hunk_17
begin_hunk_18_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !27
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_18
begin_hunk_19_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !28
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !21
  %i.g = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.g, ptr %i.b, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
end_hunk_19
begin_hunk_20_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.i, ptr %i.h, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
end_hunk_20
begin_hunk_21_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !29
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}
end_hunk_21
begin_hunk_22_@_ZN4absl12lts_2025051225ClearLogBacktraceLocationEv:bb.a
; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051222ShouldPrependLogPrefixEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_118prepend_log_prefixE.0 acquire, align 1, !range !31, !noundef !32
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}
end_hunk_22
begin_hunk_23_@_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE:bb.a
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !26
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
end_hunk_23
begin_hunk_24_@_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE:bb.a

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
end_hunk_24
begin_hunk_25_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
!14 = !{!"_ZTSN4absl12lts_2025051212log_internal17ScopedMinLogLevelE", !15, i64 0}
!15 = !{!"_ZTSN4absl12lts_2025051218LogSeverityAtLeastE", !5, i64 0}
!16 = distinct !{ptr @_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE, null}
!17 = !{!18, !15, i64 0}
!18 = !{!"_ZTSN4absl12lts_2025051221ScopedStderrThresholdE", !15, i64 0}
!19 = distinct !{ptr @_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE, null}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!22, !24, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !25, i64 8, !5, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!24 = !{!"p1 omnipotent char", !11, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!5, !5, i64 0}
!27 = !{!23, !24, i64 0}
!28 = !{!25, !25, i64 0}
!29 = !{!22, !25, i64 8}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{i8 0, i8 2}
!32 = !{}
end_hunk_25
