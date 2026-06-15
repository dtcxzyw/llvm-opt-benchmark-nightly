inline.NumInlined: 83
inline.NumDeleted: 27
begin_hunk_0_@_ZNK6icu_7810Normalizer5cloneEv:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7810NormalizerE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.f = load i32, ptr %i.e, align 8
  store i32 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4
  store i32 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #9, !inline_history !7
  store ptr %i.p, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8
  store i32 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.v = load i32, ptr %i.u, align 4
  store i32 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.x) #9
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = load i32, ptr %i.z, align 8
  store i32 %i.aa, ptr %i.y, align 8
  tail call void @_ZN6icu_7810Normalizer4initEv(ptr noundef nonnull align 8 dereferenceable(116) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7810Normalizer8hashCodeEv(ptr noundef nonnull align 8 dereferenceable(116) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add nsw i32 %i.h, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add nsw i32 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = tail call noundef i32 @_ZNK6icu_7813UnicodeString10doHashCodeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.m) #9
  %i.o = add nsw i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add nsw i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add nsw i32 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.u, %i.w
  ret i32 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7810NormalizereqERKS0_(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(116) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.o) #9
  br i1 %i.s, label %bb.e, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i16, ptr %i.u, align 8              ; 3 uses
  %i.w = and i16 %i.v, 1
  %.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load i16, ptr %i.x, align 8
  %i.z = trunc i16 %i.y to i1
  br i1 %i.z, label %bb.h, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp slt i16 %i.v, 0
  %i.ab = ashr i16 %i.v, 5
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = select i1 %i.aa, i32 %i.ae, i32 %i.ac   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load i16, ptr %i.ag, align 8            ; 4 uses
  %i.ai = icmp slt i16 %i.ah, 0
  %i.aj = ashr i16 %i.ah, 5
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.am = load i32, ptr %i.al, align 4
  %i.an = select i1 %i.ai, i32 %i.am, i32 %i.ak
  %i.ao = and i16 %i.ah, 1
  %.not9.i = icmp eq i16 %i.ao, 0
  %i.ap = icmp eq i32 %i.af, %i.an
  %or.cond.i = and i1 %.not9.i, %i.ap
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.g
  %i.aq = and i16 %i.ah, 2
  %.not.i.i.i = icmp eq i16 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = select i1 %.not.i.i.i, ptr %i.at, ptr %i.ar
  %i.av = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef %i.au, i32 noundef %i.af) #9
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp eq i32 %i.bc, %i.be
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread:   ; preds = %bb.g, %bb.f, %bb.b, %bb.c, %bb.d, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, %bb.h, %bb.i, %bb.a
  %i.bg = phi i1 [ true, %bb.a ], [ false, %bb.h ], [ false, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %i.bf, %bb.i ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810Normalizer9normalizeERKNS_13UnicodeStringE18UNormalizationModeiRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %6 = alloca %"class.icu_78::FilteredNormalizer2", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 1
  %.not = icmp eq i16 %i.c, 0
  %i.d = load i32, ptr %4, align 4
  %i.e = icmp slt i32 %i.d, 1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  %i.f = load i32, ptr %4, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %4, align 4
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.h, align 8
  %.not26 = icmp eq ptr %0, %3
  %. = select i1 %.not26, ptr %5, ptr %3          ; 4 uses
  %i.i = tail call noundef ptr @_ZN6icu_7818Normalizer2Factory11getInstanceE18UNormalizationModeR10UErrorCode(i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #9 ; 3 uses
  %i.j = load i32, ptr %4, align 4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %2, 32
  %.not28 = icmp eq i32 %i.l, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.m = tail call ptr @uniset_getUnicode32Instance_78(ptr noundef nonnull align 4 dereferenceable(4) %4) #9
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN6icu_7819FilteredNormalizer2E, i64 16), ptr %6, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.i, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.m, ptr %i.o, align 8
  %i.p = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7819FilteredNormalizer29normalizeERKNS_13UnicodeStringERS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %., ptr noundef nonnull align 4 dereferenceable(4) %4) #9 ; 0 uses
  call void @_ZN6icu_7819FilteredNormalizer2D1Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %., ptr noundef nonnull align 4 dereferenceable(4) %4) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %7 = icmp ne ptr %., %5
  %i.u = load i32, ptr %4, align 4
  %i.v = icmp sgt i32 %i.u, 0
  %or.cond33 = select i1 %7, i1 true, i1 %i.v
  br i1 %or.cond33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %.) #9 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %bb.j
  ret void
}

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7819FilteredNormalizer29normalizeERKNS_13UnicodeStringERS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_7819FilteredNormalizer2D1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810Normalizer7composeERKNS_13UnicodeStringEaiRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i8 %1, 0
  %i.a = select i1 %.not, i32 4, i32 5
  tail call void @_ZN6icu_7810Normalizer9normalizeERKNS_13UnicodeStringE18UNormalizationModeiRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.a, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810Normalizer9decomposeERKNS_13UnicodeStringEaiRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i8 %1, 0
  %i.a = select i1 %.not, i32 2, i32 3
  tail call void @_ZN6icu_7810Normalizer9normalizeERKNS_13UnicodeStringE18UNormalizationModeiRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.a, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7810Normalizer10quickCheckERKNS_13UnicodeStringE18UNormalizationModeiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::FilteredNormalizer2", align 8 ; 7 uses
  %i.a = tail call noundef ptr @_ZN6icu_7818Normalizer2Factory11getInstanceE18UNormalizationModeR10UErrorCode(i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #9 ; 3 uses
  %i.b = load i32, ptr %3, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %2, 32
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.e = tail call ptr @uniset_getUnicode32Instance_78(ptr noundef nonnull align 4 dereferenceable(4) %3) #9
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN6icu_7819FilteredNormalizer2E, i64 16), ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.e, ptr %i.g, align 8
  %i.h = call noundef i32 @_ZNK6icu_7819FilteredNormalizer210quickCheckERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #9
  call void @_ZN6icu_7819FilteredNormalizer2D1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ 2, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_ZNK6icu_7819FilteredNormalizer210quickCheckERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i8 @_ZN6icu_7810Normalizer12isNormalizedERKNS_13UnicodeStringE18UNormalizationModeiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::FilteredNormalizer2", align 8 ; 7 uses
  %i.a = tail call noundef ptr @_ZN6icu_7818Normalizer2Factory11getInstanceE18UNormalizationModeR10UErrorCode(i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #9 ; 3 uses
  %i.b = load i32, ptr %3, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %2, 32
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.e = tail call ptr @uniset_getUnicode32Instance_78(ptr noundef nonnull align 4 dereferenceable(4) %3) #9
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN6icu_7819FilteredNormalizer2E, i64 16), ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.e, ptr %i.g, align 8
  %i.h = call noundef signext i8 @_ZNK6icu_7819FilteredNormalizer212isNormalizedERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #9
  call void @_ZN6icu_7819FilteredNormalizer2D1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i8 [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ 0, %bb.a ]
  ret i8 %.0
}

declare noundef signext i8 @_ZNK6icu_7819FilteredNormalizer212isNormalizedERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7810Normalizer11concatenateERKNS_13UnicodeStringES3_RS1_18UNormalizationModeiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %7 = alloca %"class.icu_78::FilteredNormalizer2", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 1
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 1
  %.not29 = icmp eq i16 %i.f, 0
  %i.g = load i32, ptr %5, align 4
  %i.h = icmp slt i32 %i.g, 1
  %or.cond = select i1 %.not29, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #9
  %i.i = load i32, ptr %5, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %5, align 4
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.k, align 8
  %.not31 = icmp eq ptr %1, %2
  %. = select i1 %.not31, ptr %6, ptr %2          ; 5 uses
  %i.l = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %., ptr noundef nonnull align 8 dereferenceable(64) %0) #9 ; 0 uses
  %i.m = call noundef ptr @_ZN6icu_7818Normalizer2Factory11getInstanceE18UNormalizationModeR10UErrorCode(i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %5) #9 ; 3 uses
  %i.n = load i32, ptr %5, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = and i32 %4, 32
  %.not33 = icmp eq i32 %i.p, 0
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.q = call ptr @uniset_getUnicode32Instance_78(ptr noundef nonnull align 4 dereferenceable(4) %5) #9
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN6icu_7819FilteredNormalizer2E, i64 16), ptr %7, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.m, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.q, ptr %i.s, align 8
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7819FilteredNormalizer26appendERNS_13UnicodeStringERKS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(64) %., ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %5) #9 ; 0 uses
  call void @_ZN6icu_7819FilteredNormalizer2D1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.m, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef nonnull align 8 dereferenceable(64) ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %., ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %5) #9 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %8 = icmp ne ptr %., %6
  %i.y = load i32, ptr %5, align 4
  %i.z = icmp sgt i32 %i.y, 0
  %or.cond38 = select i1 %8, i1 true, i1 %i.z
  br i1 %or.cond38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %.) #9 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.d, %bb.k
  ret ptr %2
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7819FilteredNormalizer26appendERNS_13UnicodeStringERKS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7810Normalizer7currentEv(ptr noundef nonnull align 8 dereferenceable(116) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h
  %i.l = icmp slt i32 %i.b, %i.k
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef signext i8 @_ZN6icu_7810Normalizer13nextNormalizeEv(ptr noundef nonnull align 8 dereferenceable(116) %0)
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.n = phi i32 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.o = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef %i.n) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.o, %bb.c ], [ 65535, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7810Normalizer13nextNormalizeEv(ptr noundef nonnull align 8 dereferenceable(116) initializes((40, 44), (112, 116)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = and i16 %i.c, 1
  %.not.i.i = icmp eq i16 %i.d, 0
  %i.e = and i16 %i.c, 30
  %storemerge.i.i = select i1 %.not.i.i, i16 %i.e, i16 2
  store i16 %storemerge.i.i, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i16 %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef %i.h) #9 ; 0 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #9
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.u = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #9
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.y) #9
  %i.z = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #9
  %.not49 = icmp eq i8 %i.ad, 0
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #9 ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef signext i8 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i32 noundef %i.ak) #9
  %.not5 = icmp eq i8 %i.ao, 0
  br i1 %.not5, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.ap = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i32 noundef -1, i32 noundef 1) #9 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.au = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ak) #9 ; 0 uses
  %i.av = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef signext i8 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #9
  %.not4 = icmp eq i8 %i.az, 0
  br i1 %.not4, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %bb.b, %.thread
  %i.ba = load ptr, ptr %i.j, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4
  store i32 %i.bc, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %i.be, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(64) ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #9 ; 0 uses
  %i.bk = load i32, ptr %i.a, align 4
  %i.bl = icmp slt i32 %i.bk, 1
  %i.bm = load i16, ptr %i.b, align 8
  %i.bn = icmp ugt i16 %i.bm, 31
  %narrow = select i1 %i.bl, i1 %i.bn, i1 false
  %i.bo = zext i1 %narrow to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  %.03 = phi i8 [ %i.bo, %.loopexit ], [ 0, %bb.a ]
  ret i8 %.03
}

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7810Normalizer4nextEv(ptr noundef nonnull align 8 dereferenceable(116) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h
  %i.l = icmp slt i32 %i.b, %i.k
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef signext i8 @_ZN6icu_7810Normalizer13nextNormalizeEv(ptr noundef nonnull align 8 dereferenceable(116) %0)
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.n = phi i32 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.o = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef %i.n) #9 ; 2 uses
  %i.p = icmp ult i32 %i.o, 65536
  %i.q = select i1 %i.p, i32 1, i32 2
  %i.r = load i32, ptr %i.a, align 8
  %i.s = add nsw i32 %i.q, %i.r
  store i32 %i.s, ptr %i.a, align 8
  br label %bb.d
end_hunk_0
