Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/extension_set?download=true
inline.NumInlined: 1865
inline.NumDeleted: 637
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEv:bb.a
  %i.ac = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ab, i1 true)
  %i.ad = xor i32 %i.ac, 31
  %i.ae = mul nuw nsw i32 %i.ad, 9
  %i.af = add nuw nsw i32 %i.ae, 73
  %i.ag = lshr i32 %i.af, 6
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %i.o, %i.ah
  %i.aj = and i8 %i.z, 16
  %.not10.i.i.i.i = icmp eq i8 %i.aj, 0
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !46  ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55
  %..i.i.i.i = select i1 %.not10.i.i.i.i, i64 72, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %..i.i.i.i
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak), !inline_history !321 ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = or i32 %i.ap, 1
  %i.ar = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aq, i1 true)
  %i.as = xor i32 %i.ar, 31
  %i.at = mul nuw nsw i32 %i.as, 9
  %i.au = add nuw nsw i32 %i.at, 73
  %i.av = lshr i32 %i.au, 6
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %i.ai, %i.ao
  %i.ay = add i64 %i.ax, %i.aw
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"

"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.09.i.i.i.i = phi i64 [ %i.x, %bb.e ], [ %i.ay, %bb.g ], [ 0, %bb.f ]
  %i.az = add i64 %i.p, %.09.i.i.i.i              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.n
  br i1 %.not.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_18MessageSetByteSizeEvE3$_0EET_S5_.exit", label %bb.d, !llvm.loop !322

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_18MessageSetByteSizeEvE3$_0EET_S5_.exit": ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i", %bb.b, %bb.c
  %i.bb = phi i64 [ 0, %bb.c ], [ %.pre, %bb.b ], [ %i.az, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %i.bb
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal24GeneratedExtensionFinderD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet20LazyMessageExtension8ByteSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = trunc i64 %i.d to i32
  ret i32 %i.e
}

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #5

declare void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN6google8protobuf8internal16OnShutdownDeleteISt13unordered_mapISt4pairIPKNS0_11MessageLiteEiENS1_13ExtensionInfoENS1_12_GLOBAL__N_115ExtensionHasherESt8equal_toIS8_ESaIS4_IKS8_S9_EEEEEPT_SJ_ENUlPKvE_8__invokeESL_(ptr noundef %0) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN6google8protobuf8internal16OnShutdownDeleteISt13unordered_mapISt4pairIPKNS0_11MessageLiteEiENS1_13ExtensionInfoENS1_12_GLOBAL__N_115ExtensionHasherESt8equal_toIS8_ESaIS4_IKS8_S9_EEEEEPT_SJ_ENKUlPKvE_clESL_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !53 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIPKN6google8protobuf11MessageLiteEiES0_IKS6_NS2_8internal13ExtensionInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS6_ENS8_12_GLOBAL__N_115ExtensionHasherENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i ], [ %.val.i.i.i.i, %bb.b ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 64) #30
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairIPKN6google8protobuf11MessageLiteEiES0_IKS6_NS2_8internal13ExtensionInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS6_ENS8_12_GLOBAL__N_115ExtensionHasherENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !323

_ZNSt10_HashtableISt4pairIPKN6google8protobuf11MessageLiteEiES0_IKS6_NS2_8internal13ExtensionInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS6_ENS8_12_GLOBAL__N_115ExtensionHasherENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt13unordered_mapISt4pairIPKN6google8protobuf11MessageLiteEiENS2_8internal13ExtensionInfoENS7_12_GLOBAL__N_115ExtensionHasherESt8equal_toIS6_ESaIS0_IKS6_S8_EEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableISt4pairIPKN6google8protobuf11MessageLiteEiES0_IKS6_NS2_8internal13ExtensionInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS6_ENS8_12_GLOBAL__N_115ExtensionHasherENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !41
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt13unordered_mapISt4pairIPKN6google8protobuf11MessageLiteEiENS2_8internal13ExtensionInfoENS7_12_GLOBAL__N_115ExtensionHasherESt8equal_toIS6_ESaIS0_IKS6_S8_EEED2Ev.exit.i

_ZNSt13unordered_mapISt4pairIPKN6google8protobuf11MessageLiteEiENS2_8internal13ExtensionInfoENS7_12_GLOBAL__N_115ExtensionHasherESt8equal_toIS6_ESaIS0_IKS6_S8_EEED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10_HashtableISt4pairIPKN6google8protobuf11MessageLiteEiES0_IKS6_NS2_8internal13ExtensionInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS6_ENS8_12_GLOBAL__N_115ExtensionHasherENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  br label %_ZZN6google8protobuf8internal16OnShutdownDeleteISt13unordered_mapISt4pairIPKNS0_11MessageLiteEiENS1_13ExtensionInfoENS1_12_GLOBAL__N_115ExtensionHasherESt8equal_toIS8_ESaIS4_IKS8_S9_EEEEEPT_SJ_ENKUlPKvE_clESL_.exit

_ZZN6google8protobuf8internal16OnShutdownDeleteISt13unordered_mapISt4pairIPKNS0_11MessageLiteEiENS1_13ExtensionInfoENS1_12_GLOBAL__N_115ExtensionHasherESt8equal_toIS8_ESaIS4_IKS8_S9_EEEEEPT_SJ_ENKUlPKvE_clESL_.exit: ; preds = %bb.a, %_ZNSt13unordered_mapISt4pairIPKN6google8protobuf11MessageLiteEiENS2_8internal13ExtensionInfoENS7_12_GLOBAL__N_115ExtensionHasherESt8equal_toIS6_ESaIS0_IKS6_S8_EEED2Ev.exit.i
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #21

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiSt4pairIKiN6google8protobuf8internal12ExtensionSet9ExtensionEESt10_Select1stIS7_ESt4lessIiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiN6google8protobuf8internal12ExtensionSet9ExtensionEESt10_Select1stIS7_ESt4lessIiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !324

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #5

declare { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian32FallbackEPj(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian64FallbackEPm(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #5

declare void @_ZN6google8protobuf2io17CodedOutputStreamC2EPNS1_20ZeroCopyOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #22

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !141    ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit, label %bb.b, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -2
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.g = icmp eq ptr %.0.i, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %3, ptr %2, align 8, !tbaa !136
  store i8 0, ptr %3, align 8, !tbaa !46
  br label %_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !113
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit, !prof !52

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @_ZTIN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 noundef 40), !inline_history !5
  br label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit

_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit: ; preds = %bb.d, %bb.e
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal9ArenaImpl28AllocateAlignedAndAddCleanupEmPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %.0.i, i64 noundef 40, ptr noundef nonnull @_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv) ; 5 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %6, ptr %5, align 8, !tbaa !136
  %7 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %7, align 8, !tbaa !102
  br label %_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.c, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit
  %.sink11 = phi ptr [ %i.h, %bb.c ], [ %i.s, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit ] ; 3 uses
  %i.t = ptrtoint ptr %.sink11 to i64
  %i.u = or i64 %i.t, 1
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %0, align 8, !tbaa !141
  store ptr %.0.i, ptr %.sink11, align 8, !tbaa !144
  %i.w = getelementptr inbounds nuw i8, ptr %.sink11, i64 8
  ret ptr %i.w
}

declare noundef ptr @_ZN6google8protobuf8internal9ArenaImpl28AllocateAlignedAndAddCleanupEmPFvPvE(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv(ptr noundef %0) #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !46
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare noundef ptr @_ZN6google8protobuf5Arena21AllocateAlignedNoHookEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPv(ptr noundef %0) #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !46
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

declare void @_ZN6google8protobuf13RepeatedFieldImE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

declare void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

declare void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

declare void @_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

declare void @_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet7ForEachISt17_Rb_tree_iteratorISt4pairIKiNS2_9ExtensionEEEZNS2_D1EvE3$_0EET0_T_SC_SB_"(ptr nofree readonly %0, ptr nofree readnone captures(address) %1) unnamed_addr #8 align 2 {
bb.a:
  %.not5 = icmp eq ptr %0, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.06 = phi ptr [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 40
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9Extension4FreeEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a)
  %i.b = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0.06) #31 ; 2 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !325
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS0_13RepeatedFieldIiEEEEvPv(ptr noundef %0) #8 comdat {
bb.a:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS0_13RepeatedFieldIlEEEEvPv(ptr noundef %0) #8 comdat {
bb.a:
  tail call void @_ZN6google8protobuf13RepeatedFieldIlED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS0_13RepeatedFieldIjEEEEvPv(ptr noundef %0) #8 comdat {
bb.a:
  tail call void @_ZN6google8protobuf13RepeatedFieldIjED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS0_13RepeatedFieldImEEEEvPv(ptr noundef %0) #8 comdat {
bb.a:
  tail call void @_ZN6google8protobuf13RepeatedFieldImED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS0_13RepeatedFieldIfEEEEvPv(ptr noundef %0) #8 comdat {
bb.a:
  tail call void @_ZN6google8protobuf13RepeatedFieldIfED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS0_13RepeatedFieldIdEEEEvPv(ptr noundef %0) #8 comdat {
bb.a:
  tail call void @_ZN6google8protobuf13RepeatedFieldIdED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS0_13RepeatedFieldIbEEEEvPv(ptr noundef %0) #8 comdat {
bb.a:
  tail call void @_ZN6google8protobuf13RepeatedFieldIbED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  ret void
}

declare void @_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv(ptr noundef %0) #8 comdat {
bb.a:
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEvPv(ptr noundef %0) #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 4 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.d, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.e to i64
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE6DeleteEPS3_PNS0_5ArenaE.exit.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !100
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.b
  %i.h = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !137
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = add nsw i64 %i.l, 8
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #27
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEED2Ev.exit

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE6DeleteEPS3_PNS0_5ArenaE.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE6DeleteEPS3_PNS0_5ArenaE.exit.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101  ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE6DeleteEPS3_PNS0_5ArenaE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27, !inline_history !10
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE6DeleteEPS3_PNS0_5ArenaE.exit.i.i

_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE6DeleteEPS3_PNS0_5ArenaE.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !11

_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEED2Ev.exit: ; preds = %bb.a, %._crit_edge.i.i
  ret void
}

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7ReserveEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5
end_hunk_0
