inline.NumInlined: 136
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@unum_toPattern_78:bb.a

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.n

.thread33:                                        ; preds = %.invoke, %bb.e, %bb.j, %bb.h
  store ptr %2, ptr %7, align 8, !tbaa !21
  %i.u = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 %7, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.thread33
  %i.v = load ptr, ptr %7, align 8, !tbaa !21
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.v) #11, !srcloc !25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.o

bb.m:                                             ; preds = %.thread33
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %7, align 8, !tbaa !21
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.x) #11, !srcloc !25
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.k, %bb.m, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.w, %bb.m ], [ %i.n, %bb.g ], [ %i.t, %bb.k ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %bb.a, %bb.l
  %.0 = phi i32 [ %i.u, %bb.l ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @unum_getSymbol_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::Char16Ptr", align 8 ; 4 uses
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !8
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp ugt i32 %1, 28
  %or.cond3 = or i1 %i.d, %i.e
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4, !tbaa !8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #11 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %4, align 4, !tbaa !8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(136) %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = zext nneg i32 %1 to i64
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m
  store ptr %2, ptr %5, align 8, !tbaa !21
  %i.o = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 %5, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %5, align 8, !tbaa !21
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.p) #11, !srcloc !25
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %5, align 8, !tbaa !21
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.r) #11, !srcloc !25
  resume { ptr, i32 } %i.q

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.a, %bb.b, %bb.d
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.o, %bb.h ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define void @unum_setSymbol_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::DecimalFormatSymbols", align 8 ; 8 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !8
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.k

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
  store i32 1, ptr %4, align 4, !tbaa !8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #11 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %4, align 4, !tbaa !8
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(136) %i.h)
  call void @_ZN6icu_7820DecimalFormatSymbolsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(2459) %5, ptr noundef nonnull align 8 dereferenceable(2459) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  invoke void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %2, i32 noundef %3)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6icu_7820DecimalFormatSymbols9setSymbolENS0_19ENumberFormatSymbolERKNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(2459) %5, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %6, i8 noundef signext 1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(2459) %5)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @_ZN6icu_7820DecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dead_on_return(2459) dereferenceable(2459) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j, %bb.a, %bb.b, %bb.d
  ret void

bb.l:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn33 = phi { ptr, i32 } [ %i.s, %bb.o ], [ %.pn, %bb.n ]
  call void @_ZN6icu_7820DecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dead_on_return(2459) dereferenceable(2459) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %.pn33
}

declare void @_ZN6icu_7820DecimalFormatSymbolsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(2459), ptr noundef nonnull align 8 dereferenceable(2459)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6icu_7820DecimalFormatSymbols9setSymbolENS0_19ENumberFormatSymbolERKNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(2459) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext %3) local_unnamed_addr #9 comdat align 2 {
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
  store i8 1, ptr %5, align 1, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  br label %.thread25

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %1, 29
  br i1 %i.e, label %bb.d, label %.thread25

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.g
  %i.i = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  %i.j = icmp eq i32 %1, 4
  br i1 %i.j, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0) ; 11 uses
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @u_charDigitValue_78(i32 noundef %i.k)
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef 2147483647)
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %.thread25.loopexit, label %bb.h

.thread25.loopexit:                               ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i32 %i.k, ptr %i.p, align 8, !tbaa !38
  %i.q = add nsw i32 %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.s = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %4) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.t = add nsw i32 %i.k, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %4) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.w = add nsw i32 %i.k, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.y = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %4) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.z = add nsw i32 %i.k, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.ab = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %4) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ac = add nsw i32 %i.k, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.ae = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %4) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.af = add nsw i32 %i.k, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.ah = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %4) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ai = add nsw i32 %i.k, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.ak = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %4) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.al = add nsw i32 %i.k, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.an = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %4) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ao = add nsw i32 %i.k, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.aq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %4) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.thread25

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i32 -1, ptr %i.ar, align 8, !tbaa !38
  br label %.thread25

bb.i:                                             ; preds = %bb.d
  %i.as = add i32 %1, -18
  %or.cond = icmp ult i32 %i.as, 9
  br i1 %or.cond, label %bb.j, label %.thread25

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i32 -1, ptr %i.at, align 8, !tbaa !38
  br label %.thread25

.thread25:                                        ; preds = %.thread25.loopexit, %bb.c, %.thread23, %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7820DecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dead_on_return(2459) dereferenceable(2459)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @unum_applyPattern_78(ptr noundef %0, i8 noundef signext %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.UParseError, align 4        ; 4 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.b = icmp eq ptr %4, null
  %spec.store.select = select i1 %i.b, ptr %6, ptr %4
  %i.c = icmp eq ptr %5, null
  %spec.store.select1 = select i1 %i.c, ptr %i.a, ptr %5 ; 2 uses
  %i.d = icmp eq i32 %3, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @u_strlen_78(ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %3, %bb.a ]   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @_ZN6icu_7813UnicodeStringC1EPDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %2, i32 noundef %i.f, i32 noundef %i.f)
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #11 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %.invoke

.invoke:                                          ; preds = %bb.d
  %.not23 = icmp eq i8 %1, 0
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %. = select i1 %.not23, i64 560, i64 576
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(72) %spec.store.select, ptr noundef nonnull align 4 dereferenceable(4) %spec.store.select1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.invoke
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  resume { ptr, i32 } %i.l

.thread:                                          ; preds = %bb.c, %bb.d
  store i32 16, ptr %spec.store.select1, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.invoke, %.thread
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1EPDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @unum_getLocaleByType_78(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4, !tbaa !8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK6icu_786Format11getLocaleIDE18ULocDataLocaleTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.d, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

declare noundef ptr @_ZNK6icu_786Format11getLocaleIDE18ULocDataLocaleTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @unum_setContext_78(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @unum_getContext_78(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @unum_parseToUFormattable_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %2, null
  %i.e = icmp ne i32 %3, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %5, align 4, !tbaa !8
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @ufmt_open_78(ptr noundef nonnull %5) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.023 = phi ptr [ %i.g, %bb.f ], [ %1, %bb.e ]  ; 2 uses
  %.0 = phi ptr [ %i.g, %bb.f ], [ null, %bb.e ]  ; 2 uses
  tail call fastcc void @_ZL8parseResRN6icu_7811FormattableEPKPvPKDsiPiP10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %.023, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5)
  %i.h = load i32, ptr %5, align 4, !tbaa !8
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = icmp ne ptr %.0, null
  %or.cond3 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ufmt_close_78(ptr noundef nonnull %.0)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.d
  %.022 = phi ptr [ %1, %bb.a ], [ %1, %bb.d ], [ null, %bb.h ], [ %.023, %bb.g ]
  ret ptr %.022
}

declare ptr @ufmt_open_78(ptr noundef) local_unnamed_addr #2

declare void @ufmt_close_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @unum_formatUFormattable_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %7 = alloca %"class.icu_78::FieldPosition", align 8 ; 10 uses
  %8 = alloca %"class.icu_78::Char16Ptr", align 8 ; 4 uses
  %i.a = load i32, ptr %5, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not28 = icmp eq i32 %3, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = icmp slt i32 %3, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  store i32 1, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN6icu_7813UnicodeStringC1EPDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %2, i32 noundef 0, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813FieldPositionE, i64 16), ptr %7, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 -1, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !17
  %.not29 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not29, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load i32, ptr %4, align 4, !tbaa !18
  store i32 %i.j, ptr %i.g, align 8, !tbaa !13
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.l = load ptr, ptr %0, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.k unwind label %bb.i       ; 0 uses

bb.k:                                             ; preds = %bb.j
  br i1 %.not29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load <2 x i32>, ptr %i.h, align 4, !tbaa !20
  store <2 x i32> %i.q, ptr %i.p, align 4, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %2, ptr %8, align 8, !tbaa !21
  %i.r = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 %8, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.s = load ptr, ptr %8, align 8, !tbaa !21
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.s) #11, !srcloc !25
  call void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %8, align 8, !tbaa !21
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.u) #11, !srcloc !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i
  %.pn = phi { ptr, i32 } [ %i.t, %bb.o ], [ %i.k, %bb.i ]
  call void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %bb.a, %bb.n, %bb.f
  %.024 = phi i32 [ %i.r, %bb.n ], [ 0, %bb.f ], [ 0, %bb.a ]
  ret i32 %.024
}

declare noundef nonnull align 8 dereferenceable(28) ptr @_ZNK6icu_7814CurrencyAmount11getCurrencyEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

declare i32 @u_charDigitValue_78(i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_ZTS10UErrorCode", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !7, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !5, i64 8}
!14 = !{!"_ZTSN6icu_7813FieldPositionE", !15, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!15 = !{!"_ZTSN6icu_787UObjectE"}
!16 = !{!14, !5, i64 12}
!17 = !{!14, !5, i64 16}
!18 = !{!19, !5, i64 0}
!19 = !{!"_ZTS14UFieldPosition", !5, i64 0, !5, i64 4, !5, i64 8}
!20 = !{!5, !5, i64 0}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSN6icu_789Char16PtrE", !23, i64 0}
!23 = !{!"p1 char16_t", !24, i64 0}
!24 = !{!"any pointer", !6, i64 0}
!25 = !{i64 2150009894}
!26 = !{!27, !23, i64 0}
!27 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !23, i64 0}
!28 = !{i64 2150010000}
!29 = !{!30, !5, i64 8}
!30 = !{!"_ZTSN6icu_7813ParsePositionE", !15, i64 0, !5, i64 8, !5, i64 12}
!31 = !{!30, !5, i64 12}
!32 = !{!33, !33, i64 0}
!33 = !{!"char16_t", !6, i64 0}
!34 = distinct !{null}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = !{!39, !5, i64 1928}
!39 = !{!"_ZTSN6icu_7820DecimalFormatSymbolsE", !15, i64 0, !6, i64 8, !40, i64 1864, !5, i64 1928, !42, i64 1936, !42, i64 1976, !42, i64 2016, !23, i64 2056, !6, i64 2064, !6, i64 2256, !6, i64 2448, !6, i64 2449, !6, i64 2450}
!40 = !{!"_ZTSN6icu_7813UnicodeStringE", !41, i64 0, !6, i64 8}
!41 = !{!"_ZTSN6icu_7811ReplaceableE", !15, i64 0}
!42 = !{!"_ZTSN6icu_786LocaleE", !15, i64 0, !6, i64 8}
end_hunk_0
