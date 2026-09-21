Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simpletz?download=true
inline.NumInlined: 65
inline.NumDeleted: 17
begin_hunk_0_@_ZN6icu_7814SimpleTimeZoneC2EiRKNS_13UnicodeStringEaaaiaaaiR10UErrorCode:bb.a
  store i32 %1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %4, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %5, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %6, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %7, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %8, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %9, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %10, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 3600000, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.q, align 8
  tail call void @_ZN6icu_7814SimpleTimeZone11decodeRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(4) %11)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) initializes((72, 75), (76, 91), (92, 104), (108, 120)) %0, i32 noundef %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4, i32 noundef %5, i32 noundef %6, i8 noundef signext %7, i8 noundef signext %8, i8 noundef signext %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %13) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %3, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %4, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %5, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %6, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %7, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %8, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %9, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %10, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %11, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %12, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.o, align 8
  tail call void @_ZN6icu_7814SimpleTimeZone11decodeRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(4) %13)
  %i.p = icmp eq i32 %12, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %13, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814SimpleTimeZoneC2EiRKNS_13UnicodeStringEaaaiaaaiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext %3, i8 noundef signext %4, i8 noundef signext %5, i32 noundef %6, i8 noundef signext %7, i8 noundef signext %8, i8 noundef signext %9, i32 noundef %10, i32 noundef %11, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %12) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7813BasicTimeZoneC2ERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %2) #13
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN6icu_7814SimpleTimeZoneE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %4, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %5, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %6, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %7, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %8, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %9, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %10, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %11, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.q, align 8
  tail call void @_ZN6icu_7814SimpleTimeZone11decodeRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(4) %12)
  %i.r = icmp eq i32 %11, 0
  br i1 %i.r, label %bb.b, label %_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %12, align 4
  br label %_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit

_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814SimpleTimeZoneC2EiRKNS_13UnicodeStringEaaaiNS0_8TimeModeEaaaiS4_iR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext %3, i8 noundef signext %4, i8 noundef signext %5, i32 noundef %6, i32 noundef %7, i8 noundef signext %8, i8 noundef signext %9, i8 noundef signext %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %14) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7813BasicTimeZoneC2ERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %2) #13
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN6icu_7814SimpleTimeZoneE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %4, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %5, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %6, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %7, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %8, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %9, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %10, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %11, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %12, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %13, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.q, align 8
  tail call void @_ZN6icu_7814SimpleTimeZone11decodeRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(4) %14)
  %i.r = icmp eq i32 %13, 0
  br i1 %i.r, label %bb.b, label %_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %14, align 4
  br label %_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit

_ZN6icu_7814SimpleTimeZone9constructEiaaaiNS0_8TimeModeEaaaiS1_iR10UErrorCode.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7814SimpleTimeZone11decodeRulesER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1               ; 6 uses
  %.not13.i = icmp eq i8 %i.d, 0
  br i1 %.not13.i, label %_ZN6icu_7814SimpleTimeZone15decodeStartRuleER10UErrorCode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp ne i8 %i.f, 0                       ; 2 uses
  %i.h = zext i1 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.h, ptr %i.i, align 8
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 3600000, ptr %i.j, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %3 = load i8, ptr %2, align 8                   ; 2 uses
  %or.cond.i = icmp ugt i8 %3, 11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.n = load i32, ptr %i.m, align 4
  %or.cond15.i = icmp ugt i32 %i.n, 86400000
  %or.cond26 = select i1 %or.cond.i, i1 true, i1 %or.cond15.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load i32, ptr %i.o, align 8
  %or.cond16.i = icmp ugt i32 %i.p, 2
  %or.cond28.a = select i1 %or.cond26, i1 true, i1 %or.cond16.i
  br i1 %or.cond28.a, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2               ; 4 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.t, align 4
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.u = icmp sgt i8 %i.r, 0
  br i1 %i.u, label %thread-pre-split.i.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = sub i8 0, %i.r                           ; 2 uses
  store i8 %i.v, ptr %i.q, align 2
  %i.w = icmp sgt i8 %i.d, 0
  br i1 %i.w, label %thread-pre-split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = sub i8 0, %i.d                           ; 2 uses
  store i8 %i.x, ptr %i.c, align 1
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.j, %bb.i
  %.sink.i = phi i32 [ 4, %bb.j ], [ 3, %bb.i ]
  %i.y = phi i8 [ %i.x, %bb.j ], [ %i.d, %bb.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %.sink.i, ptr %i.z, align 4
  %i.aa = icmp sgt i8 %i.v, 7
  br i1 %i.aa, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.k

thread-pre-split.i.thread:                        ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 2, ptr %i.ab, align 4
  %i.ac = icmp samesign ugt i8 %i.r, 7
  %i.ad = add i8 %i.d, -6
  %or.cond17.i = icmp ult i8 %i.ad, -11
  %or.cond24 = or i1 %i.ac, %or.cond17.i
  br i1 %or.cond24, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %_ZN6icu_7814SimpleTimeZone15decodeStartRuleER10UErrorCode.exit

bb.k:                                             ; preds = %thread-pre-split.i, %.thread.i
  %i.ae = phi i8 [ %i.d, %.thread.i ], [ %i.y, %thread-pre-split.i ] ; 2 uses
  %i.af = icmp slt i8 %i.ae, 1
  br i1 %i.af, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = zext nneg i8 %3 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN6icu_7814SimpleTimeZone17STATICMONTHLENGTHE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp sgt i8 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %_ZN6icu_7814SimpleTimeZone15decodeStartRuleER10UErrorCode.exit

_ZN6icu_7814SimpleTimeZone15decodeStartRuleER10UErrorCode.exit: ; preds = %thread-pre-split.i.thread, %bb.l
  %.pr = load i32, ptr %1, align 4
  %i.ak = icmp slt i32 %.pr, 1
  br i1 %i.ak, label %bb.m, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

_ZN6icu_7814SimpleTimeZone15decodeStartRuleER10UErrorCode.exit.thread: ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.al, align 8
  %.pr22 = load i32, ptr %1, align 4
  %i.am = icmp slt i32 %.pr22, 1
  br i1 %i.am, label %.thread23, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

bb.m:                                             ; preds = %_ZN6icu_7814SimpleTimeZone15decodeStartRuleER10UErrorCode.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.ao = load i8, ptr %i.an, align 1             ; 3 uses
  %i.ap = icmp ne i8 %i.ao, 0                     ; 2 uses
  %i.aq = zext i1 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.aq, ptr %i.ar, align 8
  br i1 %i.ap, label %bb.n, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.o, label %.thread.i4

bb.o:                                             ; preds = %bb.n
  store i32 3600000, ptr %i.as, align 4
  br label %.thread.i4

.thread23:                                        ; preds = %_ZN6icu_7814SimpleTimeZone15decodeStartRuleER10UErrorCode.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.av, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 89
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %.not14.i = icmp eq i8 %.pre.i, 0
  br i1 %.not14.i, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit, label %.thread.i4

.thread.i4:                                       ; preds = %bb.n, %bb.o, %.thread23
  %i.aw = phi i8 [ %.pre.i, %.thread23 ], [ %i.ao, %bb.o ], [ %i.ao, %bb.n ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load i8, ptr %i.ay, align 8             ; 2 uses
  %or.cond.i5 = icmp ugt i8 %i.az, 11
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bb = load i32, ptr %i.ba, align 4
  %or.cond15.i6 = icmp ugt i32 %i.bb, 86400000
  %or.cond30 = select i1 %or.cond.i5, i1 true, i1 %or.cond15.i6
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bd = load i32, ptr %i.bc, align 4
  %or.cond16.i7 = icmp ugt i32 %i.bd, 2
  %or.cond32 = select i1 %or.cond30, i1 true, i1 %or.cond16.i7
  br i1 %or.cond32, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.p

bb.p:                                             ; preds = %.thread.i4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 2             ; 4 uses
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %.thread26.i, label %bb.q

.thread26.i:                                      ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.bh, align 8
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bi = icmp sgt i8 %i.bf, 0
  br i1 %i.bi, label %thread-pre-split.i8.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = sub i8 0, %i.bf                         ; 2 uses
  store i8 %i.bj, ptr %i.be, align 2
  %i.bk = icmp sgt i8 %i.aw, 0
  br i1 %i.bk, label %thread-pre-split.i8, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = sub i8 0, %i.aw                         ; 2 uses
  store i8 %i.bl, ptr %i.ax, align 1
  br label %thread-pre-split.i8

thread-pre-split.i8:                              ; preds = %bb.s, %bb.r
  %i.bm = phi i8 [ %i.bl, %bb.s ], [ %i.aw, %bb.r ]
  %.sink.i9 = phi i32 [ 4, %bb.s ], [ 3, %bb.r ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %.sink.i9, ptr %i.bn, align 8
  %i.bo = icmp sgt i8 %i.bj, 7
  br i1 %i.bo, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.t

thread-pre-split.i8.thread:                       ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 2, ptr %i.bp, align 8
  %i.bq = icmp samesign ugt i8 %i.bf, 7
  %i.br = add i8 %i.aw, -6
  %or.cond17.i10 = icmp ult i8 %i.br, -11
  %or.cond = or i1 %i.bq, %or.cond17.i10
  br i1 %or.cond, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

bb.t:                                             ; preds = %thread-pre-split.i8, %.thread26.i
  %i.bs = phi i8 [ %i.bm, %thread-pre-split.i8 ], [ %i.aw, %.thread26.i ] ; 2 uses
  %i.bt = icmp slt i8 %i.bs, 1
  br i1 %i.bt, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = zext nneg i8 %i.az to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZN6icu_7814SimpleTimeZone17STATICMONTHLENGTHE, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp sgt i8 %i.bs, %i.bw
  br i1 %i.bx, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split: ; preds = %.thread.i4, %thread-pre-split.i8, %bb.t, %bb.u, %thread-pre-split.i8.thread, %bb.k, %bb.l, %thread-pre-split.i, %thread-pre-split.i.thread, %bb.f
  store i32 1, ptr %1, align 4
  br label %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit

_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit: ; preds = %_ZN6icu_7814SimpleTimeZone13decodeEndRuleER10UErrorCode.exit.sink.split, %thread-pre-split.i8.thread, %_ZN6icu_7814SimpleTimeZone15decodeStartRuleER10UErrorCode.exit.thread, %bb.a, %_ZN6icu_7814SimpleTimeZone15decodeStartRuleER10UErrorCode.exit, %bb.m, %.thread23, %bb.u
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814SimpleTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) initializes((0, 8), (120, 121)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN6icu_7814SimpleTimeZoneE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #13, !inline_history !5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #13, !inline_history !5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #13, !inline_history !5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN6icu_7814SimpleTimeZone21deleteTransitionRulesEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.t) #13, !inline_history !5
  br label %_ZN6icu_7814SimpleTimeZone21deleteTransitionRulesEv.exit

_ZN6icu_7814SimpleTimeZone21deleteTransitionRulesEv.exit: ; preds = %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.y, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  tail call void @_ZN6icu_7813BasicTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814SimpleTimeZone21deleteTransitionRulesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) initializes((120, 121)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.t) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.y, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813BasicTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814SimpleTimeZoneD0Ev(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 8), (120, 121)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN6icu_7814SimpleTimeZoneE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #13, !inline_history !6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #13, !inline_history !6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #13, !inline_history !6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN6icu_7814SimpleTimeZoneD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.t) #13, !inline_history !6
  br label %_ZN6icu_7814SimpleTimeZoneD2Ev.exit

_ZN6icu_7814SimpleTimeZoneD2Ev.exit:              ; preds = %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.y, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  tail call void @_ZN6icu_7813BasicTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(160) %0) #13, !inline_history !7
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #5
end_hunk_0
