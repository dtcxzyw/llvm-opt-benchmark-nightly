inline.NumInlined: 596
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK6icu_7816SimpleDateFormat14checkIntSuffixERKNS_13UnicodeStringEiia:bb.a
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = select i1 %i.ag, i32 %i.ak, i32 %i.ai
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.an = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat18compareSimpleAffixERKNS_13UnicodeStringES3_i(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i32 noundef %3)
          to label %bb.j unwind label %bb.g       ; 4 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat18compareSimpleAffixERKNS_13UnicodeStringES3_i(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2)
          to label %bb.k unwind label %bb.g       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ap = load i16, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.aq = icmp slt i16 %i.ap, 0
  %i.ar = ashr i16 %i.ap, 5
  %i.as = sext i16 %i.ar to i32
  %i.at = load i32, ptr %i.aj, align 4
  %i.au = select i1 %i.aq, i32 %i.at, i32 %i.as
  %i.av = sub nsw i32 %2, %i.au
  %i.aw = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat18compareSimpleAffixERKNS_13UnicodeStringES3_i(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.av)
          to label %bb.l unwind label %bb.g       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ax = or i32 %i.ao, %i.an
  %or.cond5 = icmp sgt i32 %i.ax, -1
  %i.ay = icmp eq i32 %i.ao, %i.an
  %or.cond = and i1 %i.ay, %or.cond5
  br i1 %or.cond, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = or i32 %i.aw, %i.an
  %or.cond7 = icmp sgt i32 %i.az, -1
  %i.ba = icmp eq i32 %i.aw, %i.an
  %or.cond49 = and i1 %i.ba, %or.cond7
  br i1 %or.cond49, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = load i16, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.bc = icmp slt i16 %i.bb, 0
  %i.bd = ashr i16 %i.bb, 5
  %i.be = sext i16 %i.bd to i32
  %i.bf = load i32, ptr %i.aj, align 4
  %i.bg = select i1 %i.bc, i32 %i.bf, i32 %i.be
  %i.bh = sub nsw i32 %2, %i.bg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread, %bb.l, %bb.m, %bb.a, %bb.b
  %.1 = phi i32 [ %2, %bb.a ], [ %2, %bb.b ], [ %2, %bb.l ], [ %2, %.thread ], [ %i.bh, %bb.n ], [ %2, %bb.m ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %.1
}

declare noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

declare signext i8 @u_isdigit_78(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7816SimpleDateFormat11countDigitsERKNS_13UnicodeStringEii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.a ]
  %.0910 = phi i32 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.b = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0910) ; 2 uses
  %i.c = tail call signext i8 @u_isdigit_78(i32 noundef %i.b)
  %.not = icmp ne i8 %i.c, 0
  %i.d = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %.011, %i.d      ; 2 uses
  %i.e = icmp ult i32 %i.b, 65536
  %i.f = select i1 %i.e, i32 1, i32 2
  %i.g = add nsw i32 %i.f, %.0910                 ; 2 uses
  %i.h = icmp slt i32 %i.g, %3
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !225

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %.lr.ph ]
  ret i32 %.0.lcssa
}

declare noundef ptr @_ZNK6icu_7814TimeZoneFormat5parseE20UTimeZoneFormatStyleRKNS_13UnicodeStringERNS_13ParsePositionEP23UTimeZoneFormatTimeType(ptr noundef nonnull align 8 dereferenceable(904), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_788Calendar13adoptTimeZoneEPNS_8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef signext i8 @_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef align 8 %1, i32 noundef %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = load ptr, ptr %1, align 8, !tbaa !66
  %i.j = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %i.h, ptr noundef %i.i, i32 noundef 0, i32 noundef %2)
  ret i8 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEDs(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 2 uses
  store i16 %1, ptr %i.a, align 2, !tbaa !73
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f
  %i.j = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
  ret ptr %i.j
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7816SimpleDateFormat8parseIntERKNS_13UnicodeStringERNS_11FormattableEiRNS_13ParsePositionEaPKNS_12NumberFormatE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef signext %5, ptr noundef %6) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %9 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %6) ]
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %6, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #22 ; 3 uses
  %i.c = icmp eq i8 %5, 0
  %i.d = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEE12adoptInsteadEPS1_.exit unwind label %.thread50 ; 6 uses

_ZN6icu_7812LocalPointerINS_13DecimalFormatEE12adoptInsteadEPS1_.exit: ; preds = %bb.b
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit, label %bb.c

.thread50:                                        ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit43

bb.c:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13DecimalFormatEE12adoptInsteadEPS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr @_ZN6icu_78L24SUPPRESS_NEGATIVE_PREFIXE, ptr %9, align 8, !tbaa !66
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 noundef signext 1, ptr noundef nonnull align 8 %9, i32 noundef -1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  %i.m = load ptr, ptr %9, align 8, !tbaa !66
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.m) #22, !srcloc !68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.thread62

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  br label %.thread62

.thread62:                                        ; preds = %bb.f, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.n, %bb.f ]
  %i.p = load ptr, ptr %9, align 8, !tbaa !66
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.p) #22, !srcloc !68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.p

.thread:                                          ; preds = %bb.e, %bb.a
  %.sroa.0.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.a ] ; 5 uses
  %.028 = phi ptr [ %i.h, %bb.e ], [ %6, %bb.a ]  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !195  ; 2 uses
  %i.s = load ptr, ptr %.028, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(124) %.028, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.thread
  %i.v = icmp sgt i32 %3, 0
  br i1 %i.v, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.q, align 8, !tbaa !195
  %i.x = sub nsw i32 %i.w, %i.r                   ; 2 uses
  %i.y = icmp sgt i32 %i.x, %3
  br i1 %i.y, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !44
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = sub nuw nsw i32 %i.x, %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.055 = phi i32 [ %i.ad, %.lr.ph ], [ %i.ab, %bb.j ]
  %.02754 = phi i32 [ %i.ae, %.lr.ph ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = sdiv i32 %.055, 10                      ; 2 uses
  %i.ae = add nsw i32 %.02754, -1
  %10 = icmp samesign ugt i32 %.02754, 1
  br i1 %10, label %.lr.ph, label %._crit_edge, !llvm.loop !226

bb.k:                                             ; preds = %.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %._crit_edge
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

._crit_edge:                                      ; preds = %.lr.ph
  %i.ah = add nsw i32 %i.r, %3
  store i32 %i.ah, ptr %i.q, align 8, !tbaa !195
  invoke void @_ZN6icu_7811Formattable7setLongEi(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.ad)
          to label %bb.m unwind label %bb.l

bb.m:                                             ; preds = %bb.h, %._crit_edge, %bb.i
  %i.ai = icmp eq ptr %.sroa.0.0, null
  br i1 %i.ai, label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %.sroa.0.0, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.0) #22, !inline_history !227
  br label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit

_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_13DecimalFormatEE12adoptInsteadEPS1_.exit, %bb.m, %bb.n
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

bb.o:                                             ; preds = %bb.k, %bb.l
  %.pn39.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.af, %bb.k ] ; 2 uses
  %i.am = icmp eq ptr %.sroa.0.0, null
  br i1 %i.am, label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit43, label %bb.p

bb.p:                                             ; preds = %.thread62, %bb.o
  %.pn39.pn66 = phi { ptr, i32 } [ %.pn, %.thread62 ], [ %.pn39.pn, %bb.o ]
  %.sroa.0.265 = phi ptr [ %i.h, %.thread62 ], [ %.sroa.0.0, %bb.o ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.265, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.265) #22, !inline_history !227
  br label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit43

_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit43: ; preds = %bb.p, %bb.o, %.thread50
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn66, %bb.p ], [ %i.i, %.thread50 ], [ %.pn39.pn, %bb.o ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn39.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816SimpleDateFormat16translatePatternERKNS_13UnicodeStringERS1_S3_S3_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !45
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i16 %i.e, 1
  %.not.i = icmp eq i16 %i.f, 0
  %i.g = and i16 %i.e, 30
  %storemerge.i = select i1 %.not.i, i16 %i.g, i16 2
  store i16 %storemerge.i, ptr %i.d, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i16, ptr %i.h, align 8, !tbaa !44   ; 3 uses
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
  %.068 = phi i8 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %.1.shrunk, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ]
  %i.y = and i16 %i.x, 2
  %.not.i.i.i = icmp eq i16 %i.y, 0
  %i.z = load ptr, ptr %i.q, align 8
  %i.aa = select i1 %.not.i.i.i, ptr %i.z, ptr %i.p
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !73
  %.fr = freeze i16 %i.ac                         ; 8 uses
  %.not32 = icmp eq i8 %.068, 0
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
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !44
  %.not33 = icmp eq i8 %i.aj, 0
  br i1 %.not33, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit
  %i.ak = load i16, ptr %i.r, align 8, !tbaa !44  ; 2 uses
  %i.al = icmp slt i16 %i.ak, 0
  %i.am = ashr i16 %i.ak, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = load i32, ptr %i.s, align 4
  %i.ap = select i1 %i.al, i32 %i.ao, i32 %i.an
  %i.aq = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i16 noundef zeroext %.fr, i32 noundef 0, i32 noundef %i.ap) ; 3 uses
  %.not34 = icmp eq i32 %i.aq, -1
  br i1 %.not34, label %._crit_edge.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load i16, ptr %i.t, align 8, !tbaa !44  ; 3 uses
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
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !73
  br label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread

_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread: ; preds = %bb.c, %bb.g, %bb.h, %bb.e, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit, %bb.d
  %.126 = phi i16 [ %.fr, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit ], [ 39, %bb.d ], [ %i.bd, %bb.h ], [ -1, %bb.g ], [ %.fr, %bb.e ], [ %.fr, %bb.c ]
  %.1.shrunk = phi i8 [ 0, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit ], [ 1, %bb.d ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.ae, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.126, ptr %i.a, align 2, !tbaa !73
  %i.be = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i16, ptr %i.h, align 8, !tbaa !44  ; 3 uses
  %i.bg = icmp slt i16 %i.bf, 0
  %i.bh = ashr i16 %i.bf, 5
  %i.bi = sext i16 %i.bh to i32
  %i.bj = load i32, ptr %i.i, align 4
  %i.bk = select i1 %i.bg, i32 %i.bj, i32 %i.bi
  %i.bl = sext i32 %i.bk to i64
  %.not35 = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %.not35, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %._crit_edge, !llvm.loop !228

._crit_edge:                                      ; preds = %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread
  %i.bm = icmp eq i8 %.1.shrunk, 0
  br i1 %i.bm, label %._crit_edge.thread, label %._crit_edge.thread.sink.split

._crit_edge.thread.sink.split:                    ; preds = %bb.f, %._crit_edge
  store i32 3, ptr %4, align 4, !tbaa !45
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
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 2, ptr %i.c, align 8, !tbaa !44
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %_ZN6icu_788internal23toU16StringViewNullableIPKDsvvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.h, %.preheader.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.0.i.i.i.i
  %i.f = load i16, ptr %i.e, align 2, !tbaa !73
  %i.g = icmp eq i16 %i.f, 0
  %i.h = add i64 %.0.i.i.i.i, 1
  br i1 %i.g, label %_ZN6icu_788internal23toU16StringViewNullableIPKDsvvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i, label %.preheader.i.i, !llvm.loop !164
end_hunk_0
