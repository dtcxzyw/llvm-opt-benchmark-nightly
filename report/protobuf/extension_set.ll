Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/extension_set?download=true
inline.NumInlined: 3767
inline.NumDeleted: 1292
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6google8protobuf8internal12ExtensionSet3AddIfEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE:bb.a
  %i.ag = and i32 %i.u, 1
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !111 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %i.ah, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread.i.i

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i: ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i
  %i.al = icmp eq i32 %i.aj, 2
  br i1 %i.al, label %.thread43.i.i, label %.thread.i.i, !prof !73

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread.i.i: ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !53 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !53
  %i.ao = icmp eq i32 %i.aj, %i.an
  br i1 %i.ao, label %.thread43.i.i, label %.thread54.i.i, !prof !73

.thread54.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread.i.i
  %.pre4056.i.i = add nsw i32 %i.aj, 1
  br label %_ZN6google8protobuf13RepeatedFieldIfE3AddEf.exit

.thread43.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread.i.i, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i
  %i.ap = add nsw i32 %i.aj, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef %.0.i.i.i.i.i, i1 noundef zeroext %i.ah, i32 noundef %i.aj, i32 noundef %i.ap)
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !53
  %.pre38.i.i = load i32, ptr %i.ai, align 4, !tbaa !111
  br label %_ZN6google8protobuf13RepeatedFieldIfE3AddEf.exit

.thread.i.i:                                      ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i
  %.pre40.i.i = add nsw i32 %i.aj, 1
  br label %_ZN6google8protobuf13RepeatedFieldIfE3AddEf.exit

_ZN6google8protobuf13RepeatedFieldIfE3AddEf.exit: ; preds = %.thread54.i.i, %.thread43.i.i, %.thread.i.i
  %.pre40.i.i.sink = phi i32 [ %.pre40.i.i, %.thread.i.i ], [ %i.ap, %.thread43.i.i ], [ %.pre4056.i.i, %.thread54.i.i ]
  %.sink17 = phi i32 [ %i.aj, %.thread.i.i ], [ %.pre38.i.i, %.thread43.i.i ], [ %i.aj, %.thread54.i.i ]
  %i.ar = phi ptr [ %i.v, %.thread.i.i ], [ %i.aq, %.thread43.i.i ], [ %i.am, %.thread54.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %.pre40.i.i.sink, ptr %i.ai, align 4, !tbaa !111
  %i.at = sext i32 %.sink17 to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.at
  store float %5, ptr %i.au, align 4, !tbaa !138
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12ExtensionSet3AddIdEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4, double noundef %5, ptr noundef %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !660 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN6google8protobuf8internal12ExtensionSet6InsertEPNS0_5ArenaEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.a, 0 ; 8 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.a, 1
  %i.b = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16
  store ptr %6, ptr %i.b, align 8, !tbaa !120
  %i.c = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = zext i1 %4 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store i8 %3, ptr %i.e, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 9
  store i8 1, ptr %i.f, align 1, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 11
  store i8 %i.d, ptr %i.g, align 1, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 10 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2
  %i.j = or i8 %i.i, 1
  store i8 %i.j, ptr %i.h, align 2
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIdEEE3NewEv.exit.i, label %bb.c, !prof !73

_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIdEEE3NewEv.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !122
  br label %_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIdEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 24) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = ptrtoint ptr %1 to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !124
  store i32 16, ptr %i.m, align 8, !tbaa !122
  br label %_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIdEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit

_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIdEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit: ; preds = %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIdEEE3NewEv.exit.i, %bb.c
  %i.p = phi i32 [ 0, %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIdEEE3NewEv.exit.i ], [ 16, %bb.c ]
  %.sink4.i = phi ptr [ %i.l, %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIdEEE3NewEv.exit.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sink4.i, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !111
  store ptr %.sink4.i, ptr %.fca.0.extract.i.i, align 8, !tbaa !662
  br label %_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 10 ; 2 uses
  %i.s = load i8, ptr %i.r, align 2
  %i.t = and i8 %i.s, -3
  store i8 %i.t, ptr %i.r, align 2
  %.pre = load ptr, ptr %.fca.0.extract.i.i, align 8, !tbaa !662 ; 2 uses
  %.pre8 = load i32, ptr %.pre, align 4, !tbaa !122
  br label %_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit

_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit: ; preds = %_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIdEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit, %bb.d
  %i.u = phi i32 [ %i.p, %_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIdEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit ], [ %.pre8, %bb.d ] ; 2 uses
  %i.v = phi ptr [ %.sink4.i, %_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIdEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit ], [ %.pre, %bb.d ] ; 5 uses
  %i.w = and i32 %i.u, -2                         ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !124 ; 3 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g, !prof !73

bb.f:                                             ; preds = %bb.e
  %i.ac = add nsw i64 %i.aa, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = inttoptr i64 %i.aa to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i: ; preds = %bb.g, %bb.f, %_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit
  %.0.i.i.i.i.i = phi ptr [ null, %_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit ], [ %i.ae, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = and i32 %i.u, 1
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !111 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %i.ah, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread.i.i

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i: ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i
  %i.al = icmp eq i32 %i.aj, 1
  br i1 %i.al, label %.thread43.i.i, label %.thread.i.i, !prof !73

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread.i.i: ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !53 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !53
  %i.ao = icmp eq i32 %i.aj, %i.an
  br i1 %i.ao, label %.thread43.i.i, label %.thread54.i.i, !prof !73

.thread54.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread.i.i
  %.pre4056.i.i = add nsw i32 %i.aj, 1
  br label %_ZN6google8protobuf13RepeatedFieldIdE3AddEd.exit

.thread43.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread.i.i, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i
  %i.ap = add nsw i32 %i.aj, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef %.0.i.i.i.i.i, i1 noundef zeroext %i.ah, i32 noundef %i.aj, i32 noundef %i.ap)
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !53
  %.pre38.i.i = load i32, ptr %i.ai, align 4, !tbaa !111
  br label %_ZN6google8protobuf13RepeatedFieldIdE3AddEd.exit

.thread.i.i:                                      ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i
  %.pre40.i.i = add nsw i32 %i.aj, 1
  br label %_ZN6google8protobuf13RepeatedFieldIdE3AddEd.exit

_ZN6google8protobuf13RepeatedFieldIdE3AddEd.exit: ; preds = %.thread54.i.i, %.thread43.i.i, %.thread.i.i
  %.pre40.i.i.sink = phi i32 [ %.pre40.i.i, %.thread.i.i ], [ %i.ap, %.thread43.i.i ], [ %.pre4056.i.i, %.thread54.i.i ]
  %.sink17 = phi i32 [ %i.aj, %.thread.i.i ], [ %.pre38.i.i, %.thread43.i.i ], [ %i.aj, %.thread54.i.i ]
  %i.ar = phi ptr [ %i.v, %.thread.i.i ], [ %i.aq, %.thread43.i.i ], [ %i.am, %.thread54.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %.pre40.i.i.sink, ptr %i.ai, align 4, !tbaa !111
  %i.at = sext i32 %.sink17 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  store double %5, ptr %i.au, align 8, !tbaa !140
  ret void
}

declare void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 !guid !663 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %2, ptr noundef %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.b, i8 noundef signext 0)
  %i.c = load ptr, ptr %3, align 8, !tbaa !119
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %i.b, i1 false)
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.b
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_ZN6google8protobuf8internal12ParseContext12ParseMessageEPNS0_11MessageLiteEPKc(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_ZNS2_16ReadPackedVarintISL_EESE_SE_T_EUliE_EESE_SE_SN_SI_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef byval(%class.anon.129) align 8 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !666 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !53      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i132 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i131 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !202  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i131 to i64
  %i.k = sub i64 %i.i, %i.j
  %.030168 = trunc i64 %i.k to i32                ; 2 uses
  %i.l = icmp sgt i32 %.0.i132, %.030168
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ad
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.ef, %bb.ad ] ; 3 uses
  %.030171 = phi i32 [ %.030168, %.lr.ph ], [ %.030, %bb.ad ] ; 2 uses
  %.026170 = phi i32 [ %.0.i132, %.lr.ph ], [ %i.dy, %bb.ad ] ; 2 uses
  %.0126169 = phi ptr [ %storemerge.i131, %.lr.ph ], [ %i.ee, %bb.ad ] ; 3 uses
  %.sroa.098.0.copyload = load ptr, ptr %2, align 8, !tbaa !60 ; 7 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60 ; 2 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !60 ; 2 uses
  %.sroa.499.0.copyload = load ptr, ptr %.sroa.499.0..sroa_idx, align 8, !tbaa !668 ; 2 uses
  %.sroa.5100.0.copyload = load i32, ptr %.sroa.5100.0..sroa_idx, align 8, !tbaa !19
  %i.o = icmp ult ptr %.0126169, %i.n
  br i1 %i.o, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread134

.lr.ph.i.preheader:                               ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.2.0.copyload, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload, i64 4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload, i64 8 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit
  %.0714.i = phi ptr [ %.0.i11.i, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit ], [ %.0126169, %.lr.ph.i.preheader ] ; 3 uses
  %i.r = load i8, ptr %.0714.i, align 1, !tbaa !53 ; 3 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.t = zext nneg i8 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.d

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.v = zext i8 %i.r to i32
  %i.w = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.v) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.u, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.x, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.t, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.y, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.aa = trunc i64 %.sink.i10.i to i32           ; 3 uses
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.ab = tail call noundef zeroext i1 %.sroa.2.0.copyload(ptr noundef %.sroa.3.0.copyload, i32 noundef %i.aa), !inline_history !664
  br i1 %i.ab, label %bb.e, label %bb.l

_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i: ; preds = %bb.d
  %i.ac = tail call noundef zeroext i1 @_ZN6google8protobuf8internal12ValidateEnumEiPKj(i32 noundef %i.aa, ptr noundef %.sroa.3.0.copyload)
  br i1 %i.ac, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i, %.split.i
  %i.ad = load i32, ptr %.sroa.098.0.copyload, align 4, !tbaa !122 ; 2 uses
  %i.ae = and i32 %i.ad, -2                       ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds i8, ptr %.sroa.098.0.copyload, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !124 ; 3 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !73

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i64 %i.ai, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !131
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.an = inttoptr i64 %i.ai to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.e ], [ %i.am, %bb.g ], [ %i.an, %bb.h ]
  %i.ao = and i32 %i.ad, 1
  %i.ap = icmp eq i32 %i.ao, 0                    ; 3 uses
  %i.aq = load i32, ptr %i.p, align 4, !tbaa !111 ; 4 uses
  br i1 %i.ap, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !53  ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !53
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.i, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i
  %.0.v.i.i.i.i.i = phi ptr [ %i.ar, %bb.i ], [ %.sroa.098.0.copyload, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i ]
  %i.at = phi i32 [ %i.as, %bb.i ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i ]
  %i.au = icmp eq i32 %i.aq, %i.at
  %i.av = add nsw i32 %i.aq, 1                    ; 3 uses
  br i1 %i.au, label %bb.j, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, !prof !73

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.098.0.copyload, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.ap, i32 noundef %i.aq, i32 noundef %i.av)
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !53
  %.pre38.i.i.i = load i32, ptr %i.p, align 4, !tbaa !111
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %i.ax = phi i32 [ %.pre38.i.i.i, %bb.j ], [ %i.aq, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.aw, %bb.j ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %bb.j ], [ %i.ap, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.029.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.av, ptr %i.p, align 4, !tbaa !111
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.029.i.i.i, i64 %i.ay
  store i32 %i.aa, ptr %i.az, align 4, !tbaa !19
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !111
  %i.bb = icmp eq i32 %i.av, %i.ba
  tail call void @llvm.assume(i1 %i.bb)
  br i1 %.0.i.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i
  %i.bc = load ptr, ptr %i.q, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i

_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, %bb.k
  %.sink236.a = phi ptr [ %i.bc, %bb.k ], [ %.sroa.098.0.copyload, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.bd = icmp eq ptr %.pn.i.i.i, %.sink236.a
  tail call void @llvm.assume(i1 %i.bd)
  br label %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i, %.split.i
  %sext145 = shl i64 %.sink.i10.i, 32
  %i.be = ashr exact i64 %sext145, 32
  %i.bf = load i64, ptr %.sroa.499.0.copyload, align 8, !tbaa !124 ; 2 uses
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %bb.m, label %bb.n, !prof !72

bb.m:                                             ; preds = %bb.l
  %i.bh = add nsw i64 %i.bf, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bk = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.499.0.copyload)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i = phi ptr [ %i.bj, %bb.m ], [ %i.bk, %bb.n ]
  tail call void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %.sroa.5100.0.copyload, i64 noundef %i.be, ptr noundef %.0.i.i)
  br label %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit

_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i
  %i.bl = icmp ult ptr %.0.i11.i, %i.n
  br i1 %i.bl, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread134.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread134.loopexit: ; preds = %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !202
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread134

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread134: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread134.loopexit, %bb.c
  %i.bm = phi ptr [ %i.n, %bb.c ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread134.loopexit ] ; 2 uses
  %.2.i136 = phi ptr [ %.0126169, %bb.c ], [ %.0.i11.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread134.loopexit ]
  %i.bn = ptrtoint ptr %.2.i136 to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = sub nsw i32 %.026170, %.030171          ; 2 uses
  %i.br = icmp slt i32 %i.bq, 17
  br i1 %i.br, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.a, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.bm, i64 16, i1 false)
  %i.bs = sext i32 %i.bq to i64                   ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.a, i64 %i.bs ; 2 uses
  %sext39 = shl i64 %i.bp, 32
  %i.bu = ashr exact i64 %sext39, 32              ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.a, i64 %i.bu ; 2 uses
  %.sroa.0108.0.copyload = load ptr, ptr %2, align 8, !tbaa !60 ; 7 uses
  %.sroa.2109.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60 ; 2 uses
  %.sroa.3110.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !60 ; 2 uses
  %.sroa.4111.0.copyload = load ptr, ptr %.sroa.499.0..sroa_idx, align 8, !tbaa !668 ; 2 uses
  %.sroa.5112.0.copyload = load i32, ptr %.sroa.5100.0..sroa_idx, align 8, !tbaa !19
  %i.bw = icmp slt i64 %i.bu, %i.bs
  br i1 %i.bw, label %.lr.ph.i42.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48

.lr.ph.i42.preheader:                             ; preds = %bb.o
  %.not.i.i57 = icmp eq ptr %.sroa.2109.0.copyload, null
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0108.0.copyload, i64 4 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0108.0.copyload, i64 8 ; 3 uses
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.preheader, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit74
  %.0714.i43 = phi ptr [ %.0.i11.i45, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit74 ], [ %i.bv, %.lr.ph.i42.preheader ] ; 3 uses
  %i.bz = load i8, ptr %.0714.i43, align 1, !tbaa !53 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i47, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i44

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i47: ; preds = %.lr.ph.i42
  %i.cb = zext nneg i8 %i.bz to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.0714.i43, i64 1
  br label %bb.p

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i44: ; preds = %.lr.ph.i42
  %i.cd = zext i8 %i.bz to i32
  %i.ce = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i43, i32 noundef %i.cd) ; 2 uses
  %i.cf = extractvalue { ptr, i64 } %i.ce, 0      ; 2 uses
  %i.cg = extractvalue { ptr, i64 } %i.ce, 1
  %i.ch = icmp eq ptr %i.cf, null
  br i1 %i.ch, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48.thread, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i44, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i47
  %.0.i11.i45 = phi ptr [ %i.cc, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i47 ], [ %i.cf, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i44 ] ; 3 uses
  %.sink.i10.i46 = phi i64 [ %i.cb, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i47 ], [ %i.cg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i44 ] ; 2 uses
  %i.ci = trunc i64 %.sink.i10.i46 to i32         ; 3 uses
  br i1 %.not.i.i57, label %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i73, label %.split.i58

.split.i58:                                       ; preds = %bb.p
  %i.cj = call noundef zeroext i1 %.sroa.2109.0.copyload(ptr noundef %.sroa.3110.0.copyload, i32 noundef %i.ci), !inline_history !664
  br i1 %i.cj, label %bb.q, label %bb.x

_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i73: ; preds = %bb.p
  %i.ck = call noundef zeroext i1 @_ZN6google8protobuf8internal12ValidateEnumEiPKj(i32 noundef %i.ci, ptr noundef %.sroa.3110.0.copyload)
  br i1 %i.ck, label %bb.q, label %bb.x

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i73, %.split.i58
  %i.cl = load i32, ptr %.sroa.0108.0.copyload, align 4, !tbaa !122 ; 2 uses
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i61, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0108.0.copyload, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !124 ; 3 uses
  %i.cr = trunc i64 %i.cq to i1
  br i1 %i.cr, label %bb.s, label %bb.t, !prof !73

bb.s:                                             ; preds = %bb.r
  %i.cs = add nsw i64 %i.cq, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !131
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i61

bb.t:                                             ; preds = %bb.r
  %i.cv = inttoptr i64 %i.cq to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i61

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i61: ; preds = %bb.t, %bb.s, %bb.q
  %.0.i.i.i.i.i.i62 = phi ptr [ null, %bb.q ], [ %i.cu, %bb.s ], [ %i.cv, %bb.t ]
  %i.cw = and i32 %i.cl, 1
  %i.cx = icmp eq i32 %i.cw, 0                    ; 3 uses
  %i.cy = load i32, ptr %i.bx, align 4, !tbaa !111 ; 4 uses
  br i1 %i.cx, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i63, label %bb.u

bb.u:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i61
  %i.cz = load ptr, ptr %i.by, align 8, !tbaa !53 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !53
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i63

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i63: ; preds = %bb.u, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i61
  %.0.v.i.i.i.i.i64 = phi ptr [ %i.cz, %bb.u ], [ %.sroa.0108.0.copyload, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i61 ]
  %i.db = phi i32 [ %i.da, %bb.u ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i61 ]
  %i.dc = icmp eq i32 %i.cy, %i.db
  %i.dd = add nsw i32 %i.cy, 1                    ; 3 uses
  br i1 %i.dc, label %bb.v, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i65, !prof !73

bb.v:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i63
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0108.0.copyload, ptr noundef %.0.i.i.i.i.i.i62, i1 noundef zeroext %i.cx, i32 noundef %i.cy, i32 noundef %i.dd)
  %i.de = load ptr, ptr %i.by, align 8, !tbaa !53
  %.pre38.i.i.i72 = load i32, ptr %i.bx, align 4, !tbaa !111
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i65

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i65: ; preds = %bb.v, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i63
  %i.df = phi i32 [ %.pre38.i.i.i72, %bb.v ], [ %i.cy, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i63 ]
  %.pn.i.i.i66 = phi ptr [ %i.de, %bb.v ], [ %.0.v.i.i.i.i.i64, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i63 ] ; 2 uses
  %.0.i.i.i68 = phi i1 [ false, %bb.v ], [ %i.cx, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i63 ]
  %.029.i.i.i69 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i66, i64 8
  store i32 %i.dd, ptr %i.bx, align 4, !tbaa !111
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %.029.i.i.i69, i64 %i.dg
  store i32 %i.ci, ptr %i.dh, align 4, !tbaa !19
  %i.di = load i32, ptr %i.bx, align 4, !tbaa !111
  %i.dj = icmp eq i32 %i.dd, %i.di
  call void @llvm.assume(i1 %i.dj)
  br i1 %.0.i.i.i68, label %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i70, label %bb.w

bb.w:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i65
  %i.dk = load ptr, ptr %i.by, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i70

_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i70: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i65, %bb.w
  %.sink237.a = phi ptr [ %i.dk, %bb.w ], [ %.sroa.0108.0.copyload, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i65 ]
  %i.dl = icmp eq ptr %.pn.i.i.i66, %.sink237.a
  call void @llvm.assume(i1 %i.dl)
  br label %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit74

bb.x:                                             ; preds = %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i73, %.split.i58
  %sext146 = shl i64 %.sink.i10.i46, 32
  %i.dm = ashr exact i64 %sext146, 32
  %i.dn = load i64, ptr %.sroa.4111.0.copyload, align 8, !tbaa !124 ; 2 uses
  %i.do = trunc i64 %i.dn to i1
  br i1 %i.do, label %bb.y, label %bb.z, !prof !72

bb.y:                                             ; preds = %bb.x
  %i.dp = add nsw i64 %i.dn, -1
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i59

bb.z:                                             ; preds = %bb.x
  %i.ds = call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.4111.0.copyload)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i59

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i59: ; preds = %bb.z, %bb.y
  %.0.i.i60 = phi ptr [ %i.dr, %bb.y ], [ %i.ds, %bb.z ]
  call void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %.sroa.5112.0.copyload, i64 noundef %i.dm, ptr noundef %.0.i.i60)
  br label %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit74

_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit74: ; preds = %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i70, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i59
  %i.dt = icmp ult ptr %.0.i11.i45, %i.bt
  br i1 %i.dt, label %.lr.ph.i42, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48: ; preds = %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit74, %bb.o
  %.2.i41 = phi ptr [ %i.bv, %bb.o ], [ %.0.i11.i45, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit74 ]
  %.not40 = icmp eq ptr %.2.i41, %i.bt
  br i1 %.not40, label %bb.aa, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48.thread

bb.aa:                                            ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !202
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.bs
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i44, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48, %bb.aa
  %.1 = phi ptr [ %i.dv, %bb.aa ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48 ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread

bb.ab:                                            ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread134
  %i.dw = trunc i64 %i.bp to i32
  %i.dx = add i32 %.030171, %i.dw
  %i.dy = sub i32 %.026170, %i.dx                 ; 3 uses
  %i.dz = load i32, ptr %i.m, align 4, !tbaa !203
  %i.ea = icmp slt i32 %i.dz, 17
  br i1 %i.ea, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %sext = shl i64 %i.bp, 32
  %i.ed = ashr exact i64 %sext, 32
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 %i.ed ; 3 uses
  %i.ef = load ptr, ptr %i.g, align 8, !tbaa !202 ; 2 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %.030 = trunc i64 %i.ei to i32                  ; 2 uses
  %i.ej = icmp sgt i32 %i.dy, %.030
  br i1 %i.ej, label %bb.c, label %._crit_edge, !llvm.loop !665

._crit_edge:                                      ; preds = %bb.ad, %bb.b
  %.0126.lcssa = phi ptr [ %storemerge.i131, %bb.b ], [ %i.ee, %bb.ad ] ; 3 uses
  %.026.lcssa = phi i32 [ %.0.i132, %bb.b ], [ %i.dy, %bb.ad ] ; 2 uses
  %i.ek = sext i32 %.026.lcssa to i64
  %i.el = getelementptr inbounds i8, ptr %.0126.lcssa, i64 %i.ek ; 2 uses
  %.sroa.0120.0.copyload = load ptr, ptr %2, align 8, !tbaa !60 ; 7 uses
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2121.0.copyload = load ptr, ptr %.sroa.2121.0..sroa_idx, align 8, !tbaa !60 ; 2 uses
  %.sroa.3122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3122.0.copyload = load ptr, ptr %.sroa.3122.0..sroa_idx, align 8, !tbaa !60 ; 2 uses
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4123.0.copyload = load ptr, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !668 ; 2 uses
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5124.0.copyload = load i32, ptr %.sroa.5124.0..sroa_idx, align 8, !tbaa !19
  %i.em = icmp sgt i32 %.026.lcssa, 0
  br i1 %i.em, label %.lr.ph.i50.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56

.lr.ph.i50.preheader:                             ; preds = %._crit_edge
  %.not.i.i75 = icmp eq ptr %.sroa.2121.0.copyload, null
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0120.0.copyload, i64 4 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0120.0.copyload, i64 8 ; 3 uses
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit92
  %.0714.i51 = phi ptr [ %.0.i11.i53, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit92 ], [ %.0126.lcssa, %.lr.ph.i50.preheader ] ; 3 uses
  %i.ep = load i8, ptr %.0714.i51, align 1, !tbaa !53 ; 3 uses
  %i.eq = icmp sgt i8 %i.ep, -1
  br i1 %i.eq, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i55, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i55: ; preds = %.lr.ph.i50
  %i.er = zext nneg i8 %i.ep to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.0714.i51, i64 1
  br label %bb.ae

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52: ; preds = %.lr.ph.i50
  %i.et = zext i8 %i.ep to i32
  %i.eu = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i51, i32 noundef %i.et) ; 2 uses
  %i.ev = extractvalue { ptr, i64 } %i.eu, 0      ; 2 uses
  %i.ew = extractvalue { ptr, i64 } %i.eu, 1
  %i.ex = icmp eq ptr %i.ev, null
  br i1 %i.ex, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56, label %bb.ae

bb.ae:                                            ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i55
  %.0.i11.i53 = phi ptr [ %i.es, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i55 ], [ %i.ev, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52 ] ; 3 uses
  %.sink.i10.i54 = phi i64 [ %i.er, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i55 ], [ %i.ew, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52 ] ; 2 uses
  %i.ey = trunc i64 %.sink.i10.i54 to i32         ; 3 uses
  br i1 %.not.i.i75, label %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i91, label %.split.i76

.split.i76:                                       ; preds = %bb.ae
  %i.ez = tail call noundef zeroext i1 %.sroa.2121.0.copyload(ptr noundef %.sroa.3122.0.copyload, i32 noundef %i.ey), !inline_history !664
  br i1 %i.ez, label %bb.af, label %bb.am

_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i91: ; preds = %bb.ae
  %i.fa = tail call noundef zeroext i1 @_ZN6google8protobuf8internal12ValidateEnumEiPKj(i32 noundef %i.ey, ptr noundef %.sroa.3122.0.copyload)
  br i1 %i.fa, label %bb.af, label %bb.am

bb.af:                                            ; preds = %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i91, %.split.i76
  %i.fb = load i32, ptr %.sroa.0120.0.copyload, align 4, !tbaa !122 ; 2 uses
  %i.fc = and i32 %i.fb, -2                       ; 2 uses
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i79, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fe = sext i32 %i.fc to i64
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0120.0.copyload, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !124 ; 3 uses
  %i.fh = trunc i64 %i.fg to i1
  br i1 %i.fh, label %bb.ah, label %bb.ai, !prof !73

bb.ah:                                            ; preds = %bb.ag
  %i.fi = add nsw i64 %i.fg, -1
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !131
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i79

bb.ai:                                            ; preds = %bb.ag
  %i.fl = inttoptr i64 %i.fg to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i79

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i79: ; preds = %bb.ai, %bb.ah, %bb.af
  %.0.i.i.i.i.i.i80 = phi ptr [ null, %bb.af ], [ %i.fk, %bb.ah ], [ %i.fl, %bb.ai ]
  %i.fm = and i32 %i.fb, 1
  %i.fn = icmp eq i32 %i.fm, 0                    ; 3 uses
  %i.fo = load i32, ptr %i.en, align 4, !tbaa !111 ; 4 uses
  br i1 %i.fn, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i81, label %bb.aj

bb.aj:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i79
  %i.fp = load ptr, ptr %i.eo, align 8, !tbaa !53 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !53
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i81

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i81: ; preds = %bb.aj, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i79
  %.0.v.i.i.i.i.i82 = phi ptr [ %i.fp, %bb.aj ], [ %.sroa.0120.0.copyload, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i79 ]
  %i.fr = phi i32 [ %i.fq, %bb.aj ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i79 ]
  %i.fs = icmp eq i32 %i.fo, %i.fr
  %i.ft = add nsw i32 %i.fo, 1                    ; 3 uses
  br i1 %i.fs, label %bb.ak, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i83, !prof !73

bb.ak:                                            ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i81
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0120.0.copyload, ptr noundef %.0.i.i.i.i.i.i80, i1 noundef zeroext %i.fn, i32 noundef %i.fo, i32 noundef %i.ft)
  %i.fu = load ptr, ptr %i.eo, align 8, !tbaa !53
  %.pre38.i.i.i90 = load i32, ptr %i.en, align 4, !tbaa !111
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i83

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i83: ; preds = %bb.ak, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i81
  %i.fv = phi i32 [ %.pre38.i.i.i90, %bb.ak ], [ %i.fo, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i81 ]
  %.pn.i.i.i84 = phi ptr [ %i.fu, %bb.ak ], [ %.0.v.i.i.i.i.i82, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i81 ] ; 2 uses
  %.0.i.i.i86 = phi i1 [ false, %bb.ak ], [ %i.fn, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i81 ]
  %.029.i.i.i87 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i84, i64 8
  store i32 %i.ft, ptr %i.en, align 4, !tbaa !111
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %.029.i.i.i87, i64 %i.fw
  store i32 %i.ey, ptr %i.fx, align 4, !tbaa !19
  %i.fy = load i32, ptr %i.en, align 4, !tbaa !111
  %i.fz = icmp eq i32 %i.ft, %i.fy
  tail call void @llvm.assume(i1 %i.fz)
  br i1 %.0.i.i.i86, label %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i88, label %bb.al

bb.al:                                            ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i83
  %i.ga = load ptr, ptr %i.eo, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i88

_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i88: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i83, %bb.al
  %.sink238 = phi ptr [ %i.ga, %bb.al ], [ %.sroa.0120.0.copyload, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i83 ]
  %i.gb = icmp eq ptr %.pn.i.i.i84, %.sink238
  tail call void @llvm.assume(i1 %i.gb)
  br label %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit92

bb.am:                                            ; preds = %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i91, %.split.i76
  %sext144 = shl i64 %.sink.i10.i54, 32
  %i.gc = ashr exact i64 %sext144, 32
  %i.gd = load i64, ptr %.sroa.4123.0.copyload, align 8, !tbaa !124 ; 2 uses
  %i.ge = trunc i64 %i.gd to i1
  br i1 %i.ge, label %bb.an, label %bb.ao, !prof !72

bb.an:                                            ; preds = %bb.am
  %i.gf = add nsw i64 %i.gd, -1
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i77

bb.ao:                                            ; preds = %bb.am
  %i.gi = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.4123.0.copyload)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i77

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i77: ; preds = %bb.ao, %bb.an
  %.0.i.i78 = phi ptr [ %i.gh, %bb.an ], [ %i.gi, %bb.ao ]
  tail call void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %.sroa.5124.0.copyload, i64 noundef %i.gc, ptr noundef %.0.i.i78)
  br label %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit92

_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit92: ; preds = %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i88, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i77
  %i.gj = icmp ult ptr %.0.i11.i53, %i.el
  br i1 %i.gj, label %.lr.ph.i50, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit92, %._crit_edge
  %.2.i49 = phi ptr [ %.0126.lcssa, %._crit_edge ], [ %.0.i11.i53, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit92 ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52 ] ; 2 uses
  %i.gk = icmp eq ptr %i.el, %.2.i49
  %i.gl = select i1 %i.gk, ptr %.2.i49, ptr null
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread: ; preds = %bb.ac, %bb.ab, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48.thread, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.gl, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56 ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48.thread ], [ null, %bb.ab ], [ null, %bb.ac ]
  ret ptr %.4
}

declare noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #15

declare { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #15
end_hunk_0
