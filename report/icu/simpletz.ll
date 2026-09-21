Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/simpletz?download=true
inline.NumInlined: 61
inline.NumDeleted: 17
begin_hunk_0_@_ZN6icu_7814SimpleTimeZoneC2EiRKNS_13UnicodeStringEaaaiaaaiR10UErrorCode:bb.a
  store i32 %1, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %3, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %4, ptr %i.e, align 1, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %5, ptr %i.f, align 2, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %6, ptr %i.g, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %7, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %8, ptr %i.j, align 1, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %9, ptr %i.k, align 2, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %10, ptr %i.l, align 4, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.m, align 4, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 3600000, ptr %i.n, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.p, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.q, align 8, !tbaa !30
  tail call void @_ZN6icu_7814SimpleTimeZone11decodeRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(4) %11)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) initializes((72, 75), (76, 91), (92, 104), (108, 120)) %0, i32 noundef %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4, i32 noundef %5, i32 noundef %6, i8 noundef signext %7, i8 noundef signext %8, i8 noundef signext %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %13) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %1, ptr %i.a, align 4, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %2, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %3, ptr %i.c, align 1, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %4, ptr %i.d, align 2, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %5, ptr %i.e, align 4, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %6, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %7, ptr %i.g, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %8, ptr %i.h, align 1, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %9, ptr %i.i, align 2, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %10, ptr %i.j, align 4, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %11, ptr %i.k, align 4, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %12, ptr %i.l, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.n, align 4, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.o, align 8, !tbaa !30
  tail call void @_ZN6icu_7814SimpleTimeZone11decodeRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(4) %13)
  %i.p = icmp eq i32 %12, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %13, align 4, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7814SimpleTimeZoneC2EiRKNS_13UnicodeStringEaaaiaaaiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext %3, i8 noundef signext %4, i8 noundef signext %5, i32 noundef %6, i8 noundef signext %7, i8 noundef signext %8, i8 noundef signext %9, i32 noundef %10, i32 noundef %11, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %12) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_7813BasicTimeZoneC2ERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN6icu_7814SimpleTimeZoneE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %1, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %3, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %4, ptr %i.e, align 1, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %5, ptr %i.f, align 2, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %6, ptr %i.g, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %7, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %8, ptr %i.j, align 1, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %9, ptr %i.k, align 2, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %10, ptr %i.l, align 4, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.m, align 4, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %11, ptr %i.n, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.p, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.q, align 8, !tbaa !30
  tail call void @_ZN6icu_7814SimpleTimeZone11decodeRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(4) %12)
  %i.r = icmp eq i32 %11, 0
  br i1 %i.r, label %bb.b, label %_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %12, align 4, !tbaa !40
  br label %_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit

_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7814SimpleTimeZoneC2EiRKNS_13UnicodeStringEaaaiNS0_8TimeModeEaaaiS4_iR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext %3, i8 noundef signext %4, i8 noundef signext %5, i32 noundef %6, i32 noundef %7, i8 noundef signext %8, i8 noundef signext %9, i8 noundef signext %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %14) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_7813BasicTimeZoneC2ERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN6icu_7814SimpleTimeZoneE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %1, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %3, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %4, ptr %i.e, align 1, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %5, ptr %i.f, align 2, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %6, ptr %i.g, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %7, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %8, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %9, ptr %i.j, align 1, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %10, ptr %i.k, align 2, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %11, ptr %i.l, align 4, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %12, ptr %i.m, align 4, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %13, ptr %i.n, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.p, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.q, align 8, !tbaa !30
  tail call void @_ZN6icu_7814SimpleTimeZone11decodeRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(4) %14)
  %i.r = icmp eq i32 %13, 0
  br i1 %i.r, label %bb.b, label %_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %14, align 4, !tbaa !40
  br label %_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit

_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_7814SimpleTimeZone11decodeRulesER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !40
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23    ; 6 uses
  %.not13.i = icmp eq i8 %i.d, 0
  br i1 %.not13.i, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.f = load i8, ptr %i.e, align 1, !tbaa !36
  %i.g = icmp ne i8 %i.f, 0                       ; 2 uses
  %i.h = zext i1 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.h, ptr %i.i, align 8, !tbaa !28
  br i1 %i.g, label %bb.d, label %2

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %2

bb.e:                                             ; preds = %bb.d
  store i32 3600000, ptr %i.j, align 4, !tbaa !31
  br label %2

2:                                                ; preds = %bb.e, %bb.d, %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %4 = load i8, ptr %3, align 8, !tbaa !22        ; 2 uses
  %or.cond.i = icmp ugt i8 %4, 11
  br i1 %or.cond.i, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %or.cond15.i = icmp ugt i32 %i.n, 86400000
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load i32, ptr %i.o, align 8
  %or.cond16.i = icmp ugt i32 %i.p, 2
  %or.cond26.a = select i1 %or.cond15.i, i1 true, i1 %or.cond16.i
  br i1 %or.cond26.a, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !24    ; 4 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.t, align 4, !tbaa !29
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.u = icmp sgt i8 %i.r, 0
  br i1 %i.u, label %thread-pre-split.i.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = sub i8 0, %i.r                           ; 2 uses
  store i8 %i.v, ptr %i.q, align 2, !tbaa !24
  %i.w = icmp sgt i8 %i.d, 0
  br i1 %i.w, label %thread-pre-split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = sub i8 0, %i.d                           ; 2 uses
  store i8 %i.x, ptr %i.c, align 1, !tbaa !23
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.j, %bb.i
  %.sink.i = phi i32 [ 4, %bb.j ], [ 3, %bb.i ]
  %i.y = phi i8 [ %i.x, %bb.j ], [ %i.d, %bb.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %.sink.i, ptr %i.z, align 4, !tbaa !29
  %i.aa = icmp sgt i8 %i.v, 7
  br i1 %i.aa, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.k

thread-pre-split.i.thread:                        ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 2, ptr %i.ab, align 4, !tbaa !29
  %i.ac = icmp samesign ugt i8 %i.r, 7
  %i.ad = add i8 %i.d, -6
  %or.cond17.i = icmp ult i8 %i.ad, -11
  %or.cond22 = or i1 %i.ac, %or.cond17.i
  br i1 %or.cond22, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.m

bb.k:                                             ; preds = %thread-pre-split.i, %.thread.i
  %i.ae = phi i8 [ %i.d, %.thread.i ], [ %i.y, %thread-pre-split.i ] ; 2 uses
  %i.af = icmp slt i8 %i.ae, 1
  br i1 %i.af, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = zext nneg i8 %4 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN6icu_7814SimpleTimeZone17STATICMONTHLENGTHE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !41
  %i.aj = icmp sgt i8 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.m

bb.m:                                             ; preds = %thread-pre-split.i.thread, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !36  ; 3 uses
  %i.am = icmp ne i8 %i.al, 0                     ; 2 uses
  %i.an = zext i1 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.an, ptr %i.ao, align 8, !tbaa !28
  br i1 %i.am, label %bb.n, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !31
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %.thread.i4

bb.o:                                             ; preds = %bb.n
  store i32 3600000, ptr %i.ap, align 4, !tbaa !31
  br label %.thread.i4

bb.p:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.as, align 8, !tbaa !28
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 89
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !36 ; 2 uses
  %.not14.i = icmp eq i8 %.pre.i, 0
  br i1 %.not14.i, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit, label %.thread.i4

.thread.i4:                                       ; preds = %bb.n, %bb.o, %bb.p
  %i.at = phi i8 [ %.pre.i, %bb.p ], [ %i.al, %bb.o ], [ %i.al, %bb.n ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !35  ; 2 uses
  %or.cond.i5 = icmp ugt i8 %i.aw, 11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ay = load i32, ptr %i.ax, align 4
  %or.cond15.i6 = icmp ugt i32 %i.ay, 86400000
  %or.cond28 = select i1 %or.cond.i5, i1 true, i1 %or.cond15.i6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ba = load i32, ptr %i.az, align 4
  %or.cond16.i7 = icmp ugt i32 %i.ba, 2
  %or.cond30 = select i1 %or.cond28, i1 true, i1 %or.cond16.i7
  br i1 %or.cond30, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %.thread.i4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !37  ; 4 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %.thread26.i, label %bb.r

.thread26.i:                                      ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.be, align 8, !tbaa !30
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bf = icmp sgt i8 %i.bc, 0
  br i1 %i.bf, label %thread-pre-split.i8.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = sub i8 0, %i.bc                         ; 2 uses
  store i8 %i.bg, ptr %i.bb, align 2, !tbaa !37
  %i.bh = icmp sgt i8 %i.at, 0
  br i1 %i.bh, label %thread-pre-split.i8, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = sub i8 0, %i.at                         ; 2 uses
  store i8 %i.bi, ptr %i.au, align 1, !tbaa !36
  br label %thread-pre-split.i8

thread-pre-split.i8:                              ; preds = %bb.t, %bb.s
  %i.bj = phi i8 [ %i.bi, %bb.t ], [ %i.at, %bb.s ]
  %.sink.i9 = phi i32 [ 4, %bb.t ], [ 3, %bb.s ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %.sink.i9, ptr %i.bk, align 8, !tbaa !30
  %i.bl = icmp sgt i8 %i.bg, 7
  br i1 %i.bl, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.u

thread-pre-split.i8.thread:                       ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 2, ptr %i.bm, align 8, !tbaa !30
  %i.bn = icmp samesign ugt i8 %i.bc, 7
  %i.bo = add i8 %i.at, -6
  %or.cond17.i10 = icmp ult i8 %i.bo, -11
  %or.cond = or i1 %i.bn, %or.cond17.i10
  br i1 %or.cond, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

bb.u:                                             ; preds = %thread-pre-split.i8, %.thread26.i
  %i.bp = phi i8 [ %i.bj, %thread-pre-split.i8 ], [ %i.at, %.thread26.i ] ; 2 uses
  %i.bq = icmp slt i8 %i.bp, 1
  br i1 %i.bq, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = zext nneg i8 %i.aw to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZN6icu_7814SimpleTimeZone17STATICMONTHLENGTHE, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !41
  %i.bu = icmp sgt i8 %i.bp, %i.bt
  br i1 %i.bu, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split: ; preds = %.thread.i4, %thread-pre-split.i8, %bb.u, %bb.v, %thread-pre-split.i8.thread, %bb.k, %bb.l, %thread-pre-split.i, %thread-pre-split.i.thread, %bb.f, %2
  store i32 1, ptr %1, align 4, !tbaa !40
  br label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit: ; preds = %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, %thread-pre-split.i8.thread, %bb.a, %bb.m, %bb.p, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7814SimpleTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) initializes((0, 8), (120, 121)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN6icu_7814SimpleTimeZoneE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #14, !inline_history !43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #14, !inline_history !43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #14, !inline_history !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN6icu_7814SimpleTimeZone21deleteTransitionRulesEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.t) #14, !inline_history !43
  br label %_ZN6icu_7814SimpleTimeZone21deleteTransitionRulesEv.exit

_ZN6icu_7814SimpleTimeZone21deleteTransitionRulesEv.exit: ; preds = %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.y, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  tail call void @_ZN6icu_7813BasicTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7814SimpleTimeZone21deleteTransitionRulesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) initializes((120, 121)) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.t) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.y, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7814SimpleTimeZoneD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN6icu_7814SimpleTimeZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #14
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7814SimpleTimeZoneC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_7813BasicTimeZoneC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN6icu_7814SimpleTimeZoneE, i64 16), ptr %0, align 8, !tbaa !9
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN6icu_7814SimpleTimeZoneaSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6icu_788TimeZoneaSERKS0_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.c, ptr %i.d, align 4, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.i, ptr %i.j, align 1, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.l = load i8, ptr %i.k, align 2, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %i.l, ptr %i.m, align 2, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.p = load <2 x i32>, ptr %i.n, align 4, !tbaa !41
  store <2 x i32> %i.p, ptr %i.o, align 4, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load i8, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.t, ptr %i.u, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.w = load i8, ptr %i.v, align 1, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %i.w, ptr %i.x, align 1, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.z = load i8, ptr %i.y, align 2, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !38
  %i.ag = load <2 x i32>, ptr %i.q, align 4, !tbaa !47
  store <2 x i32> %i.ag, ptr %i.r, align 4, !tbaa !47
  %i.ah = load <2 x i32>, ptr %i.ab, align 4, !tbaa !48
  store <2 x i32> %i.ah, ptr %i.ac, align 4, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 116
end_hunk_0
