Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-regexp?download=true
inline.NumInlined: 1236
inline.NumDeleted: 616
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal28Builtin_RegExpCapture8GetterEiPmPNS0_7IsolateE:bb.a
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
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.b, label %bb.c, !prof !15

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
  %i.y = tail call ptr @_ZN2v88internal11RegExpUtils20GenericCaptureGetterEPNS0_7IsolateENS0_12DirectHandleINS0_15RegExpMatchInfoEEEiPb(ptr noundef nonnull %2, ptr nonnull %.0.i.i.i.i, i32 noundef 8, ptr noundef null) #11
  %i.z = load i64, ptr %i.y, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.aa = load i32, ptr %i.e, align 8
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.e, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ac, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL33Builtin_Impl_RegExpCapture8GetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL33Builtin_Impl_RegExpCapture8GetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL33Builtin_Impl_RegExpCapture8GetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  ret i64 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal28Builtin_RegExpCapture9GetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 !guid !32 {
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
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.b, label %bb.c, !prof !15

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
  %i.y = tail call ptr @_ZN2v88internal11RegExpUtils20GenericCaptureGetterEPNS0_7IsolateENS0_12DirectHandleINS0_15RegExpMatchInfoEEEiPb(ptr noundef nonnull %2, ptr nonnull %.0.i.i.i.i, i32 noundef 9, ptr noundef null) #11
  %i.z = load i64, ptr %i.y, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.aa = load i32, ptr %i.e, align 8
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.e, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ac, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL33Builtin_Impl_RegExpCapture9GetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL33Builtin_Impl_RegExpCapture9GetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL33Builtin_Impl_RegExpCapture9GetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  ret i64 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Builtin_RegExpInputGetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 !guid !33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 5 uses
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
  br i1 %i.t, label %bb.b, label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, !prof !15

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
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ad = load ptr, ptr %i.c, align 8
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.c, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !15

bb.c:                                             ; preds = %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i
  %i.af = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i
  %.0.i.i.i = phi ptr [ %i.af, %bb.c ], [ %i.ac, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i ]
  store i64 %i.ab, ptr %.0.i.i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ab, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.ak = load i64, ptr %i.aj, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.03.0.i = phi i64 [ %i.ak, %bb.d ], [ %i.ab, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.al = load i32, ptr %i.e, align 8
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.e, align 8
  %i.an = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.an, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL30Builtin_Impl_RegExpInputGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL30Builtin_Impl_RegExpInputGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL30Builtin_Impl_RegExpInputGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Builtin_RegExpInputSetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !34 {
bb.a:
  %3 = zext nneg i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i14.i = icmp sgt i32 %0, 5
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 48
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 4 uses
  %.sroa.0.0.i.i = select i1 %.not.i14.i, ptr %i.k, ptr %i.l ; 3 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.a
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ult i16 %i.t, 128
  br i1 %i.u, label %.critedge.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.a
  %i.v = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i3943.i = phi ptr [ %i.v, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.x, align 8
  %i.y = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.ab = add i64 %i.aa, 31
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 1503
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.c, align 8
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.c, label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, !prof !15

bb.c:                                             ; preds = %.critedge.i
  %i.ak = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #11
  br label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i

_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i: ; preds = %bb.c, %.critedge.i
  %.0.i.i.i.i = phi ptr [ %i.ak, %bb.c ], [ %i.ah, %.critedge.i ] ; 2 uses
  %i.al = ptrtoint ptr %.0.i.i.i.i to i64
  %i.am = add i64 %i.al, 8
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %i.a, align 8
  store i64 %i.ag, ptr %.0.i.i.i.i, align 8
  %i.ao = add i64 %i.ag, -1                       ; 3 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %.sroa.07.0.i3943.i, align 8 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store atomic volatile i64 %i.aq, ptr %i.ar monotonic, align 8
  %i.as = trunc i64 %i.aq to i1
  br i1 %i.as, label %bb.d, label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i
  %i.at = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.au = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.av = and i64 %i.ao, -262144
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %i.aw, align 262144       ; 2 uses
  %i.ay = and i64 %i.ax, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ay, 0
  %i.az = and i64 %i.ax, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ba = and i64 %i.aq, -262144
  %i.bb = inttoptr i64 %i.ba to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.bb, align 262144
  %i.bc = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.at, i64 noundef %i.au, i64 %i.aq) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.at, i64 %i.au, i64 %i.aq) #11
  br label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.h, %bb.g, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, %bb.b
  %.sroa.024.0.in.i = phi ptr [ %i.w, %bb.b ], [ %i.l, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i ], [ %i.l, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.024.0.i = load i64, ptr %.sroa.024.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.bd = load i32, ptr %i.e, align 8
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.e, align 8
  %i.bf = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bf, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL30Builtin_Impl_RegExpInputSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.i, !prof !19

bb.i:                                             ; preds = %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL30Builtin_Impl_RegExpInputSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL30Builtin_Impl_RegExpInputSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %bb.i
  ret i64 %.sroa.024.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Builtin_RegExpLastMatchGetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 !guid !35 {
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
  br i1 %i.t, label %bb.b, label %bb.c, !prof !15

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
  br i1 %.not.i.i, label %_ZN2v88internalL34Builtin_Impl_RegExpLastMatchGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL34Builtin_Impl_RegExpLastMatchGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL34Builtin_Impl_RegExpLastMatchGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  ret i64 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Builtin_RegExpLastParenGetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 !guid !36 {
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
end_hunk_0
begin_hunk_1_@_ZN2v88internal31Builtin_RegExpLeftContextGetterEiPmPNS0_7IsolateE:bb.a
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
  br i1 %i.t, label %bb.b, label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, !prof !15

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
  br i1 %i.ai, label %bb.c, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !15

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
  br i1 %.not.i.i, label %_ZN2v88internalL36Builtin_Impl_RegExpLeftContextGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL36Builtin_Impl_RegExpLeftContextGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL36Builtin_Impl_RegExpLeftContextGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  ret i64 %i.at
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal32Builtin_RegExpRightContextGetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 !guid !38 {
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
  br i1 %i.t, label %bb.b, label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, !prof !15

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
  br i1 %i.ai, label %bb.c, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !15

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
  %.not.i.i = icmp eq ptr %i.aw, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL37Builtin_Impl_RegExpRightContextGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL37Builtin_Impl_RegExpRightContextGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL37Builtin_Impl_RegExpRightContextGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  ret i64 %i.at
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal20Builtin_RegExpEscapeEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 !guid !92 {
bb.a:
  %i.a = alloca [2200 x i8], align 16             ; 4 uses
  %3 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 23 uses
  %i.b = alloca [2200 x i8], align 16             ; 4 uses
  %4 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 32 uses
  %5 = alloca [1 x %"class.v8::internal::DirectHandle.462"], align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 4 uses
  %9 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 9 uses
  %10 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 4 uses
  %11 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 9 uses
  %12 = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8
  %.not.i42.i = icmp sgt i32 %0, 5
  %i.j = ptrtoint ptr %1 to i64
  %i.k = shl nuw nsw i64 %12, 3
  %reass.sub = sub i64 %i.j, %i.k
  %i.l = add i64 %reass.sub, 48
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i42.i, ptr %i.m, ptr %i.n ; 3 uses
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 164) #11
  %i.o = load i64, ptr %.sroa.0.0.i.i, align 8    ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 5 uses
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp ult i16 %i.v, 128
  br i1 %i.w, label %bb.b, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 6384
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr %i.x, ptr %5, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 16, ptr nonnull %5, i64 1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.cw

bb.b:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.af = load i64, ptr %i.ae, align 8
  br label %bb.cw

bb.d:                                             ; preds = %bb.b
  %i.ag = load atomic volatile i64, ptr %i.r acquire, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2 ; 3 uses
  %i.ak = and i16 %i.aj, -127
  %.not.i = icmp eq i16 %i.ak, 1
  br i1 %.not.i, label %bb.e, label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.al = and i16 %i.aj, 7
  %i.am = icmp eq i16 %i.al, 1
  br i1 %i.am, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.ao, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = add i64 %i.av, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i64, ptr %i.ax acquire, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

bb.h:                                             ; preds = %.thread.i, %bb.e
  %.sroa.0172.0.i = phi i16 [ %i.bb, %.thread.i ], [ %i.aj, %bb.e ]
  %.sroa.012.1.i.i = phi i64 [ %i.av, %.thread.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.bd = and i16 %.sroa.0172.0.i, -121
  %i.be = icmp eq i16 %i.bd, 5
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = add i64 %.sroa.012.1.i.i, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.012.2.i.i = phi i64 [ %i.bi, %bb.i ], [ %.sroa.012.1.i.i, %bb.h ]
  %i.bj = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.bm = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bm, %bb.k ], [ %i.bj, %bb.j ] ; 3 uses
  %i.bn = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bo = add i64 %i.bn, 8
  %i.bp = inttoptr i64 %i.bo to ptr
  store ptr %i.bp, ptr %i.c, align 8
  store i64 %.sroa.012.2.i.i, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, %bb.g, %bb.d
  %.sroa.0177.1.i = phi ptr [ %i.bc, %bb.g ], [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %.sroa.0.0.i.i, %bb.d ] ; 3 uses
  %i.bq = load i64, ptr %.sroa.0177.1.i, align 8
  %i.br = add i64 %i.bq, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2
  %i.bx = and i16 %i.bw, 8
  %.not464.i = icmp eq i16 %i.bx, 0
  br i1 %.not464.i, label %bb.az, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.by = load i64, ptr %.sroa.0177.1.i, align 8
  %i.bz = add i64 %i.by, -1
  %i.ca = inttoptr i64 %i.bz to ptr               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !94, !noalias !93
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !noalias !95
  %i.cd = load atomic volatile i64, ptr %i.ca acquire, align 8, !noalias !96
  %i.ce = add i64 %i.cd, 11
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i16, ptr %i.cf monotonic, align 2, !noalias !96
  %i.ch = and i16 %i.cg, 15
  switch i16 %i.ch, label %bb.q [
    i16 8, label %bb.m
    i16 0, label %bb.n
    i16 9, label %bb.r
    i16 1, label %bb.r
    i16 10, label %bb.o
    i16 2, label %bb.p
    i16 11, label %bb.r
    i16 3, label %bb.r
    i16 13, label %bb.r
    i16 5, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.o:                                             ; preds = %bb.l
  %i.ck = tail call noundef ptr @_ZNK2v88internal21ExternalOneByteString8GetCharsEv(ptr noundef nonnull align 4 dereferenceable(32) %i.ca), !noalias !97
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.p:                                             ; preds = %bb.l
  %i.cl = tail call noundef ptr @_ZNK2v88internal21ExternalTwoByteString8GetCharsEv(ptr noundef nonnull align 4 dereferenceable(32) %i.ca), !noalias !98
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.q:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #10, !noalias !99
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0192.sroa.0.0.ph.i = phi ptr [ %i.cl, %bb.p ], [ %i.ck, %bb.o ], [ %i.cj, %bb.n ], [ %i.ci, %bb.m ]
  %.sroa.0192.sroa.8.0.ph.i = phi i32 [ 2, %bb.p ], [ 1, %bb.o ], [ 2, %bb.n ], [ 1, %bb.m ]
  store ptr %.sroa.0192.sroa.0.0.ph.i, ptr %9, align 8
  %.sroa.0192.sroa.7.0..sroa_idx329.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.cc, ptr %.sroa.0192.sroa.7.0..sroa_idx329.i, align 8
  %.sroa.0192.sroa.8.0..sroa_idx335.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.0192.sroa.8.0.ph.i, ptr %.sroa.0192.sroa.8.0..sroa_idx335.i, align 4
  %.sroa.0192.sroa.9.0..sroa_idx341.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %.sroa.0192.sroa.9.0..sroa_idx341.i, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i

bb.r:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %9, ptr noundef nonnull align 4 dereferenceable(16) %i.ca, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i: ; preds = %bb.r, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !range !17, !noundef !18
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.s, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i

bb.s:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i
  store i8 0, ptr %i.cm, align 8
  %i.cp = load ptr, ptr %6, align 8               ; 2 uses
end_hunk_1
