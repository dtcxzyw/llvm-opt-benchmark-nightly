Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/regexp-compiler?download=true
inline.NumInlined: 1535
inline.NumDeleted: 508
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN2v88internal10ActionNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb:bb.a
bb.g:                                             ; preds = %bb.f, %_ZN2v88internal10RegExpNode10SaveBMInfoEPNS0_19BoyerMooreLookaheadEbi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10ActionNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %.critedge [
    i32 0, label %bb.b
    i32 4, label %bb.c
    i32 6, label %bb.d
    i32 9, label %_ZNSt8optionalIN2v84base5FlagsINS0_8internal10RegExpFlagEiiEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #26
  br label %bb.d

_ZNSt8optionalIN2v84base5FlagsINS0_8internal10RegExpFlagEiiEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i32, ptr %i.p, align 8
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #26
  store i32 %.sroa.0.0.copyload.i, ptr %i.o, align 4
  br label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #26
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.a, %_ZNSt8optionalIN2v84base5FlagsINS0_8internal10RegExpFlagEiiEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13AssertionNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(68) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  %or.cond = and i1 %5, %i.c
  br i1 %or.cond, label %_ZN2v88internal10RegExpNode10SaveBMInfoEPNS0_19BoyerMooreLookaheadEbi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %3, -1
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %1, i32 noundef %2, i32 noundef %i.f, ptr noundef %4, i1 noundef zeroext %5) #26
  %i.j = icmp eq i32 %2, 0
  br i1 %i.j, label %bb.c, label %_ZN2v88internal10RegExpNode10SaveBMInfoEPNS0_19BoyerMooreLookaheadEbi.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = zext i1 %5 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  store ptr %4, ptr %i.m, align 8
  br label %_ZN2v88internal10RegExpNode10SaveBMInfoEPNS0_19BoyerMooreLookaheadEbi.exit

_ZN2v88internal10RegExpNode10SaveBMInfoEPNS0_19BoyerMooreLookaheadEbi.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal28NegativeLookaroundChoiceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17QuickCheckDetails11RationalizeEb(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(61) initializes((52, 60)) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = select i1 %1, i32 255, i32 65535         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.c, align 4
  %i.d = load i32, ptr %0, align 4                ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = select i1 %1, i32 8, i32 16
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.015.lcssa = phi i1 [ false, %bb.a ], [ %spec.select, %bb.b ]
  ret i1 %.015.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.01418 = phi i32 [ 0, %.lr.ph ], [ %i.u, %bb.b ] ; 3 uses
  %.01517 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.h = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.b ]
  %i.i = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.b ]
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = and i32 %i.k, 255
  %.not = icmp ne i32 %i.l, 0
  %spec.select = select i1 %.not, i1 true, i1 %.01517 ; 2 uses
  %i.m = and i32 %i.k, %i.a
  %i.n = shl i32 %i.m, %.01418
  %i.o = or i32 %i.n, %i.h                        ; 2 uses
  store i32 %i.o, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, %i.a
  %i.s = shl i32 %i.r, %.01418
  %i.t = or i32 %i.s, %i.i                        ; 2 uses
  store i32 %i.t, ptr %i.c, align 4
  %i.u = add nuw nsw i32 %.01418, %i.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 256) i32 @_ZN2v88internal10RegExpNode11EatsAtLeastEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %.in.v = select i1 %1, i64 27, i64 26
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.a = load i8, ptr %.in, align 1
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden noundef i16 @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, i1 zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal14LoopChoiceNode24EatsAtLeastFromLoopEntryEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0) #26
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %i.f, i64 27
  %i.g = load i8, ptr %.in.i, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.in.i10 = getelementptr inbounds nuw i8, ptr %i.j, i64 27
  %1 = load i8, ptr %.in.i10, align 1
  %2 = zext i8 %1 to i32                          ; 4 uses
  %3 = sub nsw i32 %i.h, %2
  %.in.i11.a = getelementptr inbounds nuw i8, ptr %i.f, i64 26
  %i.k = load i8, ptr %.in.i11.a, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = sub nsw i32 %i.l, %2                     ; 3 uses
  %4 = icmp sgt i32 %i.m, -1
  %5 = sext i1 %4 to i8
  %6 = icmp ult i32 %i.m, 256
  %7 = trunc nuw i32 %i.m to i8
  %.0.i.i13 = select i1 %6, i8 %7, i8 %5, !prof !20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %8 = icmp sgt i32 %i.o, -1
  %9 = sext i1 %8 to i8
  %10 = icmp ult i32 %i.o, 256
  %11 = trunc nuw i32 %i.o to i8
  %.0.i.i14 = select i1 %10, i8 %11, i8 %9, !prof !20 ; 2 uses
  %12 = zext i8 %.0.i.i14 to i32                  ; 2 uses
  %i.p = tail call i32 @llvm.smax.i32(i32 %3, i32 0) ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, %12
  %i.r = add nuw nsw i32 %i.q, %2                 ; 2 uses
  %i.s = icmp samesign ult i32 %i.r, 256
  %i.t = trunc nuw i32 %i.r to i8
  %.0.i.i16 = select i1 %i.s, i8 %i.t, i8 -1, !prof !20 ; 2 uses
  %13 = icmp ne i8 %.0.i.i14, 0
  %14 = icmp ne i8 %.0.i.i13, 0
  %or.cond = and i1 %13, %14
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = zext i8 %.0.i.i13 to i32
  %i.v = add nsw i32 %12, -1
  %i.w = mul nuw nsw i32 %i.v, %i.p
  %15 = add nuw nsw i32 %i.u, %2
  %i.x = add nuw nsw i32 %15, %i.w                ; 2 uses
  %i.y = icmp samesign ult i32 %i.x, 256
  %i.z = trunc nuw i32 %i.x to i8
  %.0.i.i18 = select i1 %i.y, i8 %i.z, i8 -1, !prof !20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.in.i19 = getelementptr inbounds nuw i8, ptr %i.j, i64 26
  %i.aa = load i8, ptr %.in.i19, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.4.0 = phi i8 [ 0, %bb.a ], [ %.0.i.i16, %bb.d ], [ %.0.i.i16, %bb.c ]
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ %i.aa, %bb.d ], [ %.0.i.i18, %bb.c ]
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i16
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0 to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10RegExpNode14EmitQuickCheckEPNS0_14RegExpCompilerEPNS0_5TraceES5_bPNS0_5LabelEPNS0_17QuickCheckDetailsEbPNS0_10ChoiceNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %6, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.d = load i16, ptr %i.c, align 2
  %.mask = and i16 %i.d, 255
  %i.e = icmp eq i16 %.mask, 0
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %6, ptr noundef %1, i32 noundef 0, i1 noundef zeroext %i.e) #26
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.j = load i8, ptr %i.i, align 4, !range !23, !noundef !24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !range !23, !noundef !24
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = select i1 %i.n, i32 255, i32 65535       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store i32 0, ptr %i.q, align 4
  %i.r = load i32, ptr %6, align 4                ; 5 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit.thread

.lr.ph.i:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.u = select i1 %i.n, i32 8, i32 16
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.01418.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ai, %bb.d ] ; 3 uses
  %.01517.i = phi i1 [ false, %.lr.ph.i ], [ %spec.select.i, %bb.d ]
  %i.v = phi i32 [ 0, %.lr.ph.i ], [ %i.ac, %bb.d ]
  %i.w = phi i32 [ 0, %.lr.ph.i ], [ %i.ah, %bb.d ]
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %indvars.iv.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = and i32 %i.y, 255
  %.not.i = icmp ne i32 %i.z, 0
  %spec.select.i = select i1 %.not.i, i1 true, i1 %.01517.i ; 2 uses
  %i.aa = and i32 %i.y, %i.o
  %i.ab = shl i32 %i.aa, %.01418.i
  %i.ac = or i32 %i.ab, %i.v                      ; 7 uses
  store i32 %i.ac, ptr %i.p, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, %i.o
  %i.ag = shl i32 %i.af, %.01418.i
  %i.ah = or i32 %i.ag, %i.w                      ; 6 uses
  store i32 %i.ah, ptr %i.q, align 4
  %i.ai = add nuw nsw i32 %.01418.i, %i.u
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit, label %bb.d, !llvm.loop !2

_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit: ; preds = %bb.d
  br i1 %spec.select.i, label %bb.e, label %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit.thread

bb.e:                                             ; preds = %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8            ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = load i32, ptr %i.al, align 8
  %.not = icmp eq i32 %i.am, %i.r
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ao = load i16, ptr %i.an, align 2
  %.mask60 = and i16 %i.ao, 255
  %i.ap = icmp eq i16 %.mask60, 0
  %.in.v.i = select i1 %i.ap, i64 27, i64 26
  %.in.i = getelementptr inbounds nuw i8, ptr %8, i64 %.in.v.i
  %i.aq = load i8, ptr %.in.i, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = load i32, ptr %3, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = xor i1 %4, true
  tail call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i32 noundef %i.as, ptr noundef %i.au, i1 noundef zeroext %i.av, i32 noundef %i.r, i32 noundef %i.ar) #26
  %.pre = load i32, ptr %6, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = phi i32 [ %.pre, %bb.f ], [ %i.r, %bb.e ]
  switch i32 %i.aw, label %bb.k [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ax = load i8, ptr %i.l, align 8, !range !23, !noundef !24
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = select i1 %i.ay, i32 255, i32 65535     ; 2 uses
  %i.ba = and i32 %i.az, %i.ac                    ; 2 uses
  %i.bb = icmp ne i32 %i.ba, %i.az
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bc = load i8, ptr %i.l, align 8, !range !23, !noundef !24
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = and i32 %i.ac, 65535
  %i.bf = icmp ne i32 %i.be, 65535
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.i
  %i.bg = icmp ne i32 %i.ac, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.053 = phi i32 [ %i.ba, %bb.h ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ] ; 2 uses
  %.1 = phi i1 [ %i.bb, %bb.h ], [ %i.bf, %bb.j ], [ %i.bg, %bb.k ] ; 2 uses
  br i1 %7, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i32 noundef %i.ah, i32 noundef %.053, ptr noundef %5) #26
  br label %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i32 noundef %i.ah, ptr noundef %5) #26
  br label %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit.thread

bb.p:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %.1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 160
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i32 noundef %i.ah, i32 noundef %.053, ptr noundef %i.bn) #26
  br label %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i32 noundef %i.ah, ptr noundef %i.bn) #26
  br label %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit.thread

_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit.thread: ; preds = %bb.c, %bb.o, %bb.n, %bb.r, %bb.q, %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit, %bb.b, %bb.a
  %.052 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZN2v88internal17QuickCheckDetails11RationalizeEb.exit ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.n ], [ true, %bb.o ], [ false, %bb.c ]
  ret i1 %.052
}

declare void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8TextNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 zeroext %4) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i8, ptr %i.b, align 8, !range !23, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.thread187, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4                ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE9VisitTextEPNS0_8TextNodeE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv.i ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.p = icmp eq i32 %.sroa.3.0.copyload.i, 1
  br i1 %i.p, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = tail call noundef zeroext i1 @_ZN2v88internal17RegExpClassRanges11is_standardEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0.copyload.i, ptr noundef %i.q) #26
  br i1 %i.r, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.l, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 8
  %i.u = tail call noundef ptr @_ZN2v88internal12CharacterSet6rangesEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %i.s) #26
  %i.v = load ptr, ptr %i.l, align 8
  tail call void @_ZN2v88internal14CharacterRange18AddCaseEquivalentsEPNS0_7IsolateEPNS0_4ZoneEPNS0_8ZoneListIS1_EEb(ptr noundef %.val, ptr noundef %i.v, ptr noundef %i.u, i1 noundef zeroext %i.d) #26
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE.exit.loopexit, label %bb.c, !llvm.loop !10

_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE.exit.loopexit: ; preds = %.critedge.i
  %.val.i.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE.exit

_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE.exit: ; preds = %_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE.exit.loopexit, %bb.a, %bb.b
  %.val.i = phi ptr [ %.val.i.pre, %_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE.exit.loopexit ], [ %.val, %bb.a ], [ %.val, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #26
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE.exit
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !23, !noundef !24
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.15) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.ae, align 8
  br label %_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14EnsureAnalyzedEPNS0_10RegExpNodeE.exit

bb.i:                                             ; preds = %_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 25 ; 4 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = and i8 %i.ag, 3
  %or.cond.not.i8 = icmp eq i8 %i.ah, 0
  br i1 %or.cond.not.i8, label %bb.j, label %_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14EnsureAnalyzedEPNS0_10RegExpNodeE.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = or disjoint i8 %i.ag, 1
  store i8 %i.ai, ptr %i.af, align 1
  %i.aj = load ptr, ptr %i.x, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(28) %0) #26, !inline_history !14
  %i.am = load i8, ptr %i.af, align 1
  %i.an = and i8 %i.am, -4
  %i.ao = or disjoint i8 %i.an, 2
  store i8 %i.ao, ptr %i.af, align 1
  br label %_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14EnsureAnalyzedEPNS0_10RegExpNodeE.exit

_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14EnsureAnalyzedEPNS0_10RegExpNodeE.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load i32, ptr %i.ap, align 8
  %.not = icmp eq i32 %.val7, 0
  br i1 %.not, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_121EatsAtLeastPropagator9VisitTextEPNS0_8TextNodeE.exit

bb.k:                                             ; preds = %_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14EnsureAnalyzedEPNS0_10RegExpNodeE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i, label %_ZN2v88internal8TextNode16CalculateOffsetsEv.exit

.lr.ph.preheader.i:                               ; preds = %bb.k
  %wide.trip.count.i9 = zext nneg i32 %i.at to i64
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZNK2v88internal11TextElement6lengthEv.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i12, %_ZNK2v88internal11TextElement6lengthEv.exit.i ] ; 2 uses
  %.089.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.bg, %_ZNK2v88internal11TextElement6lengthEv.exit.i ] ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv.i11 ; 3 uses
  store i32 %.089.i, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  switch i32 %i.az, label %bb.n [
    i32 0, label %bb.l
    i32 1, label %_ZNK2v88internal11TextElement6lengthEv.exit.i
  ]

bb.l:                                             ; preds = %.lr.ph.i10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp ult i64 %i.bd, 2147483648
  br i1 %i.be, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i:   ; preds = %bb.l
  %i.bf = trunc nuw nsw i64 %i.bd to i32
  br label %_ZNK2v88internal11TextElement6lengthEv.exit.i

bb.n:                                             ; preds = %.lr.ph.i10
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZNK2v88internal11TextElement6lengthEv.exit.i:    ; preds = %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i, %.lr.ph.i10
  %.0.i.i = phi i32 [ %i.bf, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i ], [ %i.az, %.lr.ph.i10 ]
  %i.bg = add nuw nsw i32 %.0.i.i, %.089.i
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %indvars.iv.next.i12, %wide.trip.count.i9
  br i1 %exitcond.not.i13, label %_ZN2v88internal8TextNode16CalculateOffsetsEv.exit, label %.lr.ph.i10, !llvm.loop !13

_ZN2v88internal8TextNode16CalculateOffsetsEv.exit: ; preds = %_ZNK2v88internal11TextElement6lengthEv.exit.i, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bi = load i8, ptr %i.bh, align 8, !range !23, !noundef !24
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %_ZN2v88internal12_GLOBAL__N_121EatsAtLeastPropagator9VisitTextEPNS0_8TextNodeE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8TextNode16CalculateOffsetsEv.exit
  %i.bk = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = load ptr, ptr %i.bk, align 8
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr [16 x i8], ptr %i.bn, i64 %i.bo ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bq, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.bp, i64 -12
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4 ; 2 uses
  switch i32 %.sroa.4.0.copyload.i.i, label %bb.r [
    i32 0, label %bb.p
    i32 1, label %_ZN2v88internal8TextNode6LengthEv.exit.i
  ]

bb.p:                                             ; preds = %bb.o
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.bp, i64 -8
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 2147483648
  br i1 %i.bt, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i.i, label %bb.q, !prof !20

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i.i: ; preds = %bb.p
  %i.bu = trunc nuw nsw i64 %i.bs to i32
  br label %_ZN2v88internal8TextNode6LengthEv.exit.i

bb.r:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal8TextNode6LengthEv.exit.i:         ; preds = %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i.i, %bb.o
  %.0.i.i.i = phi i32 [ %i.bu, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.o ]
  %i.bv = add nsw i32 %.0.i.i.i, %.sroa.0.0.copyload.i.i
  %i.bw = load ptr, ptr %i.w, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 27
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nsw i32 %i.bv, %i.bz                ; 3 uses
  %2 = icmp sgt i32 %i.ca, -1
  %3 = sext i1 %2 to i16
  %4 = icmp ult i32 %i.ca, 256
  %i.cb = trunc nuw i32 %i.ca to i16
  %.0.i.i4.i = select i1 %4, i16 %i.cb, i16 %3
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 26
  %.sroa.4.0.insert.ext.i = and i16 %.0.i.i4.i, 255
  %.sroa.0.0.insert.insert.i = mul nuw i16 %.sroa.4.0.insert.ext.i, 257
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.cc, align 2
  br label %_ZN2v88internal12_GLOBAL__N_121EatsAtLeastPropagator9VisitTextEPNS0_8TextNodeE.exit

_ZN2v88internal12_GLOBAL__N_121EatsAtLeastPropagator9VisitTextEPNS0_8TextNodeE.exit: ; preds = %_ZN2v88internal8TextNode6LengthEv.exit.i, %_ZN2v88internal8TextNode16CalculateOffsetsEv.exit, %_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14EnsureAnalyzedEPNS0_10RegExpNodeE.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #24

attributes #0 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }

!llvm.module.flags = !{!15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = distinct !{!4, !22}
!5 = distinct !{!5, !22}
!6 = distinct !{!6, !22}
!7 = distinct !{!7, !22}
!8 = distinct !{!8, !22}
!9 = distinct !{null}
!10 = distinct !{!10, !22}
!11 = distinct !{!11, !22}
!12 = distinct !{!12, !22}
!13 = distinct !{!13, !22}
!14 = distinct !{null}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{ptr @_ZN2v88internal13SeqRegExpNode15FilterSuccessorEiPNS0_14RegExpCompilerE}
!27 = !{!"branch_weights", i32 127, i32 1}
!28 = !{ptr @_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE}
!29 = !{ptr @_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22, !45, !46}
!44 = distinct !{!44, !22, !46, !45}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = !{ptr @_ZN2v88internal10ChoiceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb}
!56 = distinct !{null}
!57 = distinct !{null}
!58 = distinct !{null}
!59 = distinct !{null, null}
!60 = distinct !{null}
!61 = distinct !{!61, !22}
!62 = distinct !{null}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = !{ptr @_ZN2v88internal20FixedLengthLoopState16GoToLoopTopLabelEPNS0_20RegExpMacroAssemblerE}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = !{ptr @_ZN2v88internal10ChoiceNode26CalculatePreloadCharactersEPNS0_14RegExpCompilerEi}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = !{ptr @_ZN2v88internal20FixedLengthLoopState16BindLoopTopLabelEPNS0_20RegExpMacroAssemblerE}
!82 = !{ptr @_ZN2v88internal20FixedLengthLoopState22BindStepBackwardsLabelEPNS0_20RegExpMacroAssemblerE}
!83 = distinct !{!83, !25}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = !{ptr @_ZN2v88internal10ChoiceNode12SetUpPreLoadEPNS0_14RegExpCompilerEPNS0_5TraceEPNS0_12PreloadStateE, ptr @_ZN2v88internal10ChoiceNode26CalculatePreloadCharactersEPNS0_14RegExpCompilerEi}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !22}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, !22}
!92 = distinct !{!92, !22}
!93 = !{!"branch_weights", i32 255873, i32 127}
!94 = distinct !{null}
!95 = distinct !{null}
!96 = distinct !{!96, !22}
!97 = distinct !{null, null}
!98 = distinct !{!98, !22}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !22}
!101 = distinct !{null}
!102 = distinct !{!102, !22}
!103 = distinct !{!103, !22}
!104 = distinct !{!104, !22}
!105 = distinct !{null}
!106 = distinct !{!106, !22, !107}
!107 = !{!"llvm.loop.peeled.count", i32 1}
!108 = distinct !{null}
end_hunk_1
