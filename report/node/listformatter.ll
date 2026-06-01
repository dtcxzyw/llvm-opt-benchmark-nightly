inline.NumInlined: 294
inline.NumDeleted: 84
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_120createPatternHandlerEPKcRKNS_13UnicodeStringES5_R10UErrorCode:sub_0

bb.x:                                             ; preds = %bb.w
  %i.gr = and i16 %i.gi, 2
  %.not.i.i.i76 = icmp eq i16 %i.gr, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 10
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = select i1 %.not.i.i.i76, ptr %i.gu, ptr %i.gs
  %i.gw = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.gv, i32 noundef %i.gg) #13
  %i.gx = icmp ne i8 %i.gw, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit77

_ZNK6icu_7813UnicodeStringeqERKS0_.exit77:        ; preds = %bb.v, %bb.w, %bb.x
  %.0.i73 = phi i1 [ %i.ga, %bb.v ], [ %i.gx, %bb.x ], [ false, %bb.w ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gz = load i16, ptr %i.gy, align 8            ; 3 uses
  %i.ha = and i16 %i.gz, 1
  %.not.i78 = icmp eq i16 %i.ha, 0
  br i1 %.not.i78, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit77
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hc = load i16, ptr %i.hb, align 8
  %i.hd = trunc i16 %i.hc to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit83

bb.z:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit77
  %i.he = icmp slt i16 %i.gz, 0
  %i.hf = ashr i16 %i.gz, 5
  %i.hg = sext i16 %i.hf to i32
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = select i1 %i.he, i32 %i.hi, i32 %i.hg   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hl = load i16, ptr %i.hk, align 8            ; 4 uses
  %i.hm = icmp slt i16 %i.hl, 0
  %i.hn = ashr i16 %i.hl, 5
  %i.ho = sext i16 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = select i1 %i.hm, i32 %i.hq, i32 %i.ho
  %i.hs = and i16 %i.hl, 1
  %.not9.i80 = icmp eq i16 %i.hs, 0
  %i.ht = icmp eq i32 %i.hj, %i.hr
  %or.cond.i81 = and i1 %.not9.i80, %i.ht
  br i1 %or.cond.i81, label %bb.aa, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit83

bb.aa:                                            ; preds = %bb.z
  %i.hu = and i16 %i.hl, 2
  %.not.i.i.i82 = icmp eq i16 %i.hu, 0
  %i.hv = getelementptr inbounds nuw i8, ptr %12, i64 10
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = select i1 %.not.i.i.i82, ptr %i.hx, ptr %i.hv
  %i.hz = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.hy, i32 noundef %i.hj) #13
  %i.ia = icmp ne i8 %i.hz, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit83

_ZNK6icu_7813UnicodeStringeqERKS0_.exit83:        ; preds = %bb.y, %bb.z, %bb.aa
  %.0.i79 = phi i1 [ %i.hd, %bb.y ], [ %i.ia, %bb.aa ], [ false, %bb.z ] ; 2 uses
  %or.cond5 = or i1 %.0.i73, %.0.i79
  br i1 %or.cond5, label %bb.ab, label %.thread86

.thread86:                                        ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit83
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %.tail93.thread

bb.ab:                                            ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store ptr @.str.9, ptr %15, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %14, i8 noundef signext 1, ptr noundef nonnull %15, i32 noundef -1) #13
  %i.ib = load ptr, ptr %15, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ib) #13, !srcloc !39
  %i.ic = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 304) #13 ; 17 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ie = select i1 %.0.i73, ptr %14, ptr %1
  %i.if = select i1 %.0.i79, ptr %14, ptr %2
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_114PatternHandlerE, i64 16), ptr %i.ic, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store i16 2, ptr %i.ii, align 8
  %i.ij = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.ig, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 2, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 80
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 88
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 96
  store i16 2, ptr %i.im, align 8
  %i.in = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.ik, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 2, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_117ContextualHandlerE, i64 16), ptr %i.ic, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 152
  store ptr @_ZN6icu_7812_GLOBAL__N_121shouldChangeToVavDashERKNS_13UnicodeStringE, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 160
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 168
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ic, i64 176
  store i16 2, ptr %i.ir, align 8
  %i.is = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.ip, ptr noundef nonnull align 8 dereferenceable(64) %i.ie, i32 noundef 2, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ic, i64 232
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ic, i64 240
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ic, i64 248
  store i16 2, ptr %i.iv, align 8
  %i.iw = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.it, ptr noundef nonnull align 8 dereferenceable(64) %i.if, i32 noundef 2, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.af

.tail93.thread:                                   ; preds = %sub_0, %.tail, %sub_1, %sub_190, %.tail88, %sub_195, %.thread86, %bb.t, %.tail93
  %i.ix = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 152) #13 ; 9 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.tail93.thread
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_114PatternHandlerE, i64 16), ptr %i.ix, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  store i16 2, ptr %i.jb, align 8
  %i.jc = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.iz, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 2, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 88
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 96
  store i16 2, ptr %i.jf, align 8
  %i.jg = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.jd, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 2, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %.thread, %.tail93.thread, %bb.ae, %bb.t
  %.3 = phi ptr [ %i.ic, %bb.ad ], [ %.0, %bb.t ], [ %i.ix, %bb.ae ], [ null, %.tail93.thread ], [ %i.bo, %.thread ]
  ret ptr %.3
}

declare noundef ptr @_ZNK6icu_786Locale11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_115shouldChangeToEERKNS_13UnicodeStringE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK6icu_7813UnicodeStringixEi.exit37.thread, label %_ZNK6icu_7813UnicodeStringixEi.exit

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %bb.a
  %i.j = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i.i, ptr %i.m, ptr %i.k ; 3 uses
  %i.o = load i16, ptr %i.n, align 2              ; 4 uses
  %i.p = icmp eq i16 %i.o, 104
  br i1 %i.p, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit19

_ZNK6icu_7813UnicodeStringixEi.exit19:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.q = icmp eq i16 %i.o, 72
  %i.r = icmp sgt i32 %i.h, 1
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeStringixEi.exit22, label %_ZNK6icu_7813UnicodeStringixEi.exit40

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %.old1 = icmp sgt i32 %i.h, 1
  br i1 %.old1, label %_ZNK6icu_7813UnicodeStringixEi.exit22, label %_ZNK6icu_7813UnicodeStringixEi.exit43

_ZNK6icu_7813UnicodeStringixEi.exit22:            ; preds = %bb.b, %_ZNK6icu_7813UnicodeStringixEi.exit19
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.t = load i16, ptr %i.s, align 2
  switch i16 %i.t, label %_ZNK6icu_7813UnicodeStringixEi.exit43 [
    i16 105, label %bb.c
    i16 73, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit22, %_ZNK6icu_7813UnicodeStringixEi.exit22
  %i.u = icmp eq i32 %i.h, 2
  br i1 %i.u, label %_ZNK6icu_7813UnicodeStringixEi.exit37.thread, label %_ZNK6icu_7813UnicodeStringixEi.exit28

_ZNK6icu_7813UnicodeStringixEi.exit28:            ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.w = load i16, ptr %i.v, align 2
  switch i16 %i.w, label %_ZNK6icu_7813UnicodeStringixEi.exit37.thread [
    i16 97, label %_ZNK6icu_7813UnicodeStringixEi.exit43
    i16 65, label %_ZNK6icu_7813UnicodeStringixEi.exit43
    i16 101, label %_ZNK6icu_7813UnicodeStringixEi.exit43
    i16 69, label %_ZNK6icu_7813UnicodeStringixEi.exit43
  ]

_ZNK6icu_7813UnicodeStringixEi.exit40:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit19
  %i.x = icmp eq i16 %i.o, 105
  br i1 %i.x, label %_ZNK6icu_7813UnicodeStringixEi.exit37.thread, label %_ZNK6icu_7813UnicodeStringixEi.exit43

_ZNK6icu_7813UnicodeStringixEi.exit43:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit28, %_ZNK6icu_7813UnicodeStringixEi.exit28, %_ZNK6icu_7813UnicodeStringixEi.exit28, %_ZNK6icu_7813UnicodeStringixEi.exit28, %_ZNK6icu_7813UnicodeStringixEi.exit22, %bb.b, %_ZNK6icu_7813UnicodeStringixEi.exit40
  %i.y = icmp eq i16 %i.o, 73
  br label %_ZNK6icu_7813UnicodeStringixEi.exit37.thread

_ZNK6icu_7813UnicodeStringixEi.exit37.thread:     ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit28, %_ZNK6icu_7813UnicodeStringixEi.exit43, %_ZNK6icu_7813UnicodeStringixEi.exit40, %bb.c, %bb.a
  %.0 = phi i1 [ true, %_ZNK6icu_7813UnicodeStringixEi.exit40 ], [ false, %bb.a ], [ true, %bb.c ], [ true, %_ZNK6icu_7813UnicodeStringixEi.exit28 ], [ %i.y, %_ZNK6icu_7813UnicodeStringixEi.exit43 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_115shouldChangeToUERKNS_13UnicodeStringE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNK6icu_7813UnicodeStringixEi.exit

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %bb.a
  %i.j = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i.i, ptr %i.m, ptr %i.k ; 4 uses
  %i.o = load i16, ptr %i.n, align 2              ; 3 uses
  switch i16 %i.o, label %_ZNK6icu_7813UnicodeStringixEi.exit29 [
    i16 111, label %bb.d
    i16 79, label %bb.d
    i16 56, label %bb.d
    i16 104, label %bb.b
  ]

_ZNK6icu_7813UnicodeStringixEi.exit29:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.p = icmp eq i16 %i.o, 72
  %i.q = icmp sgt i32 %i.h, 1                     ; 2 uses
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeStringixEi.exit32, label %_ZNK6icu_7813UnicodeStringixEi.exit35.thread

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %.old1 = icmp sgt i32 %i.h, 1
  br i1 %.old1, label %_ZNK6icu_7813UnicodeStringixEi.exit32, label %.thread48

_ZNK6icu_7813UnicodeStringixEi.exit32:            ; preds = %bb.b, %_ZNK6icu_7813UnicodeStringixEi.exit29
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.s = load i16, ptr %i.r, align 2
  %i.t = add i16 %i.s, -79
  %switch.and = and i16 %i.t, -33
  %switch.selectcmp = icmp eq i16 %switch.and, 0
  br label %bb.d

_ZNK6icu_7813UnicodeStringixEi.exit35.thread:     ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29
  %i.u = icmp eq i16 %i.o, 49
  %or.cond54 = and i1 %i.q, %i.u
  br i1 %or.cond54, label %_ZNK6icu_7813UnicodeStringixEi.exit41, label %.thread48

_ZNK6icu_7813UnicodeStringixEi.exit41:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit35.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.w = load i16, ptr %i.v, align 2
  %i.x = icmp eq i16 %i.w, 49
  br i1 %i.x, label %bb.c, label %.thread48

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit41
  %i.y = icmp eq i32 %i.h, 2
  br i1 %i.y, label %bb.d, label %_ZNK6icu_7813UnicodeStringixEi.exit44

_ZNK6icu_7813UnicodeStringixEi.exit44:            ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = icmp eq i16 %i.aa, 32
  br i1 %i.ab, label %bb.d, label %.thread48

.thread48:                                        ; preds = %bb.b, %_ZNK6icu_7813UnicodeStringixEi.exit44, %_ZNK6icu_7813UnicodeStringixEi.exit41, %_ZNK6icu_7813UnicodeStringixEi.exit35.thread
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit32, %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZNK6icu_7813UnicodeStringixEi.exit, %bb.c, %_ZNK6icu_7813UnicodeStringixEi.exit44, %bb.a, %.thread48
  %.0 = phi i1 [ false, %.thread48 ], [ false, %bb.a ], [ true, %_ZNK6icu_7813UnicodeStringixEi.exit ], [ true, %_ZNK6icu_7813UnicodeStringixEi.exit44 ], [ true, %_ZNK6icu_7813UnicodeStringixEi.exit ], [ true, %_ZNK6icu_7813UnicodeStringixEi.exit ], [ true, %bb.c ], [ %switch.selectcmp, %_ZNK6icu_7813UnicodeStringixEi.exit32 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_121shouldChangeToVavDashERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %i.d = icmp ugt i16 %i.c, 31
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  %i.e = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0) #13
  %i.f = call i32 @uscript_getScript_78(i32 noundef %i.e, ptr noundef nonnull %i.a) #13
  %i.g = icmp ne i32 %i.f, 19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_117ContextualHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(304) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_117ContextualHandlerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #13
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_114PatternHandlerE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.c) #13, !inline_history !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #13, !inline_history !41
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #13, !inline_history !41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_117ContextualHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(304) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_117ContextualHandlerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #13, !inline_history !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #13, !inline_history !42
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_114PatternHandlerE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.c) #13, !inline_history !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #13, !inline_history !43
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(304) %0) #13, !inline_history !43
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZNK6icu_7812_GLOBAL__N_117ContextualHandler5cloneEv(ptr noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::SimpleFormatter", align 8 ; 2 uses
  %2 = alloca %"class.icu_78::SimpleFormatter", align 8 ; 2 uses
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 304) #13 ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g) #13
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_114PatternHandlerE, i64 16), ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.d) #13, !inline_history !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #13, !inline_history !44
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_117ContextualHandlerE, i64 16), ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.l) #13, !inline_history !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.n) #13, !inline_history !45
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #13
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6icu_7812_GLOBAL__N_117ContextualHandler13getTwoPatternERKNS_13UnicodeStringE(ptr noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %.v = select i1 %i.c, i64 160, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.v
  ret ptr %i.d
end_hunk_0
begin_hunk_1_@_ZN6icu_7812_GLOBAL__N_114PatternHandlerD0Ev:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #13, !inline_history !41
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #13, !inline_history !41
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZNK6icu_7812_GLOBAL__N_114PatternHandler5cloneEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 152) #13 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_114PatternHandlerE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.d) #13, !inline_history !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #13, !inline_history !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6icu_7812_GLOBAL__N_114PatternHandler13getTwoPatternERKNS_13UnicodeStringE(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(152) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6icu_7812_GLOBAL__N_114PatternHandler13getEndPatternERKNS_13UnicodeStringE(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(152) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  ret ptr %i.a
}

declare i32 @uscript_getScript_78(i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #4

declare void @_ZN6icu_7831FormattedValueStringBuilderImplC2ENS_22FormattedStringBuilder5FieldE(ptr noundef nonnull align 8 dereferenceable(300), i8) unnamed_addr #4

declare void @_ZN6icu_7831FormattedValueStringBuilderImpl14appendSpanInfoE14UFieldCategoryiiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef i32 @_ZN6icu_7822FormattedStringBuilder6insertEiRKNS_13UnicodeStringENS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), i8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6icu_7831FormattedValueStringBuilderImpl15prependSpanInfoE14UFieldCategoryiiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN6icu_7815SimpleFormatter22getTextWithNoArgumentsEPKDsiPii(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6icu_7813ListFormatter16ListPatternsSink15setAliasedStyleENS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.a = icmp slt i16 %.pre.i, 0
  %i.b = ashr i16 %.pre.i, 5
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = select i1 %i.a, i32 %i.e, i32 %i.c       ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.f, i32 0) ; 2 uses
  %i.g = sub nsw i32 %i.f, %spec.select.i
  %i.h = tail call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @_ZN6icu_78L11aliasPrefixE, i32 noundef 0, i32 noundef 12, i32 noundef %spec.select.i, i32 noundef %i.g) #13 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit:      ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 12                 ; 3 uses
  %.pre.i10 = load i16, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.k = icmp slt i16 %.pre.i10, 0
  %i.l = ashr i16 %.pre.i10, 5
  %i.m = sext i16 %i.l to i32
  %i.n = load i32, ptr %i.d, align 4
  %i.o = select i1 %i.k, i32 %i.n, i32 %i.m       ; 2 uses
  %spec.select.i11 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.o) ; 2 uses
  %i.p = sub nsw i32 %i.o, %spec.select.i11
  %i.q = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 47, i32 noundef %spec.select.i11, i32 noundef %i.p) #13 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %i.s = load i16, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.t = icmp slt i16 %i.s, 0
  %i.u = ashr i16 %i.s, 5
  %i.v = sext i16 %i.u to i32
  %i.w = load i32, ptr %i.d, align 4
  %i.x = select i1 %i.t, i32 %i.w, i32 %i.v
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %.0 = phi i32 [ %i.x, %bb.b ], [ %i.q, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ]
  %i.y = sub nsw i32 %.0, %i.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aa = tail call noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.j, i32 noundef %i.y, ptr noundef nonnull %i.z, i32 noundef 25, i32 noundef 0) #13 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.ab, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

declare noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6icu_7813ListFormatter16ListPatternsSink21handleValueForPatternERNS_13ResourceValueERNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 3 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = icmp ugt i16 %i.d, 31
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load i8, ptr %i.k, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !47
  store i32 0, ptr %i.b, align 4, !noalias !47
  %i.n = load ptr, ptr %1, align 8, !noalias !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !noalias !47
  %i.q = call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) #13, !noalias !47, !inline_history !38
  store ptr %i.q, ptr %5, align 8, !noalias !47
  %i.r = load i32, ptr %i.b, align 4, !noalias !47
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 noundef signext 1, ptr noundef nonnull %5, i32 noundef %i.r) #13
  %i.s = load ptr, ptr %5, align 8, !noalias !47
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.s) #13, !srcloc !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN6icu_7813ListFormatter16ListPatternsSink15setAliasedStyleENS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %6)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !50
  store i32 0, ptr %i.a, align 4, !noalias !50
  %i.t = load ptr, ptr %1, align 8, !noalias !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !50
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %3) #13, !noalias !50, !inline_history !53
  store ptr %i.w, ptr %4, align 8, !noalias !50
  %i.x = load i32, ptr %i.a, align 4, !noalias !50
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 noundef signext 1, ptr noundef nonnull %4, i32 noundef %i.x) #13
  %i.y = load ptr, ptr %4, align 8, !noalias !50
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.y) #13, !srcloc !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.z = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %7) #13 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{ptr @_ZN6icu_7813FormattedListD2Ev}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN6icu_7811ICU_Utility15makeBogusStringEv: argument 0"}
!8 = distinct !{!8, !"_ZN6icu_7811ICU_Utility15makeBogusStringEv"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN6icu_7811ICU_Utility15makeBogusStringEv: argument 0"}
!11 = distinct !{!11, !"_ZN6icu_7811ICU_Utility15makeBogusStringEv"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN6icu_7811ICU_Utility15makeBogusStringEv: argument 0"}
!14 = distinct !{!14, !"_ZN6icu_7811ICU_Utility15makeBogusStringEv"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN6icu_7811ICU_Utility15makeBogusStringEv: argument 0"}
!17 = distinct !{!17, !"_ZN6icu_7811ICU_Utility15makeBogusStringEv"}
!18 = distinct !{null}
!19 = distinct !{ptr @_ZN6icu_7818ListFormatInternalD2Ev, null}
!20 = distinct !{null}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{ptr @_ZN6icu_7813ListFormatter16ListPatternsSinkD2Ev}
!24 = distinct !{ptr @_ZN6icu_7813ListFormatterD2Ev, ptr @_ZN6icu_7818ListFormatInternalD2Ev, null}
!25 = !{ptr @_ZN6icu_7813ListFormatterD2Ev}
!26 = !{ptr @_ZNK6icu_7813ListFormatter6formatEPKNS_13UnicodeStringEiRS1_iRiR10UErrorCode, ptr @_ZNK6icu_7813FormattedList8appendToERNS_10AppendableER10UErrorCode}
!27 = !{ptr @_ZNK6icu_7813ListFormatter6formatEPKNS_13UnicodeStringEiRS1_iRiR10UErrorCode, ptr @_ZN6icu_7813FormattedListD2Ev}
!28 = !{ptr @_ZNK6icu_7813FormattedList8appendToERNS_10AppendableER10UErrorCode}
!29 = !{ptr @_ZNK6icu_7813FormattedList12nextPositionERNS_24ConstrainedFieldPositionER10UErrorCode}
!30 = distinct !{null, null}
!31 = distinct !{!31, !22}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZNK6icu_7815SimpleFormatter22getTextWithNoArgumentsEPii: argument 0"}
!34 = distinct !{!34, !"_ZNK6icu_7815SimpleFormatter22getTextWithNoArgumentsEPii"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNK6icu_7813ResourceValue21getAliasUnicodeStringER10UErrorCode: argument 0"}
!37 = distinct !{!37, !"_ZNK6icu_7813ResourceValue21getAliasUnicodeStringER10UErrorCode"}
!38 = distinct !{null}
!39 = !{i64 2151251350}
!40 = distinct !{!40, !22}
!41 = !{ptr @_ZN6icu_7812_GLOBAL__N_114PatternHandlerD2Ev}
!42 = !{ptr @_ZN6icu_7812_GLOBAL__N_117ContextualHandlerD2Ev}
!43 = !{ptr @_ZN6icu_7812_GLOBAL__N_117ContextualHandlerD2Ev, ptr @_ZN6icu_7812_GLOBAL__N_114PatternHandlerD2Ev}
!44 = distinct !{null, null}
!45 = distinct !{null}
!46 = distinct !{null}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNK6icu_7813ResourceValue21getAliasUnicodeStringER10UErrorCode: argument 0"}
!49 = distinct !{!49, !"_ZNK6icu_7813ResourceValue21getAliasUnicodeStringER10UErrorCode"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!52 = distinct !{!52, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!53 = distinct !{null}
end_hunk_1
