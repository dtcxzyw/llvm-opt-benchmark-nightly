Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/smpdtfmt?download=true
inline.NumInlined: 596
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6icu_7816SimpleDateFormatC2ERKNS_13UnicodeStringER10UErrorCode:bb.a
.noexc14:                                         ; preds = %.noexc
  %i.t = load ptr, ptr %0, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef nonnull align 8 dereferenceable(112) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 2, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc15 unwind label %bb.p, !inline_history !53 ; 0 uses

.noexc15:                                         ; preds = %.noexc14
  %i.x = load ptr, ptr %0, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef nonnull align 8 dereferenceable(112) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 3, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.g unwind label %bb.p, !inline_history !53 ; 0 uses

bb.g:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ab = load i32, ptr %2, align 4, !tbaa !52
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %_ZN6icu_7816SimpleDateFormat18initializeCalendarEPNS_8TimeZoneERKNS_6LocaleER10UErrorCode.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = invoke noundef ptr @_ZN6icu_788TimeZone18forLocaleOrDefaultERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.noexc17 unwind label %bb.p

.noexc17:                                         ; preds = %bb.h
  %i.ae = invoke noundef ptr @_ZN6icu_788Calendar14createInstanceEPNS_8TimeZoneERKNS_6LocaleER10UErrorCode(ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.noexc18 unwind label %bb.p

.noexc18:                                         ; preds = %.noexc17
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !54
  br label %_ZN6icu_7816SimpleDateFormat18initializeCalendarEPNS_8TimeZoneERKNS_6LocaleER10UErrorCode.exit

_ZN6icu_7816SimpleDateFormat18initializeCalendarEPNS_8TimeZoneERKNS_6LocaleER10UErrorCode.exit: ; preds = %bb.g, %.noexc18
  %i.ag = invoke noundef ptr @_ZN6icu_7817DateFormatSymbols15createForLocaleERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZN6icu_7816SimpleDateFormat18initializeCalendarEPNS_8TimeZoneERKNS_6LocaleER10UErrorCode.exit
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !46
  invoke void @_ZN6icu_7816SimpleDateFormat10initializeERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54 ; 3 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZN6icu_7816SimpleDateFormat24initializeDefaultCenturyEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 416
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef signext i8 %i.al(ptr noundef nonnull align 8 dereferenceable(256) %i.ai)
          to label %.noexc19 unwind label %bb.p, !inline_history !55 ; 2 uses

.noexc19:                                         ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i8 %i.am, ptr %i.an, align 8, !tbaa !56
  %.not1.i = icmp eq i8 %i.am, 0
  br i1 %.not1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc19
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !54 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 424
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef double %i.ar(ptr noundef nonnull align 8 dereferenceable(256) %i.ao)
          to label %.noexc20 unwind label %bb.p, !inline_history !55

.noexc20:                                         ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double %i.as, ptr %i.at, align 8, !tbaa !57
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !54 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 432
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(256) %i.au)
          to label %.sink.split.i unwind label %bb.p, !inline_history !55

bb.m:                                             ; preds = %.noexc19
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double f0x0010000000000000, ptr %i.az, align 8, !tbaa !57
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.noexc20, %bb.m
  %.sink.i = phi i32 [ -1, %bb.m ], [ %i.ay, %.noexc20 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 %.sink.i, ptr %i.ba, align 4, !tbaa !58
  br label %_ZN6icu_7816SimpleDateFormat24initializeDefaultCenturyEv.exit

_ZN6icu_7816SimpleDateFormat24initializeDefaultCenturyEv.exit: ; preds = %.sink.split.i, %bb.j
  ret void

bb.n:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.c, %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %.noexc20, %bb.l, %bb.k, %.noexc17, %bb.h, %.noexc15, %.noexc14, %.noexc, %bb.f, %bb.i, %_ZN6icu_7816SimpleDateFormat18initializeCalendarEPNS_8TimeZoneERKNS_6LocaleER10UErrorCode.exit, %bb.e, %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.g) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.bc, %bb.o ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.e) #22
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.c) #22
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.bb, %bb.n ]
  call void @_ZN6icu_7810DateFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #22
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7816SimpleDateFormat18initializeCalendarEPNS_8TimeZoneERKNS_6LocaleER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !52
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef ptr @_ZN6icu_788TimeZone18forLocaleOrDefaultERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = phi ptr [ %i.c, %bb.c ], [ %1, %bb.b ]
  %i.e = tail call noundef ptr @_ZN6icu_788Calendar14createInstanceEPNS_8TimeZoneERKNS_6LocaleER10UErrorCode(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.e, ptr %i.f, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.g = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %bb.d ]
  ret ptr %i.g
}

declare noundef ptr @_ZN6icu_7817DateFormatSymbols15createForLocaleERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816SimpleDateFormat10initializeERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !52
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 369 ; 2 uses
  store i8 0, ptr %i.d, align 1, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 370 ; 2 uses
  store i8 0, ptr %i.e, align 2, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i16, ptr %i.f, align 8, !tbaa !50   ; 3 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j       ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i, label %_ZNKSt9type_infoeqERKS_.exit.thread20

_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i:      ; preds = %bb.b
  %i.o = and i16 %i.g, 2
  %.not.i.i.i.i = icmp eq i16 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %.not.i.i.i.i, ptr %i.r, ptr %i.p
  %wide.trip.count.i = zext nneg i32 %i.m to i64
  br label %_ZNK6icu_7813UnicodeStringixEi.exit.i

_ZNK6icu_7813UnicodeStringixEi.exit.i:            ; preds = %bb.g, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i
  %i.t = phi i8 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i ], [ %i.z, %bb.g ]
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.01016.i = phi i8 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.v = load i16, ptr %i.u, align 2, !tbaa !78
  %.fr.i = freeze i16 %i.v                        ; 3 uses
  %i.w = icmp eq i16 %.fr.i, 39
  %i.x = zext i1 %i.w to i8                       ; 2 uses
  %spec.select.i = xor i8 %.01016.i, %i.x
  %i.y = icmp eq i16 %.fr.i, 24180
  br i1 %i.y, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.i
  store i8 1, ptr %i.e, align 2, !tbaa !76
  br label %.thread.i

.thread.i:                                        ; preds = %bb.c, %_ZNK6icu_7813UnicodeStringixEi.exit.i
  %i.z = phi i8 [ 1, %bb.c ], [ %i.t, %_ZNK6icu_7813UnicodeStringixEi.exit.i ] ; 2 uses
  %.not.i = icmp eq i8 %.01016.i, %i.x
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.thread.i
  switch i16 %.fr.i, label %bb.g [
    i16 109, label %bb.e
    i16 115, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.c, align 8, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.d, align 1, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.thread.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit, label %_ZNK6icu_7813UnicodeStringixEi.exit.i, !llvm.loop !2

_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit: ; preds = %bb.g
  %i.aa = icmp eq i8 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !50
  %i.ae = and i16 %i.ad, 1
  %.not10 = icmp eq i16 %i.ae, 0
  %brmerge = select i1 %.not10, i1 true, i1 %i.aa
  br i1 %brmerge, label %_ZNKSt9type_infoeqERKS_.exit.thread20, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  %.not12 = icmp eq ptr %i.ag, null
  br i1 %.not12, label %_ZNKSt9type_infoeqERKS_.exit.thread20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 3 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN6icu_7816JapaneseCalendarE, i64 8), align 8, !tbaa !80 ; 3 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !50
  %.not.i16 = icmp eq i8 %i.ao, 42
  br i1 %.not.i16, label %_ZNKSt9type_infoeqERKS_.exit.thread20, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.j
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !50
  %i.aq = icmp eq i8 %i.ap, 42
  %.idx.i.i = zext i1 %i.aq to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i
  %i.as = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) %i.ar) #22
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread20

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.i, %_ZNKSt9type_infoeqERKS_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.av = tail call noundef ptr @_ZNK6icu_786Locale11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(40) %i.au) ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1
  %.not = icmp eq i8 %i.aw, 106
  br i1 %.not, label %sub_1, label %_ZNKSt9type_infoeqERKS_.exit.thread20

sub_1:                                            ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ay = load i8, ptr %i.ax, align 1
  %.not22 = icmp eq i8 %i.ay, 97
  br i1 %.not22, label %_ZNKSt9type_infoeqERKS_.exit.thread.tail, label %_ZNKSt9type_infoeqERKS_.exit.thread20

_ZNKSt9type_infoeqERKS_.exit.thread.tail:         ; preds = %sub_1
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNKSt9type_infoeqERKS_.exit.thread20

bb.k:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread.tail
  %i.bc = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull @.str.10, i32 noundef -1) ; 0 uses
  br label %_ZNKSt9type_infoeqERKS_.exit.thread20

_ZNKSt9type_infoeqERKS_.exit.thread20:            ; preds = %_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit, %bb.b, %sub_1, %_ZNKSt9type_infoeqERKS_.exit.thread, %bb.j, %bb.k, %_ZNKSt9type_infoeqERKS_.exit.thread.tail, %_ZNKSt9type_infoeqERKS_.exit, %bb.h
  %i.bd = tail call noundef ptr @_ZN6icu_7812NumberFormat14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !81
  %.not13 = icmp eq ptr %i.bd, null
  %.pre = load i32, ptr %2, align 4, !tbaa !52
  %i.bf = icmp sgt i32 %.pre, 0                   ; 2 uses
  br i1 %.not13, label %bb.w, label %bb.l

bb.l:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread20
  br i1 %i.bf, label %_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(124) %i.bd, i8 noundef signext 0), !inline_history !3
  %i.bj = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(124) %i.bd, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #22 ; 3 uses
  %.not.i17 = icmp eq ptr %i.bj, null
  br i1 %.not.i17, label %_ZN6icu_78L23fixNumberFormatForDatesERNS_12NumberFormatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !45
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 528
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(136) %i.bj, i8 noundef signext 0), !inline_history !3
  br label %_ZN6icu_78L23fixNumberFormatForDatesERNS_12NumberFormatE.exit

_ZN6icu_78L23fixNumberFormatForDatesERNS_12NumberFormatE.exit: ; preds = %bb.m, %bb.n
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 184
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(124) %i.bd, i8 noundef signext 1), !inline_history !3
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(124) %i.bd, i32 noundef 0), !inline_history !3
  tail call void @_ZN6icu_7816SimpleDateFormat20initNumberFormattersERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.bt = load i32, ptr %2, align 4, !tbaa !52
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %bb.o, label %_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit

bb.o:                                             ; preds = %_ZN6icu_78L23fixNumberFormatForDatesERNS_12NumberFormatE.exit
  %i.bv = load ptr, ptr %i.be, align 8, !tbaa !81 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = tail call ptr @__dynamic_cast(ptr nonnull %i.bv, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #22 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 312
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(136) %i.bx), !inline_history !82 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 32) #22 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZN6icu_786number21SimpleNumberFormatter38forLocaleAndSymbolsAndGroupingStrategyERKNS_6LocaleERKNS_20DecimalFormatSymbolsE23UNumberGroupingStrategyR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::SimpleNumberFormatter") align 8 %i.ce, ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(2459) %i.cc, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !48
  br label %_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit

bb.u:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr null, ptr %i.ci, align 8, !tbaa !48
  store i32 7, ptr %2, align 4, !tbaa !52
  br label %_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit

bb.v:                                             ; preds = %bb.s
  %i.cj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ce) #22
  resume { ptr, i32 } %i.cj

bb.w:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread20
  br i1 %i.bf, label %_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %2, align 4, !tbaa !52
  br label %_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit

_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode.exit: ; preds = %bb.l, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %_ZN6icu_78L23fixNumberFormatForDatesERNS_12NumberFormatE.exit, %bb.w, %bb.x, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816SimpleDateFormatC2ERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  tail call void @_ZN6icu_7810DateFormatC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTVN6icu_7816SimpleDateFormatE, i64 16), ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 2, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i16 2, ptr %i.f, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 7 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv()
          to label %bb.c unwind label %bb.o
end_hunk_0
begin_hunk_1_@_ZNK6icu_7816SimpleDateFormateqERKNS_6FormatE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !57
  %i.as = fcmp oeq double %i.ap, %i.ar
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread:   ; preds = %bb.c, %.split, %bb.a, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0 = phi i1 [ %i.as, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit ], [ false, %bb.a ], [ false, %.split ], [ false, %bb.c ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK6icu_7810DateFormateqERKNS_6FormatE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK6icu_7817DateFormatSymbolseqERKS0_(ptr noundef nonnull align 8 dereferenceable(872), ptr noundef nonnull align 8 dereferenceable(872)) local_unnamed_addr #2

declare ptr @ures_open_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.c, align 4, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.d, align 8, !tbaa !68
  store i8 0, ptr %i.a, align 1, !tbaa !50
  %i.e = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit unwind label %bb.b ; 0 uses

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(53) %0) #22
  resume { ptr, i32 } %i.f
}

declare ptr @ures_getByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !66
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !64
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @ures_getSize_78(ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_786Format12setLocaleIDsEPKcS2_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ures_getLocaleByType_78(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_786Locale15getKeywordValueEPKcPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK6icu_786Format9getLocaleE18ULocDataLocaleTypeR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::Locale") align 8, ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef ptr @_ZNK6icu_786Locale10getCountryEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNK6icu_786Locale11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_7824DateTimePatternGenerator22createInstanceNoStdPatERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) unnamed_addr #2

declare void @_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(4612), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare ptr @ures_getByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ures_getType_78(ptr noundef) local_unnamed_addr #2

declare ptr @ures_getString_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ures_getStringByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_7815SimpleFormatterC2ERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.b, align 8, !tbaa !50
  %i.c = invoke noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #22
  resume { ptr, i32 } %i.d
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ures_close_78(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

declare noundef ptr @_ZN6icu_788Calendar14createInstanceEPNS_8TimeZoneERKNS_6LocaleER10UErrorCode(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_788TimeZone18forLocaleOrDefaultERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6icu_7816SimpleDateFormat12parsePatternEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) initializes((368, 371)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 369 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 370 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i16, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h       ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, label %._crit_edge

_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph:        ; preds = %bb.a
  %i.m = and i16 %i.e, 2
  %.not.i.i.i = icmp eq i16 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %_ZNK6icu_7813UnicodeStringixEi.exit

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.01016 = phi i8 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %spec.select, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !78
  %.fr = freeze i16 %i.s                          ; 3 uses
  %i.t = icmp eq i16 %.fr, 39
  %i.u = zext i1 %i.t to i8                       ; 2 uses
  %spec.select = xor i8 %.01016, %i.u
  %i.v = icmp eq i16 %.fr, 24180
  br i1 %i.v, label %bb.b, label %.thread

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  store i8 1, ptr %i.c, align 2, !tbaa !76
  br label %.thread

.thread:                                          ; preds = %bb.b, %_ZNK6icu_7813UnicodeStringixEi.exit
  %.not = icmp eq i8 %.01016, %i.u
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.thread
  switch i16 %.fr, label %bb.f [
    i16 109, label %bb.d
    i16 115, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !74
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 1, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e, %.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6icu_7813UnicodeStringixEi.exit, !llvm.loop !2
}

declare void @__cxa_bad_typeid() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt9type_infoeqERKS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !50
  %.not = icmp eq i8 %i.f, 42
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.d, align 1, !tbaa !50
  %i.h = icmp eq i8 %i.g, 42
  %.idx.i = zext i1 %i.h to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.i) #22
  %i.k = icmp eq i32 %i.j, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.k, %bb.c ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %i.h, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  ret ptr %i.i
}

declare noundef ptr @_ZN6icu_7812NumberFormat14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816SimpleDateFormat20initNumberFormattersERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !52
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load i16, ptr %i.d, align 8, !tbaa !50
  %i.f = and i16 %i.e, 1
  %.not8 = icmp eq i16 %i.f, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load i16, ptr %i.g, align 8, !tbaa !50
  %i.i = and i16 %i.h, 1
  %.not9 = icmp eq i16 %i.i, 0
  br i1 %.not9, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @umtx_lock_78(ptr noundef nonnull @_ZN6icu_78L4LOCKE)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias dereferenceable_or_null(304) ptr @uprv_malloc_78(i64 noundef 304) #24 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %_ZN6icu_78L27allocSharedNumberFormattersEv.exit

_ZN6icu_78L27allocSharedNumberFormattersEv.exit:  ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.m, i8 0, i64 304, i1 false), !tbaa !42
  store ptr %i.m, ptr %i.j, align 8, !tbaa !41
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.j, align 8, !tbaa !41
  store i32 7, ptr %2, align 4, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %_ZN6icu_78L27allocSharedNumberFormattersEv.exit, %bb.f, %bb.d
  tail call void @umtx_unlock_78(ptr noundef nonnull @_ZN6icu_78L4LOCKE)
  %i.o = load i32, ptr %2, align 4, !tbaa !52
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6icu_7816SimpleDateFormat21processOverrideStringERKNS_6LocaleERKNS_13UnicodeStringEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZN6icu_7816SimpleDateFormat21processOverrideStringERKNS_6LocaleERKNS_13UnicodeStringEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.c, %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816SimpleDateFormat26parseAmbiguousDatesAsAfterEdR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, double noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !52
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !52
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6icu_788Calendar15setTimeInMillisEdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %i.d, double noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.e = load i32, ptr %2, align 4, !tbaa !52
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i8 1, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double %1, ptr %i.h, align 8, !tbaa !57
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.j = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %i.i, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 %i.j, ptr %i.k, align 4, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  ret void
}

declare noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7816SimpleDateFormat6formatERNS_8CalendarERNS_13UnicodeStringERNS_13FieldPositionE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.icu_78::FieldPositionOnlyHandler", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7824FieldPositionOnlyHandlerC1ERNS_13FieldPositionE(ptr noundef nonnull align 8 dereferenceable(26) %4, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.b = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7816SimpleDateFormat7_formatERNS_8CalendarERNS_13UnicodeStringERNS_20FieldPositionHandlerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @_ZN6icu_7824FieldPositionOnlyHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(26) dereferenceable(26) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %2

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7824FieldPositionOnlyHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(26) dereferenceable(26) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.c
}

declare void @_ZN6icu_7824FieldPositionOnlyHandlerC1ERNS_13FieldPositionE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7816SimpleDateFormat7_formatERNS_8CalendarERNS_13UnicodeStringERNS_20FieldPositionHandlerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6icu_7813ParsePositionD1Ev
declare void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7816SimpleDateFormat8parseIntERKNS_13UnicodeStringERNS_11FormattableEiRNS_13ParsePositionEaPKNS_12NumberFormatE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef signext %5, ptr noundef %6) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %9 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %6) ]
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %6, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #22 ; 3 uses
  %i.c = icmp eq i8 %5, 0
  %i.d = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEE12adoptInsteadEPS1_.exit unwind label %.thread64 ; 6 uses

.thread64:                                        ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit43

_ZN6icu_7812LocalPointerINS_13DecimalFormatEE12adoptInsteadEPS1_.exit: ; preds = %bb.b
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13DecimalFormatEE12adoptInsteadEPS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr @_ZN6icu_78L24SUPPRESS_NEGATIVE_PREFIXE, ptr %9, align 8, !tbaa !72
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 noundef signext 1, ptr noundef nonnull align 8 %9, i32 noundef -1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  %i.m = load ptr, ptr %9, align 8, !tbaa !72
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.m) #22, !srcloc !73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  br label %.thread58

.thread58:                                        ; preds = %bb.f, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.n, %bb.f ]
  %i.p = load ptr, ptr %9, align 8, !tbaa !72
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.p) #22, !srcloc !73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.n

.thread:                                          ; preds = %bb.e, %bb.a
  %.sroa.0.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.a ] ; 5 uses
  %.033 = phi ptr [ %i.h, %bb.e ], [ %6, %bb.a ]  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !143  ; 2 uses
  %i.s = load ptr, ptr %.033, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(124) %.033, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %.thread
  %i.v = icmp sgt i32 %3, 0
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.q, align 8, !tbaa !143
  %i.x = sub nsw i32 %i.w, %i.r                   ; 2 uses
  %i.y = icmp sgt i32 %i.x, %3
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !50
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = sub nuw nsw i32 %i.x, %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.051 = phi i32 [ %i.ad, %.lr.ph ], [ %i.ab, %bb.j ]
  %.02750 = phi i32 [ %i.ae, %.lr.ph ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = sdiv i32 %.051, 10                      ; 2 uses
  %i.ae = add nsw i32 %.02750, -1
  %i.af = icmp samesign ugt i32 %.02750, 1
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph
  %i.ag = add nsw i32 %i.r, %3
  store i32 %i.ag, ptr %i.q, align 8, !tbaa !143
  invoke void @_ZN6icu_7811Formattable7setLongEi(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.ad)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.h, %._crit_edge, %bb.i
  %i.ah = icmp eq ptr %.sroa.0.0, null
  br i1 %i.ah, label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %.sroa.0.0, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.0) #22, !inline_history !227
  br label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit

_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_13DecimalFormatEE12adoptInsteadEPS1_.exit, %bb.k, %bb.l
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = icmp eq ptr %.sroa.0.0, null
  br i1 %i.am, label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit43, label %bb.n

bb.n:                                             ; preds = %.thread58, %bb.m
  %.pn39.pn62 = phi { ptr, i32 } [ %.pn, %.thread58 ], [ %i.al, %bb.m ]
  %.sroa.0.361 = phi ptr [ %i.h, %.thread58 ], [ %.sroa.0.0, %bb.m ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.361, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.361) #22, !inline_history !227
  br label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit43

_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit43: ; preds = %.thread64, %bb.n, %bb.m
  %.pn39.pn63 = phi { ptr, i32 } [ %.pn39.pn62, %bb.n ], [ %i.al, %bb.m ], [ %i.i, %.thread64 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn39.pn63
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816SimpleDateFormat16translatePatternERKNS_13UnicodeStringERS1_S3_S3_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !52
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = and i16 %i.e, 1
  %.not.i = icmp eq i16 %i.f, 0
  %i.g = and i16 %i.e, 30
  %storemerge.i = select i1 %.not.i, i16 %i.g, i16 2
  store i16 %storemerge.i, ptr %i.d, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i16, ptr %i.h, align 8, !tbaa !50   ; 3 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = load i32, ptr %i.i, align 4
  %i.o = select i1 %i.k, i32 %i.n, i32 %i.m
  %.not3566 = icmp sgt i32 %i.o, 0
  br i1 %.not3566, label %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, label %._crit_edge.thread

_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph:        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %_ZNK6icu_7813UnicodeStringixEi.exit

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread
  %indvars.iv = phi i64 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ] ; 2 uses
  %i.x = phi i16 [ %i.j, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %i.bf, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ]
  %.02867 = phi i8 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %.129.shrunk, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ]
  %i.y = and i16 %i.x, 2
  %.not.i.i.i = icmp eq i16 %i.y, 0
  %i.z = load ptr, ptr %i.q, align 8
  %i.aa = select i1 %.not.i.i.i, ptr %i.z, ptr %i.p
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !78
  %.fr = freeze i16 %i.ac                         ; 8 uses
  %.not32 = icmp eq i8 %.02867, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.ad = icmp ne i16 %.fr, 39
  %i.ae = zext i1 %i.ad to i8
  br label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.af = icmp eq i16 %.fr, 39
  br i1 %i.af, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp ult i16 %.fr, 128
  br i1 %i.ag, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread

_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit: ; preds = %bb.e
  %i.ah = zext nneg i16 %.fr to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZN6icu_7816SimpleDateFormat12isSyntaxCharEDsE17mapCharToIsSyntax, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !50
  %.not33 = icmp eq i8 %i.aj, 0
  br i1 %.not33, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit
  %i.ak = load i16, ptr %i.r, align 8, !tbaa !50  ; 2 uses
  %i.al = icmp slt i16 %i.ak, 0
  %i.am = ashr i16 %i.ak, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = load i32, ptr %i.s, align 4
  %i.ap = select i1 %i.al, i32 %i.ao, i32 %i.an
  %i.aq = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i16 noundef zeroext %.fr, i32 noundef 0, i32 noundef %i.ap) ; 3 uses
  %.not34 = icmp eq i32 %i.aq, -1
  br i1 %.not34, label %._crit_edge.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load i16, ptr %i.t, align 8, !tbaa !50  ; 3 uses
  %i.as = icmp slt i16 %i.ar, 0
  %i.at = ashr i16 %i.ar, 5
  %i.au = sext i16 %i.at to i32
  %i.av = load i32, ptr %i.u, align 4
  %i.aw = select i1 %i.as, i32 %i.av, i32 %i.au
  %i.ax = icmp ult i32 %i.aq, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ay = and i16 %i.ar, 2
  %.not.i.i.i38 = icmp eq i16 %i.ay, 0
  %i.az = load ptr, ptr %i.w, align 8
  %i.ba = select i1 %.not.i.i.i38, ptr %i.az, ptr %i.v
  %i.bb = sext i32 %i.aq to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !78
  br label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread

_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread: ; preds = %bb.c, %bb.g, %bb.h, %bb.e, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit, %bb.d
  %.129.shrunk = phi i8 [ 0, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.e ], [ %i.ae, %bb.c ] ; 2 uses
  %.1 = phi i16 [ %.fr, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit ], [ 39, %bb.d ], [ -1, %bb.g ], [ %i.bd, %bb.h ], [ %.fr, %bb.e ], [ %.fr, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.1, ptr %i.a, align 2, !tbaa !78
  %i.be = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i16, ptr %i.h, align 8, !tbaa !50  ; 3 uses
  %i.bg = icmp slt i16 %i.bf, 0
  %i.bh = ashr i16 %i.bf, 5
  %i.bi = sext i16 %i.bh to i32
  %i.bj = load i32, ptr %i.i, align 4
  %i.bk = select i1 %i.bg, i32 %i.bj, i32 %i.bi
  %i.bl = sext i32 %i.bk to i64
  %.not35 = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %.not35, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %._crit_edge, !llvm.loop !228

._crit_edge:                                      ; preds = %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread
  %i.bm = icmp eq i8 %.129.shrunk, 0
  br i1 %i.bm, label %._crit_edge.thread, label %._crit_edge.thread.sink.split

._crit_edge.thread.sink.split:                    ; preds = %bb.f, %._crit_edge
  store i32 3, ptr %4, align 4, !tbaa !52
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.thread.sink.split, %bb.b, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7816SimpleDateFormat9toPatternERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.a) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7816SimpleDateFormat18toLocalizedPatternERNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = tail call noundef ptr @_ZN6icu_7817DateFormatSymbols16getPatternUCharsEv() ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 2, ptr %i.c, align 8, !tbaa !50
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %_ZN6icu_788internal23toU16StringViewNullableIPKDsvvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.h, %.preheader.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.0.i.i.i.i
  %i.f = load i16, ptr %i.e, align 2, !tbaa !78
  %i.g = icmp eq i16 %i.f, 0
  %i.h = add i64 %.0.i.i.i.i, 1
  br i1 %i.g, label %_ZN6icu_788internal23toU16StringViewNullableIPKDsvvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i, label %.preheader.i.i, !llvm.loop !5

_ZN6icu_788internal23toU16StringViewNullableIPKDsvvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i: ; preds = %.preheader.i.i, %bb.a
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.a ], [ %.0.i.i.i.i, %.preheader.i.i ]
  %i.i = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %.sroa.02.0.i.i, ptr %i.b)
          to label %_ZN6icu_7813UnicodeStringC2IPKDsvEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.n, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN6icu_788internal23toU16StringViewNullableIPKDsvvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %3) #22
  br label %common.resume

_ZN6icu_7813UnicodeStringC2IPKDsvEERKT_.exit:     ; preds = %_ZN6icu_788internal23toU16StringViewNullableIPKDsvvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 600
  invoke void @_ZN6icu_7816SimpleDateFormat16translatePatternERKNS_13UnicodeStringERS1_S3_S3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IPKDsvEERKT_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %1

bb.d:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IPKDsvEERKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume
}

declare noundef ptr @_ZN6icu_7817DateFormatSymbols16getPatternUCharsEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816SimpleDateFormat12applyPatternERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %3 = alloca %"class.icu_78::Locale", align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 369 ; 2 uses
  store i8 0, ptr %i.e, align 1, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 370 ; 4 uses
  store i8 0, ptr %i.f, align 2, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i16, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  %i.i = icmp slt i16 %i.h, 0
  %i.j = ashr i16 %i.h, 5
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.m = load i32, ptr %i.l, align 4
  %i.n = select i1 %i.i, i32 %i.m, i32 %i.k       ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i, label %_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit

_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i:      ; preds = %bb.a
  %i.p = and i16 %i.h, 2
  %.not.i.i.i.i = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i.i, ptr %i.s, ptr %i.q
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %_ZNK6icu_7813UnicodeStringixEi.exit.i

_ZNK6icu_7813UnicodeStringixEi.exit.i:            ; preds = %bb.f, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.01016.i = phi i8 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.v = load i16, ptr %i.u, align 2, !tbaa !78
  %.fr.i = freeze i16 %i.v                        ; 3 uses
  %i.w = icmp eq i16 %.fr.i, 39
  %i.x = zext i1 %i.w to i8                       ; 2 uses
  %spec.select.i = xor i8 %.01016.i, %i.x
  %i.y = icmp eq i16 %.fr.i, 24180
  br i1 %i.y, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.i
  store i8 1, ptr %i.f, align 2, !tbaa !76
  br label %.thread.i

.thread.i:                                        ; preds = %bb.b, %_ZNK6icu_7813UnicodeStringixEi.exit.i
  %.not.i = icmp eq i8 %.01016.i, %i.x
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.thread.i
  switch i16 %.fr.i, label %bb.f [
    i16 109, label %bb.d
    i16 115, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.d, align 8, !tbaa !74
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.e, align 1, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.thread.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit, label %_ZNK6icu_7813UnicodeStringixEi.exit.i, !llvm.loop !2

_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit: ; preds = %bb.f, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %_ZNKSt9type_infoeqERKS_.exit.thread22, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 3 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN6icu_7816JapaneseCalendarE, i64 8), align 8, !tbaa !80 ; 3 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.af, align 1, !tbaa !50
  %.not.i18 = icmp eq i8 %i.ai, 42
  br i1 %.not.i18, label %_ZNKSt9type_infoeqERKS_.exit.thread22, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.h
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !50
  %i.ak = icmp eq i8 %i.aj, 42
  %.idx.i.i = zext i1 %i.ak to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(1) %i.al) #22
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread22

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.g, %_ZNKSt9type_infoeqERKS_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.ap = tail call noundef ptr @_ZNK6icu_786Locale11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %.not26 = icmp eq i8 %i.aq, 106
  br i1 %.not26, label %sub_1, label %_ZNKSt9type_infoeqERKS_.exit.thread22

sub_1:                                            ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  %.not27 = icmp eq i8 %i.as, 97
  br i1 %.not27, label %_ZNKSt9type_infoeqERKS_.exit.thread.tail, label %_ZNKSt9type_infoeqERKS_.exit.thread22

_ZNKSt9type_infoeqERKS_.exit.thread.tail:         ; preds = %sub_1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %_ZN6icu_788internal23toU16StringViewNullableIA11_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i, label %_ZNKSt9type_infoeqERKS_.exit.thread22

_ZN6icu_788internal23toU16StringViewNullableIA11_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i: ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread.tail
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i16 2, ptr %i.aw, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ay = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 10, ptr nonnull @.str.10)
          to label %_ZN6icu_7813UnicodeStringC2IA11_DsvEERKT_.exit unwind label %bb.i ; 0 uses

common.resume:                                    ; preds = %bb.o, %bb.ab, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.cy, %bb.ab ], [ %i.cd, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %_ZN6icu_788internal23toU16StringViewNullableIA11_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %2) #22
  br label %common.resume

_ZN6icu_7813UnicodeStringC2IA11_DsvEERKT_.exit:   ; preds = %_ZN6icu_788internal23toU16StringViewNullableIA11_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !50 ; 3 uses
  %i.bc = and i16 %i.bb, 1
  %.not.i19 = icmp eq i16 %i.bc, 0
  br i1 %.not.i19, label %bb.j, label %.split

.split:                                           ; preds = %_ZN6icu_7813UnicodeStringC2IA11_DsvEERKT_.exit
  %i.bd = load i16, ptr %i.aw, align 8, !tbaa !50
  %i.be = trunc i16 %i.bd to i1
  br i1 %i.be, label %bb.l, label %.critedge

bb.j:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA11_DsvEERKT_.exit
  %i.bf = icmp slt i16 %i.bb, 0
  %i.bg = ashr i16 %i.bb, 5
  %i.bh = sext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = select i1 %i.bf, i32 %i.bj, i32 %i.bh   ; 2 uses
  %i.bl = load i16, ptr %i.aw, align 8, !tbaa !50 ; 4 uses
  %i.bm = icmp slt i16 %i.bl, 0
  %i.bn = ashr i16 %i.bl, 5
  %i.bo = sext i16 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = select i1 %i.bm, i32 %i.bq, i32 %i.bo
  %i.bs = and i16 %i.bl, 1
  %.not9.i = icmp eq i16 %i.bs, 0
  %i.bt = icmp eq i32 %i.bk, %i.br
  %or.cond.i = and i1 %.not9.i, %i.bt
  br i1 %or.cond.i, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bu = and i16 %i.bl, 2
  %.not.i.i.i = icmp eq i16 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = select i1 %.not.i.i.i, ptr %i.bx, ptr %i.bv
  %i.bz = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef %i.by, i32 noundef %i.bk)
          to label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit unwind label %bb.o

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.k
  %.not25 = icmp eq i8 %i.bz, 0
  br i1 %.not25, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.ca = load i8, ptr %i.f, align 2, !tbaa !76
  %.not10 = icmp eq i8 %i.ca, 0
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not10, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !41 ; 2 uses
  %.not17 = icmp eq ptr %i.cc, null
  br i1 %.not17, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZN6icu_78L26freeSharedNumberFormattersEPPKNS_18SharedNumberFormatE(ptr noundef %i.cc)
  store ptr null, ptr %i.cb, align 8, !tbaa !41
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

bb.p:                                             ; preds = %bb.n, %bb.m
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ax)
  br label %_ZNKSt9type_infoeqERKS_.exit.thread22

.critedge:                                        ; preds = %bb.j, %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.l
  %i.ce = load i16, ptr %i.ba, align 8, !tbaa !50
  %i.cf = and i16 %i.ce, 1
  %.not11 = icmp eq i16 %i.cf, 0
  br i1 %.not11, label %_ZNKSt9type_infoeqERKS_.exit.thread22, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = load i8, ptr %i.f, align 2, !tbaa !76
  %.not12 = icmp eq i8 %i.cg, 0
  br i1 %.not12, label %_ZNKSt9type_infoeqERKS_.exit.thread22, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @umtx_lock_78(ptr noundef nonnull @_ZN6icu_78L4LOCKE)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = call noalias dereferenceable_or_null(304) ptr @uprv_malloc_78(i64 noundef 304) #24 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN6icu_78L27allocSharedNumberFormattersEv.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.ck, i8 0, i64 304, i1 false), !tbaa !42
  br label %_ZN6icu_78L27allocSharedNumberFormattersEv.exit

_ZN6icu_78L27allocSharedNumberFormattersEv.exit:  ; preds = %bb.t, %.preheader.preheader.i
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !41
  br label %bb.u

bb.u:                                             ; preds = %_ZN6icu_78L27allocSharedNumberFormattersEv.exit, %bb.s
  call void @umtx_unlock_78(ptr noundef nonnull @_ZN6icu_78L4LOCKE)
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !41
  %.not13 = icmp eq ptr %i.cm, null
end_hunk_2
