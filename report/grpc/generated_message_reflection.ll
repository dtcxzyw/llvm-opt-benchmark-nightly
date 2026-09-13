Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/generated_message_reflection?download=true
inline.NumInlined: 8507
inline.NumDeleted: 3569
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZZN6google8protobuf8internal15ReflectionVisit18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERNS0_7MessageEE3$_0EEvS6_OT_ENKUlS8_E_clINS1_33RepeatedGroupDynamicExtensionInfoIRNS1_12ExtensionSet9ExtensionEEEEEDaS8_":bb.a
bb.g:                                             ; preds = %bb.e
  call void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit"

"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit": ; preds = %bb.d, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERNS0_7MessageEE3$_0EEvS6_OT_ENKUlS8_E_clINS1_25GroupDynamicExtensionInfoIRNS1_12ExtensionSet9ExtensionEEEEEDaS8_"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.d to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.j = icmp eq ptr %.0.i.i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.k = load ptr, ptr %.0.val, align 8, !tbaa !210, !nonnull !59
  store i8 1, ptr %i.k, align 1, !tbaa !180
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit"

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211, !nonnull !59, !align !212
  tail call fastcc void @_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12emplace_backIJS4_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !222, !nonnull !59, !align !212 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store ptr %i.b, ptr %i.a, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !193  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !194
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.t
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.b, ptr %i.q, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.p, align 8, !tbaa !193
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit"

"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit": ; preds = %bb.d, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERNS0_7MessageEE3$_0EEvS6_OT_ENKUlS8_E_clINS1_27MessageDynamicExtensionInfoIRNS1_12ExtensionSet9ExtensionEEEEEDaS8_"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.d to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.j = icmp eq ptr %.0.i.i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.k = load ptr, ptr %.0.val, align 8, !tbaa !210, !nonnull !59
  store i8 1, ptr %i.k, align 1, !tbaa !180
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit"

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211, !nonnull !59, !align !212
  tail call fastcc void @_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12emplace_backIJS4_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !222, !nonnull !59, !align !212 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store ptr %i.b, ptr %i.a, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !193  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !194
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.t
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.b, ptr %i.q, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.p, align 8, !tbaa !193
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit"

"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit": ; preds = %bb.d, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !175
  %i.c = load ptr, ptr %0, align 8, !tbaa !164
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0
  %i.g = add i64 %i.d, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = select i1 %i.f, ptr %0, ptr %i.i
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.l), !inline_history !1136
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !1137

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !72
  ret void
}

declare noundef ptr @_ZN6google8protobuf8internal9CloneSlowEPNS0_5ArenaERKNS0_11MessageLiteE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #33 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEET_SH_SH_T0_.exit
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !1138

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43   ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ac = getelementptr i8, ptr %i.aa, i64 4
  %.val.i.i.us.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !58
  %i.ad = getelementptr i8, ptr %i.ab, i64 4
  %.val1.i.i.us.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !58
  %i.ae = icmp slt i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !43
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !1139

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 4
  %.val.val.i.i.us.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.am, align 4, !tbaa !58
  %i.an = icmp slt i32 %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !43
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.us.i.i.i, !llvm.loop !1140

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.us.i.i.i: ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8, !tbaa !43
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_RT0_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !1141

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !43 ; 2 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bc = getelementptr i8, ptr %i.ba, i64 4
  %.val.i.i.i.i.i = load i32, ptr %i.bc, align 4, !tbaa !58
  %i.bd = getelementptr i8, ptr %i.bb, i64 4
  %.val1.i.i.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !58
  %i.be = icmp slt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !43
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1139

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !43
  store ptr %i.bk, ptr %i.r, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 4
  %.val.val.i.i.i.i.i = load i32, ptr %i.bm, align 4, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  %.val.i.i.i.i.i.i = load i32, ptr %i.bp, align 4, !tbaa !58
  %i.bq = icmp slt i32 %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !43
  %i.bs = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.i.i.i, !llvm.loop !1140

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8, !tbaa !43
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_RT0_.exit.i.i, label %.split.i.i.i, !llvm.loop !1141

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_SI_T1_T2_.exit.i.i.i
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_RT0_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.bv, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_RT0_.exit.i.i ], [ %storemerge26.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_RT0_.exit.i.i ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43 ; 2 uses
  %i.bx = load ptr, ptr %.fr29, align 8, !tbaa !43
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !43
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !43
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !43
  %i.cl = getelementptr i8, ptr %i.cj, i64 4
  %.val.i.i.i.i21.i = load i32, ptr %i.cl, align 4, !tbaa !58
  %i.cm = getelementptr i8, ptr %i.ck, i64 4
  %.val1.i.i.i.i22.i = load i32, ptr %i.cm, align 4, !tbaa !58
  %i.cn = icmp slt i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !43
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !43
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !1139

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !43
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8, !tbaa !43
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 4
  %.val.val.i.i.i.i14.i = load i32, ptr %i.dc, align 4, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !43 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %.val.i.i.i.i.i17.i = load i32, ptr %i.df, align 4, !tbaa !58
  %i.dg = icmp slt i32 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i14.i
  br i1 %i.dg, label %bb.l, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_RT0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i15.i
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !43
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_RT0_.exit.i.i, label %bb.k, !llvm.loop !1140

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8, !tbaa !43
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_T0_.exit, !llvm.loop !1142

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.eq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02752, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !43  ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !43 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 4
  %.val.i.i.i = load i32, ptr %i.dr, align 4, !tbaa !58 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 4
  %.val1.i.i.i = load i32, ptr %i.ds, align 4, !tbaa !58 ; 3 uses
  %i.dt = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !43 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  %.val1.i27.i.i = load i32, ptr %i.dv, align 4, !tbaa !58 ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.dw = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr29, align 8, !tbaa !43
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !43
  store ptr %i.dx, ptr %i.dn, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.dy = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dz = load ptr, ptr %.fr29, align 8, !tbaa !43 ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !43
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !43
  store ptr %i.dz, ptr %i.f, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph54
  %i.ea = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr29, align 8, !tbaa !43
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !43
  store ptr %i.eb, ptr %i.f, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.ec = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.ed = load ptr, ptr %.fr29, align 8, !tbaa !43 ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !43
  store ptr %i.ed, ptr %i.do, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !43
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %i.ee = load ptr, ptr %.fr29, align 8, !tbaa !43
  %i.ef = getelementptr i8, ptr %i.ee, i64 4
  %.val1.i.i13.i = load i32, ptr %i.ef, align 4, !tbaa !58 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !43 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %.val.i.i14.i = load i32, ptr %i.eh, align 4, !tbaa !58
  %i.ei = icmp slt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !1143

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !43 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  %.val1.i9.i.i = load i32, ptr %i.el, align 4, !tbaa !58
  %i.em = icmp slt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !1144

bb.x:                                             ; preds = %.preheader.i.i
  %i.en = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.en, label %bb.y, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEET_SH_SH_T0_.exit

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.012.1.i.i, align 8, !tbaa !43
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !1145

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEET_SH_SH_T0_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.dl)
  %i.eo = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ep = sub i64 %i.eo, %i.a                     ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 16
  br i1 %i.er, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_T0_.exit, !llvm.loop !1138

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_SH_RT0_.exit.i.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_RT0_.exit.i.i
  ret void
}

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIiEEEERNS2_9ExtensionES7_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit, label %bb.b, !prof !47

_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !95
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldIiEEEEPT_PS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 24) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.d, align 8, !tbaa !46
  store i32 16, ptr %i.c, align 8, !tbaa !95
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldIiEEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldIiEEEEPT_PS1_.exit: ; preds = %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit, %bb.b
  %.sink4 = phi ptr [ %i.b, %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sink4, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !174
  store ptr %.sink4, ptr %0, align 8, !tbaa !136
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !363

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.l = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !366
  %i.o = load i64, ptr %1, align 8, !tbaa !392
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !393
  br label %bb.f

_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i: ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaSlowEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.t = add nuw nsw i64 %i.j, 8
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #39
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i) ]
  %i.v = add nuw nsw i64 %i.j, 12
  %i.w = and i64 %i.v, 17179869176                ; 4 uses
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 62) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = sub nuw nsw i64 60, %i.y                 ; 2 uses
  %i.aa = load i8, ptr %.0.i.i.i, align 8, !tbaa !394
  %i.ab = zext i8 %i.aa to i64
  %.not.i.i = icmp samesign ult i64 %i.z, %i.ab
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !395
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.z ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !397 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i

_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i: ; preds = %bb.g
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !399
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !397
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 2 uses
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !400 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  %.not.i = icmp slt i64 %i.ao, %i.w
  br i1 %.not.i, label %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i, label %bb.i, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.w ; 4 uses
  store atomic ptr %i.ap, ptr %i.ai monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !401 ; 6 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp sgt i64 %i.au, 1024
  br i1 %i.av, label %.loopexit.i, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp ult ptr %i.ar, %i.al
  br i1 %i.aw, label %bb.k, label %.loopexit.i, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.ax = icmp ult ptr %i.ap, %i.ar
  %.sroa.speculated17.i.i = select i1 %i.ax, ptr %i.ar, ptr %i.ap ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.speculated17.i.i, i64 1024 ; 2 uses
  %i.az = icmp ult ptr %i.ay, %i.al
  %.sroa.speculated.i.i = select i1 %i.az, ptr %i.ay, ptr %i.al ; 2 uses
  %i.ba = icmp ult ptr %.sroa.speculated17.i.i, %.sroa.speculated.i.i
  br i1 %i.ba, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.122.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.sroa.speculated17.i.i, %bb.k ] ; 2 uses
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %.122.i.i) #36, !srcloc !402
  %i.bb = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 64 ; 3 uses
  %i.bc = icmp ult ptr %i.bb, %.sroa.speculated.i.i
  br i1 %i.bc, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !7

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.k, %bb.j, %bb.i
  %.0.i.i.i24 = phi ptr [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %.sroa.speculated17.i.i, %bb.k ], [ %i.bb, %.lr.ph.i.i ]
  store ptr %.0.i.i.i24, ptr %i.aq, align 8, !tbaa !401
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i: ; preds = %bb.h
  %i.bd = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i.i, i64 noundef %i.w)
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit: ; preds = %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i, %.loopexit.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i, %bb.e
  %.2.i.sink48 = phi ptr [ %i.u, %bb.e ], [ %i.af, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %i.aj, %.loopexit.i ], [ %i.bd, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 4 uses
  %.0.i.i32 = phi ptr [ null, %bb.e ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %.0.i.i.i, %.loopexit.i ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 5 uses
  store i32 %.1.i, ptr %.2.i.sink48, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %.2.i.sink48, i64 4
  store i32 0, ptr %i.be, align 4, !tbaa !40
  %i.bf = icmp sgt i32 %3, 0
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.2.i.sink48, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.bi
  %.0.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.bj = zext nneg i32 %3 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 4 %.0.i.i.i25, i64 %i.bk, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !40 ; 8 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !40
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 2
end_hunk_0
