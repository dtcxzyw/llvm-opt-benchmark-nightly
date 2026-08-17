inline.NumInlined: 129
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@unum_setTextAttribute_78:bb.a

declare noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @unum_toPattern_78(ptr noundef %0, i8 noundef signext %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::Char16Ptr", align 8 ; 3 uses
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.c, align 8
  %i.d = icmp eq ptr %2, null
  %i.e = icmp eq i32 %3, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEPDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %2, i32 noundef 0, i32 noundef %3) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #10 ; 4 uses
  %.not20 = icmp eq ptr %i.h, null
  br i1 %.not20, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not22 = icmp eq i8 %1, 0
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 552
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef nonnull align 8 dereferenceable(64) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %5) #10 ; 0 uses
  br label %.thread25

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 544
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(64) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %5) #10 ; 0 uses
  br label %.thread25

bb.i:                                             ; preds = %bb.e
  %i.p = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7821RuleBasedNumberFormatE, i64 0) #10 ; 3 uses
  %.not21 = icmp eq ptr %i.p, null
  br i1 %.not21, label %.thread25, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(336) %i.p) #10
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.thread25

.thread25:                                        ; preds = %bb.d, %bb.j, %bb.i, %bb.g, %bb.h
  store ptr %2, ptr %7, align 8
  %i.u = call noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 %7, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #10
  %i.v = load ptr, ptr %7, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.v) #10, !srcloc !5
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.thread25
  %.0 = phi i32 [ %i.u, %.thread25 ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @unum_getSymbol_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.icu_78::Char16Ptr", align 8 ; 3 uses
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp ugt i32 %1, 28
  %or.cond3 = or i1 %i.d, %i.e
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #10 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %4, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(136) %i.f) #10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = zext nneg i32 %1 to i64
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m
  store ptr %2, ptr %5, align 8
  %i.o = call noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 %5, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #10
  %i.p = load ptr, ptr %5, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.p) #10, !srcloc !5
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %bb.d
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.o, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @unum_setSymbol_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.icu_78::DecimalFormatSymbols", align 8 ; 6 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp ugt i32 %1, 28
  %or.cond3 = or i1 %i.d, %i.e
  %i.f = icmp eq ptr %2, null
  %or.cond5 = or i1 %or.cond3, %i.f
  %i.g = icmp slt i32 %3, -1
  %or.cond7 = or i1 %or.cond5, %i.g
  br i1 %or.cond7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #10 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %4, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(136) %i.h) #10
  call void @_ZN6icu_7820DecimalFormatSymbolsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(2459) %5, ptr noundef nonnull align 8 dereferenceable(2459) %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %2, i32 noundef %3) #10
  call void @_ZN6icu_7820DecimalFormatSymbols9setSymbolENS0_19ENumberFormatSymbolERKNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(2459) %5, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %6, i8 noundef signext 1)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(2459) %5) #10
  call void @_ZN6icu_7820DecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dead_on_return(2459) dereferenceable(2459) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %bb.d
  ret void
}

declare void @_ZN6icu_7820DecimalFormatSymbolsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(2459), ptr noundef nonnull align 8 dereferenceable(2459)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7820DecimalFormatSymbols9setSymbolENS0_19ENumberFormatSymbolERKNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(2459) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 45 uses
  switch i32 %1, label %bb.c [
    i32 8, label %.thread23
    i32 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.thread23

.thread23:                                        ; preds = %bb.a, %bb.b
  %.sink30 = phi i64 [ 2449, %bb.b ], [ 2448, %bb.a ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink30
  store i8 1, ptr %5, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2) #10 ; 0 uses
  br label %.thread25

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %1, 29
  br i1 %i.e, label %bb.d, label %.thread25

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.g
  %i.i = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %2) #10 ; 0 uses
  %i.j = icmp eq i32 %1, 4
  br i1 %i.j, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0) #10 ; 11 uses
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @u_charDigitValue_78(i32 noundef %i.k) #10
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef 2147483647) #10
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %.thread25.loopexit, label %bb.h

.thread25.loopexit:                               ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i32 %i.k, ptr %i.p, align 8
  %i.q = add nsw i32 %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.q) #10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.s = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.t = add nsw i32 %i.k, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.t) #10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.w = add nsw i32 %i.k, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.w) #10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.y = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.z = add nsw i32 %i.k, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.z) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.ab = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.ac = add nsw i32 %i.k, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.ac) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.ae = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.af = add nsw i32 %i.k, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.af) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.ah = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.ai = add nsw i32 %i.k, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.ai) #10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.ak = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.al = add nsw i32 %i.k, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.al) #10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.an = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.ao = add nsw i32 %i.k, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.ao) #10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.aq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.thread25

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i32 -1, ptr %i.ar, align 8
  br label %.thread25

bb.i:                                             ; preds = %bb.d
  %i.as = add i32 %1, -18
  %or.cond = icmp ult i32 %i.as, 9
  br i1 %or.cond, label %bb.j, label %.thread25

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i32 -1, ptr %i.at, align 8
  br label %.thread25

.thread25:                                        ; preds = %.thread25.loopexit, %bb.c, %.thread23, %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7820DecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dead_on_return(2459) dereferenceable(2459)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @unum_applyPattern_78(ptr noundef %0, i8 noundef signext %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.UParseError, align 4        ; 3 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.b = icmp eq ptr %4, null
  %spec.store.select = select i1 %i.b, ptr %6, ptr %4 ; 2 uses
  %i.c = icmp eq ptr %5, null
  %spec.store.select1 = select i1 %i.c, ptr %i.a, ptr %5 ; 3 uses
  %i.d = icmp eq i32 %3, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @u_strlen_78(ptr noundef %2) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %3, %bb.a ]   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @_ZN6icu_7813UnicodeStringC1EPDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %2, i32 noundef %i.f, i32 noundef %i.f) #10
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #10 ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not21 = icmp eq i8 %1, 0
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 576
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(72) %spec.store.select, ptr noundef nonnull align 4 dereferenceable(4) %spec.store.select1) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 560
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(72) %spec.store.select, ptr noundef nonnull align 4 dereferenceable(4) %spec.store.select1) #10
  br label %bb.h

.thread:                                          ; preds = %bb.c, %bb.d
  store i32 16, ptr %spec.store.select1, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1EPDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @unum_getLocaleByType_78(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
