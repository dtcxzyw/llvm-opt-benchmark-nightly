Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/vtzone?download=true
inline.NumInlined: 686
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK6icu_789VTimeZone9writeZoneERNS_9VTZWriterERNS_13BasicTimeZoneEPNS_7UVectorER10UErrorCode:bb.a
  %i.if = icmp eq ptr %.5649685, null
  %i.ig = icmp eq i32 %.7648687, 1                ; 2 uses
  br i1 %i.if, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.ig, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZNK6icu_789VTimeZone20writeZonePropsByTimeERNS_9VTZWriterEaRKNS_13UnicodeStringEiidaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %.5326640703, i32 noundef %.5314642699, double noundef %.5280646691, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.cx unwind label %.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cu
  invoke void @_ZNK6icu_789VTimeZone19writeZonePropsByDOWERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %.5326640703, i32 noundef %.5314642699, i32 noundef %.5303643697, i32 noundef %.5291645693, i32 noundef %.5297644695, double noundef %.5280646691, double noundef %.7274647689, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.cx unwind label %.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ih = load i32, ptr %4, align 4, !tbaa !33
  %i.ii = icmp slt i32 %i.ih, 1
  br i1 %i.ii, label %bb.dm, label %.thread662

bb.cy:                                            ; preds = %bb.ct
  br i1 %i.ig, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ij = sub nsw i32 %.5326640703, %.5320641701
  invoke void @_ZNK6icu_789VTimeZone14writeFinalRuleERNS_9VTZWriterEaPKNS_18AnnualTimeZoneRuleEiidR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 0, ptr noundef nonnull %.5649685, i32 noundef %i.ij, i32 noundef %.5320641701, double noundef %.5280646691, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.dl unwind label %.loopexit.split-lp

bb.da:                                            ; preds = %bb.cy
  %i.ik = invoke noundef ptr @_ZNK6icu_7818AnnualTimeZoneRule7getRuleEv(ptr noundef nonnull align 8 dereferenceable(96) %.5649685)
          to label %bb.db unwind label %.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  %i.il = invoke fastcc noundef signext i8 @_ZN6icu_78L20isEquivalentDateRuleEiiiPKNS_12DateTimeRuleE(i32 noundef %.5303643697, i32 noundef %.5291645693, i32 noundef %.5297644695, ptr noundef %i.ik)
          to label %bb.dc unwind label %.loopexit.split-lp

bb.dc:                                            ; preds = %bb.db
  %.not455 = icmp eq i8 %i.il, 0
  br i1 %.not455, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZNK6icu_789VTimeZone19writeZonePropsByDOWERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %.5326640703, i32 noundef %.5314642699, i32 noundef %.5303643697, i32 noundef %.5291645693, i32 noundef %.5297644695, double noundef %.5280646691, double noundef f0x43846A3EDDF8CD80, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.dl unwind label %.loopexit.split-lp

bb.de:                                            ; preds = %bb.dc
  invoke void @_ZNK6icu_789VTimeZone19writeZonePropsByDOWERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %.5326640703, i32 noundef %.5314642699, i32 noundef %.5303643697, i32 noundef %.5291645693, i32 noundef %.5297644695, double noundef %.5280646691, double noundef %.7274647689, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.df unwind label %.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  %i.im = load i32, ptr %4, align 4, !tbaa !33
  %i.in = icmp slt i32 %i.im, 1
  br i1 %i.in, label %bb.dg, label %.thread656

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.io = sub nsw i32 %.5326640703, %.5320641701  ; 2 uses
  %i.ip = load ptr, ptr %.5649685, align 8, !tbaa !19
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = invoke noundef signext i8 %i.ir(ptr noundef nonnull align 8 dereferenceable(96) %.5649685, double noundef %.7274647689, i32 noundef %i.io, i32 noundef %.5320641701, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %.not457 = icmp eq i8 %i.is, 0
  br i1 %.not457, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.it = load double, ptr %i.i, align 8, !tbaa !48
  invoke void @_ZNK6icu_789VTimeZone14writeFinalRuleERNS_9VTZWriterEaPKNS_18AnnualTimeZoneRuleEiidR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 0, ptr noundef nonnull %.5649685, i32 noundef %i.io, i32 noundef %.5320641701, double noundef %i.it, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dg
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %bb.dp

bb.dk:                                            ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dd, %bb.cz
  %i.iv = load i32, ptr %4, align 4, !tbaa !33
  %i.iw = icmp slt i32 %i.iv, 1
  br i1 %i.iw, label %bb.dm, label %.thread656

bb.dm:                                            ; preds = %bb.by, %bb.cs, %bb.dl, %bb.cx
  %.5650 = phi ptr [ %.0256, %bb.by ], [ %.5649685, %bb.cs ], [ %.5649685, %bb.dl ], [ null, %bb.cx ]
  %.5350639 = phi ptr [ %.0345.ph, %bb.by ], [ %.5350637, %bb.cs ], [ %.5350637, %bb.dl ], [ %.5350637, %bb.cx ]
  invoke void @_ZNK6icu_789VTimeZone11writeFooterERNS_9VTZWriterER10UErrorCode(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.thread552 unwind label %.loopexit.split-lp

.thread552:                                       ; preds = %bb.bl, %bb.at, %.thread653, %bb.dm, %bb.cr, %bb.cl, %bb.ce
  %.6351 = phi ptr [ null, %bb.ce ], [ %.5350636705745, %bb.cl ], [ %.5350639, %bb.dm ], [ %.0345.ph, %.thread653 ], [ %.5350636705745, %bb.cr ], [ %.0345.ph, %bb.bl ], [ %.1346, %bb.at ] ; 2 uses
  %.6 = phi ptr [ %.5649, %bb.ce ], [ %.5649686755, %bb.cl ], [ %.5650, %bb.dm ], [ %.0256, %.thread653 ], [ %.5649686755, %bb.cr ], [ %.1257, %bb.bl ], [ %.0256, %bb.at ] ; 2 uses
  %i.ix = icmp eq ptr %.6, null
  br i1 %i.ix, label %.thread662, label %.thread656

.thread656:                                       ; preds = %bb.df, %bb.dl, %.thread552
  %.6661 = phi ptr [ %.6, %.thread552 ], [ %.5649685, %bb.df ], [ %.5649685, %bb.dl ] ; 2 uses
  %.6351659 = phi ptr [ %.6351, %.thread552 ], [ %.5350637, %bb.df ], [ %.5350637, %bb.dl ]
  %i.iy = load ptr, ptr %.6661, align 8, !tbaa !19
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(96) %.6661) #18
  br label %.thread662

.thread662:                                       ; preds = %bb.cx, %.thread656, %.thread552
  %.6351660 = phi ptr [ %.6351659, %.thread656 ], [ %.6351, %.thread552 ], [ %.5350637, %bb.cx ] ; 3 uses
  %i.jb = icmp eq ptr %.6351660, null
  br i1 %i.jb, label %.thread578, label %bb.dn

bb.dn:                                            ; preds = %.thread662
  %i.jc = load ptr, ptr %.6351660, align 8, !tbaa !19
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(96) %.6351660) #18
  br label %.thread578

.thread578:                                       ; preds = %bb.z, %.thread662, %bb.dn
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN6icu_7818TimeZoneTransitionD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.do

bb.do:                                            ; preds = %bb.b, %bb.a, %.thread578
  ret void

bb.dp:                                            ; preds = %.loopexit1675, %.loopexit.split-lp1676, %.loopexit, %.loopexit.split-lp, %bb.aa, %bb.ac, %bb.ai, %bb.ab, %bb.dj, %bb.cp, %bb.bz
  %.pn460 = phi { ptr, i32 } [ %i.cg, %bb.ai ], [ %i.iu, %bb.dj ], [ %i.ib, %bb.cp ], [ %.pn446.pn, %bb.bz ], [ %i.bu, %bb.aa ], [ %i.bv, %bb.ab ], [ %i.bw, %bb.ac ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit1677, %.loopexit1675 ], [ %lpad.loopexit.split-lp1678, %.loopexit.split-lp1676 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN6icu_7818TimeZoneTransitionD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #18
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.h
  %.pn460.pn.pn = phi { ptr, i32 } [ %.pn460, %bb.dp ], [ %i.ax, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume
}

declare void @_ZNK6icu_7813BasicTimeZone21getTimeZoneRulesAfterEdRPNS_19InitialTimeZoneRuleERPNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), double noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_7813UnicodeStringC2IA10_DsvEERKT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 2 dereferenceable(20) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.i.i
  %i.c = load i16, ptr %i.b, align 2, !tbaa !13
  %i.d = icmp eq i16 %i.c, 0
  %i.e = add i64 %.0.i.i.i, 1
  br i1 %i.d, label %bb.c, label %bb.b, !llvm.loop !78

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %.0.i.i.i, ptr nonnull %1)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_78L12appendMillisEdRNS_13UnicodeStringE(double noundef %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca [20 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = fcmp olt double %0, f0xC384763B62073280
  %.inv = fcmp oge double %0, f0x43846A3EDDF8CD80
  %spec.select2021 = select i1 %.inv, double f0x43846A3EDDF8CD80, double %0
  %spec.select20 = fptosi double %spec.select2021 to i64
  %.0 = select i1 %i.d, i64 -184303902528000000, i64 %spec.select20 ; 2 uses
  %spec.select = tail call i64 @llvm.abs.i64(i64 %.0, i1 true)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.2 = phi i64 [ %i.h, %bb.b ], [ %spec.select, %bb.a ] ; 3 uses
  %i.e = urem i64 %.2, 10
  %i.f = trunc nuw nsw i64 %i.e to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.f, ptr %i.g, align 4, !tbaa !45
  %i.h = udiv i64 %.2, 10
  %i.i = icmp samesign ult i64 %.2, 10
  br i1 %i.i, label %bb.c, label %bb.b, !llvm.loop !79

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i64 %.0, -1
  br i1 %i.j, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 45, ptr %i.b, align 2, !tbaa !13
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %bb.e ], [ %indvars.iv, %.preheader ] ; 3 uses
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, -1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv22
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45
  %i.n = trunc i32 %i.m to i16
  %i.o = add i16 %i.n, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.o, ptr %i.a, align 2, !tbaa !13
  %i.p = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = icmp sgt i64 %indvars.iv22, 0
  br i1 %i.q, label %bb.e, label %bb.f, !llvm.loop !80

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret ptr %1
}

; Function Attrs: nounwind
declare void @_ZN6icu_7817RuleBasedTimeZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_789VTimeZone12writeHeadersERNS_9VTZWriterER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !33
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i16 2, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZNK6icu_788TimeZone5getIDERNS_13UnicodeStringE.exit unwind label %bb.t ; 0 uses

_ZNK6icu_788TimeZone5getIDERNS_13UnicodeStringE.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !8
  %i.n = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull @_ZN6icu_78L10ICAL_BEGINE, i32 noundef 0, i32 noundef -1)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %_ZNK6icu_788TimeZone5getIDERNS_13UnicodeStringE.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L10ICAL_BEGINE) #18, !srcloc !15
  br label %.body

bb.d:                                             ; preds = %_ZNK6icu_788TimeZone5getIDERNS_13UnicodeStringE.exit
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L10ICAL_BEGINE) #18, !srcloc !15
  %i.p = load ptr, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 58, ptr %i.e, align 2, !tbaa !13
  %i.q = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1)
          to label %bb.e unwind label %bb.t       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.r = load ptr, ptr %1, align 8, !tbaa !8
  %i.s = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull @_ZN6icu_78L14ICAL_VTIMEZONEE, i32 noundef 0, i32 noundef -1)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L14ICAL_VTIMEZONEE) #18, !srcloc !15
  br label %.body

bb.g:                                             ; preds = %bb.e
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L14ICAL_VTIMEZONEE) #18, !srcloc !15
  %i.u = load ptr, ptr %1, align 8, !tbaa !8
  %i.v = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull @_ZN6icu_78L12ICAL_NEWLINEE, i32 noundef 0, i32 noundef -1)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !15
  br label %.body

bb.i:                                             ; preds = %bb.g
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !15
  %i.x = load ptr, ptr %1, align 8, !tbaa !8
  %i.y = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull @_ZN6icu_78L9ICAL_TZIDE, i32 noundef 0, i32 noundef -1)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L9ICAL_TZIDE) #18, !srcloc !15
  br label %.body

bb.k:                                             ; preds = %bb.i
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L9ICAL_TZIDE) #18, !srcloc !15
  %i.aa = load ptr, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 58, ptr %i.d, align 2, !tbaa !13
  %i.ab = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1)
          to label %bb.l unwind label %bb.t       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = load ptr, ptr %1, align 8, !tbaa !8
  %i.ad = load i16, ptr %i.h, align 8, !tbaa !12  ; 2 uses
  %i.ae = icmp slt i16 %i.ad, 0
  %i.af = ashr i16 %i.ad, 5
  %i.ag = sext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = select i1 %i.ae, i32 %i.ai, i32 %i.ag
  %i.ak = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0, i32 noundef %i.aj)
          to label %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit unwind label %bb.t ; 0 uses

_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit: ; preds = %bb.l
  %i.al = load ptr, ptr %1, align 8, !tbaa !8
  %i.am = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull @_ZN6icu_78L12ICAL_NEWLINEE, i32 noundef 0, i32 noundef -1)
          to label %bb.n unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !15
  br label %.body

bb.n:                                             ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.ar = icmp slt i16 %i.aq, 0
  %i.as = ashr i16 %i.aq, 5
  %i.at = sext i16 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = select i1 %i.ar, i32 %i.av, i32 %i.at
  %.not22 = icmp eq i32 %i.aw, 0
  br i1 %.not22, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %1, align 8, !tbaa !8
  %i.ay = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull @_ZN6icu_78L10ICAL_TZURLE, i32 noundef 0, i32 noundef -1)
          to label %bb.q unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L10ICAL_TZURLE) #18, !srcloc !15
  br label %.body

bb.q:                                             ; preds = %bb.o
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L10ICAL_TZURLE) #18, !srcloc !15
  %i.ba = load ptr, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 58, ptr %i.c, align 2, !tbaa !13
  %i.bb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1)
          to label %bb.r unwind label %bb.t       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bc = load ptr, ptr %1, align 8, !tbaa !8
  %i.bd = load i16, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.be = icmp slt i16 %i.bd, 0
  %i.bf = ashr i16 %i.bd, 5
  %i.bg = sext i16 %i.bf to i32
  %i.bh = load i32, ptr %i.au, align 4
  %i.bi = select i1 %i.be, i32 %i.bh, i32 %i.bg
  %i.bj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i32 noundef 0, i32 noundef %i.bi)
end_hunk_0
