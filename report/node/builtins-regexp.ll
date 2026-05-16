inline.NumInlined: 1236
inline.NumDeleted: 616
begin_hunk_0_@_ZN2v88internal25Builtin_RegExpInputSetterEiPmPNS0_7IsolateE:bb.a
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp ult i16 %i.u, 128
  br i1 %i.v, label %.critedge.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.a
  %i.w = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i3943.i = phi ptr [ %i.w, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = add i64 %i.ab, 31
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, 1503
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.aj = load ptr, ptr %i.d, align 8
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.c, label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, !prof !5

bb.c:                                             ; preds = %.critedge.i
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #11
  br label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i

_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i: ; preds = %bb.c, %.critedge.i
  %.0.i.i.i.i = phi ptr [ %i.al, %bb.c ], [ %i.ai, %.critedge.i ] ; 2 uses
  %i.am = ptrtoint ptr %.0.i.i.i.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.b, align 8
  store i64 %i.ah, ptr %.0.i.i.i.i, align 8
  %i.ap = add i64 %i.ah, -1                       ; 3 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i64, ptr %.sroa.07.0.i3943.i, align 8 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  store atomic volatile i64 %i.ar, ptr %i.as monotonic, align 8
  %i.at = trunc i64 %i.ar to i1
  br i1 %i.at, label %bb.d, label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i
  %i.au = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.aw = and i64 %i.ap, -262144
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.ax, align 262144       ; 2 uses
  %i.az = and i64 %i.ay, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  %i.ba = and i64 %i.ay, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bb = and i64 %i.ar, -262144
  %i.bc = inttoptr i64 %i.bb to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.bc, align 262144
  %i.bd = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.au, i64 noundef %i.av, i64 %i.ar) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.au, i64 %i.av, i64 %i.ar) #11
  br label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.h, %bb.g, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, %bb.b
  %.sroa.024.0.in.i = phi ptr [ %i.x, %bb.b ], [ %i.m, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.024.0.i = load i64, ptr %.sroa.024.0.in.i, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.be = load i32, ptr %i.f, align 8
  %i.bf = add nsw i32 %i.be, -1
  store i32 %i.bf, ptr %i.f, align 8
  %i.bg = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.bg, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL30Builtin_Impl_RegExpInputSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.i, !prof !12

bb.i:                                             ; preds = %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL30Builtin_Impl_RegExpInputSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL30Builtin_Impl_RegExpInputSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %bb.i
  ret i64 %.sroa.024.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Builtin_RegExpLastMatchGetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 179) #11
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 31
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, 1503
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi ptr [ %i.u, %bb.b ], [ %i.r, %bb.a ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i.i.i.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.a, align 8
  store i64 %i.q, ptr %.0.i.i.i.i, align 8
  %i.y = tail call ptr @_ZN2v88internal11RegExpUtils20GenericCaptureGetterEPNS0_7IsolateENS0_12DirectHandleINS0_15RegExpMatchInfoEEEiPb(ptr noundef nonnull %2, ptr nonnull %.0.i.i.i.i, i32 noundef 0, ptr noundef null) #11
  %i.z = load i64, ptr %i.y, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.aa = load i32, ptr %i.e, align 8
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.e, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ac, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL34Builtin_Impl_RegExpLastMatchGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL34Builtin_Impl_RegExpLastMatchGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL34Builtin_Impl_RegExpLastMatchGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  ret i64 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Builtin_RegExpLastParenGetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 178) #11
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 31
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, 1503
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.b, label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #11
  br label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i

_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi ptr [ %i.u, %bb.b ], [ %i.r, %bb.a ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i.i.i.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.a, align 8
  store i64 %i.q, ptr %.0.i.i.i.i, align 8
  %i.y = add i64 %i.q, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %3 = load i64, ptr %i.aa, align 8
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32                    ; 2 uses
  %i.ab = icmp slt i32 %5, 3
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 688
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i
  %i.ad = lshr i32 %5, 1
  %i.ae = add nsw i32 %i.ad, -1
  %i.af = tail call ptr @_ZN2v88internal11RegExpUtils20GenericCaptureGetterEPNS0_7IsolateENS0_12DirectHandleINS0_15RegExpMatchInfoEEEiPb(ptr noundef nonnull %2, ptr nonnull %.0.i.i.i.i, i32 noundef %i.ae, ptr noundef null) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.0.in.i = phi ptr [ %i.ac, %bb.c ], [ %i.af, %bb.d ]
  %.sroa.06.0.i = load i64, ptr %.sroa.06.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.ag = load i32, ptr %i.e, align 8
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.e, align 8
  %i.ai = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ai, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL34Builtin_Impl_RegExpLastParenGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL34Builtin_Impl_RegExpLastParenGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL34Builtin_Impl_RegExpLastParenGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  ret i64 %.sroa.06.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Builtin_RegExpLeftContextGetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 179) #11
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 31
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, 1503
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.b, label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #11
  br label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i

_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi ptr [ %i.u, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
  %i.v = ptrtoint ptr %.0.i.i.i.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.a, align 8
  store i64 %i.q, ptr %.0.i.i.i.i, align 8
  %i.y = add i64 %i.q, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = lshr i64 %i.ab, 32
  %i.ad = trunc nuw i64 %i.ac to i32              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.c, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i
  %i.aj = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i
  %.0.i.i.i = phi ptr [ %i.aj, %bb.c ], [ %i.ag, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i ] ; 3 uses
  %i.ak = ptrtoint ptr %.0.i.i.i to i64
  %i.al = add i64 %i.ak, 8
  %i.am = inttoptr i64 %i.al to ptr
  store ptr %i.am, ptr %i.a, align 8
  store i64 %i.af, ptr %.0.i.i.i, align 8
  %i.an = add i64 %i.af, -1
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp eq i32 %i.aq, %i.ad
  br i1 %i.ar, label %bb.d, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.as = tail call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i.i, i32 noundef 0, i32 noundef %i.ad) #11
  %.pre.i = load i64, ptr %i.as, align 8
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.at = phi i64 [ %.pre.i, %.critedge.i.i ], [ %i.af, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.au = load i32, ptr %i.e, align 8
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr %i.e, align 8
  %i.aw = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.aw, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL36Builtin_Impl_RegExpLeftContextGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL36Builtin_Impl_RegExpLeftContextGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL36Builtin_Impl_RegExpLeftContextGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  ret i64 %i.at
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal32Builtin_RegExpRightContextGetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 179) #11
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 31
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, 1503
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.b, label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #11
  br label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i

_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi ptr [ %i.u, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
  %i.v = ptrtoint ptr %.0.i.i.i.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.a, align 8
  store i64 %i.q, ptr %.0.i.i.i.i, align 8
  %i.y = add i64 %i.q, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = lshr i64 %i.ab, 32                      ; 2 uses
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.c, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i
  %i.aj = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i
  %.0.i.i.i = phi ptr [ %i.aj, %bb.c ], [ %i.ag, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i ] ; 3 uses
  %i.ak = ptrtoint ptr %.0.i.i.i to i64
  %i.al = add i64 %i.ak, 8
  %i.am = inttoptr i64 %i.al to ptr
  store ptr %i.am, ptr %i.a, align 8
  store i64 %i.af, ptr %.0.i.i.i, align 8
  %i.an = icmp eq i64 %i.ac, 0
  br i1 %i.an, label %bb.d, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ao = add i64 %i.af, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = tail call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i.i, i32 noundef %i.ad, i32 noundef %i.ar) #11
  %.pre.i = load i64, ptr %i.as, align 8
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.at = phi i64 [ %.pre.i, %.critedge.i.i ], [ %i.af, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.au = load i32, ptr %i.e, align 8
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr %i.e, align 8
  %i.aw = load ptr, ptr %i.c, align 8
end_hunk_0
