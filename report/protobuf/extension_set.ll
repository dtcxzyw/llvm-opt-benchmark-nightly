inline.NumInlined: 3767
inline.NumDeleted: 1290
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnIN6google8protobuf8internal12_GLOBAL__N_115ExtensionHasherENS5_13ExtensionInfoEEEmPKvPv:bb.a
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = zext i32 %.val3 to i64
  %i.j = xor i64 %i.h, %i.i
  %i.k = mul i64 %i.j, -2543921745674291987
  %i.l = tail call noundef i64 @llvm.bswap.i64(i64 %i.k)
  ret i64 %i.l
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm48EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #29 comdat {
bb.a:
  %i.a = mul i64 %3, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !35

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #38
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSJ_PFvSJ_hmmE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !23     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.064 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.064
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.064 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not62 = icmp eq i16 %i.r, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.064, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !447

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.056.063 = phi i16 [ %i.bg, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.056.063, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.064, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.w ; 3 uses
  %.val54 = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val55 = load i32, ptr %i.y, align 8
  %i.z = ptrtoint ptr %.val54 to i64              ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = zext i32 %.val55 to i64
  %i.ah = xor i64 %i.af, %i.ag
  %i.ai = mul i64 %i.ah, -2543921745674291987
  %i.aj = tail call noundef i64 @llvm.bswap.i64(i64 %i.ai) ; 2 uses
  %i.ak = lshr i64 %i.aj, 7
  %i.al = xor i64 %i.ak, %i.j                     ; 5 uses
  %i.am = trunc i64 %i.aj to i8
  %i.an = and i8 %i.am, 127                       ; 2 uses
  %i.ao = sub i64 %i.w, %i.al                     ; 2 uses
  %i.ap = and i64 %i.k, %i.ao
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !34

bb.d:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.ao, 15
  %i.as = add nuw nsw i64 %i.ar, %i.al
  %i.at = and i64 %i.as, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.au = and i64 %i.al, %i.b
  %.not.i = icmp ult i64 %i.au, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !34

bb.f:                                             ; preds = %bb.e
  %i.av = and i64 %i.al, %i.a                     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.av
  %i.ax = load <16 x i8>, ptr %i.aw, align 1, !tbaa !13
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.az, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.az, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.av, %i.bb
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.an, i64 noundef %i.w, i64 noundef %i.al)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.bc, %bb.g ], [ %i.at, %bb.d ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.an, ptr %i.bd, align 1, !tbaa !448
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.x, i64 48, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bf = add i16 %.sroa.056.063, -1
  %i.bg = and i16 %i.bf, %.sroa.056.063           ; 2 uses
  %.not = icmp eq i16 %i.bg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #30

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #15

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  %.not57 = icmp eq i8 %i.b, 0
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 5
  %i.e = or disjoint i64 %i.d, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !95
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04963 = phi ptr [ %i.k, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.04963, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !450

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = zext i8 %i.o to i64
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.p, %._crit_edge ], [ %.147.be.in, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.q, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 240
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.147
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13    ; 2 uses
  %.not.i55 = icmp eq i8 %i.v, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.e

.lr.ph66:                                         ; preds = %bb.d, %.lr.ph66
  %.15065 = phi ptr [ %i.x, %.lr.ph66 ], [ %i.t, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.15065, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13    ; 2 uses
  %.not.i56 = icmp eq i8 %i.z, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !451

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.d
  %i.ae = phi i8 [ %i.z, %._crit_edge67 ], [ %i.v, %bb.d ]
  %.251 = phi ptr [ %i.x, %._crit_edge67 ], [ %i.t, %bb.d ]
  %.248 = phi i64 [ %i.ac, %._crit_edge67 ], [ %.147, %bb.d ]
  %.2 = phi ptr [ %i.ad, %._crit_edge67 ], [ %.1, %bb.d ] ; 3 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = or disjoint i64 %i.ag, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ah) #39
  %2 = add nuw nsw i64 %.248, 1                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i64
  %.not = icmp samesign ugt i64 %2, %i.ak
  br i1 %.not, label %.preheader58, label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.e
  %.147.be.in = phi i64 [ %2, %bb.e ], [ %4, %bb.f ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.an, %bb.f ]
  br label %bb.d, !llvm.loop !452

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.an, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = load ptr, ptr %.3, align 8, !tbaa !95   ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 304) #39
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader58
  %3 = zext i8 %i.am to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %5 = zext i8 %i.aq to i64
  %6 = icmp samesign ugt i64 %4, %5
  br i1 %6, label %.preheader58, label %.backedge, !llvm.loop !453

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 304, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #39
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58, %.loopexit.sink.split
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #15

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #31

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !130    ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = icmp eq ptr %.0.i, null
  br i1 %i.g, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
  br label %_ZN6google8protobuf5Arena6CreateINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.i = tail call noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168) %.0.i, i64 noundef 40, i64 noundef 8, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv)
  br label %_ZN6google8protobuf5Arena6CreateINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink10 = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sink10, i8 0, i64 40, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.sink10, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sink10, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !137
  store i8 0, ptr %i.k, align 8, !tbaa !13
  %i.l = ptrtoint ptr %.sink10 to i64
  %i.m = or i64 %i.l, 1
  store i64 %i.m, ptr %0, align 8, !tbaa !130
  store ptr %.0.i, ptr %.sink10, align 8, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %.sink10, i64 8
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv(ptr noundef %0) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !13
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #39
  br label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3 align 2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNS2_D1EvE3$_0NS2_11PrefetchNtaEEEvT_SO_T0_T1_"(ptr nofree readonly captures(address) %0, i32 %1, ptr nofree readnone captures(address) %2, i32 %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i103 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i103, label %.lr.ph, label %.preheader93

.preheader93:                                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.sroa.11.0.lcssa = phi i32 [ %1, %bb.a ], [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.lcssa, %2
  %i.d = icmp ne i32 %.sroa.11.0.lcssa, %3
  %.not3.i5108 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i5108, label %.lr.ph113, label %.preheader

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.0106 = phi i32 [ %i.ak, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0105 = phi ptr [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.11.0104 = phi i32 [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = and i32 %.sroa.11.0104, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0105, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %i.j = load i8, ptr %i.i, align 2
  %i.k = trunc i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8
  %spec.select.i = select i1 %i.k, ptr %i.l, ptr %i.h
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 0, i32 0, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nsw i32 %.sroa.11.0104, 1            ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 10
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01521.i.i.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.0.0105, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not17.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !13    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 240
  %i.ac = add i32 %.sroa.11.0104, 1
  %i.ad = and i32 %i.ac, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.af, %.thread.i.i ], [ %i.ai, %bb.d ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.c
  %i.aj = zext i8 %i.x to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.critedge.loopexit23.i.i.i, %bb.b
  %.sroa.11.2 = phi i32 [ 0, %bb.d ], [ %i.o, %bb.b ], [ %i.aj, %.critedge.loopexit23.i.i.i ], [ %i.o, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.116.i.i.i, %bb.d ], [ %.sroa.0.0105, %bb.b ], [ %i.t, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.0105, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add nuw nsw i32 %.0106, 1
  %i.al = icmp ne ptr %.sroa.0.2, %2
  %i.am = icmp ne i32 %.sroa.11.2, %3
  %.not3.i = select i1 %i.al, i1 true, i1 %i.am
  %i.an = icmp samesign ult i32 %.0106, 15
  %i.ao = select i1 %.not3.i, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %.preheader93, !llvm.loop !454

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, %.preheader93
  %.sroa.072.0.lcssa = phi ptr [ %0, %.preheader93 ], [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_:bb.a
  %.015.i.unr = phi ptr [ %i.r, %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.p, %.lr.ph.preheader.i ], [ %i.v, %.lr.ph.i.prol ]
  %i.x = icmp ult i64 %i.s, 96
  br i1 %i.x, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.015.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01214.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.z, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ab, ptr noundef nonnull align 1 dereferenceable(32) %i.aa, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ad, ptr noundef nonnull align 1 dereferenceable(32) %i.ac, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i, i64 128 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i, i64 128
  %.not.i.3 = icmp eq ptr %i.ae, %i.q
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i8, ptr %i.h, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, %bb.d
  %i.ag = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.h, align 1, !tbaa !13
  %i.ai = load ptr, ptr %0, align 8, !tbaa !95    ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !13  ; 4 uses
  %i.al = zext i8 %i.ah to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.al
  %i.an = zext i8 %i.ak to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 10 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13  ; 3 uses
  %i.aq = icmp ult i8 %i.ak, %i.ap
  %i.ar = zext i8 %i.ak to i64                    ; 2 uses
  br i1 %i.aq, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.at = getelementptr [32 x i8], ptr %i.as, i64 %i.ar ; 2 uses
  %narrow.i = sub nuw i8 %i.ap, %i.ak
  %i.au = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.au, 5
  %i.av = getelementptr i8, ptr %i.at, i64 32
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.at, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.ao, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.aw = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.ap, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  %i.az = add i8 %i.aw, 1                         ; 3 uses
  store i8 %i.az, ptr %i.ao, align 1, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 11
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %.not.i18.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i
  %i.bc = zext i8 %i.az to i32
  %i.bd = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, %i.bc
  br i1 %i.be, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 240 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %.019.i = phi i8 [ %i.az, %.lr.ph.i27 ], [ %i.bg, %bb.f ] ; 3 uses
  %i.bg = add i8 %.019.i, -1                      ; 3 uses
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !95 ; 2 uses
  %i.bk = zext i8 %.019.i to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bk
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !95
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i8 %.019.i, ptr %i.bm, align 1, !tbaa !13
  %i.bn = zext i8 %i.bg to i32
  %i.bo = icmp samesign ult i32 %i.bd, %i.bn
  br i1 %i.bo, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit, !llvm.loop !538

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i, %bb.e
  %i.bp = load ptr, ptr %0, align 8, !tbaa !95
  %i.bq = load i8, ptr %i.aj, align 8, !tbaa !13
  %i.br = add i8 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.bt = zext i8 %i.br to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  store ptr %2, ptr %i.bu, align 8, !tbaa !95
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %.not.i28 = icmp eq i8 %i.bw, 0
  br i1 %.not.i28, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit
  %i.bx = load i8, ptr %i.h, align 2, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 240
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in30 = phi i8 [ %i.bx, %bb.g ], [ %.0, %bb.h ]
  %.02529 = phi i8 [ 0, %bb.g ], [ %i.cg, %bb.h ] ; 3 uses
  %.0 = add i8 %.0.in30, 1                        ; 2 uses
  %i.ca = zext i8 %.0 to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !95 ; 3 uses
  %i.cd = zext i8 %.02529 to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !95
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %.02529, ptr %i.cf, align 1, !tbaa !13
  store ptr %2, ptr %i.cc, align 8, !tbaa !95
  %i.cg = add i8 %.02529, 1                       ; 2 uses
  %i.ch = load i8, ptr %i.j, align 1, !tbaa !13
  %.not = icmp ugt i8 %i.cg, %i.ch
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !539

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectIN4absl12lts_202505129btree_mapIiNS1_12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEEEvPv(ptr noundef %0) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #37
  unreachable

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.53") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = icmp eq ptr %2, %i.e
  %i.j = icmp eq i32 %3, %i.h
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %4, align 4, !tbaa !3      ; 4 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !89
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95
  %i.t = icmp eq ptr %2, %i.s
  %i.u = icmp eq i32 %3, 0
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.critedge2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %.not.i.i7.i.a = icmp eq i8 %i.x, 0
  br i1 %.not.i.i7.i.a, label %.thread.i.i13.i, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader
  %.not.i.i7.i = icmp slt i32 %3, 1
  br i1 %.not.i.i7.i, label %.lr.ph.i.i.i10.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.d, %bb.e
  %.01621.i.i.i.i = phi ptr [ %i.y, %bb.e ], [ %2, %bb.d ] ; 2 uses
  %i.y = load ptr, ptr %.01621.i.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %.not18.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not18.i.i.i.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i10.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01621.i.i.i.i, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !13  ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i10.i, label %.critedge.i.i.i11.i, !llvm.loop !540

.thread.i.i13.i:                                  ; preds = %.preheader.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.af = and i32 %3, 255
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  %.11723.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !95 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %.not.i24.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i13.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i13.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 240
  %i.an = zext i8 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %.117.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !95 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i, i64 11
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %.not.i.i.i.i14.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i14.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !525

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph26.i.i.i.i, %.thread.i.i13.i
  %.117.lcssa.i.i.i.i = phi ptr [ %.11723.i.i.i.i, %.thread.i.i13.i ], [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  br label %.critedge.i.i.i11.i

.critedge.i.i.i11.i:                              ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.lcssa8.sink.i.i.i = phi i8 [ %i.as, %._crit_edge.i.i.i.i ], [ %i.ac, %bb.e ]
  %.2.i.i.i12.i = phi ptr [ %.117.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.y, %bb.e ]
  %i.at = zext i8 %.lcssa8.sink.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i: ; preds = %.lr.ph.i.i.i10.i, %.critedge.i.i.i11.i, %bb.d
  %.sroa.087.1 = phi ptr [ %.2.i.i.i12.i, %.critedge.i.i.i11.i ], [ %2, %bb.d ], [ %2, %.lr.ph.i.i.i10.i ]
  %.sroa.6.0.in = phi i32 [ %i.at, %.critedge.i.i.i11.i ], [ %3, %bb.d ], [ %3, %.lr.ph.i.i.i10.i ]
  %i.au = sext i32 %.sroa.6.0.in to i64
  %i.av = getelementptr [32 x i8], ptr %.sroa.087.1, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.critedge2, label %bb.l

.critedge2:                                       ; preds = %.critedge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i
  %i.ba = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.ba, 1
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.bb = icmp slt i32 %i.p, %i.o
  br i1 %i.bb, label %bb.g, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add nsw i32 %3, 1                       ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.bh = zext i8 %i.bg to i32
  %i.bi = icmp eq i32 %i.be, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.01521.i.i.i = phi ptr [ %i.bj, %bb.i ], [ %2, %bb.h ] ; 2 uses
  %i.bj = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 11
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not17.i.i.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !13  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = icmp eq i8 %i.bn, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bs = add i32 %3, 1
  %i.bt = and i32 %i.bs, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bu
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.bv, %.thread.i.i ], [ %i.by, %bb.j ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.i
  %i.bz = zext i8 %i.bn to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.j, %.critedge.loopexit23.i.i.i, %bb.h
  %.sroa.073.0 = phi ptr [ %.116.i.i.i, %bb.j ], [ %2, %bb.h ], [ %i.bj, %.critedge.loopexit23.i.i.i ], [ %2, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.13.0 = phi i32 [ 0, %bb.j ], [ %i.be, %bb.h ], [ %i.bz, %.critedge.loopexit23.i.i.i ], [ %i.be, %.lr.ph.i.i.i ] ; 3 uses
  %i.ca = icmp eq ptr %.sroa.073.0, %i.e
  %i.cb = icmp eq i32 %.sroa.13.0, %i.h
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.critedge4, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %i.cd = sext i32 %.sroa.13.0 to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.073.0, i64 16
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = icmp slt i32 %i.o, %i.cg
  br i1 %i.ch, label %.critedge4, label %bb.l

.critedge4:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.k
  %i.ci = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.073.0, i32 %.sroa.13.0, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ci, 1
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit

.thread:                                          ; preds = %bb.a
  %i.cj = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38, !noalias !541 ; 5 uses
  store ptr %i.cj, ptr %i.cj, align 8, !tbaa !95, !noalias !541
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.ck, align 8, !tbaa !13, !noalias !541
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !95, !noalias !541
  store ptr %i.cj, ptr %1, align 8, !tbaa !95, !noalias !541
  %.pre = load i32, ptr %4, align 4, !noalias !541
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i, %.thread
  %i.cm = phi i32 [ %.pre, %.thread ], [ %i.ay, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i ], [ %i.o, %bb.k ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.sroa.0.0.in.i.i = phi ptr [ %1, %bb.l ], [ %i.cz, %bb.o ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !95, !noalias !541 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13, !noalias !541 ; 2 uses
  %i.cp = zext i8 %i.co to i64                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %.not.i.i.i.i55 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i55, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %bb.n
  %.07.i.i.i.i.i = phi i64 [ %i.cu, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.07.i.i.i.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3, !noalias !541
  %i.ct = icmp slt i32 %i.cs, %i.cm
  br i1 %i.ct, label %bb.n, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cu = add nuw nsw i64 %.07.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cu, %i.cp
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !354

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i, %bb.m
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.cp, %bb.n ], [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13, !noalias !541
  %.not.i.i56 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i56, label %bb.o, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i

bb.o:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 240
  %i.cy = and i64 %.0.lcssa.i.i.i.i.i, 255
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  br label %bb.m

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i
  %i.da = trunc i64 %.0.lcssa.i.i.i.i.i to i32    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESM_:bb.a
  %.sroa.13.086 = phi i32 [ %3, %.lr.ph ], [ %.sroa.13.1, %bb.m ] ; 5 uses
  %.sroa.070.085 = phi ptr [ %2, %.lr.ph ], [ %.sroa.070.1, %bb.m ] ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 11 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = sub i64 %i.bd, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 10 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13  ; 4 uses
  %i.bj = zext i8 %i.bi to i32                    ; 3 uses
  %i.bk = sub nsw i32 %i.bj, %.sroa.13.086
  %i.bl = sext i32 %i.bk to i64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bl) ; 4 uses
  %i.bm = trunc i64 %.sroa.speculated to i8       ; 3 uses
  %i.bn = zext i32 %.sroa.13.086 to i64
  %i.bo = and i32 %.sroa.13.086, 255              ; 2 uses
  %i.bp = trunc i64 %.sroa.speculated to i32
  %i.bq = add i32 %i.bo, %i.bp                    ; 2 uses
  %i.br = and i32 %i.bq, 255                      ; 3 uses
  %i.bs = sub nsw i32 %i.bj, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = zext nneg i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %i.bu ; 2 uses
  %.idx.i.i34 = shl nuw nsw i64 %i.bt, 5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i34
  %.not13.i.i35 = icmp eq i32 %i.br, %i.bj
  br i1 %.not13.i.i35, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57, label %.lr.ph.preheader.i.i36

.lr.ph.preheader.i.i36:                           ; preds = %bb.i
  %i.by = zext nneg i32 %i.bo to i64
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %i.by
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37, %.lr.ph.preheader.i.i36
  %.015.i.i38 = phi ptr [ %i.cb, %.lr.ph.i.i37 ], [ %i.bz, %.lr.ph.preheader.i.i36 ] ; 2 uses
  %.01214.i.i39 = phi ptr [ %i.ca, %.lr.ph.i.i37 ], [ %i.bw, %.lr.ph.preheader.i.i36 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.i38, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i.i39, i64 32, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.01214.i.i39, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.015.i.i38, i64 32
  %.not.i.i40 = icmp eq ptr %i.ca, %i.bx
  br i1 %.not.i.i40, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i41, label %.lr.ph.i.i37, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i41: ; preds = %.lr.ph.i.i37
  %.pre = load i8, ptr %i.be, align 1, !tbaa !13
  %i.cc = icmp eq i8 %.pre, 0
  br i1 %i.cc, label %.preheader.i43, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57

.preheader.i43:                                   ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i41
  %.not38.i44 = icmp eq i8 %i.bm, 0
  br i1 %.not38.i44, label %._crit_edge.i50, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.preheader.i43
  %i.cd = add nuw nsw i64 %i.bn, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 240
  %wide.trip.count.i46 = and i64 %.sroa.speculated, 255
  br label %bb.j

._crit_edge.i50:                                  ; preds = %bb.j, %.preheader.i43
  %i.cf = trunc i32 %i.bq to i8
  %.033.i51 = add i8 %i.cf, 1                     ; 2 uses
  %.not34.i52 = icmp ugt i8 %.033.i51, %i.bi
  br i1 %.not34.i52, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57, label %.lr.ph37.i53

.lr.ph37.i53:                                     ; preds = %._crit_edge.i50
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 240 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i45
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.i45 ], [ %indvars.iv.next.i48, %bb.j ] ; 2 uses
  %i.ch = add nuw nsw i64 %i.cd, %indvars.iv.i47
  %i.ci = and i64 %i.ch, 255
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !95
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %i.ck, ptr noundef nonnull %i.bc)
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count.i46
  br i1 %exitcond.not.i49, label %._crit_edge.i50, label %bb.j, !llvm.loop !546

bb.k:                                             ; preds = %bb.k, %.lr.ph37.i53
  %.035.i54 = phi i8 [ %.033.i51, %.lr.ph37.i53 ], [ %.0.i55, %bb.k ] ; 3 uses
  %i.cl = sub i8 %.035.i54, %i.bm                 ; 2 uses
  %i.cm = zext i8 %.035.i54 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !95 ; 2 uses
  %i.cp = zext i8 %i.cl to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cp
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !95
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i8 %i.cl, ptr %i.cr, align 1, !tbaa !13
  %.0.i55 = add i8 %.035.i54, 1                   ; 2 uses
  %.not.i56 = icmp ugt i8 %.0.i55, %i.bi
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57, label %bb.k, !llvm.loop !547

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57: ; preds = %bb.k, %bb.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i41, %._crit_edge.i50
  %i.cs = sub i8 %i.bi, %i.bm
  store i8 %i.cs, ptr %i.bh, align 1, !tbaa !13
  %i.ct = and i64 %.sroa.speculated, 255
  %i.cu = load i64, ptr %i.d, align 8, !tbaa !100
  %i.cv = sub i64 %i.cu, %i.ct
  store i64 %i.cv, ptr %i.d, align 8, !tbaa !100
  %i.cw = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.070.085, i32 %.sroa.13.086)
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.cx = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.070.085, i32 %.sroa.13.086)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57
  %.pn = phi { ptr, i32 } [ %i.cw, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57 ], [ %i.cx, %bb.l ] ; 2 uses
  %.sroa.13.1 = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %.sroa.070.1 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, %i.bb
  br i1 %i.cz, label %bb.h, label %._crit_edge, !llvm.loop !548

._crit_edge:                                      ; preds = %bb.m, %bb.g, %bb.a, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit
  %.sink = phi i64 [ 0, %bb.a ], [ %i.b, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit ], [ %i.b, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit ], [ %i.b, %bb.g ], [ %i.b, %bb.m ]
  %.sroa.070.0.lcssa.sink = phi ptr [ %2, %bb.a ], [ %.fca.0.extract17, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit ], [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit ], [ %2, %bb.g ], [ %.sroa.070.1, %bb.m ]
  %.sroa.13.0.lcssa.sink = phi i32 [ %3, %bb.a ], [ %.fca.1.extract18, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit ], [ 0, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit ], [ %3, %bb.g ], [ %.sroa.13.1, %bb.m ]
  store i64 %.sink, ptr %0, align 8, !tbaa !437
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.070.0.lcssa.sink, ptr %i.da, align 8
  %.sroa.13.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.13.0.lcssa.sink, ptr %.sroa.13.0..sroa_idx75, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmiENS2_IKSH_RKSE_PSM_EE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !317    ; 5 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.pre = load i32, ptr %.sroa.2.0..sroa_idx.i.phi.trans.insert, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %.not = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !321  ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nsw i32 %i.f, %2
  %i.h = sext i32 %i.g to i64
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, %2
  br i1 %i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.2.0.copyload.i = phi i32 [ %.sroa.2.0.copyload.i.pre, %._crit_edge ], [ %i.f, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %.not68.i = icmp eq i8 %i.k, 0
  %i.l = sub nsw i32 0, %2
  %i.m = sext i32 %i.l to i64
  br i1 %.not68.i, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.o = add i32 %2, 1
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95   ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.s, i64 11
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !13
  %i.t = icmp eq i8 %.pre.i, 0
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.14884.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.s, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %.14884.i, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %.not.i62.i = icmp eq i8 %i.x, 0
  br i1 %.not.i62.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !549

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.044108.i = phi i64 [ 1, %bb.f ], [ %i.m, %bb.e ], [ 1, %.lr.ph.i ]
  %.148.lcssa.i = phi ptr [ %i.s, %bb.f ], [ %1, %bb.e ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.148.lcssa.i, i64 8
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i64
  %i.ab = load ptr, ptr %.148.lcssa.i, align 8, !tbaa !95
  %i.ac = sext i32 %.sroa.2.0.copyload.i to i64   ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %._crit_edge.i
  %.246.i = phi i64 [ %.044108.i, %._crit_edge.i ], [ %3, %.backedge ] ; 2 uses
  %.142.i = phi i64 [ %i.aa, %._crit_edge.i ], [ %.142.i.be.in, %.backedge ] ; 2 uses
  %.1.i = phi ptr [ %i.ab, %._crit_edge.i ], [ %.1.i.be, %.backedge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 240
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.142.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %.not.i63.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i63.i, label %.lr.ph87.i, label %bb.h

.lr.ph87.i:                                       ; preds = %bb.g, %.lr.ph87.i
  %.24986.i = phi ptr [ %i.aj, %.lr.ph87.i ], [ %i.af, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.24986.i, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !95 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %.not.i64.i = icmp eq i8 %i.al, 0
  br i1 %.not.i64.i, label %.lr.ph87.i, label %._crit_edge88.i, !llvm.loop !550

._crit_edge88.i:                                  ; preds = %.lr.ph87.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = zext i8 %i.an to i64
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !95
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge88.i, %bb.g
  %.350.i = phi ptr [ %i.aj, %._crit_edge88.i ], [ %i.af, %bb.g ] ; 2 uses
  %.243.i = phi i64 [ %i.ao, %._crit_edge88.i ], [ %.142.i, %bb.g ] ; 2 uses
  %.2.i = phi ptr [ %i.ap, %._crit_edge88.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.aq = icmp eq ptr %.350.i, %i.a
  br i1 %i.aq, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %.2.i, %i.a
  %i.as = icmp eq i64 %.243.i, %i.ac
  %or.cond.i = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = getelementptr inbounds nuw i8, ptr %.350.i, i64 10
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i64                    ; 3 uses
  br i1 %or.cond.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add i64 %.246.i, 1
  %3 = add i64 %i.aw, %i.av
  %i.ax = add nuw nsw i64 %.243.i, 1              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.2.i, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = zext i8 %i.az to i64
  %.not.i = icmp samesign ugt i64 %i.ax, %i.ba
  br i1 %.not.i, label %.preheader69.i, label %.backedge

.backedge:                                        ; preds = %bb.k, %bb.j
  %.142.i.be.in = phi i64 [ %i.ax, %bb.j ], [ %4, %bb.k ]
  %.1.i.be = phi ptr [ %.2.i, %bb.j ], [ %i.be, %bb.k ]
  br label %bb.g, !llvm.loop !551

.preheader69.i:                                   ; preds = %bb.j, %bb.k
  %.3.i = phi ptr [ %i.be, %bb.k ], [ %.2.i, %bb.j ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %i.be = load ptr, ptr %.3.i, align 8, !tbaa !95 ; 4 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  %i.bg = icmp eq i64 %i.bd, %i.ac
  %or.cond61.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond61.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit, label %bb.k

bb.k:                                             ; preds = %.preheader69.i
  %4 = add nuw nsw i64 %i.bd, 1                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %5 = zext i8 %i.bi to i64
  %6 = icmp samesign ugt i64 %4, %5
  br i1 %6, label %.preheader69.i, label %.backedge, !llvm.loop !552

_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit: ; preds = %bb.h, %bb.i, %.preheader69.i
  %.pn.i = phi i64 [ %i.av, %.preheader69.i ], [ %i.ac, %bb.h ], [ %i.av, %bb.i ]
  %.051.i = add i64 %.pn.i, %.246.i
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit, %bb.c
  %.0 = phi i64 [ %i.h, %bb.c ], [ %.051.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 8 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = icmp ugt i8 %i.e, 2
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.g = call noundef zeroext i1 @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %3)
  %.sroa.0.0.copyload7.peel = load ptr, ptr %3, align 8 ; 7 uses
  %.sroa.9.0.copyload9.peel = load i32, ptr %i.a, align 8 ; 5 uses
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload7.peel, i64 8
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i32
  store i32 %i.j, ptr %i.a, align 8, !tbaa !321
  %i.k = load ptr, ptr %.sroa.0.0.copyload7.peel, align 8, !tbaa !95 ; 3 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !317
  %i.l = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c, %bb.a
  %.sroa.9.0.lcssa = phi i32 [ %2, %bb.a ], [ %.sroa.9.0.copyload9.peel, %bb.c ], [ %.sroa.9.0.copyload9.peel, %bb.j ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.copyload7.peel, %bb.c ], [ %.sroa.0.0.copyload7.peel, %bb.j ]
  %.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.c ], [ %i.ap, %bb.j ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa, i64 10
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit

bb.d:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa, i64 11
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %.not7.i = icmp eq i8 %i.q, 0
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.r, align 8, !tbaa !95
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95   ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95
  store ptr %i.v, ptr %i.t, align 8, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge.i = phi ptr [ %i.t, %bb.f ], [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, %bb.e ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef nonnull %.lcssa, ptr noundef nonnull %i.w)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit: ; preds = %._crit_edge, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !100
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %i.af = phi ptr [ %i.ao, %bb.j ], [ %i.k, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = icmp ugt i8 %i.ah, 2
  br i1 %i.ai, label %.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aj = call noundef zeroext i1 @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %3)
  br i1 %i.aj, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %3, align 8, !tbaa !317   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i32
  store i32 %i.an, ptr %i.a, align 8, !tbaa !321
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 3 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !317
  %i.ap = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %._crit_edge, label %.lr.ph, !llvm.loop !553

.thread:                                          ; preds = %bb.i, %.lr.ph, %.lr.ph.preheader, %bb.b, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit
  %.sroa.9.2 = phi i32 [ %.sroa.9.0.lcssa, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit ], [ %2, %.lr.ph.preheader ], [ %.sroa.9.0.copyload9.peel, %bb.b ], [ %.sroa.9.0.copyload9.peel, %.lr.ph ], [ %.sroa.9.0.copyload9.peel, %bb.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.lcssa, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit ], [ %1, %.lr.ph.preheader ], [ %.sroa.0.0.copyload7.peel, %bb.b ], [ %.sroa.0.0.copyload7.peel, %.lr.ph ], [ %.sroa.0.0.copyload7.peel, %bb.i ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13  ; 2 uses
  %i.at = zext i8 %i.as to i32
  %i.au = icmp eq i32 %.sroa.9.2, %i.at
  br i1 %i.au, label %bb.k, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.k:                                             ; preds = %.thread
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i, label %.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.01521.i.i.i = phi ptr [ %i.ax, %bb.l ], [ %.sroa.0.2, %bb.k ] ; 2 uses
  %i.ax = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 11
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not17.i.i.i, label %bb.l, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !13  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = icmp eq i8 %i.bb, %i.bd
  br i1 %i.be, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 240
  %i.bg = zext i8 %i.as to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.bh, %.thread.i.i ], [ %i.bk, %bb.m ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.l
  %i.bl = zext i8 %i.bb to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.m, %.thread, %.critedge.loopexit23.i.i.i, %bb.h
  %.pn13 = phi ptr [ %i.ab, %bb.h ], [ %.sroa.0.2, %.thread ], [ %.116.i.i.i, %bb.m ], [ %i.ax, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.2, %.lr.ph.i.i.i ]
  %.pn = phi i32 [ %i.ae, %bb.h ], [ %.sroa.9.2, %.thread ], [ 0, %bb.m ], [ %i.bl, %.critedge.loopexit23.i.i.i ], [ %.sroa.9.2, %.lr.ph.i.i.i ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i32 } poison, ptr %.pn13, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.fca.0.insert.i.pn, i32 %.pn, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.b, 0                    ; 2 uses
  br i1 %.not.i, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11723.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !95 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %.not.i24.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 240
  %i.l = zext i8 %i.j to i64
end_hunk_2
