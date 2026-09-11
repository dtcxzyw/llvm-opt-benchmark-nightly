Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/smpdtfmt?download=true
inline.NumInlined: 596
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6icu_7816SimpleDateFormat17adoptNumberFormatERKNS_13UnicodeStringEPNS_12NumberFormatER10UErrorCode:bb.a
  %i.br = load i32, ptr %i.aq, align 4
  %i.bs = select i1 %i.bo, i32 %i.br, i32 %i.bq
  %i.bt = sext i32 %i.bs to i64
  %.not35 = icmp slt i64 %indvars.iv.next, %i.bt
  br i1 %.not35, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %.critedge, !llvm.loop !197

.critedge:                                        ; preds = %bb.m, %_ZN6icu_78L24createSharedNumberFormatEPNS_12NumberFormatE.exit
  tail call void @_ZNK6icu_7812SharedObject20deleteIfZeroRefCountEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_ZN6icu_7812LocalPointerINS_12NumberFormatEED2Ev.exit

_ZN6icu_7812SharedObject7copyPtrINS_18SharedNumberFormatEEEvPKT_RS5_.exit: ; preds = %bb.e, %_ZN6icu_78L23fixNumberFormatForDatesERNS_12NumberFormatE.exit
  %i.bu = load ptr, ptr %2, align 8, !tbaa !45
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(124) %2) #22, !inline_history !6
  br label %_ZN6icu_7812LocalPointerINS_12NumberFormatEED2Ev.exit

_ZN6icu_7812LocalPointerINS_12NumberFormatEED2Ev.exit: ; preds = %.critedge, %bb.h, %bb.g, %_ZN6icu_7812SharedObject7copyPtrINS_18SharedNumberFormatEEEvPKT_RS5_.exit
  ret void
}

declare void @_ZNK6icu_7812SharedObject20deleteIfZeroRefCountEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7816SimpleDateFormat23getNumberFormatForFieldEDs(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, i16 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6icu_7817DateFormatSymbols19getPatternCharIndexEDs(i16 noundef zeroext %1) ; 2 uses
  %i.b = icmp eq i32 %i.a, 38
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %i.a to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %_ZNK6icu_7816SimpleDateFormat22getNumberFormatByIndexE16UDateFormatField.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %_ZNK6icu_7816SimpleDateFormat22getNumberFormatByIndexE16UDateFormatField.exit

_ZNK6icu_7816SimpleDateFormat22getNumberFormatByIndexE16UDateFormatField.exit: ; preds = %bb.d, %bb.e
  %.0.in.i = phi ptr [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNK6icu_7816SimpleDateFormat22getNumberFormatByIndexE16UDateFormatField.exit
  %.0 = phi ptr [ %.0.i, %_ZNK6icu_7816SimpleDateFormat22getNumberFormatByIndexE16UDateFormatField.exit ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity9setToLongEl(ptr noundef nonnull align 8 dereferenceable(66), i64 noundef) local_unnamed_addr #2

declare void @_ZN6icu_786number12SimpleNumberC1EPNS0_4impl20UFormattedNumberDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare void @_ZN6icu_786number12SimpleNumber23setMinimumIntegerDigitsEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_786number12SimpleNumber23setMaximumIntegerDigitsEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZNK6icu_786number21SimpleNumberFormatter6formatENS0_12SimpleNumberER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::number::FormattedNumber") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6icu_786number15FormattedNumber8appendToERNS_10AppendableER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7823UnicodeStringAppendableD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_786number15FormattedNumberD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_786number4impl20UFormattedNumberDataD1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN6icu_7816SimpleDateFormat9isNumericEDsi(i16 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = tail call noundef signext i8 @_ZN6icu_7817DateFormatSymbols20isNumericPatternCharEDsi(i16 noundef zeroext %0, i32 noundef %1)
  ret i8 %i.a
}

declare noundef signext i8 @_ZN6icu_7817DateFormatSymbols20isNumericPatternCharEDsi(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN6icu_7816SimpleDateFormat16isAtNumericFieldERKNS_13UnicodeStringEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 2 uses
  %.not = icmp slt i32 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %1, %i.h
  br i1 %i.i, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.c:                                             ; preds = %bb.b
  %i.j = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i.i, ptr %i.m, ptr %i.k
  %i.o = sext i32 %1 to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !78
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.b, %bb.c
  %.0.i.i = phi i16 [ %i.q, %bb.c ], [ -1, %bb.b ] ; 3 uses
  %i.r = tail call noundef i32 @_ZN6icu_7817DateFormatSymbols19getPatternCharIndexEDs(i16 noundef zeroext %.0.i.i) ; 2 uses
  %i.s = icmp eq i32 %i.r, 38
  br i1 %i.s, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.t = load i16, ptr %i.a, align 8, !tbaa !50
  %.fr19 = freeze i16 %i.t                        ; 3 uses
  %i.u = icmp slt i16 %.fr19, 0
  %i.v = lshr i16 %.fr19, 5
  %i.w = zext nneg i16 %i.v to i32
  %i.x = load i32, ptr %i.f, align 4
  %i.y = select i1 %i.u, i32 %i.x, i32 %i.w       ; 2 uses
  %i.z = and i16 %.fr19, 2
  %.not.i.i.i17 = icmp eq i16 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = sext i32 %1 to i64                      ; 2 uses
  br i1 %.not.i.i.i17, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZNK6icu_7813UnicodeString6charAtEi.exit18.us
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %_ZNK6icu_7813UnicodeString6charAtEi.exit18.us ], [ %i.ac, %.preheader ]
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, 1 ; 3 uses
  %i.ad = trunc nsw i64 %indvars.iv.next24 to i32 ; 2 uses
  %i.ae = icmp ugt i32 %i.y, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZNK6icu_7813UnicodeString6charAtEi.exit18.us

bb.d:                                             ; preds = %.preheader.split.us
  %i.af = load ptr, ptr %i.ab, align 8
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next24
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !78
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit18.us

_ZNK6icu_7813UnicodeString6charAtEi.exit18.us:    ; preds = %bb.d, %.preheader.split.us
  %.0.i.i16.us = phi i16 [ %i.ah, %bb.d ], [ -1, %.preheader.split.us ]
  %i.ai = icmp eq i16 %.0.i.i16.us, %.0.i.i
  br i1 %i.ai, label %.preheader.split.us, label %.split.us, !llvm.loop !7

.preheader.split:                                 ; preds = %.preheader, %_ZNK6icu_7813UnicodeString6charAtEi.exit18
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6icu_7813UnicodeString6charAtEi.exit18 ], [ %i.ac, %.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.aj = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.ak = icmp ugt i32 %i.y, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit18

bb.e:                                             ; preds = %.preheader.split
  %i.al = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.am = load i16, ptr %i.al, align 2, !tbaa !78
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit18

_ZNK6icu_7813UnicodeString6charAtEi.exit18:       ; preds = %.preheader.split, %bb.e
  %.0.i.i16 = phi i16 [ %i.am, %bb.e ], [ -1, %.preheader.split ]
  %i.an = icmp eq i16 %.0.i.i16, %.0.i.i
  br i1 %i.an, label %.preheader.split, label %.split.us, !llvm.loop !7

.split.us:                                        ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit18, %_ZNK6icu_7813UnicodeString6charAtEi.exit18.us
  %.us-phi = phi i32 [ %i.ad, %_ZNK6icu_7813UnicodeString6charAtEi.exit18.us ], [ %i.aj, %_ZNK6icu_7813UnicodeString6charAtEi.exit18 ]
  %i.ao = sub nsw i32 %.us-phi, %1
  %i.ap = tail call noundef signext i8 @_ZN6icu_7817DateFormatSymbols14isNumericFieldE16UDateFormatFieldi(i32 noundef %i.r, i32 noundef %i.ao)
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ %i.ap, %.split.us ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit ]
  ret i8 %.1
}

declare noundef signext i8 @_ZN6icu_7817DateFormatSymbols14isNumericFieldE16UDateFormatFieldi(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7816SimpleDateFormat22isAfterNonNumericFieldERKNS_13UnicodeStringEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = icmp slt i16 %i.d, 0
  %i.f = ashr i16 %i.d, 5
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g
  %i.k = icmp ult i32 %i.b, %i.j
  br i1 %i.k, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.c:                                             ; preds = %bb.b
  %i.l = and i16 %i.d, 2
  %.not.i.i.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %.not.i.i.i, ptr %i.o, ptr %i.m
  %i.q = zext nneg i32 %i.b to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !78
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.b, %bb.c
  %.0.i.i = phi i16 [ %i.s, %bb.c ], [ -1, %bb.b ] ; 3 uses
  %i.t = tail call noundef i32 @_ZN6icu_7817DateFormatSymbols19getPatternCharIndexEDs(i16 noundef zeroext %.0.i.i) ; 2 uses
  %i.u = icmp eq i32 %i.t, 38
  br i1 %i.u, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.v = load i16, ptr %i.c, align 8, !tbaa !50
  %.fr18 = freeze i16 %i.v                        ; 3 uses
  %i.w = icmp slt i16 %.fr18, 0
  %i.x = lshr i16 %.fr18, 5
  %i.y = zext nneg i16 %i.x to i32
  %i.z = load i32, ptr %i.h, align 4
  %i.aa = select i1 %i.w, i32 %i.z, i32 %i.y      ; 2 uses
  %i.ab = and i16 %.fr18, 2
  %.not.i.i.i16 = icmp eq i16 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = zext nneg i32 %1 to i64
  %2 = add nsw i64 %i.ae, -1                      ; 2 uses
  br i1 %.not.i.i.i16, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZNK6icu_7813UnicodeString6charAtEi.exit17.us
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %_ZNK6icu_7813UnicodeString6charAtEi.exit17.us ], [ %2, %.preheader ] ; 2 uses
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, -1 ; 3 uses
  %i.af = trunc nsw i64 %indvars.iv.next22 to i32
  %i.ag = icmp ugt i32 %i.aa, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNK6icu_7813UnicodeString6charAtEi.exit17.us

bb.d:                                             ; preds = %.preheader.split.us
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %indvars.iv.next22
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !78
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit17.us

_ZNK6icu_7813UnicodeString6charAtEi.exit17.us:    ; preds = %bb.d, %.preheader.split.us
  %.0.i.i15.us = phi i16 [ %i.aj, %bb.d ], [ -1, %.preheader.split.us ]
  %i.ak = icmp eq i16 %.0.i.i15.us, %.0.i.i
  br i1 %i.ak, label %.preheader.split.us, label %.split.us, !llvm.loop !198

.preheader.split:                                 ; preds = %.preheader, %_ZNK6icu_7813UnicodeString6charAtEi.exit17
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6icu_7813UnicodeString6charAtEi.exit17 ], [ %2, %.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.al = trunc nsw i64 %indvars.iv.next to i32
  %i.am = icmp ugt i32 %i.aa, %i.al
  br i1 %i.am, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit17

bb.e:                                             ; preds = %.preheader.split
  %i.an = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !78
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit17

_ZNK6icu_7813UnicodeString6charAtEi.exit17:       ; preds = %.preheader.split, %bb.e
  %.0.i.i15 = phi i16 [ %i.ao, %bb.e ], [ -1, %.preheader.split ]
  %i.ap = icmp eq i16 %.0.i.i15, %.0.i.i
  br i1 %i.ap, label %.preheader.split, label %.split.us, !llvm.loop !198

.split.us:                                        ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit17, %_ZNK6icu_7813UnicodeString6charAtEi.exit17.us
  %.us-phi.in = phi i64 [ %indvars.iv21, %_ZNK6icu_7813UnicodeString6charAtEi.exit17.us ], [ %indvars.iv, %_ZNK6icu_7813UnicodeString6charAtEi.exit17 ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  %i.aq = sub nsw i32 %1, %.us-phi
  %i.ar = tail call noundef signext i8 @_ZN6icu_7817DateFormatSymbols14isNumericFieldE16UDateFormatFieldi(i32 noundef %i.t, i32 noundef %i.aq)
  %.not = icmp eq i8 %i.ar, 0
  %i.as = zext i1 %.not to i8
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ %i.as, %.split.us ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit ]
  ret i8 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7816SimpleDateFormat5parseERKNS_13UnicodeStringERNS_8CalendarERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(256) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 33 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %4 = alloca %"class.icu_78::TimeZoneTransition", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !143  ; 4 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !69
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !144
  br label %bb.cv

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 -1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 -1, ptr %i.e, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 0, ptr %i.f, align 4, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 4 uses
  %.not = icmp eq ptr %2, %i.o
  br i1 %.not, label %_ZNKSt9type_infoneERKS_.exit.thread265, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_bad_typeid() #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %2, align 8, !tbaa !45
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !45   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80   ; 3 uses
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %_ZNKSt9type_infoneERKS_.exit.thread265, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !50
  %.not.i.i = icmp eq i8 %i.ab, 42
  br i1 %.not.i.i, label %_ZNKSt9type_infoneERKS_.exit.thread, label %_ZNKSt9type_infoneERKS_.exit

_ZNKSt9type_infoneERKS_.exit:                     ; preds = %bb.g
  %i.ac = load i8, ptr %i.z, align 1, !tbaa !50
  %i.ad = icmp eq i8 %i.ac, 42
  %.idx.i.i.i = zext i1 %i.ad to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) %i.ae) #22
  %.not340 = icmp eq i32 %i.af, 0
  br i1 %.not340, label %_ZNKSt9type_infoneERKS_.exit.thread265, label %_ZNKSt9type_infoneERKS_.exit.thread

_ZNKSt9type_infoneERKS_.exit.thread:              ; preds = %bb.g, %_ZNKSt9type_infoneERKS_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(256) %i.o) ; 6 uses
  %.not213 = icmp eq ptr %i.ai, null
  br i1 %.not213, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt9type_infoneERKS_.exit.thread
  %i.aj = call noundef double @_ZNK6icu_788Calendar15getTimeInMillisER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @_ZN6icu_788Calendar15setTimeInMillisEdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %i.ai, double noundef %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !52
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.i, label %.thread332.thread337

bb.i:                                             ; preds = %bb.h
  %i.am = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6icu_788Calendar11getTimeZoneEv(ptr noundef nonnull align 8 dereferenceable(256) %2)
  call void @_ZN6icu_788Calendar11setTimeZoneERKNS_8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(256) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.am)
  br label %_ZNKSt9type_infoneERKS_.exit.thread265

_ZNKSt9type_infoneERKS_.exit.thread265:           ; preds = %bb.f, %bb.i, %_ZNKSt9type_infoneERKS_.exit, %bb.c
  %.0173 = phi ptr [ %i.ai, %bb.i ], [ null, %_ZNKSt9type_infoneERKS_.exit ], [ null, %bb.c ], [ null, %bb.f ] ; 2 uses
  %.0171 = phi ptr [ %i.ai, %bb.i ], [ %2, %_ZNKSt9type_infoneERKS_.exit ], [ %2, %bb.c ], [ %2, %bb.f ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 488
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !90
  %.not215 = icmp eq ptr %i.aq, null
  br i1 %.not215, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_ZNKSt9type_infoneERKS_.exit.thread265
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 496
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !91
  %i.at = icmp sgt i32 %i.as, 6
  br i1 %i.at, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.au = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 392) #22 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 488
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !90
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 384
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZN6icu_7813MessageFormatC1ERKNS_13UnicodeStringERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 7, ptr %i.a, align 4, !tbaa !52
  br label %bb.cp

bb.n:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.au) #22
  br label %bb.cw

bb.o:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !52
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %bb.p, label %bb.cp

bb.p:                                             ; preds = %bb.o, %bb.j, %_ZNKSt9type_infoneERKS_.exit.thread265
  %.0175 = phi ptr [ %i.au, %bb.o ], [ null, %bb.j ], [ null, %_ZNKSt9type_infoneERKS_.exit.thread265 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 7 uses
  store i32 0, ptr %i.g, align 4, !tbaa !69
  %i.bh = load i16, ptr %i.bf, align 8, !tbaa !50 ; 3 uses
  %i.bi = icmp slt i16 %i.bh, 0
  %i.bj = ashr i16 %i.bh, 5
  %i.bk = sext i16 %i.bj to i32
  %i.bl = load i32, ptr %i.bg, align 4
  %i.bm = select i1 %i.bi, i32 %i.bl, i32 %i.bk   ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %.thread297
  %i.bq = phi i32 [ %i.bm, %.lr.ph ], [ %i.gy, %.thread297 ] ; 6 uses
  %i.br = phi i16 [ %i.bh, %.lr.ph ], [ %i.gt, %.thread297 ]
  %.0177382 = phi i32 [ 0, %.lr.ph ], [ %.6183304, %.thread297 ] ; 6 uses
  %.0184381 = phi i32 [ 0, %.lr.ph ], [ %.3187303, %.thread297 ] ; 6 uses
  %.0188380 = phi i32 [ -1, %.lr.ph ], [ %.3191302, %.thread297 ] ; 5 uses
  %.promoted = phi i32 [ 0, %.lr.ph ], [ %i.gs, %.thread297 ] ; 8 uses
  %i.bs = icmp ult i32 %.promoted, %i.bq
  br i1 %i.bs, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread
end_hunk_0
