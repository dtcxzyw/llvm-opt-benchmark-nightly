inline.NumInlined: 649
inline.NumDeleted: 132
begin_hunk_0_@_ZN6icu_78L20initLeapMonthPatternEPNS_13UnicodeStringEiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringER10UErrorCode:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store i32 2, ptr %4, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

declare noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare ptr @ures_getNextResource_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ures_getIntVector_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ures_getKey_78(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6icu_7815NumberingSystem14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef ptr @_ZNK6icu_7815NumberingSystem7getNameEv(ptr noundef nonnull align 8 dereferenceable(86)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN6icu_7820loadDayPeriodStringsERNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringERiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %0, ptr %.0.val, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %.0.val, i32 noundef -1, i32 noundef 0) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef ptr @uhash_get_78(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(64) %3) #13 ; 2 uses
  store i32 10, ptr %1, align 4
  %i.f = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef 648) #13 ; 22 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 10, ptr %i.f, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i16 2, ptr %i.h, align 8
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i16 2, ptr %i.i, align 8
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store i16 2, ptr %i.j, align 8
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store i16 2, ptr %i.k, align 8
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.4, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  store i16 2, ptr %i.l, align 8
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.5, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 336
  store i16 2, ptr %i.m, align 8
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.6, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  store i16 2, ptr %i.n, align 8
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.7, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  store i16 2, ptr %i.o, align 8
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.f, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.8, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 528
  store i16 2, ptr %i.p, align 8
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.f, i64 584
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.9, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 592
  store i16 2, ptr %i.q, align 8
  %.not33 = icmp eq ptr %i.e, null
  %i.r = load i32, ptr %1, align 4
  %i.s = icmp sgt i32 %i.r, 0                     ; 2 uses
  br i1 %.not33, label %.preheader, label %.preheader1

bb.d:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4
  br label %.loopexit

.preheader1:                                      ; preds = %bb.c
  br i1 %i.s, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.c
  br i1 %i.s, label %.lr.ph5, label %.loopexit

.lr.ph:                                           ; preds = %.preheader1, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.preheader1 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_78L13dayPeriodKeysE, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.u, i32 noundef -1, i32 noundef 0) #13
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = call noundef ptr @uhash_get_78(ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(64) %4) #13 ; 2 uses
  %.not34 = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %.ptr, i64 %indvars.iv ; 2 uses
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.y = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.w) #13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.x) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %1, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !116

.lr.ph5:                                          ; preds = %.preheader, %.lr.ph5
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %.lr.ph5 ], [ 0, %.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %.ptr, i64 %indvars.iv8
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ac) #13
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1 ; 2 uses
  %i.ad = load i32, ptr %1, align 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next9, %i.ae
  br i1 %i.af, label %.lr.ph5, label %.loopexit, !llvm.loop !117

.loopexit:                                        ; preds = %bb.g, %.lr.ph5, %.preheader1, %.preheader, %bb.d
  %.025 = phi ptr [ null, %bb.d ], [ %.ptr, %.preheader ], [ %.ptr, %.preheader1 ], [ %.ptr, %.lr.ph5 ], [ %.ptr, %bb.g ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi ptr [ %.025, %.loopexit ], [ null, %bb.a ]
  ret ptr %.1
}

declare ptr @ures_getLocaleByType_78(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef ptr @_ZN6icu_788EraRules14createInstanceEPKcaR10UErrorCode(ptr noundef, i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_78L8initErasEPPNS_13UnicodeStringERiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringEPK15UResourceBundlePKciR10UErrorCode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca [12 x i8], align 1                ; 9 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.d = load i32, ptr %7, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.f = load ptr, ptr %3, align 8
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %i.f, i32 noundef -1, i32 noundef 0) #13
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef ptr @uhash_get_78(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(64) %8) #13 ; 3 uses
  %.not35 = icmp eq ptr %i.i, null
  br i1 %.not35, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  %i.j = call ptr @ures_getByKeyWithFallback_78(ptr noundef %4, ptr noundef %5, ptr noundef null, ptr noundef nonnull %i.a) #13 ; 4 uses
  %i.k = load i32, ptr %i.a, align 4
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = add i32 %6, 1                            ; 5 uses
  %i.n = sext i32 %i.m to i64                     ; 5 uses
  %i.o = icmp slt i32 %6, -1
  %i.p = shl nsw i64 %i.n, 6
  %i.q = or disjoint i64 %i.p, 8
  %i.r = select i1 %i.o, i64 -1, i64 %i.q
  %i.s = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.r) #13 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.n, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.v = icmp eq i32 %i.m, 0
  br i1 %i.v, label %.loopexit49.thread, label %bb.e

.loopexit49.thread:                               ; preds = %bb.d
  store ptr %i.u, ptr %0, align 8
  store i32 %i.m, ptr %1, align 4
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds [64 x i8], ptr %i.u, i64 %i.n
  %i.x = add nsw i64 %i.n, 288230376151711743
  %i.y = and i64 %i.x, 288230376151711743
  %xtraiter = and i64 %i.n, 7
  %i.z = and i32 %i.m, 7
  %lcmp.mod.not = icmp eq i32 %i.z, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %i.aa = phi ptr [ %i.ac, %.prol.preheader ], [ %i.u, %bb.e ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.e ]
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i16 2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !118

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.unr = phi ptr [ %i.u, %bb.e ], [ %i.ac, %.prol.preheader ]
  %i.ad = icmp samesign ult i64 %i.y, 7
  br i1 %i.ad, label %.loopexit49, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ae = phi ptr [ %i.au, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i16 2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store i16 2, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  store i16 2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  store i16 2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 264
  store i16 2, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 328
  store i16 2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 392
  store i16 2, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 456
  store i16 2, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 512 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.w
  br i1 %i.av, label %.loopexit49, label %.new

bb.f:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8
  store i32 7, ptr %7, align 4
  br label %.loopexit

.loopexit49:                                      ; preds = %.new, %.prol.loopexit
  store ptr %i.u, ptr %0, align 8
  store i32 %i.m, ptr %1, align 4
  %.not3750 = icmp slt i32 %6, 0
  br i1 %.not3750, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit49
  %.not3948 = icmp eq ptr %i.j, null
  %.not39 = select i1 %i.l, i1 true, i1 %.not3948
  %.not39.fr = freeze i1 %.not39
  br i1 %.not39.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.us
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.us ], [ 0, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.aw = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.ax = call i32 @T_CString_integerToString_78(ptr noundef nonnull %i.b, i32 noundef %i.aw, i32 noundef 10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.b, i32 noundef %i.ax, i32 noundef 0) #13
  %i.ay = load ptr, ptr %i.i, align 8
  %i.az = call noundef ptr @uhash_get_78(ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %9) #13 ; 2 uses
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %indvars.iv54
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 8            ; 2 uses
  %i.be = and i16 %i.bd, 1
  %.not.i.us = icmp eq i16 %i.be, 0
  %i.bf = and i16 %i.bd, 30
  %storemerge.i.us = select i1 %.not.i.us, i16 %i.bf, i16 2
  store i16 %storemerge.i.us, ptr %i.bc, align 8
  %.not38.us = icmp eq ptr %i.az, null
  br i1 %.not38.us, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %i.bg, i64 %indvars.iv54
  %i.bi = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bh, ptr noundef nonnull align 8 dereferenceable(64) %i.az) #13 ; 0 uses
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.us

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.us: ; preds = %.lr.ph.split.us, %bb.g
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %11 = trunc nuw i64 %indvars.iv.next55 to i32
  %.not37.us = icmp slt i32 %6, %11
  br i1 %.not37.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !119

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit ], [ 0, %.lr.ph ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = call i32 @T_CString_integerToString_78(ptr noundef nonnull %i.b, i32 noundef %i.bj, i32 noundef 10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.b, i32 noundef %i.bk, i32 noundef 0) #13
  %i.bl = load ptr, ptr %i.i, align 8
  %i.bm = call noundef ptr @uhash_get_78(ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(64) %9) #13 ; 2 uses
  %i.bn = load ptr, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 8            ; 2 uses
  %i.br = and i16 %i.bq, 1
  %.not.i = icmp eq i16 %i.br, 0
  %i.bs = and i16 %i.bq, 30
  %storemerge.i = select i1 %.not.i, i16 %i.bs, i16 2
  store i16 %storemerge.i, ptr %i.bp, align 8
  %.not38 = icmp eq ptr %i.bm, null
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw [64 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %i.bm) #13 ; 0 uses
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

bb.i:                                             ; preds = %.lr.ph.split
  store i32 0, ptr %i.a, align 4
  %i.bw = call ptr @ures_getByKeyWithFallback_78(ptr noundef nonnull %i.j, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.bx = load i32, ptr %i.a, align 4
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.bz = call ptr @ures_getString_78(ptr noundef %i.bw, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #13
  %i.ca = load i32, ptr %i.a, align 4
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = load ptr, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cc, i64 %indvars.iv
  store ptr %i.bz, ptr %10, align 8
  %i.ce = load i32, ptr %i.c, align 4
  %i.cf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i8 noundef signext 0, ptr noundef nonnull %10, i32 noundef %i.ce) #13 ; 0 uses
  %i.cg = load ptr, ptr %10, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.cg) #13, !srcloc !7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.not.i42 = icmp eq ptr %i.bw, null
  br i1 %.not.i42, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @ures_close_78(ptr noundef nonnull %i.bw) #13
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.n, %bb.m, %bb.h
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %12 = trunc nuw i64 %indvars.iv.next to i32
  %.not37 = icmp slt i32 %6, %12
  br i1 %.not37, label %.loopexit, label %.lr.ph.split, !llvm.loop !119

.loopexit:                                        ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.us, %.loopexit49.thread, %.loopexit49, %bb.f
  %.not.i43 = icmp eq ptr %i.j, null
  br i1 %.not.i43, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit44, label %bb.o

bb.o:                                             ; preds = %.loopexit
  call void @ures_close_78(ptr noundef nonnull %i.j) #13
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit44

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit44: ; preds = %.loopexit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  store i32 2, ptr %7, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit44
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.a
  ret void
}

declare noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringEiR10UErrorCode(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %2, ptr %.0.val, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %.0.val, i32 noundef -1, i32 noundef 0) #13
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef ptr @uhash_get_78(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4) #13 ; 2 uses
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i32 @uhash_geti_78(ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(64) %4) #13 ; 4 uses
  %i.i = add i32 %i.h, 1                          ; 4 uses
  store i32 %i.i, ptr %1, align 4
  %i.j = sext i32 %i.i to i64                     ; 5 uses
  %i.k = icmp slt i32 %i.h, -1
  %i.l = shl nsw i64 %i.j, 6
  %i.m = or disjoint i64 %i.l, 8
  %i.n = select i1 %i.k, i64 -1, i64 %i.m
  %i.o = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.n) #13 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.j, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 6 uses
  %i.r = icmp eq i32 %i.i, 0
  br i1 %i.r, label %.thread2, label %bb.e

.thread2:                                         ; preds = %bb.d
  store ptr %i.q, ptr %0, align 8
  br label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEiPS0_ii.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds [64 x i8], ptr %i.q, i64 %i.j
  %i.t = add nsw i64 %i.j, 288230376151711743
  %i.u = and i64 %i.t, 288230376151711743
  %xtraiter = and i64 %i.j, 7
  %i.v = and i32 %i.i, 7
  %lcmp.mod.not = icmp eq i32 %i.v, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %i.w = phi ptr [ %i.y, %.prol.preheader ], [ %i.q, %bb.e ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.e ]
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i16 2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !120

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.unr = phi ptr [ %i.q, %bb.e ], [ %i.y, %.prol.preheader ]
  %i.z = icmp samesign ult i64 %i.u, 7
  br i1 %i.z, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.aa = phi ptr [ %i.aq, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i16 2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store i16 2, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store i16 2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  store i16 2, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 264
  store i16 2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 328
  store i16 2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 384
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 392
  store i16 2, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 456
  store i16 2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 512 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.s
  br i1 %i.ar, label %.unr-lcssa, label %.new

bb.f:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8
  store i32 7, ptr %3, align 4
  br label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEiPS0_ii.exit

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store ptr %i.q, ptr %0, align 8
  %i.as = icmp sgt i32 %i.h, 0
  br i1 %i.as, label %.lr.ph.i.i, label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEiPS0_ii.exit

.lr.ph.i.i:                                       ; preds = %.unr-lcssa, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.at, %.lr.ph.i.i ], [ %i.h, %.unr-lcssa ] ; 2 uses
  %.025.i.pn.i = phi ptr [ %.025.i.i, %.lr.ph.i.i ], [ %i.q, %.unr-lcssa ]
  %.034.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %i.e, %.unr-lcssa ] ; 2 uses
  %.025.i.i = getelementptr inbounds nuw i8, ptr %.025.i.pn.i, i64 64 ; 2 uses
  %i.at = add nsw i32 %.06.i.i, -1
  %i.au = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 64
  %i.av = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %.025.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.034.i.i) #13 ; 0 uses
  %i.aw = icmp samesign ugt i32 %.06.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEiPS0_ii.exit, !llvm.loop !83

bb.g:                                             ; preds = %bb.b
  store i32 0, ptr %1, align 4
  store i32 2, ptr %3, align 4
  br label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEiPS0_ii.exit

_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEiPS0_ii.exit: ; preds = %.lr.ph.i.i, %.unr-lcssa, %.thread2, %bb.f, %bb.g
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.h

bb.h:                                             ; preds = %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEiPS0_ii.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(600) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_116CalendarDataSinkE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @uhash_setValueDeleter_78(ptr noundef %i.b, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_116CalendarDataSink24deleteUnicodeStringArrayEPv) #13 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #13, !inline_history !121
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.k) #13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.l) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
end_hunk_0
