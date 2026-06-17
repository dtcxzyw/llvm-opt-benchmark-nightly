inline.NumInlined: 649
inline.NumDeleted: 132
begin_hunk_0_@_ZNK6icu_7817DateFormatSymbols17getDynamicClassIDEv:bb.a

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7817DateFormatSymbols15createForLocaleERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.icu_78::LocaleCacheKey", align 8 ; 9 uses
  %i.c = tail call noundef ptr @_ZN6icu_7812UnifiedCache11getInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.d = load i32, ptr %1, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 0, ptr %i.g, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7814LocaleCacheKeyINS_23SharedDateFormatSymbolsEEE, i64 16), ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  %i.i = load i32, ptr %1, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8
  call void @_ZNK6icu_7812UnifiedCache4_getERKNS_12CacheKeyBaseERPKNS_12SharedObjectEPKvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #13
  %i.k = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.l = load i32, ptr %i.a, align 4              ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %.not.i9.i.i = icmp eq ptr %i.k, null           ; 2 uses
  br i1 %i.m, label %_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i9.i.i, label %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i, label %_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.thread12.i.i

_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.thread12.i.i: ; preds = %bb.d
  call void @_ZNK6icu_7812SharedObject6addRefEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #13
  br label %bb.e

_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.i.i: ; preds = %bb.c
  br i1 %.not.i9.i.i, label %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.i.i, %_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.thread12.i.i
  %.111 = phi ptr [ null, %_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.i.i ], [ %i.k, %_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.thread12.i.i ]
  call void @_ZNK6icu_7812SharedObject9removeRefEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #13
  %.pre = load i32, ptr %i.a, align 4
  br label %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i

_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i: ; preds = %bb.d, %bb.e
  %i.n = phi i32 [ %i.l, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %.2 = phi ptr [ null, %bb.d ], [ %.111, %bb.e ] ; 2 uses
  %i.o = load i32, ptr %1, align 4
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp slt i32 %i.n, 1
  %or.cond.i.i = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i.thread

_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i.thread: ; preds = %_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.i.i, %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i
  %.221 = phi ptr [ %.2, %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i ], [ null, %_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.i.i ]
  %i.r = phi i32 [ %i.n, %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i ], [ %i.l, %_ZN6icu_7812SharedObject7copyPtrINS_23SharedDateFormatSymbolsEEEvPKT_RS5_.exit.i.i ]
  store i32 %i.r, ptr %1, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i.thread, %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i
  %.222 = phi ptr [ %.221, %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i.thread ], [ %.2, %_ZN6icu_7812SharedObject8clearPtrINS_23SharedDateFormatSymbolsEEEvRPKT_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit

_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit: ; preds = %bb.f, %bb.b
  %.3 = phi ptr [ %.222, %bb.f ], [ null, %bb.b ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7814LocaleCacheKeyINS_23SharedDateFormatSymbolsEEE, i64 16), ptr %2, align 8
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #13, !inline_history !6
  call void @_ZN6icu_7812CacheKeyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #13, !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.pre13 = load i32, ptr %1, align 4
  %i.s = icmp slt i32 %.pre13, 1
  br i1 %i.s, label %bb.g, label %_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit.thread

bb.g:                                             ; preds = %_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit
  %i.t = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 872) #13 ; 11 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.3, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7817DateFormatSymbolsE, i64 16), ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  store i16 2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 560
  call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #13
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  store i16 2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 792
  call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 832
  call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #13
  call void @_ZN6icu_7817DateFormatSymbols8copyDataERKS0_(ptr noundef nonnull align 8 dereferenceable(872) %i.t, ptr noundef nonnull align 8 dereferenceable(872) %i.v)
  call void @_ZNK6icu_7812SharedObject9removeRefEv(ptr noundef nonnull align 8 dereferenceable(24) %.3) #13
  br label %_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit.thread

bb.i:                                             ; preds = %bb.g
  call void @_ZNK6icu_7812SharedObject9removeRefEv(ptr noundef nonnull align 8 dereferenceable(24) %.3) #13
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit.thread

_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit.thread: ; preds = %bb.a, %bb.h, %bb.i, %_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit
  %.1 = phi ptr [ null, %_ZN6icu_7812UnifiedCache11getByLocaleINS_23SharedDateFormatSymbolsEEEvRKNS_6LocaleERPKT_R10UErrorCode.exit ], [ null, %bb.i ], [ %i.t, %bb.h ], [ null, %bb.a ]
  ret ptr %.1
}

declare void @_ZNK6icu_7812SharedObject9removeRefEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817DateFormatSymbolsC2ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(872) initializes((0, 8), (328, 338)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7817DateFormatSymbolsE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i16 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i16 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #13
  tail call void @_ZN6icu_7817DateFormatSymbols14initializeDataERKNS_6LocaleEPKcR10UErrorCodea(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %2, i8 noundef signext 0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817DateFormatSymbols14initializeDataERKNS_6LocaleEPKcR10UErrorCodea(ptr noundef nonnull align 8 dereferenceable(872) initializes((8, 20), (24, 36), (40, 52), (56, 68), (72, 84), (88, 100), (104, 116), (120, 132), (136, 148), (152, 164), (168, 180), (184, 196), (200, 212), (216, 228), (232, 244), (248, 260), (264, 276), (280, 292), (296, 308), (312, 324)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i8 noundef signext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %7 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %9 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %10 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %11 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %12 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %13 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %14 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %15 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %16 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %17 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %18 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %19 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %20 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %21 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %22 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %23 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %24 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %25 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %26 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %27 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %28 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %29 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %30 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %31 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %32 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %33 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %34 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %35 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %36 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %37 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %38 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %39 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %40 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %41 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %42 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %43 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %44 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %45 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %46 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %47 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %48 = alloca %"struct.icu_78::(anonymous namespace)::CalendarDataSink", align 8 ; 50 uses
  %49 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %50 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %51 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %52 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %53 = alloca %"class.icu_78::CharString", align 8 ; 90 uses
  %i.d = alloca i32, align 4                      ; 83 uses
  %54 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %55 = alloca %"class.icu_78::Locale", align 8   ; 5 uses
  %56 = alloca %"class.icu_78::Locale", align 8   ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 16 uses
  %57 = alloca %"class.icu_78::ErrorCode", align 8 ; 8 uses
  %58 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %59 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 0, ptr %i.c, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  store i32 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 10 uses
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 9 uses
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 10 uses
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 11 uses
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 9 uses
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 10 uses
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 9 uses
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 9 uses
  store i32 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 10 uses
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 8 uses
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 8 uses
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 8 uses
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 8 uses
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 10 uses
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 10 uses
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 7 uses
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 9 uses
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 9 uses
  store i32 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.aw) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 7 uses
  store ptr null, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 9 uses
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 9 uses
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 10 uses
  store i32 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 8 uses
  store ptr null, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 9 uses
  store i32 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 8 uses
  store ptr null, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 9 uses
  store i32 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 8 uses
  store ptr null, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 9 uses
  store i32 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  store ptr null, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 14 uses
  store ptr null, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  store ptr null, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  store i32 0, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  store ptr null, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  store i32 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 5 uses
  store ptr null, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  store i32 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  store ptr null, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  store i32 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  store ptr null, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  store i32 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 5 uses
  store ptr null, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  store i32 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  store i32 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  store ptr null, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  store i32 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cc, i8 0, i64 28, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  %i.ce = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef nonnull align 8 dereferenceable(40) %1) #13 ; 0 uses
  %i.cf = load i32, ptr %3, align 4
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.b, label %bb.jn

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #13
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_116CalendarDataSinkE, i64 16), ptr %48, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 36 uses
  store ptr null, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 3 uses
  %i.cj = call ptr @uhash_init_78(ptr noundef nonnull %i.ci, ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  %i.ck = load i32, ptr %3, align 4
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit.i.thread, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit.i

_ZN6icu_789HashtableC2EaR10UErrorCode.exit.i.thread: ; preds = %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %48, i64 96 ; 2 uses
  store ptr null, ptr %i.cm, align 8
  br label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i.thread

_ZN6icu_789HashtableC2EaR10UErrorCode.exit.i:     ; preds = %bb.b
  store ptr %i.ci, ptr %i.ch, align 8
  %i.cn = call ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.ci, ptr noundef nonnull @uprv_deleteUObject_78) #13 ; 0 uses
  %.pr = load i32, ptr %3, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %48, i64 96 ; 7 uses
  store ptr null, ptr %i.co, align 8
  %i.cp = icmp slt i32 %.pr, 1
  br i1 %i.cp, label %bb.c, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i.thread

bb.c:                                             ; preds = %_ZN6icu_789HashtableC2EaR10UErrorCode.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %48, i64 104 ; 3 uses
  %i.cr = call ptr @uhash_init_78(ptr noundef nonnull %i.cq, ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  %i.cs = load i32, ptr %3, align 4
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i.thread, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i

_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i.thread: ; preds = %_ZN6icu_789HashtableC2EaR10UErrorCode.exit.i.thread, %bb.c, %_ZN6icu_789HashtableC2EaR10UErrorCode.exit.i
  %.ph686 = phi ptr [ %i.co, %_ZN6icu_789HashtableC2EaR10UErrorCode.exit.i ], [ %i.co, %bb.c ], [ %i.cm, %_ZN6icu_789HashtableC2EaR10UErrorCode.exit.i.thread ]
  %i.cu = getelementptr inbounds nuw i8, ptr %48, i64 184
  store ptr null, ptr %i.cu, align 8
  br label %_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkC2ER10UErrorCode.exit

_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i:    ; preds = %bb.c
  store ptr %i.cq, ptr %i.co, align 8
  %i.cv = call ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.cq, ptr noundef nonnull @uprv_deleteUObject_78) #13 ; 0 uses
  %.pr685 = load i32, ptr %3, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %48, i64 184 ; 2 uses
  store ptr null, ptr %i.cw, align 8
  %i.cx = icmp slt i32 %.pr685, 1
  br i1 %i.cx, label %bb.d, label %_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkC2ER10UErrorCode.exit

bb.d:                                             ; preds = %_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i
  %i.cy = getelementptr inbounds nuw i8, ptr %48, i64 192 ; 3 uses
  %i.cz = call ptr @uhash_init_78(ptr noundef nonnull %i.cy, ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  %i.da = load i32, ptr %3, align 4
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkC2ER10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.cy, ptr %i.cw, align 8
  %i.dc = call ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.cy, ptr noundef nonnull @uprv_deleteUObject_78) #13 ; 0 uses
  br label %_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkC2ER10UErrorCode.exit

_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkC2ER10UErrorCode.exit: ; preds = %_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i.thread, %_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i, %bb.d, %bb.e
  %i.dd = phi ptr [ %.ph686, %_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i.thread ], [ %i.co, %_ZN6icu_789HashtableC2EaR10UErrorCode.exit6.i ], [ %i.co, %bb.d ], [ %i.co, %bb.e ] ; 17 uses
  %i.de = getelementptr inbounds nuw i8, ptr %48, i64 272
  store i32 0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %48, i64 280
  %i.dg = getelementptr inbounds nuw i8, ptr %48, i64 296
  store ptr %i.dg, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %48, i64 288
  store i32 8, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %48, i64 292
  store i8 0, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %48, i64 360 ; 2 uses
  call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %i.dk = getelementptr inbounds nuw i8, ptr %48, i64 400 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %48, i64 408
  store i16 2, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %48, i64 464 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %48, i64 472
  store i16 2, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %48, i64 528 ; 5 uses
  store ptr null, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %48, i64 536
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %48, i64 544
  store i16 2, ptr %i.dq, align 8
  %i.dr = call noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %i.ds = call ptr @ures_open_78(ptr noundef null, ptr noundef %i.dr, ptr noundef nonnull %3) #13 ; 3 uses
  %i.dt = call ptr @ures_getByKey_78(ptr noundef %i.ds, ptr noundef nonnull @_ZN6icu_78L12gCalendarTagE, ptr noundef null, ptr noundef nonnull %3) #13 ; 6 uses
  %i.du = load i32, ptr %3, align 4
  %i.dv = icmp slt i32 %i.du, 1
  br i1 %i.dv, label %bb.f, label %bb.jk

bb.f:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkC2ER10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #13
  %.not226 = icmp eq ptr %2, null                 ; 2 uses
  br i1 %.not226, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dw = load i8, ptr %2, align 1
  %.not227 = icmp eq i8 %i.dw, 0
  %spec.select = select i1 %.not227, ptr @.str.1, ptr %2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dx = phi ptr [ @.str.1, %bb.f ], [ %spec.select, %bb.g ]
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef %i.dx, i32 noundef -1, i32 noundef 0) #13
  %i.dy = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  %i.dz = load i16, ptr %i.dy, align 8
  %i.ea = and i16 %i.dz, 1
  %.not228884 = icmp eq i16 %i.ea, 0
  br i1 %.not228884, label %.lr.ph, label %_ZN6icu_7810CharStringD2Ev.exit._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.eb = getelementptr inbounds nuw i8, ptr %50, i64 13 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %50, i64 12 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %50, i64 56
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #13
  store ptr %i.eb, ptr %50, align 8
  store i32 40, ptr %i.ec, align 8
  store i8 0, ptr %i.ed, align 4
  store i32 0, ptr %i.ee, align 8
  store i8 0, ptr %i.eb, align 1
  %i.ef = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %50, ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  %i.eg = load i32, ptr %3, align 4               ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 1
  br i1 %i.eh, label %bb.j, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.a

bb.j:                                             ; preds = %bb.i
  %i.ei = load ptr, ptr %50, align 8              ; 3 uses
  %i.ej = call ptr @ures_getByKeyWithFallback_78(ptr noundef %i.dt, ptr noundef %i.ei, ptr noundef null, ptr noundef nonnull %3) #13 ; 3 uses
  %i.ek = load i32, ptr %3, align 4
  %i.el = icmp eq i32 %i.ek, 2
  br i1 %i.el, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.em = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ei, ptr noundef nonnull dereferenceable(10) @.str.1) #14
  %.not232 = icmp eq i32 %i.em, 0
  br i1 %.not232, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @_ZN6icu_7812_GLOBAL__N_118kGregorianTagUCharE, ptr %51, align 8
  %i.en = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %49, i8 noundef signext 0, ptr noundef nonnull %51, i32 noundef 9) #13 ; 0 uses
  %i.eo = load ptr, ptr %51, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.eo) #13, !srcloc !7
  %i.ep = load ptr, ptr %i.do, align 8            ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZN6icu_7812_GLOBAL__N_116CalendarDataSink17visitAllResourcesEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.er = load ptr, ptr %i.ep, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(40) %i.ep) #13, !inline_history !8
  br label %_ZN6icu_7812_GLOBAL__N_116CalendarDataSink17visitAllResourcesEv.exit

_ZN6icu_7812_GLOBAL__N_116CalendarDataSink17visitAllResourcesEv.exit: ; preds = %bb.l, %bb.m
  store ptr null, ptr %i.do, align 8
  store i32 %i.eg, ptr %3, align 4
  br label %bb.s, !llvm.loop !9

bb.n:                                             ; preds = %bb.j
  %i.eu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dk, ptr noundef nonnull align 8 dereferenceable(64) %49) #13 ; 0 uses
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dm) #13
  call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dj) #13
  call void @ures_getAllItemsWithFallback_78(ptr noundef %i.ej, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %i.ev = load i32, ptr %3, align 4
  %i.ew = icmp slt i32 %i.ev, 1
  br i1 %i.ew, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ex = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ei, ptr noundef nonnull dereferenceable(10) @.str.1) #14
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ez = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef nonnull align 8 dereferenceable(64) %i.dm) #13 ; 0 uses
  %i.fa = load i16, ptr %i.dy, align 8
  %i.fb = and i16 %i.fa, 1
  %.not231 = icmp eq i16 %i.fb, 0
  br i1 %.not231, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr @_ZN6icu_7812_GLOBAL__N_118kGregorianTagUCharE, ptr %52, align 8
  %i.fc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %49, i8 noundef signext 0, ptr noundef nonnull %52, i32 noundef 9) #13 ; 0 uses
  %i.fd = load ptr, ptr %52, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.fd) #13, !srcloc !7
  %i.fe = load ptr, ptr %i.do, align 8            ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZN6icu_7812_GLOBAL__N_116CalendarDataSink17visitAllResourcesEv.exit292, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fg = load ptr, ptr %i.fe, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(40) %i.fe) #13, !inline_history !8
  br label %_ZN6icu_7812_GLOBAL__N_116CalendarDataSink17visitAllResourcesEv.exit292

_ZN6icu_7812_GLOBAL__N_116CalendarDataSink17visitAllResourcesEv.exit292: ; preds = %bb.q, %bb.r
  store ptr null, ptr %i.do, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %_ZN6icu_7812_GLOBAL__N_116CalendarDataSink17visitAllResourcesEv.exit292, %bb.o, %bb.n, %bb.k, %_ZN6icu_7812_GLOBAL__N_116CalendarDataSink17visitAllResourcesEv.exit
  %.0 = phi i32 [ 2, %_ZN6icu_7812_GLOBAL__N_116CalendarDataSink17visitAllResourcesEv.exit ], [ 3, %bb.o ], [ 1, %bb.k ], [ 3, %bb.n ], [ 0, %_ZN6icu_7812_GLOBAL__N_116CalendarDataSink17visitAllResourcesEv.exit292 ], [ 0, %bb.p ]
  %.not.i = icmp eq ptr %i.ej, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @ures_close_78(ptr noundef nonnull %i.ej) #13
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.t, %bb.s
  %60 = load i8, ptr %i.ed, align 4
  %.not.i.i.i = icmp eq i8 %60, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %61

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.a: ; preds = %bb.i
  %i.fj = load i8, ptr %i.ed, align 4
  %.not.i.i.i.a = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.a, label %_ZN6icu_7810CharStringD2Ev.exit.a, label %bb.u

61:                                               ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  %62 = load ptr, ptr %50, align 8
  call void @uprv_free_78(ptr noundef %62) #13
  br label %_ZN6icu_7810CharStringD2Ev.exit

bb.u:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.a
  %i.fk = load ptr, ptr %50, align 8
  call void @uprv_free_78(ptr noundef %i.fk) #13
  br label %_ZN6icu_7810CharStringD2Ev.exit.a

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %61
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #13
  switch i32 %.0, label %_ZN6icu_7810CharStringD2Ev.exit.unreachabledefault [
    i32 0, label %.backedge
    i32 2, label %.backedge
    i32 3, label %_ZN6icu_7810CharStringD2Ev.exit._crit_edge
    i32 1, label %.loopexit882
  ]

_ZN6icu_7810CharStringD2Ev.exit.a:                ; preds = %bb.u, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #13
  br label %.loopexit882

.backedge:                                        ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %_ZN6icu_7810CharStringD2Ev.exit
  %i.fl = load i16, ptr %i.dy, align 8
  %i.fm = and i16 %i.fl, 1
  %.not228 = icmp eq i16 %i.fm, 0
  br i1 %.not228, label %bb.i, label %_ZN6icu_7810CharStringD2Ev.exit._crit_edge, !llvm.loop !9

_ZN6icu_7810CharStringD2Ev.exit._crit_edge:       ; preds = %.backedge, %_ZN6icu_7810CharStringD2Ev.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #13
  %i.fn = getelementptr inbounds nuw i8, ptr %53, i64 13 ; 2 uses
  store ptr %i.fn, ptr %53, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i32 40, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %53, i64 12 ; 2 uses
  store i8 0, ptr %i.fp, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %53, i64 56 ; 42 uses
  store i32 0, ptr %i.fq, align 8
  store i8 0, ptr %i.fn, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.fr = load i32, ptr %3, align 4
  store i32 %i.fr, ptr %i.d, align 4
  %i.fs = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef 456) #13 ; 16 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_ZN6icu_78L21newUnicodeStringArrayEm.exit.thread, label %bb.v

_ZN6icu_78L21newUnicodeStringArrayEm.exit.thread: ; preds = %_ZN6icu_7810CharStringD2Ev.exit._crit_edge
  store ptr null, ptr %i.bj, align 8
  br label %bb.ai

bb.v:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit._crit_edge
  store i64 7, ptr %i.fs, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i16 2, ptr %i.fu, align 8
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.fs, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.1, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 80
  store i16 2, ptr %i.fv, align 8
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.fs, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.2, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 144
  store i16 2, ptr %i.fw, align 8
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.fs, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.3, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 208
  store i16 2, ptr %i.fx, align 8
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.fs, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.4, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 272
  store i16 2, ptr %i.fy, align 8
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.fs, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.5, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 336
  store i16 2, ptr %i.fz, align 8
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.fs, i64 392
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.6, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 400
  store i16 2, ptr %i.ga, align 8
  store ptr %.ptr, ptr %i.bj, align 8
  store i32 0, ptr %i.fq, align 8
  %i.gb = load ptr, ptr %53, align 8
  store i8 0, ptr %i.gb, align 1
  %i.gc = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %53, ptr noundef nonnull @_ZN6icu_78L17gMonthPatternsTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gd = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gc, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.ge = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gd, ptr noundef nonnull @_ZN6icu_78L15gNamesFormatTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gf = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.ge, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gg = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gf, ptr noundef nonnull @_ZN6icu_78L13gNamesWideTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  call fastcc void @_ZN6icu_78L20initLeapMonthPatternEPNS_13UnicodeStringEiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringER10UErrorCode(ptr noundef nonnull %.ptr, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(600) %48, ptr noundef nonnull align 8 dereferenceable(60) %i.gg, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.gh = load ptr, ptr %i.bj, align 8
  store i32 0, ptr %i.fq, align 8
  %i.gi = load ptr, ptr %53, align 8
  store i8 0, ptr %i.gi, align 1
  %i.gj = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %53, ptr noundef nonnull @_ZN6icu_78L17gMonthPatternsTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gk = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gj, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gl = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gk, ptr noundef nonnull @_ZN6icu_78L15gNamesFormatTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gm = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gl, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gn = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gm, ptr noundef nonnull @_ZN6icu_78L13gNamesAbbrTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  call fastcc void @_ZN6icu_78L20initLeapMonthPatternEPNS_13UnicodeStringEiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringER10UErrorCode(ptr noundef %i.gh, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(600) %48, ptr noundef nonnull align 8 dereferenceable(60) %i.gn, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.go = load ptr, ptr %i.bj, align 8
  store i32 0, ptr %i.fq, align 8
  %i.gp = load ptr, ptr %53, align 8
  store i8 0, ptr %i.gp, align 1
  %i.gq = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %53, ptr noundef nonnull @_ZN6icu_78L17gMonthPatternsTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gr = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gq, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gs = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gr, ptr noundef nonnull @_ZN6icu_78L15gNamesFormatTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gt = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gs, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gu = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gt, ptr noundef nonnull @_ZN6icu_78L15gNamesNarrowTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  call fastcc void @_ZN6icu_78L20initLeapMonthPatternEPNS_13UnicodeStringEiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringER10UErrorCode(ptr noundef %i.go, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(600) %48, ptr noundef nonnull align 8 dereferenceable(60) %i.gu, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.gv = load ptr, ptr %i.bj, align 8
  store i32 0, ptr %i.fq, align 8
  %i.gw = load ptr, ptr %53, align 8
  store i8 0, ptr %i.gw, align 1
  %i.gx = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %53, ptr noundef nonnull @_ZN6icu_78L17gMonthPatternsTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gy = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gx, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.gz = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gy, ptr noundef nonnull @_ZN6icu_78L19gNamesStandaloneTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.ha = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.gz, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hb = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.ha, ptr noundef nonnull @_ZN6icu_78L13gNamesWideTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  call fastcc void @_ZN6icu_78L20initLeapMonthPatternEPNS_13UnicodeStringEiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringER10UErrorCode(ptr noundef %i.gv, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(600) %48, ptr noundef nonnull align 8 dereferenceable(60) %i.hb, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.hc = load ptr, ptr %i.bj, align 8
  store i32 0, ptr %i.fq, align 8
  %i.hd = load ptr, ptr %53, align 8
  store i8 0, ptr %i.hd, align 1
  %i.he = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %53, ptr noundef nonnull @_ZN6icu_78L17gMonthPatternsTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hf = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.he, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hg = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.hf, ptr noundef nonnull @_ZN6icu_78L19gNamesStandaloneTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hh = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.hg, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hi = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.hh, ptr noundef nonnull @_ZN6icu_78L13gNamesAbbrTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  call fastcc void @_ZN6icu_78L20initLeapMonthPatternEPNS_13UnicodeStringEiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringER10UErrorCode(ptr noundef %i.hc, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(600) %48, ptr noundef nonnull align 8 dereferenceable(60) %i.hi, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.hj = load ptr, ptr %i.bj, align 8
  store i32 0, ptr %i.fq, align 8
  %i.hk = load ptr, ptr %53, align 8
  store i8 0, ptr %i.hk, align 1
  %i.hl = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %53, ptr noundef nonnull @_ZN6icu_78L17gMonthPatternsTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hm = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.hl, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hn = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.hm, ptr noundef nonnull @_ZN6icu_78L19gNamesStandaloneTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.ho = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.hn, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hp = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.ho, ptr noundef nonnull @_ZN6icu_78L15gNamesNarrowTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  call fastcc void @_ZN6icu_78L20initLeapMonthPatternEPNS_13UnicodeStringEiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringER10UErrorCode(ptr noundef %i.hj, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(600) %48, ptr noundef nonnull align 8 dereferenceable(60) %i.hp, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.hq = load ptr, ptr %i.bj, align 8
  store i32 0, ptr %i.fq, align 8
  %i.hr = load ptr, ptr %53, align 8
  store i8 0, ptr %i.hr, align 1
  %i.hs = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %53, ptr noundef nonnull @_ZN6icu_78L17gMonthPatternsTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.ht = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.hs, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hu = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.ht, ptr noundef nonnull @_ZN6icu_78L16gNamesNumericTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hv = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.hu, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  %i.hw = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.hv, ptr noundef nonnull @_ZN6icu_78L12gNamesAllTagE, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #13
  call fastcc void @_ZN6icu_78L20initLeapMonthPatternEPNS_13UnicodeStringEiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringER10UErrorCode(ptr noundef %i.hq, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(600) %48, ptr noundef nonnull align 8 dereferenceable(60) %i.hw, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.hx = load i32, ptr %i.d, align 4
  %i.hy = icmp sgt i32 %i.hx, 0
  %i.hz = load ptr, ptr %i.bj, align 8            ; 8 uses
  br i1 %i.hy, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 72
  %i.ib = load i16, ptr %i.ia, align 8
  %i.ic = icmp ugt i16 %i.ib, 31
  br i1 %i.ic, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  %i.ie = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8copyFromERKS0_a(ptr noundef nonnull align 8 dereferenceable(64) %i.id, ptr noundef nonnull align 8 dereferenceable(64) %i.hz, i8 noundef signext 0) #13 ; 0 uses
  %.pre = load ptr, ptr %i.bj, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.if = phi ptr [ %.pre, %bb.x ], [ %i.hz, %bb.w ] ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 136
  %i.ih = load i16, ptr %i.ig, align 8
  %i.ii = icmp ugt i16 %i.ih, 31
  br i1 %i.ii, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 128
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 320
  %i.il = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8copyFromERKS0_a(ptr noundef nonnull align 8 dereferenceable(64) %i.ij, ptr noundef nonnull align 8 dereferenceable(64) %i.ik, i8 noundef signext 0) #13 ; 0 uses
  %.pre895 = load ptr, ptr %i.bj, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.im = phi ptr [ %.pre895, %bb.z ], [ %i.if, %bb.y ] ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 200
  %i.io = load i16, ptr %i.in, align 8
  %i.ip = icmp ugt i16 %i.io, 31
  br i1 %i.ip, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 192
  %i.ir = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8copyFromERKS0_a(ptr noundef nonnull align 8 dereferenceable(64) %i.iq, ptr noundef nonnull align 8 dereferenceable(64) %i.im, i8 noundef signext 0) #13 ; 0 uses
  %.pre896 = load ptr, ptr %i.bj, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.is = phi ptr [ %.pre896, %bb.ab ], [ %i.im, %bb.aa ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 264
  %i.iu = load i16, ptr %i.it, align 8
  %i.iv = icmp ugt i16 %i.iu, 31
  br i1 %i.iv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 256
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  %i.iy = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8copyFromERKS0_a(ptr noundef nonnull align 8 dereferenceable(64) %i.iw, ptr noundef nonnull align 8 dereferenceable(64) %i.ix, i8 noundef signext 0) #13 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i32 7, ptr %i.bk, align 8
  br label %bb.ai

bb.af:                                            ; preds = %bb.v
  %i.iz = icmp eq ptr %i.hz, null
  br i1 %i.iz, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ja = getelementptr inbounds i8, ptr %i.hz, i64 -8 ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8            ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %.loopexit881, label %.preheader880.preheader

.preheader880.preheader:                          ; preds = %bb.ag
  %.idx = shl nsw i64 %i.jb, 6
  %i.jd = getelementptr inbounds i8, ptr %i.hz, i64 %.idx
  br label %.preheader880

.preheader880:                                    ; preds = %.preheader880.preheader, %.preheader880
  %i.je = phi ptr [ %i.jf, %.preheader880 ], [ %i.jd, %.preheader880.preheader ]
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -64 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_7817DateFormatSymbols14initializeDataERKNS_6LocaleEPKcR10UErrorCodea:bb.a
  %indvars.iv.next.i624 = add nuw nsw i64 %indvars.iv.i623, 1 ; 2 uses
  %i.caj = load i32, ptr %i.be, align 8
  %i.cak = sext i32 %i.caj to i64
  %i.cal = icmp slt i64 %indvars.iv.next.i624, %i.cak
  br i1 %i.cal, label %.lr.ph.i622, label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit625, !llvm.loop !37

bb.iz:                                            ; preds = %bb.iy
  store ptr null, ptr %i.bd, align 8
  store i32 0, ptr %i.be, align 8
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit625.thread

_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit625.thread: ; preds = %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit619, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  br label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit631

_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit625: ; preds = %.lr.ph.i622, %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit619.thread, %_ZN6icu_78L21newUnicodeStringArrayEm.exit.i620
  %.pr720 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cam = icmp sgt i32 %.pr720, 0
  br i1 %i.cam, label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit631.thread, label %bb.ja

bb.ja:                                            ; preds = %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit625
  store i32 4, ptr %i.bg, align 8
  %i.can = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef 264) #13 ; 10 uses
  %i.cao = icmp eq ptr %i.can, null
  br i1 %i.cao, label %bb.jb, label %_ZN6icu_78L21newUnicodeStringArrayEm.exit.i626

_ZN6icu_78L21newUnicodeStringArrayEm.exit.i626:   ; preds = %bb.ja
  store i64 4, ptr %i.can, align 8
  %.ptr866 = getelementptr inbounds nuw i8, ptr %i.can, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr866, align 8
  %i.cap = getelementptr inbounds nuw i8, ptr %i.can, i64 16
  store i16 2, ptr %i.cap, align 8
  %.ptr866.1 = getelementptr inbounds nuw i8, ptr %i.can, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr866.1, align 8
  %i.caq = getelementptr inbounds nuw i8, ptr %i.can, i64 80
  store i16 2, ptr %i.caq, align 8
  %.ptr866.2 = getelementptr inbounds nuw i8, ptr %i.can, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr866.2, align 8
  %i.car = getelementptr inbounds nuw i8, ptr %i.can, i64 144
  store i16 2, ptr %i.car, align 8
  %.ptr866.3 = getelementptr inbounds nuw i8, ptr %i.can, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr866.3, align 8
  %i.cas = getelementptr inbounds nuw i8, ptr %i.can, i64 208
  store i16 2, ptr %i.cas, align 8
  store ptr %.ptr866, ptr %i.bf, align 8
  %i.cat = load i32, ptr %i.bg, align 8
  %i.cau = icmp sgt i32 %i.cat, 0
  br i1 %i.cau, label %.lr.ph.i628, label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit631

.lr.ph.i628:                                      ; preds = %_ZN6icu_78L21newUnicodeStringArrayEm.exit.i626, %.lr.ph.i628
  %indvars.iv.i629 = phi i64 [ %indvars.iv.next.i630, %.lr.ph.i628 ], [ 0, %_ZN6icu_78L21newUnicodeStringArrayEm.exit.i626 ] ; 3 uses
  %i.cav = load ptr, ptr %i.bf, align 8
  %i.caw = getelementptr inbounds nuw [64 x i8], ptr %i.cav, i64 %indvars.iv.i629
  %.idx869 = shl nuw nsw i64 %indvars.iv.i629, 2
  %i.cax = getelementptr inbounds nuw i8, ptr @_ZL19gLastResortQuarters, i64 %.idx869
  store ptr %i.cax, ptr %6, align 8
  %i.cay = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %i.caw, i8 noundef signext 1, ptr noundef nonnull %6, i32 noundef -1) #13 ; 0 uses
  %i.caz = load ptr, ptr %6, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.caz) #13, !srcloc !7
  %indvars.iv.next.i630 = add nuw nsw i64 %indvars.iv.i629, 1 ; 2 uses
  %i.cba = load i32, ptr %i.bg, align 8
  %i.cbb = sext i32 %i.cba to i64
  %i.cbc = icmp slt i64 %indvars.iv.next.i630, %i.cbb
  br i1 %i.cbc, label %.lr.ph.i628, label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit631, !llvm.loop !37

bb.jb:                                            ; preds = %bb.ja
  store ptr null, ptr %i.bf, align 8
  store i32 0, ptr %i.bg, align 8
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit631.thread

_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit631.thread: ; preds = %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit625, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit637

_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit631: ; preds = %.lr.ph.i628, %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit625.thread, %_ZN6icu_78L21newUnicodeStringArrayEm.exit.i626
  %.pr721 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cbd = icmp sgt i32 %.pr721, 0
  br i1 %i.cbd, label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit637, label %bb.jc

bb.jc:                                            ; preds = %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit631
  store i32 4, ptr %i.bi, align 8
  %i.cbe = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef 264) #13 ; 10 uses
  %i.cbf = icmp eq ptr %i.cbe, null
  br i1 %i.cbf, label %bb.jd, label %_ZN6icu_78L21newUnicodeStringArrayEm.exit.i632

_ZN6icu_78L21newUnicodeStringArrayEm.exit.i632:   ; preds = %bb.jc
  store i64 4, ptr %i.cbe, align 8
  %.ptr872 = getelementptr inbounds nuw i8, ptr %i.cbe, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr872, align 8
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbe, i64 16
  store i16 2, ptr %i.cbg, align 8
  %.ptr872.1 = getelementptr inbounds nuw i8, ptr %i.cbe, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr872.1, align 8
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cbe, i64 80
  store i16 2, ptr %i.cbh, align 8
  %.ptr872.2 = getelementptr inbounds nuw i8, ptr %i.cbe, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr872.2, align 8
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbe, i64 144
  store i16 2, ptr %i.cbi, align 8
  %.ptr872.3 = getelementptr inbounds nuw i8, ptr %i.cbe, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr872.3, align 8
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.cbe, i64 208
  store i16 2, ptr %i.cbj, align 8
  store ptr %.ptr872, ptr %i.bh, align 8
  %i.cbk = load i32, ptr %i.bi, align 8
  %i.cbl = icmp sgt i32 %i.cbk, 0
  br i1 %i.cbl, label %.lr.ph.i634, label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit637

.lr.ph.i634:                                      ; preds = %_ZN6icu_78L21newUnicodeStringArrayEm.exit.i632, %.lr.ph.i634
  %indvars.iv.i635 = phi i64 [ %indvars.iv.next.i636, %.lr.ph.i634 ], [ 0, %_ZN6icu_78L21newUnicodeStringArrayEm.exit.i632 ] ; 3 uses
  %i.cbm = load ptr, ptr %i.bh, align 8
  %i.cbn = getelementptr inbounds nuw [64 x i8], ptr %i.cbm, i64 %indvars.iv.i635
  %.idx875 = shl nuw nsw i64 %indvars.iv.i635, 2
  %i.cbo = getelementptr inbounds nuw i8, ptr @_ZL19gLastResortQuarters, i64 %.idx875
  store ptr %i.cbo, ptr %5, align 8
  %i.cbp = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %i.cbn, i8 noundef signext 1, ptr noundef nonnull %5, i32 noundef -1) #13 ; 0 uses
  %i.cbq = load ptr, ptr %5, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.cbq) #13, !srcloc !7
  %indvars.iv.next.i636 = add nuw nsw i64 %indvars.iv.i635, 1 ; 2 uses
  %i.cbr = load i32, ptr %i.bi, align 8
  %i.cbs = sext i32 %i.cbr to i64
  %i.cbt = icmp slt i64 %indvars.iv.next.i636, %i.cbs
  br i1 %i.cbt, label %.lr.ph.i634, label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit637, !llvm.loop !37

bb.jd:                                            ; preds = %bb.jc
  store ptr null, ptr %i.bh, align 8
  store i32 0, ptr %i.bi, align 8
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit637

_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit637: ; preds = %.lr.ph.i634, %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit631.thread, %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit631, %_ZN6icu_78L21newUnicodeStringArrayEm.exit.i632, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr @_ZL13gPatternChars, ptr %59, align 8
  %i.cbu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %i.avu, i8 noundef signext 1, ptr noundef nonnull %59, i32 noundef 37) #13 ; 0 uses
  %i.cbv = load ptr, ptr %59, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.cbv) #13, !srcloc !7
  br label %bb.je

bb.je:                                            ; preds = %_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiPKDs14LastResortSizeS6_R10UErrorCode.exit637, %_ZN6icu_7817DateFormatSymbols11assignArrayERPNS_13UnicodeStringERiPKS1_i.exit479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dereferenceable(12) %57) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %.not.i638 = icmp eq ptr %i.sm, null
  br i1 %.not.i638, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit639, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @ures_close_78(ptr noundef nonnull %i.sm) #13
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit639

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit639: ; preds = %bb.je, %bb.jf
  %.not.i640 = icmp eq ptr %i.sl, null
  br i1 %.not.i640, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit641, label %bb.jg

bb.jg:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit639
  call void @ures_close_78(ptr noundef nonnull %i.sl) #13
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit641

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit641: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit639, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.cbw = icmp eq ptr %i.sb, null
  br i1 %i.cbw, label %_ZN6icu_7812LocalPointerINS_8EraRulesEED2Ev.exit, label %bb.jh

bb.jh:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit641
  call void @_ZN6icu_788EraRulesD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.sb) #13
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.sb) #13
  br label %_ZN6icu_7812LocalPointerINS_8EraRulesEED2Ev.exit

_ZN6icu_7812LocalPointerINS_8EraRulesEED2Ev.exit: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit641, %bb.jh
  %.not.i642 = icmp eq ptr %i.kp, null
  br i1 %.not.i642, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit643, label %bb.ji

bb.ji:                                            ; preds = %_ZN6icu_7812LocalPointerINS_8EraRulesEED2Ev.exit
  call void @ures_close_78(ptr noundef nonnull %i.kp) #13
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit643

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit643: ; preds = %_ZN6icu_7812LocalPointerINS_8EraRulesEED2Ev.exit, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.cbx = load i8, ptr %i.fp, align 4
  %.not.i.i.i644 = icmp eq i8 %i.cbx, 0
  br i1 %.not.i.i.i644, label %_ZN6icu_7810CharStringD2Ev.exit645, label %bb.jj

bb.jj:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit643
  %i.cby = load ptr, ptr %53, align 8
  call void @uprv_free_78(ptr noundef %i.cby) #13
  br label %_ZN6icu_7810CharStringD2Ev.exit645

_ZN6icu_7810CharStringD2Ev.exit645:               ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit643, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #13
  br label %.loopexit882

_ZN6icu_7810CharStringD2Ev.exit.unreachabledefault: ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  unreachable

.loopexit882:                                     ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %_ZN6icu_7810CharStringD2Ev.exit.a, %_ZN6icu_7810CharStringD2Ev.exit645
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %49) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #13
  br label %bb.jk

bb.jk:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkC2ER10UErrorCode.exit, %.loopexit882
  %.not.i646 = icmp eq ptr %i.dt, null
  br i1 %.not.i646, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit647, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @ures_close_78(ptr noundef nonnull %i.dt) #13
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit647

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit647: ; preds = %bb.jk, %bb.jl
  %.not.i648 = icmp eq ptr %i.ds, null
  br i1 %.not.i648, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit649, label %bb.jm

bb.jm:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit647
  call void @ures_close_78(ptr noundef nonnull %i.ds) #13
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit649

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit649: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit647, %bb.jm
  call void @_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(600) %48) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #13
  br label %bb.jn

bb.jn:                                            ; preds = %bb.a, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817DateFormatSymbolsC2ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(872) initializes((0, 8), (328, 338)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7817DateFormatSymbolsE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i16 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i16 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #13
  %i.h = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() #13
  tail call void @_ZN6icu_7817DateFormatSymbols14initializeDataERKNS_6LocaleEPKcR10UErrorCodea(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %1, i8 noundef signext 1)
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817DateFormatSymbolsC2ERKNS_6LocaleEPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(872) initializes((0, 8), (328, 338)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7817DateFormatSymbolsE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i16 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i16 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #13
  tail call void @_ZN6icu_7817DateFormatSymbols14initializeDataERKNS_6LocaleEPKcR10UErrorCodea(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i8 noundef signext 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817DateFormatSymbolsC2EPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(872) initializes((0, 8), (328, 338)) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7817DateFormatSymbolsE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i16 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i16 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #13
  %i.h = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() #13
  tail call void @_ZN6icu_7817DateFormatSymbols14initializeDataERKNS_6LocaleEPKcR10UErrorCodea(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i8 noundef signext 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817DateFormatSymbolsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(872) initializes((0, 8), (328, 338)) %0, ptr noundef nonnull align 8 dereferenceable(872) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7817DateFormatSymbolsE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i16 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i16 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #13
  tail call void @_ZN6icu_7817DateFormatSymbols8copyDataERKS0_(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(872) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817DateFormatSymbols8copyDataERKS0_(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(872) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a) #13 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.f = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.d) #13 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.j, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.h, align 8
  br label %.loopexit.sink.split.i

bb.c:                                             ; preds = %bb.a
  store i32 %i.l, ptr %i.h, align 8
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1) ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = icmp slt i32 %i.l, 0
  %i.q = shl nsw i64 %i.o, 6
  %i.r = or disjoint i64 %i.q, 8
  %i.s = select i1 %i.p, i64 -1, i64 %i.r
  %i.t = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.s) #13 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.w = getelementptr inbounds [64 x i8], ptr %i.v, i64 %i.o
  %i.x = add nsw i64 %i.o, 288230376151711743
  %i.y = and i64 %i.x, 288230376151711743
  %xtraiter = and i64 %i.o, 7
  %i.z = and i32 %i.n, 7
  %lcmp.mod.not = icmp eq i32 %i.z, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.d, %.prol.preheader
  %i.aa = phi ptr [ %i.ac, %.prol.preheader ], [ %i.v, %bb.d ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.d ]
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i16 2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !38

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.d
  %.unr = phi ptr [ %i.v, %bb.d ], [ %i.ac, %.prol.preheader ]
  %i.ad = icmp samesign ult i64 %i.y, 7
  br i1 %i.ad, label %_ZN6icu_78L21newUnicodeStringArrayEm.exit.i, label %.new

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
end_hunk_1
