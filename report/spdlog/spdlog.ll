Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/spdlog?download=true
inline.NumInlined: 6885
inline.NumDeleted: 3933
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN6spdlog6loggerD2Ev:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog6loggerD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6spdlog6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #36
  tail call void @_ZdlPv(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog17pattern_formatterD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #36, !inline_history !16
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #43
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !198
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.n) #43
  br label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev.exit

_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !231  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !232  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #36, !inline_history !808
  br label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !231
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev.exit
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !60 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.ab) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.af) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog17pattern_formatterD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN6spdlog17pattern_formatterD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) #36
  tail call void @_ZdlPv(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog5sinks9base_sinkISt5mutexED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6spdlog5sinks9base_sinkISt5mutexEE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6spdlog9formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog9formatterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6spdlog9formatterEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #36, !inline_history !6
  br label %_ZNSt10unique_ptrIN6spdlog9formatterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog9formatterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6spdlog9formatterEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog5sinks9base_sinkISt5mutexED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #41
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog5sinks9base_sinkINS_7details10null_mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6spdlog5sinks9base_sinkINS_7details10null_mutexEEE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6spdlog9formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog9formatterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6spdlog9formatterEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #36, !inline_history !6
  br label %_ZNSt10unique_ptrIN6spdlog9formatterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog9formatterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6spdlog9formatterEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog5sinks9base_sinkINS_7details10null_mutexEED0Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !75     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.i = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 384
  %i.o = tail call noundef ptr @_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !75     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 128
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef %i.t) #36
  br label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i

_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 384 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferEEvT_S4_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferEEvT_S4_.exit

_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferEEvT_S4_.exitthread-pre-split, %bb.c
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferEEvT_S4_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferEEvT_S4_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #43
  br label %_ZNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferEEvT_S4_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !79
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ad = udiv exact i64 %i.f, 384
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cu, %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i ], [ %i.ad, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ct, %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cs, %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.0811.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(384) %.0910.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !95
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 96 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 104 ; 4 uses
  store i64 0, ptr %i.af, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 104
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj ; 2 uses
  %.not31.i.i.i.i.i.i.i = icmp samesign eq i64 %i.aj, 0
  br i1 %.not31.i.i.i.i.i.i.i, label %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i, label %.lr.ph34.i.i.i.i.i.i.i

.lr.ph34.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 112 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 120
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i, %.lr.ph34.i.i.i.i.i.i.i
  %i.ao = phi i64 [ 0, %.lr.ph34.i.i.i.i.i.i.i ], [ %i.bv, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.02732.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph34.i.i.i.i.i.i.i ], [ %i.bw, %._crit_edge.i.i.i.i.i.i.i ] ; 9 uses
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !68
  %i.aq = sub i64 %i.ap, %i.ao
  %i.ar = ptrtoint ptr %.02732.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.as = sub i64 %i.am, %i.ar                    ; 4 uses
  %i.at = icmp ult i64 %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !66
  %i.av = add i64 %i.as, %i.ao
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.av), !inline_history !809
  %i.aw = load i64, ptr %i.af, align 8, !tbaa !69 ; 2 uses
  %i.ax = load i64, ptr %i.al, align 8, !tbaa !68
  %i.ay = sub i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ay)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.026.i.i.i.i.i.i.i = phi i64 [ %i.aw, %bb.i ], [ %i.ao, %bb.h ] ; 3 uses
  %.025.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.i ], [ %i.as, %bb.h ] ; 13 uses
  %i.ba = load ptr, ptr %i.ae, align 8, !tbaa !67 ; 2 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.026.i.i.i.i.i.i.i ; 7 uses
  %.not36.i.i.i.i.i.i.i = icmp eq i64 %.025.i.i.i.i.i.i.i, 0
  br i1 %.not36.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %.025.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bd = add i64 %.026.i.i.i.i.i.i.i, %i.bb
  %i.be = sub i64 %i.ar, %i.bd
  %diff.check = icmp ugt i64 %i.be, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check94 = icmp ult i64 %.025.i.i.i.i.i.i.i, 32
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %.025.i.i.i.i.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i.i.i.i.i, -32       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <16 x i8>, ptr %i.bg, align 1, !tbaa !64
  %wide.load95 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <16 x i8> %wide.load, ptr %i.bi, align 1, !tbaa !64
  store <16 x i8> %wide.load95, ptr %i.bj, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !810

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec96 = and i64 %.025.i.i.i.i.i.i.i, -4      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next99, %vec.epilog.vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i, i64 %index97
  %wide.load98 = load <4 x i8>, ptr %i.bl, align 1, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index97
  store <4 x i8> %wide.load98, ptr %i.bm, align 1, !tbaa !64
  %index.next99 = add nuw i64 %index97, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next99, %n.vec96
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !811

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n100 = icmp eq i64 %.025.i.i.i.i.i.i.i, %n.vec96
  br i1 %cmp.n100, label %._crit_edge.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec96, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i.i.i.i.i, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.030.i.i.i.i.i.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.030.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i, i64 %.030.i.i.i.i.i.i.i.prol
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.030.i.i.i.i.i.i.i.prol
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !64
  %i.br = add nuw i64 %.030.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !812

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.030.i.i.i.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bs = sub i64 %.030.i.i.i.i.i.i.i.ph, %.025.i.i.i.i.i.i.i
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %._crit_edge.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.j
  %i.bu = phi i64 [ %.pre37.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.026.i.i.i.i.i.i.i, %bb.j ]
  %i.bv = add i64 %i.bu, %.025.i.i.i.i.i.i.i      ; 2 uses
  store i64 %i.bv, ptr %i.af, align 8, !tbaa !69
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i, i64 %.025.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i, label %bb.h, !llvm.loop !3

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.030.i.i.i.i.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ], [ %.030.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i, i64 %.030.i.i.i.i.i.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.030.i.i.i.i.i.i.i
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !64
  %i.ca = add nuw i64 %.030.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !64
  %i.ce = add nuw i64 %.030.i.i.i.i.i.i.i, 2      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %i.ci = add nuw i64 %.030.i.i.i.i.i.i.i, 3      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !64
  %i.cm = add nuw i64 %.030.i.i.i.i.i.i.i, 4      ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cm, %.025.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !813

_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cn = load ptr, ptr %i.ae, align 8, !tbaa !67 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !100
  store ptr %i.cn, ptr %.0811.i.i.i.i.i, align 8, !tbaa !55
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 80
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !55
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 384
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 384 ; 2 uses
  %i.cu = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cv = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, !llvm.loop !814

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit: ; preds = %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !78
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, %bb.g
  %i.cw = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.i, %bb.g ], [ %i.ct, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ] ; 2 uses
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.cw
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit
  %.pre-phi65 = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64
  %i.cx = sub i64 %.pre-phi65, %i.k
  %i.cy = getelementptr inbounds i8, ptr %i.i, i64 %i.cx
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.dc, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i28 ], [ %i.cy, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 96
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !67 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 128
  %.not.i.i.i.i.i.i27 = icmp eq ptr %i.da, %i.db
  br i1 %.not.i.i.i.i.i.i27, label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i28, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i26
  tail call void @free(ptr noundef %i.da) #36
  br label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i28

_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i28: ; preds = %bb.k, %.lr.ph.i.i26
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 384 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.dc, %i.cw
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6spdlog7details14log_msg_bufferESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i26, !llvm.loop !815

bb.l:                                             ; preds = %bb.f
  %i.dd = icmp sgt i64 %i.ab, 0
  br i1 %i.dd, label %.lr.ph.preheader.i.i.i.i.i31, label %_ZSt4copyIPN6spdlog7details14log_msg_bufferES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i31:                     ; preds = %bb.l
  %i.de = udiv exact i64 %i.ab, 384
  br label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i49, %.lr.ph.preheader.i.i.i.i.i31
  %.012.i.i.i.i.i33 = phi i64 [ %i.fv, %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i49 ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.fu, %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i49 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i31 ] ; 9 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.ft, %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i49 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i31 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.0811.i.i.i.i.i34, ptr noundef nonnull readonly align 8 dereferenceable(384) %.0910.i.i.i.i.i35, i64 96, i1 false), !tbaa.struct !95
  %i.df = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 96 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 104 ; 4 uses
  store i64 0, ptr %i.dg, align 8, !tbaa !69
  %i.dh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 96
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !67 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 104
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !69 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk ; 2 uses
  %.not31.i.i.i.i.i.i.i36 = icmp samesign eq i64 %i.dk, 0
  br i1 %.not31.i.i.i.i.i.i.i36, label %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i49, label %.lr.ph34.i.i.i.i.i.i.i37

.lr.ph34.i.i.i.i.i.i.i37:                         ; preds = %.lr.ph.i.i.i.i.i32
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 112 ; 2 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 120
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i47, %.lr.ph34.i.i.i.i.i.i.i37
  %i.dp = phi i64 [ 0, %.lr.ph34.i.i.i.i.i.i.i37 ], [ %i.ew, %._crit_edge.i.i.i.i.i.i.i47 ] ; 3 uses
  %.02732.i.i.i.i.i.i.i38 = phi ptr [ %i.di, %.lr.ph34.i.i.i.i.i.i.i37 ], [ %i.ex, %._crit_edge.i.i.i.i.i.i.i47 ] ; 9 uses
  %i.dq = load i64, ptr %i.dm, align 8, !tbaa !68
  %i.dr = sub i64 %i.dq, %i.dp
  %i.ds = ptrtoint ptr %.02732.i.i.i.i.i.i.i38 to i64 ; 2 uses
  %i.dt = sub i64 %i.dn, %i.ds                    ; 4 uses
  %i.du = icmp ult i64 %i.dr, %i.dt
  br i1 %i.du, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !66
  %i.dw = add i64 %i.dt, %i.dp
  tail call void %i.dv(ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 noundef %i.dw), !inline_history !816
  %i.dx = load i64, ptr %i.dg, align 8, !tbaa !69 ; 2 uses
  %i.dy = load i64, ptr %i.dm, align 8, !tbaa !68
  %i.dz = sub i64 %i.dy, %i.dx
  %i.ea = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 %i.dz)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026.i.i.i.i.i.i.i39 = phi i64 [ %i.dx, %bb.n ], [ %i.dp, %bb.m ] ; 3 uses
  %.025.i.i.i.i.i.i.i40 = phi i64 [ %i.ea, %bb.n ], [ %i.dt, %bb.m ] ; 13 uses
  %i.eb = load ptr, ptr %i.df, align 8, !tbaa !67 ; 2 uses
  %i.ec = ptrtoaddr ptr %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.026.i.i.i.i.i.i.i39 ; 7 uses
  %.not36.i.i.i.i.i.i.i41 = icmp eq i64 %.025.i.i.i.i.i.i.i40, 0
  br i1 %.not36.i.i.i.i.i.i.i41, label %._crit_edge.i.i.i.i.i.i.i47, label %iter.check117

iter.check117:                                    ; preds = %bb.o
  %min.iters.check103 = icmp ult i64 %.025.i.i.i.i.i.i.i40, 4
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i.i.i42.preheader, label %vector.memcheck104

vector.memcheck104:                               ; preds = %iter.check117
  %i.ee = add i64 %.026.i.i.i.i.i.i.i39, %i.ec
  %i.ef = sub i64 %i.ds, %i.ee
  %diff.check105 = icmp ugt i64 %i.ef, -32
  br i1 %diff.check105, label %.lr.ph.i.i.i.i.i.i.i42.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %vector.memcheck104
  %min.iters.check107 = icmp ult i64 %.025.i.i.i.i.i.i.i40, 32
  br i1 %min.iters.check107, label %vec.epilog.ph121, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %i.eg = and i64 %.025.i.i.i.i.i.i.i40, 28
  %n.vec109 = and i64 %.025.i.i.i.i.i.i.i40, -32  ; 4 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.ph108, %vector.body110
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next114, %vector.body110 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i38, i64 %index111 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load112 = load <16 x i8>, ptr %i.eh, align 1, !tbaa !64
  %wide.load113 = load <16 x i8>, ptr %i.ei, align 1, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 %index111 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <16 x i8> %wide.load112, ptr %i.ej, align 1, !tbaa !64
  store <16 x i8> %wide.load113, ptr %i.ek, align 1, !tbaa !64
  %index.next114 = add nuw i64 %index111, 32      ; 2 uses
  %i.el = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.el, label %middle.block115, label %vector.body110, !llvm.loop !817

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %.025.i.i.i.i.i.i.i40, %n.vec109
  br i1 %cmp.n116, label %._crit_edge.loopexit.i.i.i.i.i.i.i45, label %vec.epilog.iter.check118

vec.epilog.iter.check118:                         ; preds = %middle.block115
  %min.epilog.iters.check120 = icmp eq i64 %i.eg, 0
  br i1 %min.epilog.iters.check120, label %.lr.ph.i.i.i.i.i.i.i42.preheader, label %vec.epilog.ph121, !prof !109

vec.epilog.ph121:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check118
  %vec.epilog.resume.val122 = phi i64 [ %n.vec109, %vec.epilog.iter.check118 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec123 = and i64 %.025.i.i.i.i.i.i.i40, -4   ; 3 uses
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph121
  %index125 = phi i64 [ %vec.epilog.resume.val122, %vec.epilog.ph121 ], [ %index.next127, %vec.epilog.vector.body124 ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i38, i64 %index125
  %wide.load126 = load <4 x i8>, ptr %i.em, align 1, !tbaa !64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 %index125
  store <4 x i8> %wide.load126, ptr %i.en, align 1, !tbaa !64
  %index.next127 = add nuw i64 %index125, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next127, %n.vec123
  br i1 %i.eo, label %vec.epilog.middle.block128, label %vec.epilog.vector.body124, !llvm.loop !818

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body124
  %cmp.n129 = icmp eq i64 %.025.i.i.i.i.i.i.i40, %n.vec123
  br i1 %cmp.n129, label %._crit_edge.loopexit.i.i.i.i.i.i.i45, label %.lr.ph.i.i.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %iter.check117, %vector.memcheck104, %vec.epilog.iter.check118, %vec.epilog.middle.block128
  %.030.i.i.i.i.i.i.i43.ph = phi i64 [ 0, %iter.check117 ], [ 0, %vector.memcheck104 ], [ %n.vec109, %vec.epilog.iter.check118 ], [ %n.vec123, %vec.epilog.middle.block128 ] ; 3 uses
  %xtraiter133 = and i64 %.025.i.i.i.i.i.i.i40, 3 ; 2 uses
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph.i.i.i.i.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i42.prol

.lr.ph.i.i.i.i.i.i.i42.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i42.prol
  %.030.i.i.i.i.i.i.i43.prol = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i.i.i42.prol ], [ %.030.i.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader ] ; 3 uses
  %prol.iter135 = phi i64 [ %prol.iter135.next, %.lr.ph.i.i.i.i.i.i.i42.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i42.preheader ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i38, i64 %.030.i.i.i.i.i.i.i43.prol
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.030.i.i.i.i.i.i.i43.prol
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !64
  %i.es = add nuw i64 %.030.i.i.i.i.i.i.i43.prol, 1 ; 2 uses
  %prol.iter135.next = add i64 %prol.iter135, 1   ; 2 uses
  %prol.iter135.cmp.not = icmp eq i64 %prol.iter135.next, %xtraiter133
  br i1 %prol.iter135.cmp.not, label %.lr.ph.i.i.i.i.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i42.prol, !llvm.loop !819

.lr.ph.i.i.i.i.i.i.i42.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i42.prol, %.lr.ph.i.i.i.i.i.i.i42.preheader
  %.030.i.i.i.i.i.i.i43.unr = phi i64 [ %.030.i.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i42.prol ]
  %i.et = sub i64 %.030.i.i.i.i.i.i.i43.ph, %.025.i.i.i.i.i.i.i40
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %._crit_edge.loopexit.i.i.i.i.i.i.i45, label %.lr.ph.i.i.i.i.i.i.i42

._crit_edge.loopexit.i.i.i.i.i.i.i45:             ; preds = %.lr.ph.i.i.i.i.i.i.i42.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i42, %vec.epilog.middle.block128, %middle.block115
  %.pre37.i.i.i.i.i.i.i46 = load i64, ptr %i.dg, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i.i.i.i47

._crit_edge.i.i.i.i.i.i.i47:                      ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i45, %bb.o
  %i.ev = phi i64 [ %.pre37.i.i.i.i.i.i.i46, %._crit_edge.loopexit.i.i.i.i.i.i.i45 ], [ %.026.i.i.i.i.i.i.i39, %bb.o ]
  %i.ew = add i64 %i.ev, %.025.i.i.i.i.i.i.i40    ; 2 uses
  store i64 %i.ew, ptr %i.dg, align 8, !tbaa !69
  %i.ex = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i38, i64 %.025.i.i.i.i.i.i.i40 ; 2 uses
  %.not.i.i.i.i.i.i.i48 = icmp eq ptr %i.ex, %i.dl
  br i1 %.not.i.i.i.i.i.i.i48, label %_ZN6spdlog7details14log_msg_bufferaSERKS1_.exit.i.i.i.i.i49, label %bb.m, !llvm.loop !3

.lr.ph.i.i.i.i.i.i.i42:                           ; preds = %.lr.ph.i.i.i.i.i.i.i42.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i42
  %.030.i.i.i.i.i.i.i43 = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.030.i.i.i.i.i.i.i43.unr, %.lr.ph.i.i.i.i.i.i.i42.prol.loopexit ] ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i38, i64 %.030.i.i.i.i.i.i.i43
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.030.i.i.i.i.i.i.i43
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !64
  %i.fb = add nuw i64 %.030.i.i.i.i.i.i.i43, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i38, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fb
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !64
  %i.ff = add nuw i64 %.030.i.i.i.i.i.i.i43, 2    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i38, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ff
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !64
  %i.fj = add nuw i64 %.030.i.i.i.i.i.i.i43, 3    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i.i.i.i38, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fj
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !64
  %i.fn = add nuw i64 %.030.i.i.i.i.i.i.i43, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i44.3 = icmp eq i64 %i.fn, %.025.i.i.i.i.i.i.i40
  br i1 %exitcond.not.i.i.i.i.i.i.i44.3, label %._crit_edge.loopexit.i.i.i.i.i.i.i45, label %.lr.ph.i.i.i.i.i.i.i42, !llvm.loop !820
end_hunk_0
