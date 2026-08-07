inline.NumInlined: 94
inline.NumDeleted: 23
begin_hunk_0_@_ZN6icu_786number4impl10AffixUtils14estimateLengthERKNS_13UnicodeStringER10UErrorCode:bb.a

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp eq i32 %i.j, 39
  %i.n = add nsw i32 %.01929, 1
  %. = select i1 %i.m, i32 0, i32 2
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.o = icmp ne i32 %i.j, 39                     ; 2 uses
  %i.p = zext i1 %i.o to i32
  %spec.select24 = add nsw i32 %.01929, %i.p
  %spec.select25 = select i1 %i.o, i32 2, i32 3
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp eq i32 %i.j, 39
  %i.r = add nsw i32 %.01929, 1
  %.22 = select i1 %i.q, i32 2, i32 3
  br label %bb.f

.unreachabledefault:                              ; preds = %.lr.ph
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e, %bb.c
  %.120 = phi i32 [ %i.r, %bb.e ], [ %spec.select24, %bb.d ], [ %i.n, %bb.c ], [ %spec.select, %bb.b ] ; 3 uses
  %.1 = phi i32 [ %.22, %bb.e ], [ %spec.select25, %bb.d ], [ %., %bb.c ], [ %spec.select23, %bb.b ] ; 2 uses
  %i.s = icmp ult i32 %i.j, 65536
  %i.t = select i1 %i.s, i32 1, i32 2
  %i.u = add nuw nsw i32 %i.t, %.02128            ; 2 uses
  %i.v = load i16, ptr %i.a, align 8              ; 2 uses
  %i.w = icmp slt i16 %i.v, 0
  %i.x = ashr i16 %i.v, 5
  %i.y = sext i16 %i.x to i32
  %i.z = load i32, ptr %i.b, align 4
  %i.aa = select i1 %i.w, i32 %i.z, i32 %i.y
  %i.ab = icmp slt i32 %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.f
  %i.ac = add nsw i32 %.1, -1
  %i.ad = icmp ult i32 %i.ac, 2
  br i1 %i.ad, label %bb.g, label %._crit_edge.thread

bb.g:                                             ; preds = %._crit_edge
  store i32 1, ptr %1, align 4
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %bb.g
  %.019.lcssa34 = phi i32 [ %.120, %bb.g ], [ %.120, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.019.lcssa34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl10AffixUtils6escapeERKNS_13UnicodeStringE(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i16, ptr %i.e, align 8              ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = load i32, ptr %i.f, align 4
  %i.l = select i1 %i.h, i32 %i.k, i32 %i.j
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.017 = phi i32 [ %.1, %bb.i ], [ 0, %bb.a ]    ; 5 uses
  %.01416 = phi i32 [ %i.z, %bb.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.01416) #11 ; 6 uses
  switch i32 %i.n, label %bb.f [
    i32 39, label %bb.b
    i32 45, label %bb.c
    i32 43, label %bb.c
    i32 37, label %bb.c
    i32 8240, label %bb.c
    i32 164, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.o = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef -1) #11 ; 0 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str) #11, !srcloc !7
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.p = icmp eq i32 %.017, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 39, ptr %i.c, align 2
  %i.q = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.n) #11 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.s = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.n) #11 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph
  %i.t = icmp eq i32 %.017, 2
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 39, ptr %i.b, align 2
  %i.u = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.n) #11 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.n) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ 0, %bb.g ], [ %.017, %bb.h ], [ %.017, %bb.b ], [ 2, %bb.d ], [ %.017, %bb.e ] ; 2 uses
  %i.x = icmp ult i32 %i.n, 65536
  %i.y = select i1 %i.x, i32 1, i32 2
  %i.z = add nuw nsw i32 %i.y, %.01416            ; 2 uses
  %i.aa = load i16, ptr %i.e, align 8             ; 2 uses
  %i.ab = icmp slt i16 %i.aa, 0
  %i.ac = ashr i16 %i.aa, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = load i32, ptr %i.f, align 4
  %i.af = select i1 %i.ab, i32 %i.ae, i32 %i.ad
  %i.ag = icmp slt i32 %i.z, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.i
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 39, ptr %i.a, align 2
  %i.ah = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %bb.j
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local range(i8 39, 46) i8 @_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE(i32 noundef %0) local_unnamed_addr #8 align 2 {
bb.a:
  %switch.tableidx = add i32 %0, 15               ; 2 uses
  %i.a = icmp ugt i32 %0, -16
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 32737, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #10
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  ret i8 %switch.load
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_786number4impl10AffixUtils8unescapeERKNS_13UnicodeStringERNS_22FormattedStringBuilderEiRKNS1_14SymbolProviderENS6_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.k
  %.sroa.027.0.extract.trunc44 = phi i32 [ 0, %bb.a ], [ %.sroa.027.0.extract.trunc, %bb.k ] ; 4 uses
  %.02643 = phi i32 [ 0, %bb.a ], [ %.1, %bb.k ]  ; 7 uses
  %.sroa.7.042 = phi i64 [ 0, %bb.a ], [ %i.ak, %bb.k ] ; 2 uses
  %.sroa.027.041 = phi i64 [ 0, %bb.a ], [ %i.aj, %bb.k ] ; 2 uses
  %i.e = icmp eq i32 %.sroa.027.0.extract.trunc44, 0
  br i1 %i.e, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.7.042 to i32
  switch i32 %.sroa.7.8.extract.trunc, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread [
    i32 2, label %bb.d
    i32 0, label %.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load i16, ptr %i.a, align 8              ; 3 uses
  %i.g = icmp slt i16 %i.f, 0
  %i.h = ashr i16 %i.f, 5
  %i.i = sext i16 %i.h to i32
  %i.j = load i32, ptr %i.b, align 4
  %i.k = select i1 %i.g, i32 %i.j, i32 %i.i       ; 2 uses
  %i.l = add nsw i32 %i.k, -1
  %i.m = icmp eq i32 %i.l, %.sroa.027.0.extract.trunc44
  %7 = icmp ugt i32 %i.k, %.sroa.027.0.extract.trunc44
  %or.cond.i = and i1 %7, %i.m
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.d
  %i.n = and i16 %i.f, 2
  %.not.i.i.i.i = icmp eq i16 %i.n, 0
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = select i1 %.not.i.i.i.i, ptr %i.o, ptr %i.c
  %i.q = and i64 %.sroa.027.041, 2147483647
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2
  %i.t = icmp eq i16 %i.s, 39
  br i1 %i.t, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread38, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

.split:                                           ; preds = %bb.c
  %i.u = load i16, ptr %i.a, align 8              ; 2 uses
  %i.v = icmp slt i16 %i.u, 0
  %i.w = ashr i16 %i.u, 5
  %i.x = sext i16 %i.w to i32
  %i.y = load i32, ptr %i.b, align 4
  %i.z = select i1 %i.v, i32 %i.y, i32 %i.x
  %i.aa = icmp sgt i32 %i.z, %.sroa.027.0.extract.trunc44
  br i1 %i.aa, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread38

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  %i.ab = load i16, ptr %i.a, align 8             ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.b, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread38

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.d, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.c, %.split, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit
  %i.ai = call { i64, i64 } @_ZN6icu_786number4impl10AffixUtils9nextTokenENS1_8AffixTagERKNS_13UnicodeStringER10UErrorCode(i64 %.sroa.027.041, i64 %.sroa.7.042, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0      ; 3 uses
  %i.ak = extractvalue { i64, i64 } %i.ai, 1      ; 4 uses
  %i.al = load i32, ptr %5, align 4
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.e, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread38

bb.e:                                             ; preds = %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread
  %.sroa.7.12.extract.shift34 = lshr i64 %i.ak, 32 ; 3 uses
  %.sroa.7.12.extract.trunc35 = trunc nuw i64 %.sroa.7.12.extract.shift34 to i32
  %i.an = icmp eq i64 %.sroa.7.12.extract.shift34, 4294967281
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = add nsw i32 %.02643, %2
  %i.ap = call noundef i32 @_ZN6icu_7822FormattedStringBuilder15insertCodePointEiiNS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %i.ao, i32 noundef 65533, i8 39, ptr noundef nonnull align 4 dereferenceable(4) %5) #11
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.aq = icmp slt i64 %i.ak, 0
  %i.ar = add nsw i32 %.02643, %2                 ; 2 uses
  br i1 %i.aq, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.as = load ptr, ptr %3, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.sroa.7.12.extract.trunc35) #11
  %i.av = icmp ugt i64 %i.ak, -42949672961
  br i1 %i.av, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @abort() #10
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %switch.tableidx = add nuw nsw i64 %.sroa.7.12.extract.shift34, 10
  %i.aw = and i64 %switch.tableidx, 4294967295
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6icu_786number4impl10AffixUtils8unescapeERKNS_13UnicodeStringERNS_22FormattedStringBuilderEiRKNS1_14SymbolProviderENS6_5FieldER10UErrorCode, i64 %i.aw
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ax = call noundef i32 @_ZN6icu_7822FormattedStringBuilder6insertEiRKNS_13UnicodeStringENS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %6, i8 %switch.load, ptr noundef nonnull align 4 dereferenceable(4) %5) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.sroa.027.4.extract.shift = lshr i64 %i.aj, 32
  %.sroa.027.4.extract.trunc = trunc nuw i64 %.sroa.027.4.extract.shift to i32
  %i.ay = call noundef i32 @_ZN6icu_7822FormattedStringBuilder15insertCodePointEiiNS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %i.ar, i32 noundef %.sroa.027.4.extract.trunc, i8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #11
  br label %bb.k

bb.k:                                             ; preds = %switch.lookup, %bb.j, %bb.f
  %.pn = phi i32 [ %i.ap, %bb.f ], [ %i.ax, %switch.lookup ], [ %i.ay, %bb.j ]
  %.1 = add nsw i32 %.pn, %.02643                 ; 2 uses
  %.sroa.027.0.extract.trunc = trunc i64 %i.aj to i32 ; 2 uses
  %i.az = icmp slt i32 %.sroa.027.0.extract.trunc, 0
  br i1 %i.az, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread38, label %bb.b, !llvm.loop !9

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread38: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.k, %.split, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread
  %.026.lcssa = phi i32 [ %.02643, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ %.1, %bb.k ], [ %.02643, %.split ], [ %.02643, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit ], [ %.02643, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread ]
  ret i32 %.026.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 6 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h
  %i.l = icmp sgt i32 %i.k, 0
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4
  switch i32 %i.n, label %bb.g [
    i32 2, label %bb.e
    i32 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i16, ptr %i.o, align 8              ; 3 uses
  %i.q = icmp slt i16 %i.p, 0
  %i.r = ashr i16 %i.p, 5
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = select i1 %i.q, i32 %i.u, i32 %i.s       ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  %i.x = icmp eq i32 %i.a, %i.w
  %2 = icmp ult i32 %i.a, %i.v
  %or.cond = and i1 %2, %i.x
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.e
  %i.y = and i16 %i.p, 2
  %.not.i.i.i = icmp eq i16 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = select i1 %.not.i.i.i, ptr %i.ab, ptr %i.z
  %i.ad = zext nneg i32 %i.a to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = icmp eq i16 %i.af, 39
  br i1 %i.ag, label %bb.g, label %.thread

.thread:                                          ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.e
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i16, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp slt i16 %i.ai, 0
  %i.ak = ashr i16 %i.ai, 5
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = select i1 %i.aj, i32 %i.an, i32 %i.al
  %i.ap = icmp slt i32 %i.a, %i.ao
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.a, %bb.f, %bb.c
  %.0 = phi i1 [ %i.ap, %bb.f ], [ %i.l, %bb.c ], [ false, %bb.a ], [ false, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ true, %bb.d ], [ true, %.thread ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i64 } @_ZN6icu_786number4impl10AffixUtils9nextTokenENS1_8AffixTagERKNS_13UnicodeStringER10UErrorCode(i64 %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32  ; 3 uses
  %.sroa.273.8.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = load i32, ptr %i.b, align 4
  %i.h = select i1 %i.d, i32 %i.g, i32 %i.f
  %i.i = icmp sgt i32 %i.h, %.sroa.0.0.extract.trunc
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.af
  %.074298 = phi i32 [ %.2, %bb.af ], [ %.sroa.0.0.extract.trunc, %bb.a ] ; 27 uses
  %.075297 = phi i32 [ %.277, %bb.af ], [ %.sroa.273.8.extract.trunc, %bb.a ]
  %i.j = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.074298) #11 ; 16 uses
  switch i32 %.075297, label %bb.ae [
    i32 0, label %bb.b
    i32 1, label %bb.k
    i32 2, label %bb.n
    i32 3, label %bb.q
    i32 4, label %bb.s
    i32 5, label %bb.u
    i32 6, label %bb.w
    i32 7, label %bb.y
    i32 8, label %bb.aa
    i32 9, label %bb.ac
  ]

bb.b:                                             ; preds = %.lr.ph
  switch i32 %i.j, label %bb.j [
    i32 39, label %bb.c
    i32 45, label %bb.d
    i32 43, label %bb.e
    i32 126, label %bb.f
    i32 37, label %bb.g
    i32 8240, label %bb.h
    i32 164, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.074298, 1
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %i.l = add nsw i32 %.074298, 1
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.m = add nsw i32 %.074298, 1
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.074298, 1
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.o = add nsw i32 %.074298, 1
  br label %.critedge

bb.h:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.074298, 1
  br label %.critedge

bb.i:                                             ; preds = %bb.b
  %i.q = add nsw i32 %.074298, 1
  br label %bb.af

bb.j:                                             ; preds = %bb.b
  %i.r = icmp ult i32 %i.j, 65536
  %i.s = select i1 %i.r, i32 1, i32 2
  %i.t = add nsw i32 %i.s, %.074298
  br label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.u = icmp eq i32 %i.j, 39
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %.074298, 1
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.w = icmp ult i32 %i.j, 65536
  %i.x = select i1 %i.w, i32 1, i32 2
  %i.y = add nsw i32 %i.x, %.074298
  br label %.critedge

bb.n:                                             ; preds = %.lr.ph
  %i.z = icmp eq i32 %i.j, 39
  br i1 %i.z, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = add nsw i32 %.074298, 1
  br label %bb.af

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp ult i32 %i.j, 65536
  %i.ac = select i1 %i.ab, i32 1, i32 2
  %i.ad = add nsw i32 %i.ac, %.074298
  br label %.critedge

bb.q:                                             ; preds = %.lr.ph
  %i.ae = icmp eq i32 %i.j, 39
  br i1 %i.ae, label %bb.r, label %bb.af

bb.r:                                             ; preds = %bb.q
  %i.af = add nsw i32 %.074298, 1
  br label %.critedge

bb.s:                                             ; preds = %.lr.ph
  %i.ag = icmp eq i32 %i.j, 164
  br i1 %i.ag, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ah = add nsw i32 %.074298, 1
  br label %bb.af

bb.u:                                             ; preds = %.lr.ph
  %i.ai = icmp eq i32 %i.j, 164
  br i1 %i.ai, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.aj = add nsw i32 %.074298, 1
  br label %bb.af

bb.w:                                             ; preds = %.lr.ph
  %i.ak = icmp eq i32 %i.j, 164
  br i1 %i.ak, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.al = add nsw i32 %.074298, 1
  br label %bb.af

bb.y:                                             ; preds = %.lr.ph
  %i.am = icmp eq i32 %i.j, 164
  br i1 %i.am, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.an = add nsw i32 %.074298, 1
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.ao = icmp eq i32 %i.j, 164
  br i1 %i.ao, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ap = add nsw i32 %.074298, 1
  br label %bb.af

bb.ac:                                            ; preds = %.lr.ph
  %i.aq = icmp eq i32 %i.j, 164
  br i1 %i.aq, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.ar = add nsw i32 %.074298, 1
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph
  tail call void @abort() #10
  unreachable

bb.af:                                            ; preds = %bb.o, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.i, %bb.c, %bb.q
  %.277 = phi i32 [ 5, %bb.t ], [ 6, %bb.v ], [ 7, %bb.x ], [ 8, %bb.z ], [ 9, %bb.ab ], [ 0, %bb.q ], [ 1, %bb.c ], [ 4, %bb.i ], [ 3, %bb.o ], [ 9, %bb.ad ] ; 2 uses
  %.2 = phi i32 [ %i.ah, %bb.t ], [ %i.aj, %bb.v ], [ %i.al, %bb.x ], [ %i.an, %bb.z ], [ %i.ap, %bb.ab ], [ %.074298, %bb.q ], [ %i.k, %bb.c ], [ %i.q, %bb.i ], [ %i.aa, %bb.o ], [ %i.ar, %bb.ad ] ; 3 uses
  %i.as = load i16, ptr %i.a, align 8             ; 2 uses
  %i.at = icmp slt i16 %i.as, 0
  %i.au = ashr i16 %i.as, 5
  %i.av = sext i16 %i.au to i32
  %i.aw = load i32, ptr %i.b, align 4
  %i.ax = select i1 %i.at, i32 %i.aw, i32 %i.av
  %i.ay = icmp slt i32 %.2, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.af, %bb.a
  %.075.lcssa = phi i32 [ %.sroa.273.8.extract.trunc, %bb.a ], [ %.277, %bb.af ]
  %.074.lcssa = phi i32 [ %.sroa.0.0.extract.trunc, %bb.a ], [ %.2, %bb.af ] ; 6 uses
  switch i32 %.075.lcssa, label %bb.an [
    i32 0, label %.critedge
    i32 1, label %bb.ag
    i32 2, label %bb.ag
    i32 3, label %.critedge
    i32 4, label %bb.ah
    i32 5, label %bb.ai
    i32 6, label %bb.aj
    i32 7, label %bb.ak
    i32 8, label %bb.al
    i32 9, label %bb.am
  ]

bb.ag:                                            ; preds = %._crit_edge, %._crit_edge
  store i32 1, ptr %3, align 4
  br label %.critedge

bb.ah:                                            ; preds = %._crit_edge
  br label %.critedge

bb.ai:                                            ; preds = %._crit_edge
  br label %.critedge

bb.aj:                                            ; preds = %._crit_edge
  br label %.critedge

bb.ak:                                            ; preds = %._crit_edge
  br label %.critedge

bb.al:                                            ; preds = %._crit_edge
  br label %.critedge

bb.am:                                            ; preds = %._crit_edge
  br label %.critedge

bb.an:                                            ; preds = %._crit_edge
  tail call void @abort() #10
  unreachable

.critedge:                                        ; preds = %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %._crit_edge, %._crit_edge, %bb.j, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.l, %bb.m, %bb.p, %bb.r, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sroa.26.sroa.23.0 = phi i64 [ 0, %bb.j ], [ -4294967296, %bb.d ], [ -8589934592, %bb.e ], [ -12884901888, %bb.f ], [ -17179869184, %bb.g ], [ -21474836480, %bb.h ], [ 0, %bb.l ], [ 2, %bb.m ], [ 2, %bb.p ], [ 2, %bb.r ], [ undef, %._crit_edge ], [ -25769803776, %bb.ah ], [ -30064771072, %bb.ai ], [ -34359738368, %bb.aj ], [ -38654705664, %bb.ak ], [ -42949672960, %bb.al ], [ -64424509440, %bb.am ], [ undef, %bb.ag ], [ undef, %._crit_edge ], [ -64424509440, %bb.ac ], [ -42949672960, %bb.aa ], [ -38654705664, %bb.y ], [ -34359738368, %bb.w ], [ -30064771072, %bb.u ], [ -25769803776, %bb.s ]
  %.sroa.26.sroa.0.0 = phi i32 [ %i.j, %bb.j ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 39, %bb.l ], [ %i.j, %bb.m ], [ %i.j, %bb.p ], [ 39, %bb.r ], [ undef, %._crit_edge ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.am ], [ undef, %bb.ag ], [ undef, %._crit_edge ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.ac ]
  %.sroa.0.0 = phi i32 [ %i.t, %bb.j ], [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ], [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.v, %bb.l ], [ %i.y, %bb.m ], [ %i.ad, %bb.p ], [ %i.af, %bb.r ], [ -1, %._crit_edge ], [ %.074.lcssa, %bb.ah ], [ %.074.lcssa, %bb.ai ], [ %.074.lcssa, %bb.aj ], [ %.074.lcssa, %bb.ak ], [ %.074.lcssa, %bb.al ], [ %.074.lcssa, %bb.am ], [ -1, %bb.ag ], [ -1, %._crit_edge ], [ %.074298, %bb.s ], [ %.074298, %bb.u ], [ %.074298, %bb.w ], [ %.074298, %bb.y ], [ %.074298, %bb.aa ], [ %.074298, %bb.ac ]
  %.sroa.26.0.insert.ext = zext i32 %.sroa.26.sroa.0.0 to i64
  %.sroa.26.0.insert.shift = shl nuw i64 %.sroa.26.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.26.0.insert.shift, %.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.26.sroa.23.0, 1
  ret { i64, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6icu_7822FormattedStringBuilder15insertCodePointEiiNS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, i32 noundef, i8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef i32 @_ZN6icu_7822FormattedStringBuilder6insertEiRKNS_13UnicodeStringENS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), i8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_786number4impl10AffixUtils23unescapedCodePointCountERKNS_13UnicodeStringERKNS1_14SymbolProviderER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.j
  %.sroa.0.0.extract.trunc24 = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.extract.trunc, %bb.j ] ; 4 uses
  %.01123 = phi i32 [ 0, %bb.a ], [ %.1, %bb.j ]  ; 7 uses
  %.sroa.0.022 = phi i64 [ 0, %bb.a ], [ %i.al, %bb.j ] ; 2 uses
  %.sroa.7.021 = phi i64 [ 0, %bb.a ], [ %i.am, %bb.j ] ; 2 uses
  %i.g = icmp eq i32 %.sroa.0.0.extract.trunc24, 0
  br i1 %i.g, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.7.021 to i32
  switch i32 %.sroa.7.8.extract.trunc, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread [
    i32 2, label %bb.d
    i32 0, label %.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load i16, ptr %i.a, align 8              ; 3 uses
  %i.i = icmp slt i16 %i.h, 0
  %i.j = ashr i16 %i.h, 5
  %i.k = sext i16 %i.j to i32
  %i.l = load i32, ptr %i.b, align 4
  %i.m = select i1 %i.i, i32 %i.l, i32 %i.k       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = icmp eq i32 %i.n, %.sroa.0.0.extract.trunc24
  %4 = icmp ugt i32 %i.m, %.sroa.0.0.extract.trunc24
  %or.cond.i = and i1 %4, %i.o
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.d
  %i.p = and i16 %i.h, 2
  %.not.i.i.i.i = icmp eq i16 %i.p, 0
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = select i1 %.not.i.i.i.i, ptr %i.q, ptr %i.c
  %i.s = and i64 %.sroa.0.022, 2147483647
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  %i.v = icmp eq i16 %i.u, 39
  br i1 %i.v, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread19, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

.split:                                           ; preds = %bb.c
  %i.w = load i16, ptr %i.a, align 8              ; 2 uses
  %i.x = icmp slt i16 %i.w, 0
  %i.y = ashr i16 %i.w, 5
  %i.z = sext i16 %i.y to i32
  %i.aa = load i32, ptr %i.b, align 4
  %i.ab = select i1 %i.x, i32 %i.aa, i32 %i.z
  %i.ac = icmp sgt i32 %i.ab, %.sroa.0.0.extract.trunc24
  br i1 %i.ac, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread19

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  %i.ad = load i16, ptr %i.a, align 8             ; 2 uses
  %i.ae = icmp slt i16 %i.ad, 0
  %i.af = ashr i16 %i.ad, 5
  %i.ag = sext i16 %i.af to i32
  %i.ah = load i32, ptr %i.b, align 4
  %i.ai = select i1 %i.ae, i32 %i.ah, i32 %i.ag
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread19

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.d, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.c, %.split, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit
  %i.ak = call { i64, i64 } @_ZN6icu_786number4impl10AffixUtils9nextTokenENS1_8AffixTagERKNS_13UnicodeStringER10UErrorCode(i64 %.sroa.0.022, i64 %.sroa.7.021, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0      ; 3 uses
  %i.am = extractvalue { i64, i64 } %i.ak, 1      ; 3 uses
  %i.an = load i32, ptr %2, align 4
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.e, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread19

bb.e:                                             ; preds = %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread
  %.sroa.7.12.extract.shift15 = lshr i64 %i.am, 32 ; 2 uses
  %.sroa.7.12.extract.trunc16 = trunc nuw i64 %.sroa.7.12.extract.shift15 to i32
  %i.ap = icmp eq i64 %.sroa.7.12.extract.shift15, 4294967281
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = add nsw i32 %.01123, 1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ar = icmp slt i64 %i.am, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.as = load ptr, ptr %1, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.sroa.7.12.extract.trunc16) #11
  %i.av = load i16, ptr %i.e, align 8             ; 2 uses
  %i.aw = icmp slt i16 %i.av, 0
  %i.ax = ashr i16 %i.av, 5
  %i.ay = sext i16 %i.ax to i32
  %i.az = load i32, ptr %i.f, align 4
  %i.ba = select i1 %i.aw, i32 %i.az, i32 %i.ay
  %i.bb = add nsw i32 %i.ba, %.01123
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bc = icmp ult i64 %i.al, 281474976710656
  %i.bd = select i1 %i.bc, i32 1, i32 2
  %i.be = add nsw i32 %i.bd, %.01123
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.1 = phi i32 [ %i.aq, %bb.f ], [ %i.bb, %bb.h ], [ %i.be, %bb.i ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.al to i32 ; 2 uses
  %i.bf = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.bf, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread19, label %bb.b, !llvm.loop !11

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread19: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.j, %.split, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread
  %.011.lcssa = phi i32 [ %.01123, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ %.1, %bb.j ], [ %.01123, %.split ], [ %.01123, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit ], [ %.01123, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread ]
  ret i32 %.011.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6icu_786number4impl10AffixUtils12containsTypeERKNS_13UnicodeStringENS1_16AffixPatternTypeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread11, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.sroa.6.0 = phi i64 [ %i.at, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.au, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0 to i32 ; 5 uses
  %i.l = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.l, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.m, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.6.8.extract.trunc = trunc i64 %.sroa.6.0 to i32
  switch i32 %.sroa.6.8.extract.trunc, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread [
    i32 2, label %bb.e
    i32 0, label %.split
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load i16, ptr %i.a, align 8              ; 3 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = load i32, ptr %i.f, align 4
  %i.s = select i1 %i.o, i32 %i.r, i32 %i.q       ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  %i.u = icmp eq i32 %i.t, %.sroa.0.0.extract.trunc
  %3 = icmp ugt i32 %i.s, %.sroa.0.0.extract.trunc
  %or.cond.i = and i1 %3, %i.u
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.e
  %i.v = and i16 %i.n, 2
  %.not.i.i.i.i = icmp eq i16 %i.v, 0
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = select i1 %.not.i.i.i.i, ptr %i.w, ptr %i.j
  %i.y = and i64 %.sroa.0.0, 2147483647
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = icmp eq i16 %i.aa, 39
  br i1 %i.ab, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread11, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

.split:                                           ; preds = %bb.d
  %i.ac = load i16, ptr %i.a, align 8             ; 2 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.f, align 4
  %i.ah = select i1 %i.ad, i32 %i.ag, i32 %i.af
  %i.ai = icmp sgt i32 %i.ah, %.sroa.0.0.extract.trunc
  br i1 %i.ai, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread11

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit: ; preds = %bb.c
  %i.aj = load i16, ptr %i.a, align 8             ; 2 uses
  %i.ak = icmp slt i16 %i.aj, 0
  %i.al = ashr i16 %i.aj, 5
  %i.am = sext i16 %i.al to i32
  %i.an = load i32, ptr %i.f, align 4
  %i.ao = select i1 %i.ak, i32 %i.an, i32 %i.am
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread11

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.d, %.split, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit
  %i.aq = tail call { i64, i64 } @_ZN6icu_786number4impl10AffixUtils9nextTokenENS1_8AffixTagERKNS_13UnicodeStringER10UErrorCode(i64 %.sroa.0.0, i64 %.sroa.6.0, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.ar = load i32, ptr %2, align 4
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.f, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread11

bb.f:                                             ; preds = %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread
  %i.at = extractvalue { i64, i64 } %i.aq, 1      ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.aq, 0
  %.sroa.6.12.extract.shift = lshr i64 %i.at, 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32
  %i.av = icmp eq i32 %1, %.sroa.6.12.extract.trunc
  br i1 %i.av, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread11, label %bb.b, !llvm.loop !12

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread11: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.b, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, %bb.f, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, %.split, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ false, %bb.b ], [ false, %.split ], [ false, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit ], [ false, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread ], [ true, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6icu_786number4impl10AffixUtils18hasCurrencySymbolsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.critedge
  %.sroa.08.0.extract.trunc21 = phi i32 [ 0, %.preheader ], [ %.sroa.08.0.extract.trunc, %.critedge ] ; 4 uses
  %.sroa.6.020 = phi i64 [ 0, %.preheader ], [ %i.ar, %.critedge ] ; 2 uses
  %.sroa.08.019 = phi i64 [ 0, %.preheader ], [ %i.aq, %.critedge ] ; 2 uses
  %i.l = icmp eq i32 %.sroa.08.0.extract.trunc21, 0
  br i1 %i.l, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.6.8.extract.trunc = trunc i64 %.sroa.6.020 to i32
  switch i32 %.sroa.6.8.extract.trunc, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread [
    i32 2, label %bb.d
    i32 0, label %.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i16, ptr %i.a, align 8              ; 3 uses
  %i.n = icmp slt i16 %i.m, 0
  %i.o = ashr i16 %i.m, 5
  %i.p = sext i16 %i.o to i32
  %i.q = load i32, ptr %i.f, align 4
  %i.r = select i1 %i.n, i32 %i.q, i32 %i.p       ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  %i.t = icmp eq i32 %i.s, %.sroa.08.0.extract.trunc21
  %2 = icmp ugt i32 %i.r, %.sroa.08.0.extract.trunc21
  %or.cond.i = and i1 %2, %i.t
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.d
  %i.u = and i16 %i.m, 2
  %.not.i.i.i.i = icmp eq i16 %i.u, 0
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = select i1 %.not.i.i.i.i, ptr %i.v, ptr %i.j
  %i.x = and i64 %.sroa.08.019, 2147483647
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = icmp eq i16 %i.z, 39
  br i1 %i.aa, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

.split:                                           ; preds = %bb.c
  %i.ab = load i16, ptr %i.a, align 8             ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.f, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = icmp sgt i32 %i.ag, %.sroa.08.0.extract.trunc21
  br i1 %i.ah, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  %i.ai = load i16, ptr %i.a, align 8             ; 2 uses
  %i.aj = icmp slt i16 %i.ai, 0
  %i.ak = ashr i16 %i.ai, 5
  %i.al = sext i16 %i.ak to i32
  %i.am = load i32, ptr %i.f, align 4
  %i.an = select i1 %i.aj, i32 %i.am, i32 %i.al
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.d, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.c, %.split, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit
  %i.ap = tail call { i64, i64 } @_ZN6icu_786number4impl10AffixUtils9nextTokenENS1_8AffixTagERKNS_13UnicodeStringER10UErrorCode(i64 %.sroa.08.019, i64 %.sroa.6.020, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.ap, 1      ; 3 uses
  %i.as = load i32, ptr %1, align 4
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.e, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit

bb.e:                                             ; preds = %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread
  %i.au = icmp slt i64 %i.ar, 0
  br i1 %i.au, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %.sroa.6.12.extract.shift12 = lshr i64 %i.ar, 32
  %.sroa.6.12.extract.trunc13 = trunc nuw i64 %.sroa.6.12.extract.shift12 to i32
  switch i32 %.sroa.6.12.extract.trunc13, label %bb.g [
    i32 -1, label %.critedge
    i32 -2, label %.critedge
    i32 -3, label %.critedge
    i32 -4, label %.critedge
    i32 -5, label %.critedge
    i32 -6, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit
    i32 -7, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit
    i32 -8, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit
    i32 -9, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit
    i32 -10, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit
    i32 -15, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #10
  unreachable

.critedge:                                        ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.e
  %.sroa.08.0.extract.trunc = trunc i64 %i.aq to i32 ; 2 uses
  %i.av = icmp slt i32 %.sroa.08.0.extract.trunc, 0
  br i1 %i.av, label %_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit, label %bb.b, !llvm.loop !13

_ZN6icu_786number4impl10AffixUtils15getFieldForTypeENS1_16AffixPatternTypeE.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %.critedge, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, %.split, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ false, %.critedge ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ false, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit ], [ false, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread ], [ false, %.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl10AffixUtils11replaceTypeERKNS_13UnicodeStringENS1_16AffixPatternTypeEDsR10UErrorCode(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i16 noundef zeroext %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %.sroa.0.0.extract.trunc1119 = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.extract.trunc, %._crit_edge ] ; 4 uses
  %.sroa.0.018 = phi i64 [ 0, %.preheader ], [ %i.ar, %._crit_edge ] ; 2 uses
  %.sroa.7.017 = phi i64 [ 0, %.preheader ], [ %i.as, %._crit_edge ] ; 2 uses
  %i.m = icmp eq i32 %.sroa.0.0.extract.trunc1119, 0
  br i1 %i.m, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.7.017 to i32
  switch i32 %.sroa.7.8.extract.trunc, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread [
    i32 2, label %bb.d
    i32 0, label %.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = load i16, ptr %i.b, align 8              ; 3 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = load i32, ptr %i.g, align 4
  %i.s = select i1 %i.o, i32 %i.r, i32 %i.q       ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  %i.u = icmp eq i32 %i.t, %.sroa.0.0.extract.trunc1119
  %5 = icmp ugt i32 %i.s, %.sroa.0.0.extract.trunc1119
  %or.cond.i = and i1 %5, %i.u
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.d
  %i.v = and i16 %i.n, 2
  %.not.i.i.i.i = icmp eq i16 %i.v, 0
  %i.w = load ptr, ptr %i.l, align 8
  %i.x = select i1 %.not.i.i.i.i, ptr %i.w, ptr %i.k
  %i.y = and i64 %.sroa.0.018, 2147483647
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = icmp eq i16 %i.aa, 39
  br i1 %i.ab, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

.split:                                           ; preds = %bb.c
  %i.ac = load i16, ptr %i.b, align 8             ; 2 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.g, align 4
  %i.ah = select i1 %i.ad, i32 %i.ag, i32 %i.af
  %i.ai = icmp sgt i32 %i.ah, %.sroa.0.0.extract.trunc1119
  br i1 %i.ai, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  %i.aj = load i16, ptr %i.b, align 8             ; 2 uses
  %i.ak = icmp slt i16 %i.aj, 0
  %i.al = ashr i16 %i.aj, 5
  %i.am = sext i16 %i.al to i32
  %i.an = load i32, ptr %i.g, align 4
  %i.ao = select i1 %i.ak, i32 %i.an, i32 %i.am
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.d, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.c, %.split, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit
  %i.aq = call { i64, i64 } @_ZN6icu_786number4impl10AffixUtils9nextTokenENS1_8AffixTagERKNS_13UnicodeStringER10UErrorCode(i64 %.sroa.0.018, i64 %.sroa.7.017, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { i64, i64 } %i.aq, 1      ; 2 uses
  %i.at = load i32, ptr %4, align 4
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %bb.e, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15

bb.e:                                             ; preds = %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread
  %.sroa.7.12.extract.shift = lshr i64 %i.as, 32
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %i.av = icmp eq i32 %2, %.sroa.7.12.extract.trunc
  %.sroa.0.0.extract.trunc = trunc i64 %i.ar to i32 ; 3 uses
  br i1 %i.av, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.aw = add nsw i32 %.sroa.0.0.extract.trunc, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %3, ptr %i.a, align 2
  %i.ax = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.aw, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.ay = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.ay, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15, label %bb.b, !llvm.loop !14

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %._crit_edge, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, %.split, %bb.a
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6icu_786number4impl10AffixUtils32containsOnlySymbolsAndIgnorablesERKNS_13UnicodeStringERKNS_10UnicodeSetER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %.sroa.0.0.extract.trunc19 = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.extract.trunc, %bb.g ] ; 4 uses
  %.sroa.0.018 = phi i64 [ 0, %.preheader ], [ %i.aq, %bb.g ] ; 2 uses
  %.sroa.7.017 = phi i64 [ 0, %.preheader ], [ %i.ar, %bb.g ] ; 2 uses
  %i.l = icmp eq i32 %.sroa.0.0.extract.trunc19, 0
  br i1 %i.l, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.7.017 to i32
  switch i32 %.sroa.7.8.extract.trunc, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread [
    i32 2, label %bb.d
    i32 0, label %.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i16, ptr %i.a, align 8              ; 3 uses
  %i.n = icmp slt i16 %i.m, 0
  %i.o = ashr i16 %i.m, 5
  %i.p = sext i16 %i.o to i32
  %i.q = load i32, ptr %i.f, align 4
  %i.r = select i1 %i.n, i32 %i.q, i32 %i.p       ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  %i.t = icmp eq i32 %i.s, %.sroa.0.0.extract.trunc19
  %3 = icmp ugt i32 %i.r, %.sroa.0.0.extract.trunc19
  %or.cond.i = and i1 %3, %i.t
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.d
  %i.u = and i16 %i.m, 2
  %.not.i.i.i.i = icmp eq i16 %i.u, 0
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = select i1 %.not.i.i.i.i, ptr %i.v, ptr %i.j
  %i.x = and i64 %.sroa.0.018, 2147483647
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = icmp eq i16 %i.z, 39
  br i1 %i.aa, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

.split:                                           ; preds = %bb.c
  %i.ab = load i16, ptr %i.a, align 8             ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.f, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = icmp sgt i32 %i.ag, %.sroa.0.0.extract.trunc19
  br i1 %i.ah, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  %i.ai = load i16, ptr %i.a, align 8             ; 2 uses
  %i.aj = icmp slt i16 %i.ai, 0
  %i.ak = ashr i16 %i.ai, 5
  %i.al = sext i16 %i.ak to i32
  %i.am = load i32, ptr %i.f, align 4
  %i.an = select i1 %i.aj, i32 %i.am, i32 %i.al
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.d, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.c, %.split, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit
  %i.ap = tail call { i64, i64 } @_ZN6icu_786number4impl10AffixUtils9nextTokenENS1_8AffixTagERKNS_13UnicodeStringER10UErrorCode(i64 %.sroa.0.018, i64 %.sroa.7.017, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0      ; 3 uses
  %i.ar = extractvalue { i64, i64 } %i.ap, 1      ; 2 uses
  %i.as = load i32, ptr %2, align 4
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.e, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15

bb.e:                                             ; preds = %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread
  %i.au = icmp ult i64 %i.ar, 4294967296
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.4.extract.shift = lshr i64 %i.aq, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.av = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %.sroa.0.4.extract.trunc) #11
  %.not8 = icmp eq i8 %i.av, 0
  br i1 %.not8, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.extract.trunc = trunc i64 %i.aq to i32 ; 2 uses
  %i.aw = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.aw, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15, label %bb.b, !llvm.loop !15

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread15: ; preds = %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, %bb.f, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, %.split, %bb.g, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ true, %bb.g ], [ true, %.split ], [ false, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread ], [ false, %bb.f ], [ true, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit ]
  ret i1 %.1
}

declare noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl10AffixUtils19iterateWithConsumerERKNS_13UnicodeStringERNS1_13TokenConsumerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread14, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.sroa.7.0 = phi i64 [ %i.at, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.au, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0 to i32 ; 5 uses
  %i.l = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.l, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.m, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.7.0 to i32
  switch i32 %.sroa.7.8.extract.trunc, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread [
    i32 2, label %bb.e
    i32 0, label %.split
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load i16, ptr %i.a, align 8              ; 3 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = load i32, ptr %i.f, align 4
  %i.s = select i1 %i.o, i32 %i.r, i32 %i.q       ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  %i.u = icmp eq i32 %i.t, %.sroa.0.0.extract.trunc
  %3 = icmp ugt i32 %i.s, %.sroa.0.0.extract.trunc
  %or.cond.i = and i1 %3, %i.u
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.e
  %i.v = and i16 %i.n, 2
  %.not.i.i.i.i = icmp eq i16 %i.v, 0
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = select i1 %.not.i.i.i.i, ptr %i.w, ptr %i.j
  %i.y = and i64 %.sroa.0.0, 2147483647
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = icmp eq i16 %i.aa, 39
  br i1 %i.ab, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread14, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread

.split:                                           ; preds = %bb.d
  %i.ac = load i16, ptr %i.a, align 8             ; 2 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.f, align 4
  %i.ah = select i1 %i.ad, i32 %i.ag, i32 %i.af
  %i.ai = icmp sgt i32 %i.ah, %.sroa.0.0.extract.trunc
  br i1 %i.ai, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread14

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit: ; preds = %bb.c
  %i.aj = load i16, ptr %i.a, align 8             ; 2 uses
  %i.ak = icmp slt i16 %i.aj, 0
  %i.al = ashr i16 %i.aj, 5
  %i.am = sext i16 %i.al to i32
  %i.an = load i32, ptr %i.f, align 4
  %i.ao = select i1 %i.ak, i32 %i.an, i32 %i.am
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread14

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.d, %.split, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit
  %i.aq = tail call { i64, i64 } @_ZN6icu_786number4impl10AffixUtils9nextTokenENS1_8AffixTagERKNS_13UnicodeStringER10UErrorCode(i64 %.sroa.0.0, i64 %.sroa.7.0, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.ar = load i32, ptr %2, align 4
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.f, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread14

bb.f:                                             ; preds = %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread
  %i.at = extractvalue { i64, i64 } %i.aq, 1      ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.aq, 0      ; 2 uses
  %.sroa.7.12.extract.shift = lshr i64 %i.at, 32
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %.sroa.0.4.extract.shift = lshr i64 %i.au, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.av = load ptr, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.sroa.7.12.extract.trunc, i32 noundef %.sroa.0.4.extract.trunc, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  %i.ay = load i32, ptr %2, align 4
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.b, label %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread14, !llvm.loop !16

_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread14: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.b, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit.thread, %bb.f, %_ZN6icu_786number4impl10AffixUtils7hasNextERKNS1_8AffixTagERKNS_13UnicodeStringE.exit, %.split, %bb.a
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i64 2151487141}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
end_hunk_0
