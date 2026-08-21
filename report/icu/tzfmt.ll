inline.NumInlined: 524
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK6icu_7814TimeZoneFormat21parseExemplarLocationERKNS_13UnicodeStringERNS_13ParsePositionERS1_:bb.a

bb.f:                                             ; preds = %bb.i, %bb.g, %.preheader
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13TimeZoneNames19MatchInfoCollectionEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.r = invoke noundef i32 @_ZNK6icu_7813TimeZoneNames19MatchInfoCollection16getMatchLengthAtEi(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i32 noundef %.0)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.r, %i.d
  %i.t = icmp sgt i32 %i.s, %.030
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = invoke noundef i32 @_ZNK6icu_7813TimeZoneNames19MatchInfoCollection16getMatchLengthAtEi(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i32 noundef %.0)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.u, %i.d
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %.131 = phi i32 [ %i.v, %bb.j ], [ %.030, %bb.h ]
  %.1 = phi i32 [ %.0, %bb.j ], [ %.027, %bb.h ]
  %i.w = add nuw nsw i32 %.0, 1
  br label %.preheader, !llvm.loop !88

bb.l:                                             ; preds = %bb.d
  store i32 %.030, ptr %i.c, align 8, !tbaa !63
  %i.x = invoke noundef signext i8 @_ZNK6icu_7813TimeZoneNames19MatchInfoCollection15getTimeZoneIDAtEiRNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i32 noundef %.027, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.l
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN6icu_7813UnicodeStringC1EPDsii(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 32)
          to label %.noexc35 unwind label %bb.e

.noexc35:                                         ; preds = %bb.m
  %i.y = invoke noundef signext i8 @_ZNK6icu_7813TimeZoneNames19MatchInfoCollection15getMetaZoneIDAtEiRNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i32 noundef %.027, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.noexc35
  %.not9.i = icmp eq i8 %i.y, 0
  br i1 %.not9.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.q unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.o, %.noexc35
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN6icu_7812LocalPointerINS_13TimeZoneNames19MatchInfoCollectionEED2Ev.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.d, %.noexc, %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %i.ai = icmp slt i16 %i.ah, 0
  %i.aj = ashr i16 %i.ah, 5
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = select i1 %i.ai, i32 %i.am, i32 %i.ak
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.sink.split, label %bb.s

_ZN6icu_7812LocalPointerINS_13TimeZoneNames19MatchInfoCollectionEED2Ev.exit: ; preds = %bb.e, %bb.p, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.p, %bb.e ], [ %i.af, %bb.p ]
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  resume { ptr, i32 } %.pn

.sink.split:                                      ; preds = %bb.r, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.d, ptr %i.as, align 4, !tbaa !65
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.r
  %i.at = icmp eq ptr %i.j, null
  br i1 %i.at, label %_ZN6icu_7812LocalPointerINS_13TimeZoneNames19MatchInfoCollectionEED2Ev.exit36, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !67
  br label %_ZN6icu_7812LocalPointerINS_13TimeZoneNames19MatchInfoCollectionEED2Ev.exit36

_ZN6icu_7812LocalPointerINS_13TimeZoneNames19MatchInfoCollectionEED2Ev.exit36: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %3
}

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7814TimeZoneFormat11parseObjectERKNS_13UnicodeStringERNS_11FormattableERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(904) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(904) %0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 1, ptr noundef null)
  tail call void @_ZN6icu_7811Formattable11adoptObjectEPNS_7UObjectE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef %i.d)
  ret void
}

declare void @_ZN6icu_7811Formattable11adoptObjectEPNS_7UObjectE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_788ZoneMeta18getCanonicalCLDRIDERKNS_8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7820TimeZoneGenericNames22getGenericLocationNameERKNS_13UnicodeStringERS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7820TimeZoneGenericNames14getDisplayNameERKNS_8TimeZoneE24UTimeZoneGenericNameTypedRNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @umtx_lock_78(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_7820TimeZoneGenericNames14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @umtx_unlock_78(ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_7817TZDBTimeZoneNamesC1ERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814TimeZoneFormat19formatOffsetISO8601EiaaaaRNS_13UnicodeStringER10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4, i8 noundef signext %5, ptr noundef nonnull returned align 8 dereferenceable(64) %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %7) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 12 uses
  %i.b = alloca i16, align 2                      ; 12 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca [3 x i32], align 4                ; 9 uses
  %i.g = load i32, ptr %7, align 4, !tbaa !17
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %1, -1
  %i.j = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 6 uses
  %.not59 = icmp eq i8 %3, 0
  br i1 %.not59, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i32 %i.j, 1000
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ne i8 %5, 0
  %i.m = icmp samesign ult i32 %i.j, 60000
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 90, ptr %i.e, align 2, !tbaa !20
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i16, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = select i1 %i.p, i32 %i.t, i32 %i.r
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.u, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.g:                                             ; preds = %bb.e, %bb.c
  %.not60 = icmp eq i8 %4, 0                      ; 2 uses
  %i.w = zext i1 %.not60 to i32                   ; 2 uses
  %.not62 = icmp eq i8 %2, 0
  %i.x = icmp samesign ugt i32 %i.j, 86399999
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
  store i32 1, ptr %7, align 4, !tbaa !17
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not61 = icmp ne i8 %5, 0                      ; 2 uses
  %i.y = select i1 %.not61, i32 1, i32 2          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.z = udiv i32 %i.j, 3600000                   ; 2 uses
  store i32 %i.z, ptr %i.f, align 4, !tbaa !40
  %i.aa = urem i32 %i.j, 3600000                  ; 3 uses
  %i.ab = udiv i32 %i.aa, 60000
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !40
  %i.ad = urem i32 %i.aa, 60000
  %.lhs.trunc = trunc nuw i32 %i.ad to i16
  %i.ae = udiv i16 %.lhs.trunc, 1000
  %.zext = zext nneg i16 %i.ae to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.zext, ptr %i.af, align 4, !tbaa !40
  %i.ag = icmp samesign ugt i32 %i.y, %i.w
  br i1 %i.ag, label %.lr.ph.peel, label %._crit_edge

.lr.ph.peel:                                      ; preds = %bb.i
  %i.ah = zext nneg i32 %i.y to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %.not63.peel = icmp eq i32 %i.aj, 0
  %.not105.peel = or i1 %.not60, %.not61
  %.not63 = icmp samesign ult i32 %i.aa, 60000
  %or.cond111 = select i1 %.not105.peel, i1 true, i1 %.not63
  %spec.select = select i1 %or.cond111, i32 %i.w, i32 1
  %.053.lcssa.ph = select i1 %.not63.peel, i32 %spec.select, i32 %i.y
  %8 = add nuw nsw i32 %.053.lcssa.ph, 1
  %9 = zext nneg i32 %8 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.peel, %bb.i
  %.053.lcssa = phi i64 [ 2, %bb.i ], [ %9, %.lr.ph.peel ] ; 4 uses
  br i1 %i.i, label %.lr.ph79, label %.lr.ph72

bb.j:                                             ; preds = %.lr.ph72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.053.lcssa
  br i1 %exitcond.not, label %.lr.ph79, label %.lr.ph72, !llvm.loop !89

.lr.ph72:                                         ; preds = %._crit_edge, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %._crit_edge ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %.not65 = icmp eq i32 %i.al, 0
  br i1 %.not65, label %bb.j, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.j, %.lr.ph72, %._crit_edge
  %.1 = phi i16 [ 43, %._crit_edge ], [ 43, %bb.j ], [ 45, %.lr.ph72 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %.1, ptr %i.d, align 2, !tbaa !20
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load i16, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.ao = icmp slt i16 %i.an, 0
  %i.ap = ashr i16 %i.an, 5
  %i.aq = sext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = select i1 %i.ao, i32 %i.as, i32 %i.aq
  %i.au = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.at, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not62, label %.lr.ph79.split.preheader, label %.lr.ph79.split.us

.lr.ph79.split.preheader:                         ; preds = %.lr.ph79
  %i.av = udiv i32 %i.j, 36000000
  %i.aw = trunc nuw nsw i32 %i.av to i16
  %i.ax = or disjoint i16 %i.aw, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ax, ptr %i.b, align 2, !tbaa !20
  %i.ay = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.az = urem i32 %i.z, 10
  %i.ba = trunc nuw nsw i32 %i.az to i16
  %i.bb = or disjoint i16 %i.ba, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.bb, ptr %i.a, align 2, !tbaa !20
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond93.peel.not = icmp eq i64 %.053.lcssa, 1
  br i1 %exitcond93.peel.not, label %._crit_edge80, label %.lr.ph79.split.peel.next

.lr.ph79.split.us:                                ; preds = %.lr.ph79, %.lr.ph79.split.us
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.lr.ph79.split.us ], [ 0, %.lr.ph79 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv84
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !40 ; 2 uses
  %i.bf = sdiv i32 %i.be, 10
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = add i16 %i.bg, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.bh, ptr %i.b, align 2, !tbaa !20
  %i.bi = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bj = srem i32 %i.be, 10
  %i.bk = trunc nsw i32 %i.bj to i16
  %i.bl = add nsw i16 %i.bk, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.bl, ptr %i.a, align 2, !tbaa !20
  %i.bm = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %.053.lcssa
  br i1 %exitcond88.not, label %._crit_edge80, label %.lr.ph79.split.us, !llvm.loop !90

._crit_edge80:                                    ; preds = %.lr.ph79.split.us, %.lr.ph79.split.peel.next, %.lr.ph79.split.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %bb.k

.lr.ph79.split.peel.next:                         ; preds = %.lr.ph79.split.preheader, %.lr.ph79.split.peel.next
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %.lr.ph79.split.peel.next ], [ 1, %.lr.ph79.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 58, ptr %i.c, align 2, !tbaa !20
  %i.bn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv89
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !40 ; 2 uses
  %i.bq = sdiv i32 %i.bp, 10
  %i.br = trunc i32 %i.bq to i16
  %i.bs = add i16 %i.br, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.bs, ptr %i.b, align 2, !tbaa !20
  %i.bt = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bu = srem i32 %i.bp, 10
  %i.bv = trunc nsw i32 %i.bu to i16
  %i.bw = add nsw i16 %i.bv, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.bw, ptr %i.a, align 2, !tbaa !20
  %i.bx = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %.053.lcssa
  br i1 %exitcond93.not, label %._crit_edge80, label %.lr.ph79.split.peel.next, !llvm.loop !91

bb.k:                                             ; preds = %bb.f, %._crit_edge80, %bb.h, %bb.b
  ret ptr %6
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814TimeZoneFormat24formatOffsetLocalizedGMTEiaRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(904) %0, i32 noundef %1, i8 noundef signext %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %1, -86400000
  %or.cond55 = icmp ult i32 %i.c, -172799999
  br i1 %or.cond55, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  store i32 1, ptr %4, align 4, !tbaa !17
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.d = icmp slt i32 %1, 0
  %spec.select = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 4 uses
  %i.e = udiv i32 %spec.select, 3600000
  %i.f = urem i32 %spec.select, 3600000           ; 6 uses
  %i.g = udiv i32 %i.f, 60000
  %i.h = urem i32 %i.f, 60000                     ; 3 uses
  %.lhs.trunc = trunc nuw i32 %i.h to i16
  %i.i = udiv i16 %.lhs.trunc, 1000               ; 2 uses
  %.not52 = icmp samesign ult i32 %i.h, 1000      ; 2 uses
  br i1 %i.d, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not52, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = icmp samesign ult i32 %i.f, 60000
  %i.k = icmp ne i8 %2, 0
  %or.cond = and i1 %i.k, %i.j
  %. = select i1 %or.cond, i64 872, i64 840
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  br i1 %.not52, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = icmp samesign ult i32 %i.f, 60000
  %i.m = icmp ne i8 %2, 0
  %or.cond3 = and i1 %i.m, %i.l
  %.82 = select i1 %or.cond3, i64 880, i64 856
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sink = phi i64 [ 848, %bb.f ], [ 864, %bb.h ], [ %.82, %bb.i ], [ %., %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.049 = load ptr, ptr %i.n, align 8, !tbaa !33  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.p = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8copyFromERKS0_a(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i8 noundef signext 0) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.049, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !53
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.t = icmp samesign ult i32 %i.h, 10000        ; 2 uses
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 8 uses
  %.lhs.trunc73 = trunc nuw nsw i16 %i.i to i8
  %i.w = udiv i8 %.lhs.trunc73, 10
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x
  %.lhs.trunc75 = trunc nuw nsw i16 %i.i to i8
  %i.z = urem i8 %.lhs.trunc75, 10
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = icmp samesign ult i32 %i.f, 600000      ; 2 uses
  %i.ad = zext i1 %i.ac to i32
  %i.ae = udiv i32 %i.f, 600000
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.af
  %.lhs.trunc77 = trunc nuw nsw i32 %i.g to i8
  %i.ah = urem i8 %.lhs.trunc77, 10
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ai
  %.not54 = icmp eq i8 %2, 0                      ; 2 uses
  %i.ak = icmp samesign ult i32 %spec.select, 36000000 ; 2 uses
  %i.al = and i1 %i.ak, %.not54
  %i.am = udiv i32 %spec.select, 36000000
  %i.an = zext nneg i32 %i.am to i64
  %.lhs.trunc79 = trunc i32 %i.e to i8
  %i.ao = urem i8 %.lhs.trunc79, 10
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ap
  %.not = xor i1 %i.ak, true
end_hunk_0
