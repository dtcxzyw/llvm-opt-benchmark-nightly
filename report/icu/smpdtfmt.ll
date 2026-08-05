inline.NumInlined: 596
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK6icu_7816SimpleDateFormat14checkIntSuffixERKNS_13UnicodeStringEiia:bb.a
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
  %i.r = load i32, ptr %i.q, align 8, !tbaa !195  ; 3 uses
  %i.s = load ptr, ptr %.028, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(124) %.028, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.thread
  %i.v = icmp sgt i32 %3, 0
  br i1 %i.v, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.q, align 8, !tbaa !195  ; 2 uses
  %i.x = sub nsw i32 %i.w, %i.r                   ; 2 uses
  %i.y = icmp sgt i32 %i.x, %3
  br i1 %i.y, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !44
  %i.ab = trunc i64 %i.aa to i32                  ; 3 uses
  %i.ac = sub nsw i32 %i.x, %3                    ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %10 = xor i32 %i.r, -1
  %11 = add i32 %i.w, %10
  %xtraiter = and i32 %i.ac, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ae = sdiv i32 %i.ab, 10                      ; 2 uses
  %prol.iter.next = add nsw i32 %i.ac, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.055.unr = phi i32 [ %i.ab, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %.02754.unr = phi i32 [ %i.ac, %.lr.ph.preheader ], [ %prol.iter.next, %.lr.ph.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.055 = phi i32 [ %i.af, %.lr.ph ], [ %.055.unr, %.lr.ph.prol.loopexit ]
  %.02754 = phi i32 [ %i.ag, %.lr.ph ], [ %.02754.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.af = sdiv i32 %.055, 100                     ; 2 uses
  %i.ag = add nsw i32 %.02754, -2
  %i.ah = icmp sgt i32 %.02754, 2
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !226

bb.k:                                             ; preds = %.thread
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %._crit_edge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.j
  %.0.lcssa = phi i32 [ %i.ab, %bb.j ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.af, %.lr.ph ]
  %i.ak = add nsw i32 %i.r, %3
  store i32 %i.ak, ptr %i.q, align 8, !tbaa !195
  invoke void @_ZN6icu_7811Formattable7setLongEi(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %.0.lcssa)
          to label %bb.m unwind label %bb.l

bb.m:                                             ; preds = %bb.h, %._crit_edge, %bb.i
  %i.al = icmp eq ptr %.sroa.0.0, null
  br i1 %i.al, label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %.sroa.0.0, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.0) #22, !inline_history !227
  br label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit

_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_13DecimalFormatEE12adoptInsteadEPS1_.exit, %bb.m, %bb.n
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

bb.o:                                             ; preds = %bb.k, %bb.l
  %.pn39.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ai, %bb.k ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.0.0, null
  br i1 %i.ap, label %_ZN6icu_7812LocalPointerINS_13DecimalFormatEED2Ev.exit43, label %bb.p

bb.p:                                             ; preds = %.thread62, %bb.o
  %.pn39.pn66 = phi { ptr, i32 } [ %.pn, %.thread62 ], [ %.pn39.pn, %bb.o ]
  %.sroa.0.265 = phi ptr [ %i.h, %.thread62 ], [ %.sroa.0.0, %bb.o ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.0.265, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.265) #22, !inline_history !227
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
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
  store i8 0, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 369 ; 2 uses
  store i8 0, ptr %i.e, align 1, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 370 ; 4 uses
  store i8 0, ptr %i.f, align 2, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i16, ptr %i.g, align 8, !tbaa !44   ; 3 uses
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
  %.017.i = phi i8 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph.i ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.v = load i16, ptr %i.u, align 2, !tbaa !73
  %.fr.i = freeze i16 %i.v                        ; 3 uses
  %i.w = icmp eq i16 %.fr.i, 39
  %i.x = zext i1 %i.w to i8                       ; 2 uses
  %spec.select.i = xor i8 %.017.i, %i.x
  %i.y = icmp eq i16 %.fr.i, 24180
  br i1 %i.y, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.i
  store i8 1, ptr %i.f, align 2, !tbaa !72
  br label %.thread.i

.thread.i:                                        ; preds = %bb.b, %_ZNK6icu_7813UnicodeStringixEi.exit.i
  %.not.i = icmp eq i8 %.017.i, %i.x
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.thread.i
  switch i16 %.fr.i, label %bb.f [
    i16 109, label %bb.d
    i16 115, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.d, align 8, !tbaa !70
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.e, align 1, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.thread.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit, label %_ZNK6icu_7813UnicodeStringixEi.exit.i, !llvm.loop !75

_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit: ; preds = %bb.f, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %_ZNKSt9type_infoeqERKS_.exit.thread22, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_7816SimpleDateFormat12parsePatternEv.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 3 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN6icu_7816JapaneseCalendarE, i64 8), align 8, !tbaa !76 ; 3 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.af, align 1, !tbaa !44
  %.not.i18 = icmp eq i8 %i.ai, 42
  br i1 %.not.i18, label %_ZNKSt9type_infoeqERKS_.exit.thread22, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.h
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !44
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
end_hunk_0
begin_hunk_1_@_ZN6icu_7816SimpleDateFormat13adoptCalendarEPNS_8CalendarE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double f0x0010000000000000, ptr %i.ap, align 8, !tbaa !51
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.noexc12, %bb.n
  %.sink.i = phi i32 [ -1, %bb.n ], [ %i.ao, %.noexc12 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 %.sink.i, ptr %i.aq, align 4, !tbaa !52
  br label %_ZN6icu_7816SimpleDateFormat24initializeDefaultCenturyEv.exit

_ZN6icu_7816SimpleDateFormat24initializeDefaultCenturyEv.exit: ; preds = %.sink.split.i, %bb.k, %bb.e
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.o:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.s, %bb.f ]
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn
}

declare void @_ZN6icu_7810DateFormat13adoptCalendarEPNS_8CalendarE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816SimpleDateFormat10setContextE15UDisplayContextR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN6icu_7810DateFormat10setContextE15UDisplayContextR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.a = load i32, ptr %2, align 4, !tbaa !45
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = icmp eq ptr %i.d, null
  %i.f = add i32 %1, -258
  %or.cond3 = icmp ult i32 %i.f, 3
  %or.cond = and i1 %or.cond3, %i.e
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = tail call noundef ptr @_ZN6icu_7813BreakIterator22createSentenceInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 4 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !43
  %i.i = load i32, ptr %2, align 4, !tbaa !45
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(128) %i.h) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c, %bb.a
  ret void
}

declare void @_ZN6icu_7810DateFormat10setContextE15UDisplayContextR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef ptr @_ZN6icu_7813BreakIterator22createSentenceInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7816SimpleDateFormat18isFieldUnitIgnoredE19UCalendarDateFields(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = tail call noundef signext i8 @_ZN6icu_7816SimpleDateFormat18isFieldUnitIgnoredERKNS_13UnicodeStringE19UCalendarDateFields(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %1)
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7816SimpleDateFormat18isFieldUnitIgnoredERKNS_13UnicodeStringE19UCalendarDateFields(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7816SimpleDateFormat22fgCalendarFieldToLevelE, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h       ; 5 uses
  %.not4253 = icmp sgt i32 %i.k, 0
  br i1 %.not4253, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.l = and i16 %i.e, 2
  %.not.i.i.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %.not.i.i.i, ptr %i.o, ptr %i.m ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.02958 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %bb.j ] ; 6 uses
  %.03057 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.j ] ; 2 uses
  %.03255 = phi i16 [ 0, %.lr.ph ], [ %.133, %bb.j ] ; 8 uses
  %.03454 = phi i8 [ 0, %.lr.ph ], [ %.135, %bb.j ] ; 3 uses
  %i.q = icmp ult i32 %.02958, %i.k
  br i1 %i.q, label %bb.c, label %_ZNK6icu_7813UnicodeStringixEi.exit

bb.c:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %.02958 to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !73
  br label %_ZNK6icu_7813UnicodeStringixEi.exit

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %bb.b, %bb.c
  %.0.i.i = phi i16 [ %i.t, %bb.c ], [ -1, %bb.b ] ; 5 uses
  %i.u = icmp ne i16 %.0.i.i, %.03255
  %i.v = icmp sgt i32 %.03057, 0
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.w = icmp ult i16 %.03255, 128
  br i1 %i.w, label %bb.e, label %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit

bb.e:                                             ; preds = %bb.d
  %i.x = zext nneg i16 %.03255 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6icu_7816SimpleDateFormat16getLevelFromCharEDsE14mapCharToLevel, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !63
  br label %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit

_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit: ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.z, %bb.e ], [ -1, %bb.d ]
  %.not = icmp sgt i32 %i.c, %i.aa
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit, %_ZNK6icu_7813UnicodeStringixEi.exit
  %.131 = phi i32 [ %.03057, %_ZNK6icu_7813UnicodeStringixEi.exit ], [ 0, %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit ] ; 4 uses
  %i.ab = icmp eq i16 %.0.i.i, 39
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i32 %.02958, 1                  ; 4 uses
  %i.ad = icmp slt i32 %i.ac, %i.k
  %i.ae = icmp ult i32 %i.ac, %i.k
  %or.cond50 = and i1 %i.ad, %i.ae
  br i1 %or.cond50, label %_ZNK6icu_7813UnicodeStringixEi.exit47, label %_ZNK6icu_7813UnicodeStringixEi.exit47.thread

_ZNK6icu_7813UnicodeStringixEi.exit47:            ; preds = %bb.g
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !73
  %i.ai = icmp eq i16 %i.ah, 39
  br i1 %i.ai, label %bb.j, label %_ZNK6icu_7813UnicodeStringixEi.exit47.thread

_ZNK6icu_7813UnicodeStringixEi.exit47.thread:     ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit47, %bb.g
  %.not41 = icmp eq i8 %.03454, 0
  %i.aj = zext i1 %.not41 to i8
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %.not39 = icmp eq i8 %.03454, 0
  br i1 %.not39, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp ult i16 %.0.i.i, 128
  br i1 %i.ak, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit, label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread

_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit: ; preds = %bb.i
  %i.al = zext nneg i16 %.0.i.i to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZZN6icu_7816SimpleDateFormat12isSyntaxCharEDsE17mapCharToIsSyntax, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !44
  %.fr = freeze i8 %i.an
  %i.ao = icmp ne i8 %.fr, 0                      ; 2 uses
  %spec.select = select i1 %i.ao, i16 %.0.i.i, i16 %.03255
  %i.ap = zext i1 %i.ao to i32
  br label %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread

_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread: ; preds = %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit, %bb.i
  %.not4064 = phi i32 [ %i.ap, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit ], [ 0, %bb.i ]
  %i.aq = phi i16 [ %spec.select, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit ], [ %.03255, %bb.i ]
  %spec.select44 = add nsw i32 %.131, %.not4064
  br label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread, %_ZNK6icu_7813UnicodeStringixEi.exit47, %_ZNK6icu_7813UnicodeStringixEi.exit47.thread, %bb.h
  %.135 = phi i8 [ 0, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ], [ %i.aj, %_ZNK6icu_7813UnicodeStringixEi.exit47.thread ], [ 1, %bb.h ], [ %.03454, %_ZNK6icu_7813UnicodeStringixEi.exit47 ]
  %.133 = phi i16 [ %i.aq, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ], [ %.03255, %_ZNK6icu_7813UnicodeStringixEi.exit47.thread ], [ %.03255, %bb.h ], [ %.03255, %_ZNK6icu_7813UnicodeStringixEi.exit47 ] ; 3 uses
  %.2 = phi i32 [ %spec.select44, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ], [ %.131, %_ZNK6icu_7813UnicodeStringixEi.exit47.thread ], [ %.131, %bb.h ], [ %.131, %_ZNK6icu_7813UnicodeStringixEi.exit47 ] ; 2 uses
  %.1 = phi i32 [ %.02958, %_ZN6icu_7816SimpleDateFormat12isSyntaxCharEDs.exit.thread ], [ %.02958, %_ZNK6icu_7813UnicodeStringixEi.exit47.thread ], [ %.02958, %bb.h ], [ %i.ac, %_ZNK6icu_7813UnicodeStringixEi.exit47 ]
  %i.ar = add nsw i32 %.1, 1                      ; 2 uses
  %.not42 = icmp slt i32 %i.ar, %i.k
  br i1 %.not42, label %bb.b, label %.critedge, !llvm.loop !229

.critedge:                                        ; preds = %bb.j
  %i.as = icmp sgt i32 %.2, 0
  br i1 %i.as, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %.critedge
  %i.at = icmp ult i16 %.133, 128
  br i1 %i.at, label %bb.l, label %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit48

bb.l:                                             ; preds = %bb.k
  %i.au = zext nneg i16 %.133 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6icu_7816SimpleDateFormat16getLevelFromCharEDsE14mapCharToLevel, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !63
  br label %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit48

_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit48: ; preds = %bb.k, %bb.l
  %i.ax = phi i32 [ %i.aw, %bb.l ], [ -1, %bb.k ]
  %.not43 = icmp sgt i32 %i.c, %i.ax
  br i1 %.not43, label %.critedge.thread, label %.loopexit

.critedge.thread:                                 ; preds = %bb.a, %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit48, %.critedge
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit, %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit48, %.critedge.thread
  %.137 = phi i8 [ 0, %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit48 ], [ 1, %.critedge.thread ], [ 0, %_ZN6icu_7816SimpleDateFormat16getLevelFromCharEDs.exit ]
  ret i8 %.137
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813DecimalFormat17getNegativeSuffixERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813DecimalFormat17getPositiveSuffixERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7816SimpleDateFormat18compareSimpleAffixERKNS_13UnicodeStringES3_i(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.d = load i16, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.e = icmp slt i16 %i.d, 0
  %i.f = ashr i16 %i.d, 5
  %i.g = sext i16 %i.f to i32
  %i.h = load i32, ptr %i.c, align 4
  %i.i = select i1 %i.e, i32 %i.h, i32 %i.g
  %.not72100 = icmp sgt i32 %i.i, 0
  br i1 %.not72100, label %.lr.ph104, label %_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit75.thread

.lr.ph104:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph104, %.backedge
  %.057102 = phi i32 [ 0, %.lr.ph104 ], [ %.057.be, %.backedge ] ; 5 uses
  %.063101 = phi i32 [ %3, %.lr.ph104 ], [ %.063.be, %.backedge ] ; 7 uses
  %i.m = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.057102) ; 4 uses
  %i.n = icmp ult i32 %i.m, 65536
  %i.o = select i1 %i.n, i32 1, i32 2             ; 4 uses
  %i.p = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %i.m)
  %.not = icmp eq i8 %i.p, 0
  %i.q = load i16, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.r = icmp slt i16 %i.q, 0
  %i.s = ashr i16 %i.q, 5
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %i.j, align 4
  %i.v = select i1 %i.r, i32 %i.u, i32 %i.t
  %i.w = icmp slt i32 %.063101, %i.v              ; 2 uses
  br i1 %.not, label %bb.n, label %.preheader79

.preheader79:                                     ; preds = %bb.b
  br i1 %i.w, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader79
  %i.x = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.063101)
  %i.y = icmp eq i32 %i.x, %i.m
  br i1 %i.y, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.z = add nsw i32 %i.o, %.057102               ; 6 uses
  %i.aa = add nsw i32 %i.o, %.063101              ; 5 uses
  %i.ab = load i16, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.c, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = icmp eq i32 %i.z, %i.ag
  br i1 %i.ah, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.z) ; 3 uses
  %i.aj = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %i.ai)
  %.not71.peel = icmp eq i8 %i.aj, 0
  br i1 %.not71.peel, label %..critedge_crit_edge88, label %bb.e, !llvm.loop !230

bb.e:                                             ; preds = %bb.d
  %i.ak = load i16, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.al = icmp slt i16 %i.ak, 0
  %i.am = ashr i16 %i.ak, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = load i32, ptr %i.j, align 4
  %i.ap = select i1 %i.al, i32 %i.ao, i32 %i.an
  %i.aq = icmp slt i32 %i.aa, %i.ap
  br i1 %i.aq, label %.lr.ph.peel.next, label %.critedge

.lr.ph.peel.next:                                 ; preds = %bb.e
  %i.ar = icmp ult i32 %i.ai, 65536
  %i.as = select i1 %i.ar, i32 1, i32 2
  br label %.lr.ph

bb.f:                                             ; preds = %bb.h
  %i.at = icmp ult i32 %i.bn, 65536
  %i.au = select i1 %i.at, i32 1, i32 2
  %i.av = load i16, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.aw = icmp slt i16 %i.av, 0
  %i.ax = ashr i16 %i.av, 5
  %i.ay = sext i16 %i.ax to i32
  %i.az = load i32, ptr %i.j, align 4
  %i.ba = select i1 %i.aw, i32 %i.az, i32 %i.ay
  %i.bb = icmp slt i32 %i.bf, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.critedge, !llvm.loop !231

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %bb.f
  %.05284 = phi i32 [ %i.au, %bb.f ], [ %i.as, %.lr.ph.peel.next ] ; 2 uses
  %.05383 = phi i32 [ %i.bn, %bb.f ], [ %i.ai, %.lr.ph.peel.next ]
  %.15882 = phi i32 [ %i.be, %bb.f ], [ %i.z, %.lr.ph.peel.next ] ; 2 uses
  %.16481 = phi i32 [ %i.bf, %bb.f ], [ %i.aa, %.lr.ph.peel.next ] ; 3 uses
  %i.bc = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.16481)
  %i.bd = icmp eq i32 %i.bc, %.05383
  br i1 %i.bd, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  %i.be = add nsw i32 %.05284, %.15882            ; 6 uses
  %i.bf = add nsw i32 %.05284, %.16481            ; 5 uses
  %i.bg = load i16, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.bh = icmp slt i16 %i.bg, 0
  %i.bi = ashr i16 %i.bg, 5
  %i.bj = sext i16 %i.bi to i32
  %i.bk = load i32, ptr %i.c, align 4
  %i.bl = select i1 %i.bh, i32 %i.bk, i32 %i.bj
  %i.bm = icmp eq i32 %i.be, %i.bl
  br i1 %i.bm, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.be) ; 3 uses
  %i.bo = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %i.bn)
  %.not71 = icmp eq i8 %i.bo, 0
  br i1 %.not71, label %..critedge_crit_edge88, label %bb.f, !llvm.loop !230

..critedge_crit_edge88:                           ; preds = %bb.h, %bb.d
  %.lcssa115 = phi i32 [ %i.z, %bb.d ], [ %i.be, %bb.h ]
  %.lcssa = phi i32 [ %i.aa, %bb.d ], [ %i.bf, %bb.h ]
  br label %.critedge, !llvm.loop !230

.critedge:                                        ; preds = %.lr.ph, %bb.g, %bb.f, %.lr.ph.preheader, %bb.c, %bb.e, %..critedge_crit_edge88, %.preheader79
  %.265 = phi i32 [ %.063101, %.preheader79 ], [ %.lcssa, %..critedge_crit_edge88 ], [ %.063101, %.lr.ph.preheader ], [ %i.aa, %bb.c ], [ %i.aa, %bb.e ], [ %.16481, %.lr.ph ], [ %i.bf, %bb.g ], [ %i.bf, %bb.f ] ; 2 uses
  %.259 = phi i32 [ %.057102, %.preheader79 ], [ %.lcssa115, %..critedge_crit_edge88 ], [ %.057102, %.lr.ph.preheader ], [ %i.z, %bb.c ], [ %i.z, %bb.e ], [ %.15882, %.lr.ph ], [ %i.be, %bb.g ], [ %i.be, %bb.f ] ; 2 uses
  %.151 = phi i1 [ false, %.preheader79 ], [ true, %..critedge_crit_edge88 ], [ false, %.lr.ph.preheader ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %.lr.ph ]
  %i.bp = load i16, ptr %i.b, align 8, !tbaa !44  ; 4 uses
  %i.bq = and i16 %i.bp, 17
  %.not.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i.i, label %bb.i, label %_ZNK6icu_7816SimpleDateFormat21skipPatternWhiteSpaceERKNS_13UnicodeStringEi.exit

bb.i:                                             ; preds = %.critedge
  %i.br = and i16 %i.bp, 2
  %.not2.i.i = icmp eq i16 %i.br, 0
  br i1 %.not2.i.i, label %bb.j, label %_ZNK6icu_7816SimpleDateFormat21skipPatternWhiteSpaceERKNS_13UnicodeStringEi.exit

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !44
  br label %_ZNK6icu_7816SimpleDateFormat21skipPatternWhiteSpaceERKNS_13UnicodeStringEi.exit

_ZNK6icu_7816SimpleDateFormat21skipPatternWhiteSpaceERKNS_13UnicodeStringEi.exit: ; preds = %bb.i, %.critedge, %bb.j
  %.0.i.i = phi ptr [ %i.bs, %bb.j ], [ null, %.critedge ], [ %i.k, %bb.i ] ; 2 uses
  %i.bt = sext i32 %.259 to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.bt
  %i.bv = icmp slt i16 %i.bp, 0
  %i.bw = ashr i16 %i.bp, 5
  %i.bx = sext i16 %i.bw to i32
  %i.by = load i32, ptr %i.c, align 4
  %i.bz = select i1 %i.bv, i32 %i.by, i32 %i.bx
  %i.ca = sub nsw i32 %i.bz, %.259
  %i.cb = tail call noundef ptr @_ZN6icu_7812PatternProps14skipWhiteSpaceEPKDsi(ptr noundef %i.bu, i32 noundef %i.ca)
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %.0.i.i to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = lshr exact i64 %i.ce, 1
  %i.cg = trunc i64 %i.cf to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_ZNK6icu_7816SimpleDateFormat21skipPatternWhiteSpaceERKNS_13UnicodeStringEi.exit
  %.08.i = phi i32 [ %.265, %_ZNK6icu_7816SimpleDateFormat21skipPatternWhiteSpaceERKNS_13UnicodeStringEi.exit ], [ %i.cs, %bb.l ] ; 6 uses
  %i.ch = load i16, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.ci = icmp slt i16 %i.ch, 0
  %i.cj = ashr i16 %i.ch, 5
  %i.ck = sext i16 %i.cj to i32
  %i.cl = load i32, ptr %i.j, align 4
  %i.cm = select i1 %i.ci, i32 %i.cl, i32 %i.ck
  %i.cn = icmp slt i32 %.08.i, %i.cm
  br i1 %i.cn, label %bb.l, label %_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit

bb.l:                                             ; preds = %bb.k
  %i.co = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.08.i) ; 2 uses
  %i.cp = tail call signext i8 @u_isUWhiteSpace_78(i32 noundef %i.co)
  %.not.i = icmp eq i8 %i.cp, 0
  %i.cq = icmp ult i32 %i.co, 65536
  %i.cr = select i1 %i.cq, i32 1, i32 2
  %i.cs = add nsw i32 %i.cr, %.08.i
  br i1 %.not.i, label %_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit, label %bb.k

_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit: ; preds = %bb.k, %bb.l
  %i.ct = icmp ne i32 %.08.i, %.265
  %or.cond = or i1 %.151, %i.ct
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit, %bb.m
  %.08.i73 = phi i32 [ %i.df, %bb.m ], [ %i.cg, %_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit ] ; 5 uses
  %i.cu = load i16, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.cv = icmp slt i16 %i.cu, 0
  %i.cw = ashr i16 %i.cu, 5
  %i.cx = sext i16 %i.cw to i32
  %i.cy = load i32, ptr %i.c, align 4
  %i.cz = select i1 %i.cv, i32 %i.cy, i32 %i.cx
  %i.da = icmp slt i32 %.08.i73, %i.cz
  br i1 %i.da, label %bb.m, label %.backedge

bb.m:                                             ; preds = %.preheader
  %i.db = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.08.i73) ; 2 uses
  %i.dc = tail call signext i8 @u_isUWhiteSpace_78(i32 noundef %i.db)
  %.not.i74 = icmp eq i8 %i.dc, 0
  %i.dd = icmp ult i32 %i.db, 65536
  %i.de = select i1 %i.dd, i32 1, i32 2
  %i.df = add nsw i32 %i.de, %.08.i73
  br i1 %.not.i74, label %.backedge, label %.preheader

bb.n:                                             ; preds = %bb.b
  br i1 %i.w, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.dg = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.063101)
  %i.dh = icmp eq i32 %i.dg, %i.m
  br i1 %i.dh, label %.split, label %.loopexit

.split:                                           ; preds = %bb.o
  %i.di = add nsw i32 %i.o, %.057102
  %i.dj = add nsw i32 %i.o, %.063101
  br label %.backedge

.backedge:                                        ; preds = %bb.m, %.preheader, %.split
  %.063.be = phi i32 [ %i.dj, %.split ], [ %.08.i, %.preheader ], [ %.08.i, %bb.m ] ; 2 uses
  %.057.be = phi i32 [ %i.di, %.split ], [ %.08.i73, %.preheader ], [ %.08.i73, %bb.m ] ; 2 uses
  %i.dk = load i16, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.dl = icmp slt i16 %i.dk, 0
  %i.dm = ashr i16 %i.dk, 5
  %i.dn = sext i16 %i.dm to i32
  %i.do = load i32, ptr %i.c, align 4
  %i.dp = select i1 %i.dl, i32 %i.do, i32 %i.dn
  %.not72 = icmp slt i32 %.057.be, %i.dp
  br i1 %.not72, label %bb.b, label %_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit75.thread, !llvm.loop !232

_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit75.thread: ; preds = %.backedge, %bb.a
  %.568 = phi i32 [ %3, %bb.a ], [ %.063.be, %.backedge ]
  %i.dq = sub nsw i32 %.568, %3
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit, %bb.o, %bb.n, %_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit75.thread
  %i.dr = phi i32 [ %i.dq, %_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit75.thread ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi.exit ]
  ret i32 %i.dr
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7816SimpleDateFormat21skipPatternWhiteSpaceERKNS_13UnicodeStringEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = and i16 %i.b, 17
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %i.h
  %i.j = icmp slt i16 %i.b, 0
  %i.k = ashr i16 %i.b, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l
  %i.p = sub nsw i32 %i.o, %2
  %i.q = tail call noundef ptr @_ZN6icu_7812PatternProps14skipWhiteSpaceEPKDsi(ptr noundef %i.i, i32 noundef %i.p)
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %.0.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 1
  %i.v = trunc i64 %i.u to i32
  ret i32 %i.v
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7816SimpleDateFormat15skipUWhiteSpaceERKNS_13UnicodeStringEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.08 = phi i32 [ %2, %bb.a ], [ %i.n, %bb.c ]   ; 4 uses
  %i.c = load i16, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = load i32, ptr %i.b, align 4
  %i.h = select i1 %i.d, i32 %i.g, i32 %i.f
  %i.i = icmp slt i32 %.08, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.08) ; 2 uses
  %i.k = tail call signext i8 @u_isUWhiteSpace_78(i32 noundef %i.j)
  %.not = icmp eq i8 %i.k, 0
  %i.l = icmp ult i32 %i.j, 65536
  %i.m = select i1 %i.l, i32 1, i32 2
  %i.n = add nsw i32 %i.m, %.08
  br i1 %.not, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 %.08
}

declare noundef ptr @_ZN6icu_7812PatternProps14skipWhiteSpaceEPKDsi(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_7814TimeZoneFormat14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810DateFormat6formatERKNS_11FormattableERNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810DateFormat6formatERKNS_11FormattableERNS_13UnicodeStringEPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare void @_ZNK6icu_7810DateFormat11parseObjectERKNS_13UnicodeStringERNS_11FormattableERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef double @_ZNK6icu_7810DateFormat5parseERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7810DateFormat9isLenientEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare void @_ZN6icu_7810DateFormat10setLenientEa(ptr noundef nonnull align 8 dereferenceable(112), i8 noundef signext) unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7810DateFormat17isCalendarLenientEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare void @_ZN6icu_7810DateFormat18setCalendarLenientEa(ptr noundef nonnull align 8 dereferenceable(112), i8 noundef signext) unnamed_addr #2

declare noundef ptr @_ZNK6icu_7810DateFormat11getCalendarEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare void @_ZN6icu_7810DateFormat11setCalendarERKNS_8CalendarE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #2

declare noundef ptr @_ZNK6icu_7810DateFormat15getNumberFormatEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare void @_ZN6icu_7810DateFormat15setNumberFormatERKNS_12NumberFormatE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6icu_7810DateFormat11getTimeZoneEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare void @_ZN6icu_7810DateFormat13adoptTimeZoneEPNS_8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #2

declare void @_ZN6icu_7810DateFormat11setTimeZoneERKNS_8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef i32 @_ZNK6icu_7810DateFormat10getContextE19UDisplayContextTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7810DateFormat19setBooleanAttributeE27UDateFormatBooleanAttributeaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7810DateFormat19getBooleanAttributeE27UDateFormatBooleanAttributeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_786number21SimpleNumberFormatter7cleanupEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8copyFromERKS0_a(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #18

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(53) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !60
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !56
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit unwind label %bb.c

_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable
}

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6icu_786LocaleeqERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_788Calendar15setTimeInMillisEdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), double noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef double @_ZNK6icu_788Calendar15getTimeInMillisER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString10doHashCodeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7831FormattedValueStringBuilderImplC2ENS_22FormattedStringBuilder5FieldE(ptr noundef nonnull align 8 dereferenceable(300), i8) unnamed_addr #2

declare void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66)) unnamed_addr #2

declare void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_7831FormattedValueStringBuilderImplD2Ev(ptr noundef nonnull align 8 dead_on_return(300) dereferenceable(300)) unnamed_addr #6

declare void @_ZN6icu_786number12SimpleNumber7cleanupEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

end_hunk_1
begin_hunk_2_@llvm.vector.reduce.mul.v4i32
!26 = !{!"_ZTSN6icu_7813UnicodeStringE", !27, i64 0, !6, i64 8}
!27 = !{!"_ZTSN6icu_7811ReplaceableE", !20, i64 0}
!28 = !{!"p1 _ZTSN6icu_7817DateFormatSymbolsE", !11, i64 0}
!29 = !{!"p1 _ZTSN6icu_7814TimeZoneFormatE", !11, i64 0}
!30 = !{!"double", !6, i64 0}
!31 = !{!"p2 _ZTSN6icu_7818SharedNumberFormatE", !32, i64 0}
!32 = !{!"any p2 pointer", !11, i64 0}
!33 = !{!"p1 _ZTSN6icu_786number21SimpleNumberFormatterE", !11, i64 0}
!34 = !{!"p1 _ZTSN6icu_7813BreakIteratorE", !11, i64 0}
!35 = !{!10, !10, i64 0}
!36 = !{!23, !23, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"vtable pointer", !7, i64 0}
!39 = !{!17, !28, i64 344}
!40 = distinct !{!40, !15}
!41 = !{!17, !29, i64 352}
!42 = !{!17, !33, i64 384}
!43 = !{!17, !34, i64 400}
!44 = !{!6, !6, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"_ZTS10UErrorCode", !6, i64 0}
!47 = !{ptr @_ZN6icu_7816SimpleDateFormat27initializeBooleanAttributesEv}
!48 = !{!18, !22, i64 88}
!49 = !{ptr @_ZN6icu_7816SimpleDateFormat24initializeDefaultCenturyEv}
!50 = !{!17, !6, i64 392}
!51 = !{!17, !30, i64 360}
!52 = !{!17, !5, i64 372}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTSN6icu_7816LocalPointerBaseI15UResourceBundleEE", !55, i64 0}
!55 = !{!"p1 _ZTS15UResourceBundle", !11, i64 0}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSN6icu_7815MaybeStackArrayIcLi40EEE", !58, i64 0, !5, i64 8, !6, i64 12, !6, i64 13}
!58 = !{!"p1 omnipotent char", !11, i64 0}
!59 = !{!57, !5, i64 8}
!60 = !{!57, !6, i64 12}
!61 = !{!62, !5, i64 56}
!62 = !{!"_ZTSN6icu_7810CharStringE", !57, i64 0, !5, i64 56}
!63 = !{!5, !5, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 char16_t", !11, i64 0}
!66 = !{!67, !65, i64 0}
!67 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !65, i64 0}
!68 = !{i64 2151071830}
!69 = distinct !{null}
!70 = !{!17, !6, i64 368}
!71 = !{!17, !6, i64 369}
!72 = !{!17, !6, i64 370}
!73 = !{!74, !74, i64 0}
!74 = !{!"char16_t", !6, i64 0}
!75 = distinct !{!75, !15}
!76 = !{!77, !58, i64 8}
!77 = !{!"_ZTSSt9type_info", !58, i64 8}
!78 = !{!18, !23, i64 96}
!79 = distinct !{null}
!80 = !{ptr @_ZN6icu_7816SimpleDateFormat25initSimpleNumberFormatterER10UErrorCode}
!81 = !{!9, !5, i64 8}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15}
!84 = distinct !{!84, !15}
!85 = distinct !{!85, !15}
!86 = !{!"branch_weights", i32 1, i32 1048575}
!87 = !{!88, !88, i64 0}
!88 = !{!"_ZTS19UCalendarDateFields", !6, i64 0}
!89 = !{!90, !91, i64 40}
!90 = !{!"_ZTSN6icu_7817DateFormatSymbolsE", !20, i64 0, !91, i64 8, !5, i64 16, !91, i64 24, !5, i64 32, !91, i64 40, !5, i64 48, !91, i64 56, !5, i64 64, !91, i64 72, !5, i64 80, !91, i64 88, !5, i64 96, !91, i64 104, !5, i64 112, !91, i64 120, !5, i64 128, !91, i64 136, !5, i64 144, !91, i64 152, !5, i64 160, !91, i64 168, !5, i64 176, !91, i64 184, !5, i64 192, !91, i64 200, !5, i64 208, !91, i64 216, !5, i64 224, !91, i64 232, !5, i64 240, !91, i64 248, !5, i64 256, !91, i64 264, !5, i64 272, !91, i64 280, !5, i64 288, !91, i64 296, !5, i64 304, !91, i64 312, !5, i64 320, !26, i64 328, !91, i64 392, !5, i64 400, !91, i64 408, !5, i64 416, !91, i64 424, !5, i64 432, !91, i64 440, !5, i64 448, !91, i64 456, !5, i64 464, !91, i64 472, !5, i64 480, !91, i64 488, !5, i64 496, !91, i64 504, !5, i64 512, !91, i64 520, !5, i64 528, !92, i64 536, !92, i64 544, !5, i64 552, !5, i64 556, !21, i64 560, !26, i64 600, !6, i64 664, !91, i64 696, !5, i64 704, !91, i64 712, !5, i64 720, !91, i64 728, !5, i64 736, !91, i64 744, !5, i64 752, !91, i64 760, !5, i64 768, !91, i64 776, !5, i64 784, !21, i64 792, !21, i64 832}
!91 = !{!"p1 _ZTSN6icu_7813UnicodeStringE", !11, i64 0}
!92 = !{!"p2 _ZTSN6icu_7813UnicodeStringE", !32, i64 0}
!93 = !{!90, !5, i64 48}
!94 = !{!90, !91, i64 24}
!95 = !{!90, !5, i64 32}
!96 = !{!90, !91, i64 8}
!97 = !{!90, !5, i64 16}
!98 = !{!90, !91, i64 504}
!99 = !{!90, !5, i64 512}
!100 = !{!90, !91, i64 488}
!101 = !{!90, !5, i64 496}
!102 = !{!90, !91, i64 88}
!103 = !{!90, !5, i64 96}
!104 = !{!90, !91, i64 136}
!105 = !{!90, !5, i64 144}
!106 = !{!90, !91, i64 56}
!107 = !{!90, !5, i64 64}
!108 = !{!90, !91, i64 104}
!109 = !{!90, !5, i64 112}
!110 = !{!90, !91, i64 72}
!111 = !{!90, !5, i64 80}
!112 = !{!90, !91, i64 120}
!113 = !{!90, !5, i64 128}
!114 = !{!90, !91, i64 200}
!115 = !{!90, !5, i64 208}
!116 = !{!90, !91, i64 152}
!117 = !{!90, !5, i64 160}
!118 = !{!90, !91, i64 184}
!119 = !{!90, !5, i64 192}
!120 = !{!90, !91, i64 168}
!121 = !{!90, !5, i64 176}
!122 = !{!90, !91, i64 264}
!123 = !{!90, !5, i64 272}
!124 = !{!90, !91, i64 216}
!125 = !{!90, !5, i64 224}
!126 = !{!90, !91, i64 248}
!127 = !{!90, !5, i64 256}
!128 = !{!90, !91, i64 232}
!129 = !{!90, !5, i64 240}
!130 = !{!90, !91, i64 296}
!131 = !{!90, !5, i64 304}
!132 = !{!90, !91, i64 312}
!133 = !{!90, !5, i64 320}
!134 = !{!90, !91, i64 280}
!135 = !{!90, !5, i64 288}
!136 = !{!90, !91, i64 424}
!137 = !{!90, !5, i64 432}
!138 = !{!90, !91, i64 392}
!139 = !{!90, !5, i64 400}
!140 = !{!90, !91, i64 408}
!141 = !{!90, !5, i64 416}
!142 = !{!90, !91, i64 472}
!143 = !{!90, !5, i64 480}
!144 = !{!90, !91, i64 440}
!145 = !{!90, !5, i64 448}
!146 = !{!90, !91, i64 456}
!147 = !{!90, !5, i64 464}
!148 = !{!90, !91, i64 696}
!149 = !{!90, !91, i64 712}
!150 = !{!90, !91, i64 728}
!151 = !{!152, !6, i64 0}
!152 = !{!"_ZTSN6icu_7814DayPeriodRulesE", !6, i64 0, !6, i64 1, !6, i64 4}
!153 = !{!152, !6, i64 1}
!154 = !{!155, !155, i64 0}
!155 = !{!"_ZTSN6icu_7814DayPeriodRules9DayPeriodE", !6, i64 0}
!156 = distinct !{null, null}
!157 = !{!158, !23, i64 24}
!158 = !{!"_ZTSN6icu_7818SharedNumberFormatE", !159, i64 0, !23, i64 24}
!159 = !{!"_ZTSN6icu_7812SharedObjectE", !20, i64 0, !5, i64 8, !160, i64 12, !162, i64 16}
!160 = !{!"_ZTSSt6atomicIiE", !161, i64 0}
!161 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!162 = !{!"p1 _ZTSN6icu_7816UnifiedCacheBaseE", !11, i64 0}
!163 = distinct !{null}
!164 = distinct !{!164, !15}
!165 = !{!166, !58, i64 400}
!166 = !{!"_ZTSN6icu_786number4impl20UFormattedNumberDataE", !167, i64 0, !174, i64 304, !176, i64 376, !58, i64 400}
!167 = !{!"_ZTSN6icu_7831FormattedValueStringBuilderImplE", !168, i64 0, !169, i64 8, !171, i64 144, !172, i64 152, !5, i64 296}
!168 = !{!"_ZTSN6icu_7814FormattedValueE"}
!169 = !{!"_ZTSN6icu_7822FormattedStringBuilderE", !170, i64 0, !6, i64 8, !6, i64 88, !5, i64 128, !5, i64 132}
!170 = !{!"bool", !6, i64 0}
!171 = !{!"_ZTSN6icu_7822FormattedStringBuilder5FieldE", !6, i64 0}
!172 = !{!"_ZTSN6icu_7815MaybeStackArrayINS_8SpanInfoELi8EEE", !173, i64 0, !5, i64 8, !6, i64 12, !6, i64 16}
!173 = !{!"p1 _ZTSN6icu_788SpanInfoE", !11, i64 0}
!174 = !{!"_ZTSN6icu_786number4impl15DecimalQuantityE", !175, i64 0, !170, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !30, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !6, i64 48, !170, i64 64, !170, i64 65}
!175 = !{!"_ZTSN6icu_7813IFixedDecimalE"}
!176 = !{!"_ZTSN6icu_7811MeasureUnitE", !20, i64 0, !177, i64 8, !178, i64 16, !6, i64 18}
!177 = !{!"p1 _ZTSN6icu_7815MeasureUnitImplE", !11, i64 0}
!178 = !{!"short", !6, i64 0}
!179 = !{!180, !181, i64 0}
!180 = !{!"_ZTSN6icu_786number12SimpleNumberE", !181, i64 0, !182, i64 8}
!181 = !{!"p1 _ZTSN6icu_786number4impl20UFormattedNumberDataE", !11, i64 0}
!182 = !{!"_ZTS17USimpleNumberSign", !6, i64 0}
!183 = !{!180, !182, i64 8}
!184 = !{!185, !181, i64 8}
!185 = !{!"_ZTSN6icu_786number15FormattedNumberE", !168, i64 0, !181, i64 8, !46, i64 16}
!186 = !{!91, !91, i64 0}
!187 = !{!188, !5, i64 8}
!188 = !{!"_ZTSN6icu_7813FieldPositionE", !20, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!189 = !{!188, !5, i64 12}
!190 = !{!188, !5, i64 16}
!191 = distinct !{null}
!192 = distinct !{!192, !15}
!193 = distinct !{!193, !15}
!194 = distinct !{!194, !15}
!195 = !{!196, !5, i64 8}
!196 = !{!"_ZTSN6icu_7813ParsePositionE", !20, i64 0, !5, i64 8, !5, i64 12}
!197 = !{!196, !5, i64 12}
!198 = !{!199, !199, i64 0}
!199 = !{!"_ZTS23UTimeZoneFormatTimeType", !6, i64 0}
!200 = distinct !{!200, !15}
!201 = distinct !{!201, !15}
!202 = distinct !{!202, !15}
!203 = distinct !{!203, !15}
!204 = distinct !{!204, !15}
!205 = distinct !{!205, !15, !206, !207}
!206 = !{!"llvm.loop.isvectorized", i32 1}
!207 = !{!"llvm.loop.unroll.runtime.disable"}
!208 = distinct !{!208, !15, !206, !207}
!209 = distinct !{!209, !15, !207, !206}
!210 = distinct !{!210, !15, !207, !206}
!211 = !{!90, !5, i64 704}
!212 = !{!90, !5, i64 736}
!213 = !{!90, !5, i64 720}
!214 = distinct !{!214, !15}
!215 = distinct !{!215, !15}
!216 = distinct !{!216, !15, !217}
!217 = !{!"llvm.loop.peeled.count", i32 1}
!218 = distinct !{!218, !15}
!219 = distinct !{!219, !15}
!220 = distinct !{!220, !15}
!221 = distinct !{!221, !15}
!222 = distinct !{!222, !15}
!223 = distinct !{!223, !15}
!224 = distinct !{!224, !15}
!225 = distinct !{!225, !15}
!226 = distinct !{!226, !15}
!227 = distinct !{null}
!228 = distinct !{!228, !15}
!229 = distinct !{!229, !15}
!230 = distinct !{!230, !15}
!231 = distinct !{!231, !15, !217}
!232 = distinct !{!232, !15}
end_hunk_2
