inline.NumInlined: 242
inline.NumDeleted: 115
begin_hunk_0_@_ZNK6icu_7811Formattable9getDoubleER10UErrorCode
declare noundef double @_ZNK6icu_7811Formattable9getDoubleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_ZNKR6icu_786number23NumberFormatterSettingsINS0_24LocalizedNumberFormatterEE4unitERKNS_11MeasureUnitE(ptr dead_on_unwind writable sret(%"class.icu_78::number::LocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #6

declare void @_ZNO6icu_786number23NumberFormatterSettingsINS0_24LocalizedNumberFormatterEE7perUnitERKNS_11MeasureUnitE(ptr dead_on_unwind writable sret(%"class.icu_78::number::LocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #6

declare void @_ZNO6icu_786number23NumberFormatterSettingsINS0_24LocalizedNumberFormatterEE9unitWidthE16UNumberUnitWidth(ptr dead_on_unwind writable sret(%"class.icu_78::number::LocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(288), i32 noundef) local_unnamed_addr #6

declare void @_ZNK6icu_786number24LocalizedNumberFormatter10formatImplEPNS0_4impl20UFormattedNumberDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_786number24LocalizedNumberFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(312)) unnamed_addr #5

declare void @_ZN6icu_7813DecimalFormat19fieldPositionHelperERKNS_6number4impl20UFormattedNumberDataERNS_13FieldPositionEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(20), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_ZNK6icu_7831FormattedValueStringBuilderImpl12toTempStringER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(300), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6icu_786number4impl20UFormattedNumberDataD1Ev(ptr noundef nonnull align 8 dereferenceable(408)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat14formatMeasuresEPKNS_7MeasureEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca [3 x %"class.icu_78::Formattable"], align 16 ; 17 uses
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.d [
    i32 0, label %bb.u
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat13formatMeasureERKNS_7MeasureERKNS_12NumberFormatERNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(124) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #12
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  call void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %.ptr.1) #12
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 2 uses
  call void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %.ptr.2) #12
  %.val = load i32, ptr %5, align 4
  %i.k = icmp slt i32 %.val, 1
  %.not396.i = icmp sgt i32 %2, 0
  %or.cond21.i = and i1 %.not396.i, %i.k
  br i1 %or.cond21.i, label %.lr.ph.i, label %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %.0327.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.n ] ; 5 uses
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %indvars.iv.i ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = call noundef ptr @_ZNK6icu_7811MeasureUnit7getTypeEv(ptr noundef nonnull align 8 dereferenceable(19) %i.q) #12
  %i.s = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(9) @.str.10) #13
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit.i, label %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit.thread.i

_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit.i: ; preds = %bb.f
  %i.u = call noundef ptr @_ZNK6icu_7811MeasureUnit10getSubtypeEv(ptr noundef nonnull align 8 dereferenceable(19) %i.q) #12
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(5) @.str.7) #13
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.g, label %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit.thread.i

bb.g:                                             ; preds = %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit.i
  %i.w = icmp sgt i32 %.0327.i, 0
  br i1 %i.w, label %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7811FormattableaSERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull align 8 dereferenceable(112) %i.x) #12 ; 0 uses
  %i.z = load double, ptr %i.n, align 8
  %i.aa = fcmp olt double %i.z, 0.000000e+00
  br i1 %i.aa, label %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit.thread, label %bb.n

_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit.thread.i: ; preds = %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit.i, %bb.f
  %i.ab = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ac = call noundef ptr @_ZNK6icu_7811MeasureUnit7getTypeEv(ptr noundef nonnull align 8 dereferenceable(19) %i.ab) #12
  %i.ad = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(9) @.str.10) #13
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit40.i, label %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit40.thread.i

_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit40.i: ; preds = %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit.thread.i
  %i.af = call noundef ptr @_ZNK6icu_7811MeasureUnit10getSubtypeEv(ptr noundef nonnull align 8 dereferenceable(19) %i.ab) #12
  %i.ag = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(7) @.str.8) #13
  %.not5.i = icmp eq i32 %i.ag, 0
  br i1 %.not5.i, label %bb.i, label %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit40.thread.i

bb.i:                                             ; preds = %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit40.i
  %i.ah = icmp sgt i32 %.0327.i, 1
  br i1 %i.ah, label %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aj = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7811FormattableaSERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %.ptr.1, ptr noundef nonnull align 8 dereferenceable(112) %i.ai) #12 ; 0 uses
  %i.ak = load double, ptr %i.m, align 8
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  br i1 %i.al, label %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = or i32 %.0327.i, 2
  br label %bb.n

_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit40.thread.i: ; preds = %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit40.i, %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit.thread.i
  %i.an = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ao = call noundef ptr @_ZNK6icu_7811MeasureUnit7getTypeEv(ptr noundef nonnull align 8 dereferenceable(19) %i.an) #12
  %i.ap = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(9) @.str.10) #13
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit41.i, label %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit.thread

_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit41.i: ; preds = %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit40.thread.i
  %i.ar = call noundef ptr @_ZNK6icu_7811MeasureUnit10getSubtypeEv(ptr noundef nonnull align 8 dereferenceable(19) %i.an) #12
  %i.as = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(7) @.str.9) #13
  %i.at = icmp ne i32 %i.as, 0
  %i.au = icmp sgt i32 %.0327.i, 3
  %or.cond.i = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond.i, label %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit41.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aw = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7811FormattableaSERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %.ptr.2, ptr noundef nonnull align 8 dereferenceable(112) %i.av) #12 ; 0 uses
  %i.ax = load double, ptr %i.l, align 8
  %i.ay = fcmp olt double %i.ax, 0.000000e+00
  br i1 %i.ay, label %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = or i32 %.0327.i, 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.h
  %.1.i = phi i32 [ %i.az, %bb.m ], [ %i.am, %bb.k ], [ 1, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit, label %bb.f, !llvm.loop !12

_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit: ; preds = %bb.n
  %i.ba = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat13formatNumericEPKNS_11FormattableEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %6, i32 noundef %.1.i, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 224
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.bb) #12
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.bc) #12
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.u

_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit.thread: ; preds = %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit40.thread.i, %_ZN6icu_78L10isTimeUnitERKNS_11MeasureUnitEPKc.exit41.i, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 224
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.bd) #12
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.be) #12
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.o

bb.o:                                             ; preds = %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit.thread, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load i32, ptr %i.bf, align 8
  %.not56 = icmp eq i32 %i.bg, -1
  br i1 %.not56, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat23formatMeasuresSlowTrackEPKNS_7MeasureEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 0 uses
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.bi = sext i32 %2 to i64                      ; 5 uses
  %i.bj = icmp slt i32 %2, 0
  %i.bk = shl nsw i64 %i.bi, 6
  %i.bl = or disjoint i64 %i.bk, 8
  %i.bm = select i1 %i.bj, i64 -1, i64 %i.bl
  %i.bn = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.bm) #12 ; 6 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.bi, ptr %i.bn, align 8
  %.ptr64 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 6 uses
  %i.bp = getelementptr inbounds [64 x i8], ptr %.ptr64, i64 %i.bi
  %i.bq = add nsw i64 %i.bi, 288230376151711743
  %i.br = and i64 %i.bq, 288230376151711743
  %xtraiter = and i64 %i.bi, 7
  %i.bs = and i32 %2, 7
  %lcmp.mod.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.r, %.prol.preheader
  %i.bt = phi ptr [ %i.bv, %.prol.preheader ], [ %.ptr64, %bb.r ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.r ]
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i16 2, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.r
  %.unr = phi ptr [ %.ptr64, %bb.r ], [ %i.bv, %.prol.preheader ]
  %i.bw = icmp samesign ult i64 %i.br, 7
  br i1 %i.bw, label %.preheader66, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bx = phi ptr [ %i.cn, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i16 2, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  store i16 2, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  store i16 2, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 200
  store i16 2, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 256
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 264
  store i16 2, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 328
  store i16 2, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 384
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 392
  store i16 2, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 456
  store i16 2, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 512 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bp
  br i1 %i.co, label %.preheader66, label %.new

.preheader66:                                     ; preds = %.new, %.prol.loopexit
  %i.cp = icmp sgt i32 %2, 0
  br i1 %i.cp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader66
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cr = add nsw i32 %2, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ct = zext nneg i32 %i.cr to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %7 = add nsw i64 %wide.trip.count, -2
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i32 7, ptr %5, align 4
  br label %bb.u

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph, %bb.t
  %8 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %9 = load ptr, ptr %i.cq, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %11 = icmp eq i64 %8, %i.ct
  %12 = load ptr, ptr %i.cs, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.0.in.peel = select i1 %11, ptr %13, ptr %10
  %.0.peel = load ptr, ptr %.0.in.peel, align 8
  %14 = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %8
  %15 = getelementptr inbounds nuw [64 x i8], ptr %.ptr64, i64 %8
  %16 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat13formatMeasureERKNS_7MeasureERKNS_12NumberFormatERNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %14, ptr noundef nonnull align 8 dereferenceable(124) %.0.peel, ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.peel.begin, %.preheader66
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813ListFormatter6formatEPKNS_13UnicodeStringEiRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull %.ptr64, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %5) #12 ; 0 uses
  %i.cx = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %.idx57 = shl nsw i64 %i.cx, 6
  %.add61 = or disjoint i64 %.idx57, 8
  br label %.preheader

bb.t:                                             ; preds = %.lr.ph.split, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.t ] ; 5 uses
  %i.cz = load ptr, ptr %i.cq, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.db = icmp eq i64 %indvars.iv, %i.ct
  %i.dc = load ptr, ptr %i.cs, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.0.in = select i1 %i.db, ptr %i.dd, ptr %i.da
  %.0 = load ptr, ptr %.0.in, align 8
  %i.de = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %indvars.iv
  %i.df = getelementptr inbounds nuw [64 x i8], ptr %.ptr64, i64 %indvars.iv
  %i.dg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat13formatMeasureERKNS_7MeasureERKNS_12NumberFormatERNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.de, ptr noundef nonnull align 8 dereferenceable(124) %.0, ptr noundef nonnull align 8 dereferenceable(64) %i.df, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %7
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %bb.t, !llvm.loop !16

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.idx59 = phi i64 [ %.add60, %.preheader ], [ %.add61, %.preheader.preheader ]
  %.add60 = add nsw i64 %.idx59, -64              ; 3 uses
  %.ptr63 = getelementptr inbounds i8, ptr %i.bn, i64 %.add60
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %.ptr63) #12
  %i.dh = icmp eq i64 %.add60, 8
  br i1 %i.dh, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %._crit_edge
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.bn) #12
  br label %bb.u

bb.u:                                             ; preds = %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit, %bb.s, %.loopexit, %bb.b, %bb.a, %bb.p, %bb.c
  %.2 = phi ptr [ %3, %_ZN6icu_78L5toHMSEPKNS_7MeasureEiPNS_11FormattableER10UErrorCode.exit ], [ %3, %bb.a ], [ %i.g, %bb.c ], [ %3, %bb.p ], [ %3, %bb.b ], [ %3, %.loopexit ], [ %3, %bb.s ]
  ret ptr %.2
}

declare void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat13formatNumericEPKNS_11FormattableEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %6 = alloca %"class.icu_78::number::LocalizedNumberFormatter", align 8 ; 34 uses
  %7 = alloca %"class.icu_78::number::LocalizedNumberFormatter", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::number::IntegerWidth", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::FormattedStringBuilder", align 8 ; 10 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %12 = alloca %"class.icu_78::number::FormattedNumber", align 8 ; 5 uses
  %13 = alloca %"class.icu_78::Formattable", align 8 ; 5 uses
  %14 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i16 2, ptr %i.c, align 8
  %i.d = tail call noundef double @_ZNK6icu_7811Formattable9getDoubleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = tail call noundef double @_ZNK6icu_7811Formattable9getDoubleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %4) #12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.h = tail call noundef double @_ZNK6icu_7811Formattable9getDoubleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %i.i = load i32, ptr %4, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %2, -3
  %or.cond = icmp eq i32 %i.k, 5
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.q = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.p) #12 ; 0 uses
  %i.r = call double @uprv_trunc_78(double noundef %i.d) #12
  %i.s = call double @uprv_trunc_78(double noundef %i.f) #12
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  switch i32 %2, label %bb.h [
    i32 3, label %bb.f
    i32 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.x) #12 ; 0 uses
  %i.z = call double @uprv_trunc_78(double noundef %i.d) #12
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.ae) #12 ; 0 uses
  %i.ag = call double @uprv_trunc_78(double noundef %i.f) #12
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store i32 5, ptr %4, align 4
  br label %bb.z

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.072 = phi double [ %i.s, %bb.d ], [ %i.f, %bb.f ], [ %i.ag, %bb.g ]
  %.071 = phi double [ %i.r, %bb.d ], [ %i.z, %bb.f ], [ %i.d, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = call ptr @__dynamic_cast(ptr nonnull %i.ak, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #12 ; 3 uses
  %.not88 = icmp eq ptr %i.am, null
  br i1 %.not88, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.i, %bb.j
  store i32 5, ptr %4, align 4
  br label %bb.z

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 2, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.ap) #12
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.aq) #12
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 4, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 100
  store i16 -3, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i32 -2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 124
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 132
  store i8 0, ptr %i.ax, align 4
  store i16 -1, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 144
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i32 7, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 9, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 160
  store i8 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 164
  store i32 2, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 168
  store i32 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 176
  store ptr null, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr null, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 200
  store i16 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 204
  store i32 0, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr null, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 216
  store i16 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bm, i8 0, i64 20, i1 false)
  store i32 3, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 248
  call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #12
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  %i.bq = call noundef ptr @_ZNK6icu_7813DecimalFormat17toNumberFormatterER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %4) #12 ; 2 uses
  %.not89.not = icmp eq ptr %i.bq, null
  br i1 %.not89.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.br = call { i64, i8 } @_ZN6icu_786number12IntegerWidth10zeroFillToEi(i32 noundef 2) #12 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.br, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.br, 1
  store i64 %.fca.0.extract, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZNKR6icu_786number23NumberFormatterSettingsINS0_24LocalizedNumberFormatterEE12integerWidthERKNS0_12IntegerWidthE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::LocalizedNumberFormatter") align 8 %7, ptr noundef nonnull align 8 dereferenceable(288) %i.bq, ptr noundef nonnull align 4 dereferenceable(9) %8) #12
  %i.bs = call noundef nonnull align 8 dereferenceable(312) ptr @_ZN6icu_786number24LocalizedNumberFormatteraSEOS1_(ptr noundef nonnull align 8 dereferenceable(312) %6, ptr noundef nonnull align 8 dereferenceable(312) %7) #12 ; 0 uses
  call void @_ZN6icu_786number24LocalizedNumberFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(312) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @_ZN6icu_7822FormattedStringBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %9) #12
  %i.bt = load i16, ptr %i.c, align 8             ; 2 uses
  %i.bu = icmp slt i16 %i.bt, 0
  %i.bv = ashr i16 %i.bt, 5
  %i.bw = sext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = select i1 %i.bu, i32 %i.by, i32 %i.bw   ; 4 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 132 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %bb.y, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @_ZNK6icu_7822FormattedStringBuilder19toTempUnicodeStringEv(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %14, ptr noundef nonnull align 8 dereferenceable(136) %9) #12
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cg = load i16, ptr %i.cf, align 8            ; 2 uses
  %i.ch = icmp slt i16 %i.cg, 0
  %i.ci = ashr i16 %i.cg, 5
  %i.cj = sext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = select i1 %i.ch, i32 %i.cl, i32 %i.cj
  %i.cn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %14, i32 noundef 0, i32 noundef %i.cm) #12 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @_ZN6icu_7822FormattedStringBuilderD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %.critedge

bb.m:                                             ; preds = %.lr.ph, %bb.y
  %.075113 = phi i8 [ 0, %.lr.ph ], [ %.176, %bb.y ] ; 4 uses
  %.077112 = phi i32 [ 0, %.lr.ph ], [ %i.ec, %bb.y ] ; 8 uses
  %i.co = load i16, ptr %i.c, align 8             ; 3 uses
  %i.cp = icmp slt i16 %i.co, 0
  %i.cq = ashr i16 %i.co, 5
  %i.cr = sext i16 %i.cq to i32
  %i.cs = load i32, ptr %i.bx, align 4
  %i.ct = select i1 %i.cp, i32 %i.cs, i32 %i.cr   ; 3 uses
  %i.cu = icmp ult i32 %.077112, %i.ct
  br i1 %i.cu, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %.thread106

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %bb.m
  %i.cv = and i16 %i.co, 2
  %.not.i.i.i = icmp eq i16 %i.cv, 0
  %i.cw = load ptr, ptr %i.cc, align 8
  %i.cx = select i1 %.not.i.i.i, ptr %i.cw, ptr %i.cb ; 3 uses
  %i.cy = sext i32 %.077112 to i64
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2            ; 4 uses
  switch i16 %i.da, label %.thread106 [
    i16 72, label %.thread101
    i16 109, label %bb.n
    i16 115, label %bb.o
    i16 39, label %bb.w
  ]

bb.n:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  br label %.thread101

bb.o:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  br label %.thread101

.thread101:                                       ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit, %bb.o, %bb.n
  %.074105 = phi double [ %.071, %_ZNK6icu_7813UnicodeStringixEi.exit ], [ %.072, %bb.n ], [ %i.h, %bb.o ] ; 2 uses
  %.not91 = icmp eq i8 %.075113, 0
  br i1 %.not91, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread101
  %i.db = load i32, ptr %i.cd, align 4
  %i.dc = zext nneg i16 %i.da to i32
  %i.dd = call noundef i32 @_ZN6icu_7822FormattedStringBuilder15insertCodePointEiiNS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %9, i32 noundef %i.db, i32 noundef %i.dc, i8 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #12 ; 0 uses
  br label %bb.y

bb.q:                                             ; preds = %.thread101
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %10, align 8
  store i16 2, ptr %i.ce, align 8
  %i.de = add nuw nsw i32 %.077112, 1             ; 4 uses
  %i.df = icmp slt i32 %i.de, %i.bz
  br i1 %i.df, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dg = icmp ult i32 %i.de, %i.ct
  br i1 %i.dg, label %bb.s, label %_ZNK6icu_7813UnicodeStringixEi.exit94

bb.s:                                             ; preds = %bb.r
  %i.dh = sext i32 %i.de to i64
  %i.di = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2
  br label %_ZNK6icu_7813UnicodeStringixEi.exit94

_ZNK6icu_7813UnicodeStringixEi.exit94:            ; preds = %bb.r, %bb.s
  %.0.i.i92 = phi i16 [ %i.dj, %bb.s ], [ -1, %bb.r ]
  %i.dk = icmp eq i16 %.0.i.i92, %i.da
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @_ZNK6icu_786number24LocalizedNumberFormatter12formatDoubleEdR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::FormattedNumber") align 8 %12, ptr noundef nonnull align 8 dereferenceable(312) %6, double noundef %.074105, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  call void @_ZNK6icu_786number15FormattedNumber8toStringER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %i.dl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %11) #12 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %11) #12
  call void @_ZN6icu_786number15FormattedNumberD1Ev(ptr noundef nonnull align 8 dereferenceable(20) %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.v

bb.u:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit94, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @_ZN6icu_7811FormattableC1Ed(ptr noundef nonnull align 8 dereferenceable(112) %13, double noundef %.074105) #12
  %i.dm = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Format6formatERKNS_11FormattableERNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(112) %13, ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(4) %4) #12 ; 0 uses
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.178 = phi i32 [ %i.de, %bb.t ], [ %.077112, %bb.u ]
  %i.dn = load i32, ptr %i.cd, align 4
  %i.do = call noundef i32 @_ZN6icu_7822FormattedStringBuilder6insertEiRKNS_13UnicodeStringENS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %9, i32 noundef %i.dn, ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #12 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.y

bb.w:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.dp = add nuw nsw i32 %.077112, 1             ; 4 uses
  %i.dq = icmp slt i32 %i.dp, %i.bz
  %i.dr = icmp ult i32 %i.dp, %i.ct
  %or.cond111 = and i1 %i.dq, %i.dr
  br i1 %or.cond111, label %_ZNK6icu_7813UnicodeStringixEi.exit97, label %_ZNK6icu_7813UnicodeStringixEi.exit97.thread

_ZNK6icu_7813UnicodeStringixEi.exit97:            ; preds = %bb.w
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2
  %i.dv = icmp eq i16 %i.du, 39
  br i1 %i.dv, label %bb.x, label %_ZNK6icu_7813UnicodeStringixEi.exit97.thread

bb.x:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit97
  %i.dw = load i32, ptr %i.cd, align 4
  %i.dx = call noundef i32 @_ZN6icu_7822FormattedStringBuilder15insertCodePointEiiNS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %9, i32 noundef %i.dw, i32 noundef 39, i8 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #12 ; 0 uses
  br label %bb.y

_ZNK6icu_7813UnicodeStringixEi.exit97.thread:     ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit97, %bb.w
  %.not90 = icmp eq i8 %.075113, 0
  %i.dy = zext i1 %.not90 to i8
  br label %bb.y

.thread106:                                       ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit, %bb.m
  %.0.i.i100109 = phi i16 [ %i.da, %_ZNK6icu_7813UnicodeStringixEi.exit ], [ -1, %bb.m ]
  %i.dz = load i32, ptr %i.cd, align 4
  %i.ea = zext i16 %.0.i.i100109 to i32
  %i.eb = call noundef i32 @_ZN6icu_7822FormattedStringBuilder15insertCodePointEiiNS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %9, i32 noundef %i.dz, i32 noundef %i.ea, i8 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #12 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNK6icu_7813UnicodeStringixEi.exit97.thread, %bb.p, %bb.v, %.thread106
  %.279 = phi i32 [ %.077112, %.thread106 ], [ %.077112, %bb.p ], [ %.178, %bb.v ], [ %i.dp, %bb.x ], [ %.077112, %_ZNK6icu_7813UnicodeStringixEi.exit97.thread ]
  %.176 = phi i8 [ %.075113, %.thread106 ], [ 1, %bb.p ], [ 0, %bb.v ], [ %.075113, %bb.x ], [ %i.dy, %_ZNK6icu_7813UnicodeStringixEi.exit97.thread ]
  %i.ec = add nsw i32 %.279, 1                    ; 2 uses
  %i.ed = icmp slt i32 %i.ec, %i.bz
  br i1 %i.ed, label %bb.m, label %._crit_edge, !llvm.loop !18

.critedge:                                        ; preds = %bb.k, %._crit_edge
  call void @_ZN6icu_786number24LocalizedNumberFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(312) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.z

bb.z:                                             ; preds = %.thread, %.critedge, %bb.b, %bb.h
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  ret ptr %3
}

; Function Attrs: nounwind
declare void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat23formatMeasuresSlowTrackEPKNS_7MeasureEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 captures(none) dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::FieldPosition", align 8 ; 8 uses
  %7 = alloca %"class.icu_78::FieldPosition", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %5, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813FieldPositionE, i64 16), ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i32, ptr %i.g, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813FieldPositionE, i64 16), ptr %7, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 8
  %i.l = sext i32 %2 to i64                       ; 5 uses
  %i.m = icmp slt i32 %2, 0
  %i.n = shl nsw i64 %i.l, 6
  %i.o = or disjoint i64 %i.n, 8
  %i.p = select i1 %i.m, i64 -1, i64 %i.o
  %i.q = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.p) #12 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.l, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 6 uses
  %i.t = icmp eq i32 %2, 0
  br i1 %i.t, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds [64 x i8], ptr %i.s, i64 %i.l
  %i.v = add nsw i64 %i.l, 288230376151711743
  %i.w = and i64 %i.v, 288230376151711743
  %xtraiter = and i64 %i.l, 7
  %i.x = and i32 %2, 7
  %lcmp.mod.not = icmp eq i32 %i.x, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.d, %.prol.preheader
  %i.y = phi ptr [ %i.aa, %.prol.preheader ], [ %i.s, %bb.d ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.d ]
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i16 2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.d
  %.unr = phi ptr [ %i.s, %bb.d ], [ %i.aa, %.prol.preheader ]
  %i.ab = icmp samesign ult i64 %i.w, 7
  br i1 %i.ab, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ac = phi ptr [ %i.as, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i16 2, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store i16 2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store i16 2, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  store i16 2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 264
  store i16 2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 328
  store i16 2, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 392
  store i16 2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 456
  store i16 2, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 512 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.u
  br i1 %i.at, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %.new

bb.e:                                             ; preds = %bb.b
  %i.au = load i32, ptr %5, align 4
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %.prol.loopexit, %.new, %bb.e, %bb.f
  %i.aw = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.s, %.new ], [ %i.s, %.prol.loopexit ] ; 4 uses
  %.not5375 = icmp sgt i32 %2, 0
  br i1 %.not5375, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = add nsw i32 %2, -1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = zext nneg i32 %i.ay to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %.04176 = phi i32 [ -1, %.lr.ph ], [ %.2.ph, %bb.k ] ; 2 uses
  %i.bb = load ptr, ptr %i.ax, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = icmp eq i64 %indvars.iv, %i.ba
  %i.be = load ptr, ptr %i.az, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.0.in = select i1 %i.bd, ptr %i.bf, ptr %i.bc
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %i.bg = icmp eq i32 %.04176, -1
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.aw, i64 %indvars.iv ; 2 uses
  br i1 %i.bg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat13formatMeasureERKNS_7MeasureERKNS_12NumberFormatERNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.bh, ptr noundef nonnull align 8 dereferenceable(124) %.0, ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 0 uses
  %i.bk = load i32, ptr %5, align 4
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %bb.i, label %.thread69

bb.i:                                             ; preds = %bb.h
  %i.bm = load i32, ptr %i.j, align 4
  %.not51 = icmp eq i32 %i.bm, 0
  %i.bn = load i32, ptr %i.k, align 8
  %.not52 = icmp eq i32 %i.bn, 0
  %or.cond73 = select i1 %.not51, i1 %.not52, i1 false
  %i.bo = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %or.cond73, i32 -1, i32 %i.bo
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bp = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat13formatMeasureERKNS_7MeasureERKNS_12NumberFormatERNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.bh, ptr noundef nonnull align 8 dereferenceable(124) %.0, ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.2.ph = phi i32 [ %.04176, %bb.j ], [ %spec.select, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.k, %bb.c, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.bq = phi ptr [ %i.aw, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit ], [ %i.s, %bb.c ], [ %i.aw, %bb.k ] ; 3 uses
  %.041.lcssa = phi i32 [ -1, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit ], [ -1, %bb.c ], [ %.2.ph, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813ListFormatter6formatEPKNS_13UnicodeStringEiRS1_iRiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef %i.bq, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %.041.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %5) #12 ; 0 uses
  %i.bu = load i32, ptr %5, align 4
  %i.bv = icmp slt i32 %i.bu, 1
  br i1 %i.bv, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %i.bw = icmp ne i32 %.041.lcssa, -1
  %i.bx = load i32, ptr %i.a, align 4             ; 2 uses
  %i.by = icmp ne i32 %i.bx, -1
  %or.cond = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ca = load <2 x i32>, ptr %i.j, align 4
  %i.cb = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %i.cc = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cd = add nsw <2 x i32> %i.ca, %i.cc
  store <2 x i32> %i.cd, ptr %i.bz, align 4
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ce = icmp eq ptr %i.bq, null
  br i1 %i.ce, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit, label %.thread69

.thread69:                                        ; preds = %bb.h, %bb.n
  %i.cf = phi ptr [ %i.bq, %bb.n ], [ %i.aw, %bb.h ] ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.thread69
  %.idx.i = shl nsw i64 %i.ch, 6
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.ck = phi ptr [ %i.cl, %.preheader.i ], [ %i.cj, %.preheader.preheader.i ]
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -64 ; 3 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.cl) #12
  %i.cm = icmp eq ptr %i.cl, %i.cf
  br i1 %i.cm, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %.thread69
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.cg) #12
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit: ; preds = %bb.n, %.loopexit.i
  call void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(20) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(20) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit
  ret ptr %3
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813ListFormatter6formatEPKNS_13UnicodeStringEiRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydaEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7813MeasureFormat18getUnitDisplayNameERKNS_11MeasureUnitER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(19) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::Locale", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZNK6icu_786Format9getLocaleE18ULocDataLocaleTypeR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i32 %i.b, 4
  br i1 %i.c, label %switch.lookup, label %_ZN6icu_78L12getUnitWidthE19UMeasureFormatWidth.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6icu_7813MeasureFormat18getUnitDisplayNameERKNS_11MeasureUnitER10UErrorCode, i64 %i.d
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN6icu_78L12getUnitWidthE19UMeasureFormatWidth.exit

_ZN6icu_78L12getUnitWidthE19UMeasureFormatWidth.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 1, %bb.a ]
  call void @_ZN6icu_786number4impl15LongNameHandler18getUnitDisplayNameERKNS_6LocaleERKNS_11MeasureUnitE16UNumberUnitWidthR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(19) %2, i32 noundef %.0.i, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

declare void @_ZN6icu_786number4impl15LongNameHandler18getUnitDisplayNameERKNS_6LocaleERKNS_11MeasureUnitE16UNumberUnitWidthR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(19), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7813MeasureFormat9getLocaleER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::Locale") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZNK6icu_786Format9getLocaleE18ULocDataLocaleTypeR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::Locale") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #12
  ret void
}

declare void @_ZN6icu_786Format12setLocaleIDsEPKcS2_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN6icu_7811PluralRules20createSharedInstanceERKNS_6LocaleE11UPluralTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare noundef ptr @_ZN6icu_7812NumberFormat20createSharedInstanceERKNS_6LocaleE18UNumberFormatStyleR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813MeasureFormat17adoptNumberFormatEPNS_12NumberFormatER10UErrorCode(ptr noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812SharedObject7copyPtrINS_18SharedNumberFormatEEEvPKT_RS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 32) #12 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4
  br label %_ZN6icu_7812SharedObject7copyPtrINS_18SharedNumberFormatEEEvPKT_RS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7818SharedNumberFormatE, i64 16), ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.c, %i.h
  br i1 %.not.i, label %_ZN6icu_7812LocalPointerINS_12NumberFormatEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK6icu_7812SharedObject9removeRefEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  store ptr %i.c, ptr %i.g, align 8
  tail call void @_ZNK6icu_7812SharedObject6addRefEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #12
  br label %_ZN6icu_7812LocalPointerINS_12NumberFormatEED2Ev.exit

_ZN6icu_7812SharedObject7copyPtrINS_18SharedNumberFormatEEEvPKT_RS5_.exit: ; preds = %bb.c, %bb.a
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %_ZN6icu_7812LocalPointerINS_12NumberFormatEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_7812SharedObject7copyPtrINS_18SharedNumberFormatEEEvPKT_RS5_.exit
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(124) %1) #12, !inline_history !9
  br label %_ZN6icu_7812LocalPointerINS_12NumberFormatEED2Ev.exit

_ZN6icu_7812LocalPointerINS_12NumberFormatEED2Ev.exit: ; preds = %bb.g, %bb.d, %_ZN6icu_7812SharedObject7copyPtrINS_18SharedNumberFormatEEEvPKT_RS5_.exit, %bb.h
  ret void
}

declare noundef ptr @_ZN6icu_7813ListFormatter14createInstanceERKNS_6LocaleE18UListFormatterType19UListFormatterWidthR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7813MeasureFormat22setMeasureFormatLocaleERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::Locale", align 8    ; 5 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZNK6icu_786Format9getLocaleE18ULocDataLocaleTypeR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %3, ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #12
  %i.c = call noundef zeroext i1 @_ZNK6icu_786LocaleeqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %i.c, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8
  call void @_ZN6icu_7813MeasureFormat17initMeasureFormatERKNS_6LocaleE19UMeasureFormatWidthPNS_12NumberFormatER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.e, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.f = load i32, ptr %2, align 4
  %i.g = icmp slt i32 %i.f, 1
  %i.h = zext i1 %i.g to i8
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %.critedge, %bb.b
  %.010 = phi i8 [ %i.h, %bb.b ], [ 0, %.critedge ], [ 0, %bb.a ]
  ret i8 %.010
end_hunk_0
begin_hunk_1_@_ZN6icu_78L31loadNumericDateFormatterPatternEPK15UResourceBundlePKcR10UErrorCode:bb.a
  %i.ac = load i32, ptr %i.a, align 4
  %i.ad = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 1, ptr noundef nonnull %4, i32 noundef %i.ac) #12 ; 0 uses
  %i.ae = load ptr, ptr %4, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ae) #12, !srcloc !11
  %.pre = load i16, ptr %i.b, align 8
  %.pre.fr = freeze i16 %.pre                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.af = icmp slt i16 %.pre.fr, 0
  %i.ag = ashr i16 %.pre.fr, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %spec.select = select i1 %i.af, i32 %i.aj, i32 %i.ah ; 9 uses
  %i.ak = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %spec.select) #12 ; 21 uses
  %i.al = icmp sgt i32 %spec.select, 0
  br i1 %i.al, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %_ZN6icu_78L9getStringEPK15UResourceBundleRNS_13UnicodeStringER10UErrorCode.exit
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %spec.select, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check26 = icmp ult i32 %spec.select, 16
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue57, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue57 ] ; 17 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <8 x i16>, ptr %i.am, align 2
  %wide.load27 = load <8 x i16>, ptr %i.an, align 2
  %i.ao = icmp eq <8 x i16> %wide.load, splat (i16 104) ; 8 uses
  %i.ap = icmp eq <8 x i16> %wide.load27, splat (i16 104) ; 8 uses
  %i.aq = extractelement <8 x i1> %i.ao, i64 0
  br i1 %i.aq, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 72, ptr %i.am, align 2
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ar = extractelement <8 x i1> %i.ao, i64 1
  br i1 %i.ar, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i16 72, ptr %i.at, align 2
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue
  %i.au = extractelement <8 x i1> %i.ao, i64 2
  br i1 %i.au, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i16 72, ptr %i.aw, align 2
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.ax = extractelement <8 x i1> %i.ao, i64 3
  br i1 %i.ax, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  store i16 72, ptr %i.az, align 2
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %i.ba = extractelement <8 x i1> %i.ao, i64 4
  br i1 %i.ba, label %pred.store.if34, label %pred.store.continue35

pred.store.if34:                                  ; preds = %pred.store.continue33
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i16 72, ptr %i.bc, align 2
  br label %pred.store.continue35

pred.store.continue35:                            ; preds = %pred.store.if34, %pred.store.continue33
  %i.bd = extractelement <8 x i1> %i.ao, i64 5
  br i1 %i.bd, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue35
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  store i16 72, ptr %i.bf, align 2
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue35
  %i.bg = extractelement <8 x i1> %i.ao, i64 6
  br i1 %i.bg, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue37
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i16 72, ptr %i.bi, align 2
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue37
  %i.bj = extractelement <8 x i1> %i.ao, i64 7
  br i1 %i.bj, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue39
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  store i16 72, ptr %i.bl, align 2
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %i.bm = extractelement <8 x i1> %i.ap, i64 0
  br i1 %i.bm, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue41
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i16 72, ptr %i.bo, align 2
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.bp = extractelement <8 x i1> %i.ap, i64 1
  br i1 %i.bp, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 18
  store i16 72, ptr %i.br, align 2
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.bs = extractelement <8 x i1> %i.ap, i64 2
  br i1 %i.bs, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  store i16 72, ptr %i.bu, align 2
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.bv = extractelement <8 x i1> %i.ap, i64 3
  br i1 %i.bv, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 22
  store i16 72, ptr %i.bx, align 2
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.by = extractelement <8 x i1> %i.ap, i64 4
  br i1 %i.by, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i16 72, ptr %i.ca, align 2
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.cb = extractelement <8 x i1> %i.ap, i64 5
  br i1 %i.cb, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 26
  store i16 72, ptr %i.cd, align 2
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.ce = extractelement <8 x i1> %i.ap, i64 6
  br i1 %i.ce, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  store i16 72, ptr %i.cg, align 2
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.ch = extractelement <8 x i1> %i.ap, i64 7
  br i1 %i.ch, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 30
  store i16 72, ptr %i.cj, align 2
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %pred.store.continue57
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue69, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next70, %pred.store.continue69 ] ; 5 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index60 ; 2 uses
  %wide.load61 = load <4 x i16>, ptr %i.cl, align 2
  %i.cm = icmp eq <4 x i16> %wide.load61, splat (i16 104) ; 4 uses
  %i.cn = extractelement <4 x i1> %i.cm, i64 0
  br i1 %i.cn, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %vec.epilog.vector.body
  store i16 72, ptr %i.cl, align 2
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %vec.epilog.vector.body
  %i.co = extractelement <4 x i1> %i.cm, i64 1
  br i1 %i.co, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i16 72, ptr %i.cq, align 2
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.cr = extractelement <4 x i1> %i.cm, i64 2
  br i1 %i.cr, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index60
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i16 72, ptr %i.ct, align 2
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.cu = extractelement <4 x i1> %i.cm, i64 3
  br i1 %i.cu, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index60
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  store i16 72, ptr %i.cw, align 2
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %index.next70 = add nuw i64 %index60, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next70, %n.vec59
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %pred.store.continue69
  %cmp.n71 = icmp eq i64 %n.vec59, %wide.trip.count
  br i1 %cmp.n71, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec59, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %middle.block, %vec.epilog.middle.block, %.thread, %_ZN6icu_78L9getStringEPK15UResourceBundleRNS_13UnicodeStringER10UErrorCode.exit
  %i.cy = phi i32 [ 0, %.thread ], [ %spec.select, %_ZN6icu_78L9getStringEPK15UResourceBundleRNS_13UnicodeStringER10UErrorCode.exit ], [ %spec.select, %middle.block ], [ %spec.select, %vec.epilog.middle.block ], [ %spec.select, %bb.e ]
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.cy) #12
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = icmp eq i16 %i.da, 104
  br i1 %i.db, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  store i16 72, ptr %i.cz, align 2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

bb.f:                                             ; preds = %bb.b, %._crit_edge
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ures_close_78(ptr noundef nonnull %i.v) #12
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.f, %bb.g
  %i.dc = load i8, ptr %i.g, align 4
  %.not.i.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  %i.dd = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.dd) #12
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #6

declare ptr @ures_getByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #6

declare void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare ptr @ures_getString_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #6

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #6

declare void @_ZN6icu_7831FormattedValueStringBuilderImplC2ENS_22FormattedStringBuilder5FieldE(ptr noundef nonnull align 8 dereferenceable(300), i8) unnamed_addr #6

declare void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66)) unnamed_addr #6

declare void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7811FormattableaSERKS0_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #6

declare noundef ptr @_ZNK6icu_7811MeasureUnit7getTypeEv(ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #6

declare noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #6

declare noundef i32 @_ZN6icu_7822FormattedStringBuilder15insertCodePointEiiNS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, i32 noundef, i8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare noundef i32 @_ZN6icu_7822FormattedStringBuilder6insertEiRKNS_13UnicodeStringENS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), i8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @ures_close_78(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN6icu_7812UnifiedCache11getInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK6icu_7812UnifiedCache3getINS_22MeasureFormatCacheDataEEEvRKNS_8CacheKeyIT_EERPKS4_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i32, ptr %3, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZNK6icu_7812UnifiedCache3getINS_22MeasureFormatCacheDataEEEvRKNS_8CacheKeyIT_EEPKvRPKS4_R10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  call void @_ZNK6icu_7812UnifiedCache4_getERKNS_12CacheKeyBaseERPKNS_12SharedObjectEPKvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #12
  %i.e = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.f = load i32, ptr %i.a, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %_ZN6icu_7812SharedObject7copyPtrINS_22MeasureFormatCacheDataEEEvPKT_RS5_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i.i, label %_ZN6icu_7812SharedObject7copyPtrINS_22MeasureFormatCacheDataEEEvPKT_RS5_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %i.h, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZNK6icu_7812SharedObject9removeRefEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.e, ptr %2, align 8
  %.not10.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i, label %_ZN6icu_7812SharedObject8clearPtrINS_22MeasureFormatCacheDataEEEvRPKT_.exit.i, label %_ZN6icu_7812SharedObject7copyPtrINS_22MeasureFormatCacheDataEEEvPKT_RS5_.exit.thread12.i

_ZN6icu_7812SharedObject7copyPtrINS_22MeasureFormatCacheDataEEEvPKT_RS5_.exit.thread12.i: ; preds = %bb.f
  call void @_ZNK6icu_7812SharedObject6addRefEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #12
  br label %bb.g

_ZN6icu_7812SharedObject7copyPtrINS_22MeasureFormatCacheDataEEEvPKT_RS5_.exit.i: ; preds = %bb.c, %bb.b
  %.not.i9.i = icmp eq ptr %i.e, null
  br i1 %.not.i9.i, label %_ZN6icu_7812SharedObject8clearPtrINS_22MeasureFormatCacheDataEEEvRPKT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_7812SharedObject7copyPtrINS_22MeasureFormatCacheDataEEEvPKT_RS5_.exit.i, %_ZN6icu_7812SharedObject7copyPtrINS_22MeasureFormatCacheDataEEEvPKT_RS5_.exit.thread12.i
  call void @_ZNK6icu_7812SharedObject9removeRefEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #12
  br label %_ZN6icu_7812SharedObject8clearPtrINS_22MeasureFormatCacheDataEEEvRPKT_.exit.i

_ZN6icu_7812SharedObject8clearPtrINS_22MeasureFormatCacheDataEEEvRPKT_.exit.i: ; preds = %bb.g, %_ZN6icu_7812SharedObject7copyPtrINS_22MeasureFormatCacheDataEEEvPKT_RS5_.exit.i, %bb.f
  %i.i = load i32, ptr %3, align 4
  %i.j = icmp ne i32 %i.i, 0
  %i.k = load i32, ptr %i.a, align 4              ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  %or.cond.i = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_7812SharedObject8clearPtrINS_22MeasureFormatCacheDataEEEvRPKT_.exit.i
  store i32 %i.k, ptr %3, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6icu_7812SharedObject8clearPtrINS_22MeasureFormatCacheDataEEEvRPKT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK6icu_7812UnifiedCache3getINS_22MeasureFormatCacheDataEEEvRKNS_8CacheKeyIT_EEPKvRPKS4_R10UErrorCode.exit

_ZNK6icu_7812UnifiedCache3getINS_22MeasureFormatCacheDataEEEvRKNS_8CacheKeyIT_EEPKvRPKS4_R10UErrorCode.exit: ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #12
  tail call void @_ZN6icu_7812CacheKeyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(13) %0) #12
  ret void
}

declare void @_ZNK6icu_7812UnifiedCache4_getERKNS_12CacheKeyBaseERPKNS_12SharedObjectEPKvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(13), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #12, !inline_history !8
  tail call void @_ZN6icu_7812CacheKeyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #12, !inline_history !8
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEE8hashCodeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @ustr_hashCharsN_78(ptr noundef nonnull @_ZTSN6icu_7822MeasureFormatCacheDataE, i32 noundef 33) #12
  %i.b = mul i32 %i.a, 37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef i32 @_ZNK6icu_786Locale8hashCodeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #12
  %i.e = add i32 %i.b, %i.d
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 56) #12 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7812CacheKeyBaseE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  store i32 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 0, ptr %i.f, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEEE, i64 16), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.h) #12, !inline_history !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEE16writeDescriptionEPci(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #12
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = tail call ptr @strncpy(ptr noundef %1, ptr noundef %i.b, i64 noundef %i.c) #12 ; 0 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  store i8 0, ptr %i.f, align 1
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(13) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 1
  %.not.i.i = icmp eq i8 %i.m, 42
  br i1 %.not.i.i, label %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit.thread4, label %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit

_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit: ; preds = %bb.c
  %i.n = load i8, ptr %i.k, align 1
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i.i.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.p) #12
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit.thread, label %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit.thread4

_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = tail call noundef zeroext i1 @_ZNK6icu_786LocaleeqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.t) #12
  br label %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit.thread4

_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit.thread4: ; preds = %bb.c, %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit, %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit.thread
  %.0 = phi i1 [ %i.u, %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit.thread ], [ false, %_ZNK6icu_788CacheKeyINS_22MeasureFormatCacheDataEE6equalsERKNS_12CacheKeyBaseE.exit ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare void @_ZN6icu_7812CacheKeyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(13)) unnamed_addr #5

declare i32 @ustr_hashCharsN_78(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

declare noundef i32 @_ZNK6icu_786Locale8hashCodeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = !{ptr @_ZN6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEED2Ev}
!9 = distinct !{null}
!10 = !{ptr @_ZN6icu_7813MeasureFormatD2Ev}
!11 = !{i64 2149136387}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !13, !17}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 4, i32 12}
!25 = distinct !{!25, !13, !22, !23}
!26 = distinct !{!26, !13, !23, !22}
!27 = distinct !{null}
end_hunk_1
