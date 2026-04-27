inline.NumInlined: 141
inline.NumDeleted: 84
begin_hunk_0_@_ZN6hermes2vm23bigintPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE
define hidden { i32, i64 } @_ZN6hermes2vm23bigintPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !38, !noalias !43, !nonnull !46, !noundef !46
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm15thisBigIntValueERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #3 ; 2 uses
  %i.c = extractvalue { i32, i64 } %i.b, 0
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b, !prof !42
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm23bigintPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22bigintPrototypeValueOfEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !38, !noalias !47, !nonnull !46, !noundef !46
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm15thisBigIntValueERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #3
  ret { i32, i64 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm29bigintPrototypeToLocaleStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !38, !noalias !50, !nonnull !46, !noundef !46
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm15thisBigIntValueERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #3 ; 2 uses
  %i.c = extractvalue { i32, i64 } %i.b, 0
  %i.d = extractvalue { i32, i64 } %i.b, 1        ; 2 uses
  %i.e = icmp eq i32 %i.c, 0
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_8JSBigIntEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!45 = distinct !{!45, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!46 = !{}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!49 = distinct !{!49, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!52 = distinct !{!52, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
end_hunk_2
