Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/smpdtfmt?download=true
inline.NumInlined: 596
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK6icu_7816SimpleDateFormat7_formatERNS_8CalendarERNS_13UnicodeStringERNS_20FieldPositionHandlerER10UErrorCode:bb.a
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !78
  %i.ca = icmp eq i16 %i.bz, 39
  br i1 %i.ca, label %bb.p, label %_ZNK6icu_7813UnicodeStringixEi.exit88.thread

bb.p:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 39, ptr %i.b, align 2, !tbaa !78
  %i.cb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

_ZNK6icu_7813UnicodeStringixEi.exit88.thread:     ; preds = %bb.o, %_ZNK6icu_7813UnicodeStringixEi.exit88, %bb.n
  %.not84 = icmp eq i8 %.06795, 0
  %i.cc = zext i1 %.not84 to i8
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %.not82 = icmp eq i8 %.06795, 0
  %i.cd = icmp ult i16 %.0.i.i85, 128
  %or.cond94 = and i1 %.not82, %i.cd
  br i1 %or.cond94, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread

_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit: ; preds = %bb.q
  %i.ce = zext nneg i16 %.0.i.i85 to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @_ZZN6icu_7816SimpleDateFormat12isSyntaxCharEDsE17mapCharToIsSyntax, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !50
  %.not83 = icmp eq i8 %i.cg, 0
  br i1 %.not83, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit
  %i.ch = add nsw i32 %.164, 1
  br label %bb.s

_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread: ; preds = %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.0.i.i85, ptr %i.a, align 2, !tbaa !78
  %i.ci = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread, %bb.p, %_ZNK6icu_7813UnicodeStringixEi.exit88.thread
  %.168 = phi i8 [ %.06795, %bb.p ], [ %i.cc, %_ZNK6icu_7813UnicodeStringixEi.exit88.thread ], [ %.06795, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ], [ 0, %bb.r ]
  %.166 = phi i16 [ %.06596, %bb.p ], [ %.06596, %_ZNK6icu_7813UnicodeStringixEi.exit88.thread ], [ %.06596, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ], [ %.0.i.i85, %bb.r ] ; 2 uses
  %.2 = phi i32 [ %.164, %bb.p ], [ %.164, %_ZNK6icu_7813UnicodeStringixEi.exit88.thread ], [ %.164, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ], [ %i.ch, %bb.r ] ; 2 uses
  %.1 = phi i32 [ %i.bl, %bb.p ], [ %.099, %_ZNK6icu_7813UnicodeStringixEi.exit88.thread ], [ %.099, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ], [ %.099, %bb.r ]
  %i.cj = add nsw i32 %.1, 1                      ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.an
  br i1 %i.ck, label %bb.i, label %.critedge, !llvm.loop !152

bb.t:                                             ; preds = %.critedge
  call void @_ZNK6icu_7816SimpleDateFormat9subFormatERNS_13UnicodeStringEDsi15UDisplayContextiDsRNS_20FieldPositionHandlerERNS_8CalendarER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i16 noundef zeroext %.065.lcssa, i32 noundef %.063.lcssa, i32 noundef %i.af, i32 noundef %.061.lcssa, i16 noundef zeroext %.065.lcssa, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(256) %.072, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNKSt9type_infoneERKS_.exit.thread90, %bb.t, %.critedge
  %i.cl = icmp eq ptr %.071, null
  br i1 %i.cl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge.thread
  %i.cm = load ptr, ptr %.071, align 8, !tbaa !45
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(256) %.071) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.h, %bb.u, %.critedge.thread, %bb.a
  ret ptr %2
}

; Function Attrs: nounwind
declare void @_ZN6icu_7824FieldPositionOnlyHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(26) dereferenceable(26)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7816SimpleDateFormat6formatERNS_8CalendarERNS_13UnicodeStringEPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::FieldPositionIteratorHandler", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6icu_7828FieldPositionIteratorHandlerC1EPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.a = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7816SimpleDateFormat7_formatERNS_8CalendarERNS_13UnicodeStringERNS_20FieldPositionHandlerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @_ZN6icu_7828FieldPositionIteratorHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret ptr %2

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7828FieldPositionIteratorHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.b
}

declare void @_ZN6icu_7828FieldPositionIteratorHandlerC1EPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7828FieldPositionIteratorHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #6

declare void @_ZN6icu_788Calendar11setTimeZoneERKNS_8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6icu_788Calendar11getTimeZoneEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7816SimpleDateFormat9subFormatERNS_13UnicodeStringEDsi15UDisplayContextiDsRNS_20FieldPositionHandlerERNS_8CalendarER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(256) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.a = alloca [128 x i16], align 16             ; 4 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %13 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 369 ; 2 uses
  %i.i = icmp slt i32 %3, 4                       ; 5 uses
  %i.j = icmp eq i32 %3, 4
  %i.k = icmp samesign ugt i32 %3, 5
  %or.cond28 = or i1 %i.j, %i.k                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 22 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr547 = phi i16 [ %2, %bb.a ], [ 97, %tailrecurse.backedge ] ; 2 uses
  %.tr551 = phi i16 [ %6, %bb.a ], [ %.tr551.be, %tailrecurse.backedge ]
  %i.m = load atomic i8, ptr @_ZGVZNK6icu_7816SimpleDateFormat9subFormatERNS_13UnicodeStringEDsi15UDisplayContextiDsRNS_20FieldPositionHandlerERNS_8CalendarER10UErrorCodeE4hebr acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.e, !prof !153

bb.b:                                             ; preds = %tailrecurse
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6icu_7816SimpleDateFormat9subFormatERNS_13UnicodeStringEDsi15UDisplayContextiDsRNS_20FieldPositionHandlerERNS_8CalendarER10UErrorCodeE4hebr) #22
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_7813UnicodeStringC2IA5_DsvEERKT_(ptr noundef nonnull align 8 dereferenceable(64) @_ZZNK6icu_7816SimpleDateFormat9subFormatERNS_13UnicodeStringEDsi15UDisplayContextiDsRNS_20FieldPositionHandlerERNS_8CalendarER10UErrorCodeE4hebr, ptr noundef nonnull align 2 dereferenceable(10) @.str.12)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6icu_7813UnicodeStringD1Ev, ptr nonnull @_ZZNK6icu_7816SimpleDateFormat9subFormatERNS_13UnicodeStringEDsi15UDisplayContextiDsRNS_20FieldPositionHandlerERNS_8CalendarER10UErrorCodeE4hebr, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6icu_7816SimpleDateFormat9subFormatERNS_13UnicodeStringEDsi15UDisplayContextiDsRNS_20FieldPositionHandlerERNS_8CalendarER10UErrorCodeE4hebr) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %tailrecurse
  %i.q = load i32, ptr %9, align 4, !tbaa !52
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.g, label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK6icu_7816SimpleDateFormat9subFormatERNS_13UnicodeStringEDsi15UDisplayContextiDsRNS_20FieldPositionHandlerERNS_8CalendarER10UErrorCodeE4hebr) #22
  br label %bb.gr

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef i32 @_ZN6icu_7817DateFormatSymbols19getPatternCharIndexEDs(i16 noundef zeroext %.tr547) ; 9 uses
  %i.u = load i16, ptr %i.b, align 8, !tbaa !50   ; 38 uses
  %i.v = load i32, ptr %i.c, align 4              ; 19 uses
  %i.w = icmp eq i32 %i.t, 38
  br i1 %i.w, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not512 = icmp eq i16 %.tr547, 108
  br i1 %.not512, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %9, align 4, !tbaa !52
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.x = zext i32 %i.t to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7816SimpleDateFormat29fgPatternIndexToCalendarFieldE, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !84
  %i.aa = icmp ult i32 %i.t, 35
  br i1 %i.aa, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.not479 = icmp eq i32 %i.t, 34
  br i1 %.not479, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %8, i32 noundef %i.z, ptr noundef nonnull align 4 dereferenceable(4) %9)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %8, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 440
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(256) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = phi i32 [ %i.ab, %bb.l ], [ %i.af, %bb.m ]
  %i.ah = load i32, ptr %9, align 4, !tbaa !52
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n, %bb.j
  %.0451 = phi i32 [ %i.ag, %bb.n ], [ 0, %bb.j ] ; 28 uses
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK6icu_7816SimpleDateFormat22getNumberFormatByIndexE16UDateFormatField.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.x
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %spec.select843 = select i1 %i.an, ptr %i.e, ptr %i.ao
  br label %_ZNK6icu_7816SimpleDateFormat22getNumberFormatByIndexE16UDateFormatField.exit

_ZNK6icu_7816SimpleDateFormat22getNumberFormatByIndexE16UDateFormatField.exit: ; preds = %bb.p, %bb.o
  %.0.in.i = phi ptr [ %i.e, %bb.o ], [ %spec.select843, %bb.p ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !43 ; 17 uses
  %i.ap = icmp eq ptr %.0.i, null
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK6icu_7816SimpleDateFormat22getNumberFormatByIndexE16UDateFormatField.exit
  store i32 5, ptr %9, align 4, !tbaa !52
  br label %.loopexit

bb.r:                                             ; preds = %_ZNK6icu_7816SimpleDateFormat22getNumberFormatByIndexE16UDateFormatField.exit
  switch i32 %i.t, label %bb.ge [
    i32 0, label %bb.s
    i32 30, label %bb.z
    i32 1, label %.loopexit555
    i32 18, label %.loopexit555
    i32 2, label %bb.af
    i32 26, label %bb.af
    i32 4, label %bb.bm
    i32 8, label %bb.bp
    i32 19, label %bb.bu
    i32 9, label %.loopexit556
    i32 25, label %bb.cc
    i32 14, label %bb.ck
    i32 37, label %bb.co
    i32 15, label %bb.cr
    i32 17, label %bb.cu
    i32 23, label %bb.cu
    i32 24, label %bb.cu
    i32 29, label %bb.cu
    i32 31, label %bb.cu
    i32 32, label %bb.cu
    i32 33, label %bb.cu
    i32 27, label %bb.ei
    i32 28, label %bb.eo
    i32 35, label %bb.eu
    i32 36, label %bb.fh
  ]

bb.s:                                             ; preds = %bb.r
  %i.aq = icmp slt i16 %i.u, 0
  %i.ar = ashr i16 %i.u, 5
  %i.as = sext i16 %i.ar to i32
  %i.at = select i1 %i.aq, i32 %i.v, i32 %i.as    ; 4 uses
  %i.au = load ptr, ptr %8, align 8, !tbaa !45
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 @_ZNKSt9type_infoeqERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) @_ZTIN6icu_7815ChineseCalendarE) #22
  br i1 %i.ax, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = load ptr, ptr %8, align 8, !tbaa !45
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 @_ZNKSt9type_infoeqERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) @_ZTIN6icu_7813DangiCalendarE) #22
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @_ZNK6icu_7816SimpleDateFormat17zeroPaddingNumberEPKNS_12NumberFormatERNS_13UnicodeStringEiii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %.0.i, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0451, i32 noundef 1, i32 noundef 9)
  br label %.critedge515

bb.v:                                             ; preds = %bb.t
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !46  ; 6 uses
  switch i32 %3, label %bb.y [
    i32 5, label %bb.w
    i32 4, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !154
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !155
  tail call fastcc void @_ZN6icu_78L13_appendSymbolERNS_13UnicodeStringEiPKS0_i(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0451, ptr noundef %i.be, i32 noundef %i.bg)
  br label %.critedge515

bb.x:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !156
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !157
  tail call fastcc void @_ZN6icu_78L13_appendSymbolERNS_13UnicodeStringEiPKS0_i(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0451, ptr noundef %i.bi, i32 noundef %i.bk)
  br label %.critedge515

bb.y:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !158
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !159
  tail call fastcc void @_ZN6icu_78L13_appendSymbolERNS_13UnicodeStringEiPKS0_i(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0451, ptr noundef %i.bm, i32 noundef %i.bo)
  br label %.critedge515

bb.z:                                             ; preds = %bb.r
  %i.bp = icmp slt i16 %i.u, 0
  %i.bq = ashr i16 %i.u, 5
  %i.br = sext i16 %i.bq to i32
  %i.bs = select i1 %i.bp, i32 %i.v, i32 %i.br    ; 3 uses
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !46  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !88 ; 2 uses
  %.not504 = icmp eq ptr %i.bv, null
  br i1 %.not504, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 512
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !89 ; 2 uses
  %.not505 = icmp sgt i32 %.0451, %i.bx
  br i1 %.not505, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = add nsw i32 %.0451, -1
  tail call fastcc void @_ZN6icu_78L13_appendSymbolERNS_13UnicodeStringEiPKS0_i(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.by, ptr noundef nonnull %i.bv, i32 noundef %i.bx)
  br label %.critedge515

.loopexit555:                                     ; preds = %bb.r, %bb.r
  %i.bz = icmp slt i16 %i.u, 0
  %i.ca = ashr i16 %i.u, 5
  %i.cb = sext i16 %i.ca to i32
  %i.cc = select i1 %i.bz, i32 %i.v, i32 %i.cb
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit555, %bb.z, %bb.aa
  %i.cd = phi i32 [ %i.cc, %.loopexit555 ], [ %i.bs, %bb.z ], [ %i.bs, %bb.aa ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cf = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ce, ptr noundef nonnull align 8 dereferenceable(64) @_ZZNK6icu_7816SimpleDateFormat9subFormatERNS_13UnicodeStringEDsi15UDisplayContextiDsRNS_20FieldPositionHandlerERNS_8CalendarER10UErrorCodeE4hebr)
  %i.cg = icmp eq i8 %i.cf, 0
  %i.ch = add i32 %.0451, -5001
  %i.ci = icmp ult i32 %i.ch, 999
  %or.cond4 = and i1 %i.ci, %i.cg
  %i.cj = add nsw i32 %.0451, -5000
  %spec.select = select i1 %or.cond4, i32 %i.cj, i32 %.0451 ; 2 uses
  %i.ck = icmp eq i32 %3, 2
  br i1 %i.ck, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZNK6icu_7816SimpleDateFormat17zeroPaddingNumberEPKNS_12NumberFormatERNS_13UnicodeStringEiii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %.0.i, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %spec.select, i32 noundef 2, i32 noundef 2)
  br label %.critedge515

bb.ae:                                            ; preds = %bb.ac
  tail call void @_ZNK6icu_7816SimpleDateFormat17zeroPaddingNumberEPKNS_12NumberFormatERNS_13UnicodeStringEiii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %.0.i, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %spec.select, i32 noundef %3, i32 noundef 10)
  br label %.critedge515

bb.af:                                            ; preds = %bb.r, %bb.r
  %i.cl = icmp slt i16 %i.u, 0
  %i.cm = ashr i16 %i.u, 5
  %i.cn = sext i16 %i.cm to i32
  %i.co = select i1 %i.cl, i32 %i.v, i32 %i.cn    ; 7 uses
  %i.cp = load ptr, ptr %8, align 8, !tbaa !45
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef zeroext i1 @_ZNKSt9type_infoeqERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) @_ZTIN6icu_7814HebrewCalendarE) #22
  br i1 %i.cs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ct = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %8, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %i.cu = tail call noundef signext i8 @_ZN6icu_7814HebrewCalendar10isLeapYearEi(i32 noundef %i.ct)
  %i.cv = icmp ne i8 %i.cu, 0
  %i.cw = icmp eq i32 %.0451, 6
  %or.cond6 = and i1 %i.cw, %i.cv
  %i.cx = icmp sgt i32 %3, 2
  %or.cond8 = and i1 %i.cx, %or.cond6
  %spec.store.select = select i1 %or.cond8, i32 13, i32 %.0451 ; 2 uses
  %i.cy = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %8, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %i.cz = tail call noundef signext i8 @_ZN6icu_7814HebrewCalendar10isLeapYearEi(i32 noundef %i.cy)
  %i.da = icmp eq i8 %i.cz, 0
  %i.db = icmp sgt i32 %spec.store.select, 5
  %or.cond10 = and i1 %i.da, %i.db
  %i.dc = icmp slt i32 %3, 3
  %or.cond12 = and i1 %i.dc, %or.cond10
  %14 = sext i1 %or.cond12 to i32
  %spec.select513 = add nsw i32 %spec.store.select, %14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.2 = phi i32 [ %.0451, %bb.af ], [ %spec.select513, %bb.ag ] ; 7 uses
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !46  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 488
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %.not496 = icmp eq ptr %i.df, null
  br i1 %.not496, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 496
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !91
  %i.di = icmp sgt i32 %i.dh, 6
  br i1 %i.di, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dj = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %8, i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %i.dk = icmp eq i32 %i.dj, 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.aj
  %.not497 = phi i1 [ %i.dk, %bb.aj ], [ true, %bb.ai ], [ true, %bb.ah ] ; 7 uses
  switch i32 %3, label %bb.bg [
    i32 5, label %bb.al
    i32 4, label %bb.as
    i32 3, label %bb.az
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dl = icmp eq i32 %i.t, 2
  %i.dm = load ptr, ptr %i.l, align 8, !tbaa !46  ; 6 uses
  br i1 %i.dl, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !160
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !161
  br i1 %.not497, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 488
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !90
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 128
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.du = phi ptr [ %i.dt, %bb.an ], [ null, %bb.am ]
  tail call fastcc void @_ZN6icu_78L29_appendSymbolWithMonthPatternERNS_13UnicodeStringEiPKS0_iS3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.2, ptr noundef %i.do, i32 noundef %i.dq, ptr noundef %i.du, ptr noundef nonnull align 4 dereferenceable(4) %9)
  br label %.critedge515

bb.ap:                                            ; preds = %bb.al
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 136
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !162
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 144
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !163
  br i1 %.not497, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 488
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !90
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 320
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.ec = phi ptr [ %i.eb, %bb.aq ], [ null, %bb.ap ]
  tail call fastcc void @_ZN6icu_78L29_appendSymbolWithMonthPatternERNS_13UnicodeStringEiPKS0_iS3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.2, ptr noundef %i.dw, i32 noundef %i.dy, ptr noundef %i.ec, ptr noundef nonnull align 4 dereferenceable(4) %9)
  br label %.critedge515

bb.as:                                            ; preds = %bb.ak
  %i.ed = icmp eq i32 %i.t, 2
  %i.ee = load ptr, ptr %i.l, align 8, !tbaa !46  ; 6 uses
  br i1 %i.ed, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !92
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !93
  br i1 %.not497, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 488
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !90
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.el = phi ptr [ %i.ek, %bb.au ], [ null, %bb.at ]
  tail call fastcc void @_ZN6icu_78L29_appendSymbolWithMonthPatternERNS_13UnicodeStringEiPKS0_iS3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.2, ptr noundef %i.eg, i32 noundef %i.ei, ptr noundef %i.el, ptr noundef nonnull align 4 dereferenceable(4) %9)
  br label %.critedge515

bb.aw:                                            ; preds = %bb.as
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !94
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 112
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !95
  br i1 %.not497, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 488
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !90
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 192
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.et = phi ptr [ %i.es, %bb.ax ], [ null, %bb.aw ]
  tail call fastcc void @_ZN6icu_78L29_appendSymbolWithMonthPatternERNS_13UnicodeStringEiPKS0_iS3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.2, ptr noundef %i.en, i32 noundef %i.ep, ptr noundef %i.et, ptr noundef nonnull align 4 dereferenceable(4) %9)
  br label %.critedge515

bb.az:                                            ; preds = %bb.ak
  %i.eu = icmp eq i32 %i.t, 2
  %i.ev = load ptr, ptr %i.l, align 8, !tbaa !46  ; 6 uses
  br i1 %i.eu, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !96
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 80
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !97
  br i1 %.not497, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 488
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !90
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.fd = phi ptr [ %i.fc, %bb.bb ], [ null, %bb.ba ]
  tail call fastcc void @_ZN6icu_78L29_appendSymbolWithMonthPatternERNS_13UnicodeStringEiPKS0_iS3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.2, ptr noundef %i.ex, i32 noundef %i.ez, ptr noundef %i.fd, ptr noundef nonnull align 4 dereferenceable(4) %9)
  br label %.critedge515

bb.bd:                                            ; preds = %bb.az
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 120
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !98
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 128
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !99
  br i1 %.not497, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 488
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !90
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 256
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.fl = phi ptr [ %i.fk, %bb.be ], [ null, %bb.bd ]
  tail call fastcc void @_ZN6icu_78L29_appendSymbolWithMonthPatternERNS_13UnicodeStringEiPKS0_iS3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.2, ptr noundef %i.ff, i32 noundef %i.fh, ptr noundef %i.fl, ptr noundef nonnull align 4 dereferenceable(4) %9)
  br label %.critedge515

bb.bg:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %10, align 8, !tbaa !45
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i16 2, ptr %i.fm, align 8, !tbaa !50
  %i.fn = add nsw i32 %.2, 1
  invoke void @_ZNK6icu_7816SimpleDateFormat17zeroPaddingNumberEPKNS_12NumberFormatERNS_13UnicodeStringEiii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %.0.i, ptr noundef nonnull align 8 dereferenceable(64) %10, i32 noundef %i.fn, i32 noundef %3, i32 noundef 10)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not497, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fo = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 488
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !90
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 384
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.fs = phi ptr [ %i.fr, %bb.bi ], [ null, %bb.bh ]
  invoke fastcc void @_ZN6icu_78L29_appendSymbolWithMonthPatternERNS_13UnicodeStringEiPKS0_iS3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, ptr noundef nonnull %10, i32 noundef 1, ptr noundef %i.fs, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.critedge515

bb.bl:                                            ; preds = %bb.bj, %bb.bg
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.gr

bb.bm:                                            ; preds = %bb.r
  %i.fu = icmp slt i16 %i.u, 0
  %i.fv = ashr i16 %i.u, 5
  %i.fw = sext i16 %i.fv to i32
  %i.fx = select i1 %i.fu, i32 %i.v, i32 %i.fw    ; 2 uses
  %i.fy = icmp eq i32 %.0451, 0
  br i1 %i.fy, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fz = load ptr, ptr %8, align 8, !tbaa !45
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = tail call noundef i32 %i.gb(ptr noundef nonnull align 8 dereferenceable(256) %8, i32 noundef 11)
end_hunk_0
