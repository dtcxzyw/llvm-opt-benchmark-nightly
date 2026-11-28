Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/basictz?download=true
inline.NumInlined: 137
inline.NumDeleted: 55
begin_hunk_0_@_ZNK6icu_7813BasicTimeZone18getSimpleRulesNearEdRPNS_19InitialTimeZoneRuleERPNS_18AnnualTimeZoneRuleES6_R10UErrorCode:bb.a
bb.y:                                             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.aj = sitofp i32 %i.t to double
  %i.ak = fadd double %i.w, %i.aj
  %i.al = sitofp i32 %i.v to double
  %i.am = fadd double %i.ak, %i.al
  invoke void @_ZN6icu_785Grego12timeToFieldsEdRiRaS2_S2_S1_R10UErrorCode(double noundef %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.z unwind label %bb.bk

bb.z:                                             ; preds = %bb.y
  %i.an = load i32, ptr %5, align 4, !tbaa !11
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.ab, label %.critedge

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit129.thread: ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit130

bb.aa:                                            ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.eb, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.eh, %bb.ei, %bb.ek, %bb.ep, %bb.v, %bb.u, %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k
  %.sroa.0143.0 = phi ptr [ %.sroa.0143.5, %bb.ep ], [ null, %bb.ek ], [ null, %bb.ei ], [ null, %bb.eh ], [ null, %bb.eg ], [ null, %bb.ef ], [ null, %bb.ee ], [ null, %bb.ed ], [ null, %bb.eb ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.c ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.6, %bb.ep ], [ null, %bb.ek ], [ null, %bb.ei ], [ null, %bb.eh ], [ null, %bb.eg ], [ null, %bb.ef ], [ null, %bb.ee ], [ null, %bb.ed ], [ null, %bb.eb ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.c ]
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ab:                                            ; preds = %bb.z
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !12
  %i.as = load i8, ptr %i.e, align 1, !tbaa !17
  %i.at = sext i8 %i.as to i32
  %i.au = load i8, ptr %i.f, align 1, !tbaa !17
  %i.av = sext i8 %i.au to i32
  %i.aw = invoke noundef i32 @_ZN6icu_785Grego16dayOfWeekInMonthEiii(i32 noundef %i.ar, i32 noundef %i.at, i32 noundef %i.av)
          to label %bb.ac unwind label %bb.bk

bb.ac:                                            ; preds = %bb.ab
  %i.ax = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #12 ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.az = load i8, ptr %i.e, align 1, !tbaa !17
  %i.ba = sext i8 %i.az to i32
  %i.bb = load i8, ptr %i.g, align 1, !tbaa !17
  %i.bc = sext i8 %i.bb to i32
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !12
  invoke void @_ZN6icu_7812DateTimeRuleC1EiiiiNS0_12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(36) %i.ax, i32 noundef %i.ba, i32 noundef %i.aw, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef 0)
          to label %bb.ae unwind label %bb.bj

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.be = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.af unwind label %bb.bk

bb.af:                                            ; preds = %bb.ae
  %i.bf = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.ag unwind label %bb.bk     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.bg = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 96) #12 ; 72 uses
  %i.bh = icmp eq ptr %i.bg, null                 ; 2 uses
  br i1 %i.bh, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bi = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ai unwind label %bb.bl

bb.ai:                                            ; preds = %bb.ah
  %i.bj = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bi)
          to label %bb.aj unwind label %bb.bl

bb.aj:                                            ; preds = %bb.ai
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !12
  %i.bl = load i32, ptr @_ZN6icu_7818AnnualTimeZoneRule8MAX_YEARE, align 4, !tbaa !12
  invoke void @_ZN6icu_7818AnnualTimeZoneRuleC1ERKNS_13UnicodeStringEiiPNS_12DateTimeRuleEii(ptr noundef nonnull align 8 dereferenceable(96) %i.bg, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.t, i32 noundef %i.bj, ptr noundef %i.ax, i32 noundef %i.bk, i32 noundef %i.bl)
          to label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit unwind label %bb.bl

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit: ; preds = %bb.ag, %bb.aj
  %i.bm = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ak unwind label %bb.bk

bb.ak:                                            ; preds = %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit
  %i.bn = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bm)
          to label %bb.al unwind label %bb.bk

bb.al:                                            ; preds = %bb.ak
  %i.bo = icmp eq i32 %i.bn, %i.t
  br i1 %i.bo, label %bb.am, label %bb.ck

bb.am:                                            ; preds = %bb.al
  %i.bp = load ptr, ptr %0, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef signext i8 %i.br(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %i.w, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.an unwind label %bb.bk

bb.an:                                            ; preds = %bb.am
  %.not87 = icmp eq i8 %i.bs, 0
  br i1 %.not87, label %bb.ck, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bt = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ap unwind label %bb.bk

bb.ap:                                            ; preds = %bb.ao
  %i.bu = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bt)
          to label %bb.aq unwind label %bb.bk

bb.aq:                                            ; preds = %bb.ap
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.bw = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.as unwind label %bb.bk

bb.as:                                            ; preds = %bb.ar
  %i.bx = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bw)
          to label %bb.at unwind label %bb.bk

bb.at:                                            ; preds = %bb.as
  %.not88 = icmp eq i32 %i.bx, 0
  br i1 %.not88, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at, %bb.aq
  %i.by = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.av unwind label %bb.bk

bb.av:                                            ; preds = %bb.au
  %i.bz = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.by)
          to label %bb.aw unwind label %bb.bk

bb.aw:                                            ; preds = %bb.av
  %.not89 = icmp eq i32 %i.bz, 0
  br i1 %.not89, label %bb.ck, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ca = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ay unwind label %bb.bk

bb.ay:                                            ; preds = %bb.ax
  %i.cb = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ca)
          to label %bb.az unwind label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.ba, label %bb.ck

bb.ba:                                            ; preds = %bb.az, %bb.at
  %i.cd = invoke noundef double @_ZNK6icu_7818TimeZoneTransition7getTimeEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bb unwind label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  %i.ce = fadd double %i.w, 3.153600e+10
  %i.cf = fcmp ogt double %i.ce, %i.cd
  br i1 %i.cf, label %bb.bc, label %bb.ck

bb.bc:                                            ; preds = %bb.bb
  %i.cg = invoke noundef double @_ZNK6icu_7818TimeZoneTransition7getTimeEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bd unwind label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.ch = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.be unwind label %bb.bk

bb.be:                                            ; preds = %bb.bd
  %i.ci = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ch)
          to label %bb.bf unwind label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.cj = sitofp i32 %i.ci to double
  %i.ck = fadd double %i.cg, %i.cj
  %i.cl = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.cm = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cl)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.cn = sitofp i32 %i.cm to double
  %i.co = fadd double %i.ck, %i.cn
  invoke void @_ZN6icu_785Grego12timeToFieldsEdRiRaS2_S2_S1_R10UErrorCode(double noundef %i.co, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.cp = load i32, ptr %5, align 4, !tbaa !11
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %bb.bm, label %.critedge

bb.bj:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ax) #12
  br label %bb.ea

bb.bk:                                            ; preds = %bb.ab, %bb.y, %bb.dy, %bb.dx, %bb.dw, %bb.dq, %bb.dp, %bb.do, %bb.dn, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit125, %bb.dj, %bb.di, %bb.df, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cw, %bb.cv, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %bb.cn, %bb.cm, %bb.ck, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %bb.ca, %bb.bz, %bb.by, %bb.bx, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit123, %bb.bq, %bb.bp, %bb.bm, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.am, %bb.ak, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit, %bb.af, %bb.ae
  %.sroa.0143.1 = phi ptr [ %i.bg, %bb.dy ], [ %i.bg, %bb.dx ], [ %i.bg, %bb.dw ], [ %i.bg, %bb.dq ], [ %i.bg, %bb.dp ], [ %i.bg, %bb.do ], [ %i.bg, %bb.dn ], [ %i.bg, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit125 ], [ %i.bg, %bb.dj ], [ %i.bg, %bb.di ], [ %i.bg, %bb.df ], [ %i.bg, %bb.dd ], [ %i.bg, %bb.dc ], [ %i.bg, %bb.db ], [ %i.bg, %bb.da ], [ %i.bg, %bb.cz ], [ %i.bg, %bb.cy ], [ %i.bg, %bb.cw ], [ %i.bg, %bb.cv ], [ %i.bg, %bb.ct ], [ %i.bg, %bb.cs ], [ %i.bg, %bb.cq ], [ %i.bg, %bb.cp ], [ %i.bg, %bb.cn ], [ %i.bg, %bb.cm ], [ %i.bg, %bb.ck ], [ %i.bg, %bb.cg ], [ %i.bg, %bb.cf ], [ %i.bg, %bb.cd ], [ %i.bg, %bb.cc ], [ %i.bg, %bb.ca ], [ %i.bg, %bb.bz ], [ %i.bg, %bb.by ], [ %i.bg, %bb.bx ], [ %i.bg, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit123 ], [ %i.bg, %bb.bq ], [ %i.bg, %bb.bp ], [ %i.bg, %bb.bm ], [ %i.bg, %bb.bh ], [ %i.bg, %bb.bg ], [ %i.bg, %bb.bf ], [ %i.bg, %bb.be ], [ %i.bg, %bb.bd ], [ %i.bg, %bb.bc ], [ %i.bg, %bb.ba ], [ %i.bg, %bb.ay ], [ %i.bg, %bb.ax ], [ %i.bg, %bb.av ], [ %i.bg, %bb.au ], [ %i.bg, %bb.as ], [ %i.bg, %bb.ar ], [ %i.bg, %bb.ap ], [ %i.bg, %bb.ao ], [ %i.bg, %bb.am ], [ %i.bg, %bb.ak ], [ %i.bg, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit ], [ null, %bb.af ], [ null, %bb.ae ], [ null, %bb.ab ], [ null, %bb.y ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.3, %bb.dy ], [ %.sroa.0.3, %bb.dx ], [ %.sroa.0.3, %bb.dw ], [ %i.fz, %bb.dq ], [ %i.fz, %bb.dp ], [ %i.fz, %bb.do ], [ %i.fz, %bb.dn ], [ %i.fz, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit125 ], [ null, %bb.dj ], [ null, %bb.di ], [ null, %bb.df ], [ null, %bb.dd ], [ null, %bb.dc ], [ null, %bb.db ], [ null, %bb.da ], [ null, %bb.cz ], [ null, %bb.cy ], [ null, %bb.cw ], [ null, %bb.cv ], [ null, %bb.ct ], [ null, %bb.cs ], [ null, %bb.cq ], [ null, %bb.cp ], [ null, %bb.cn ], [ null, %bb.cm ], [ null, %bb.ck ], [ %i.dj, %bb.cg ], [ %i.dj, %bb.cf ], [ %i.dj, %bb.cd ], [ %i.dj, %bb.cc ], [ %i.dj, %bb.ca ], [ %i.dj, %bb.bz ], [ %i.dj, %bb.by ], [ %i.dj, %bb.bx ], [ %i.dj, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit123 ], [ null, %bb.bq ], [ null, %bb.bp ], [ null, %bb.bm ], [ null, %bb.bh ], [ null, %bb.bg ], [ null, %bb.bf ], [ null, %bb.be ], [ null, %bb.bd ], [ null, %bb.bc ], [ null, %bb.ba ], [ null, %bb.ay ], [ null, %bb.ax ], [ null, %bb.av ], [ null, %bb.au ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.ap ], [ null, %bb.ao ], [ null, %bb.am ], [ null, %bb.ak ], [ null, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit ], [ null, %bb.af ], [ null, %bb.ae ], [ null, %bb.ab ], [ null, %bb.y ]
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.bl:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bg) #12
  br label %bb.ea

bb.bm:                                            ; preds = %bb.bi
  %i.cu = load i32, ptr %i.c, align 4, !tbaa !12
  %i.cv = load i8, ptr %i.e, align 1, !tbaa !17
  %i.cw = sext i8 %i.cv to i32
  %i.cx = load i8, ptr %i.f, align 1, !tbaa !17
  %i.cy = sext i8 %i.cx to i32
  %i.cz = invoke noundef i32 @_ZN6icu_785Grego16dayOfWeekInMonthEiii(i32 noundef %i.cu, i32 noundef %i.cw, i32 noundef %i.cy)
          to label %bb.bn unwind label %bb.bk

bb.bn:                                            ; preds = %bb.bm
  %i.da = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #12 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dc = load i8, ptr %i.e, align 1, !tbaa !17
  %i.dd = sext i8 %i.dc to i32
  %i.de = load i8, ptr %i.g, align 1, !tbaa !17
  %i.df = sext i8 %i.de to i32
  %i.dg = load i32, ptr %i.d, align 4, !tbaa !12
  invoke void @_ZN6icu_7812DateTimeRuleC1EiiiiNS0_12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(36) %i.da, i32 noundef %i.dd, i32 noundef %i.cz, i32 noundef %i.df, i32 noundef %i.dg, i32 noundef 0)
          to label %bb.bp unwind label %bb.ci

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.dh = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bq unwind label %bb.bk

bb.bq:                                            ; preds = %bb.bp
  %i.di = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.br unwind label %bb.bk     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.dj = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 96) #12 ; 17 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit123, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dl = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bt unwind label %bb.cj

bb.bt:                                            ; preds = %bb.bs
  %i.dm = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dl)
          to label %bb.bu unwind label %bb.cj

bb.bu:                                            ; preds = %bb.bt
  %i.dn = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bv unwind label %bb.cj

bb.bv:                                            ; preds = %bb.bu
  %i.do = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dn)
          to label %bb.bw unwind label %bb.cj

bb.bw:                                            ; preds = %bb.bv
  %i.dp = load i32, ptr %i.c, align 4, !tbaa !12
  %i.dq = add nsw i32 %i.dp, -1
  %i.dr = load i32, ptr @_ZN6icu_7818AnnualTimeZoneRule8MAX_YEARE, align 4, !tbaa !12
  invoke void @_ZN6icu_7818AnnualTimeZoneRuleC1ERKNS_13UnicodeStringEiiPNS_12DateTimeRuleEii(ptr noundef nonnull align 8 dereferenceable(96) %i.dj, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.dm, i32 noundef %i.do, ptr noundef %i.da, i32 noundef %i.dq, i32 noundef %i.dr)
          to label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit123 unwind label %bb.cj

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit123: ; preds = %bb.br, %bb.bw
  %i.ds = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bx unwind label %bb.bk

bb.bx:                                            ; preds = %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit123
  %i.dt = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ds)
          to label %bb.by unwind label %bb.bk

bb.by:                                            ; preds = %bb.bx
  %i.du = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bz unwind label %bb.bk

bb.bz:                                            ; preds = %bb.by
  %i.dv = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.du)
          to label %bb.ca unwind label %bb.bk

bb.ca:                                            ; preds = %bb.bz
  %i.dw = load ptr, ptr %i.dj, align 8, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef signext i8 %i.dy(ptr noundef nonnull align 8 dereferenceable(96) %i.dj, double noundef %1, i32 noundef %i.dt, i32 noundef %i.dv, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.cb unwind label %bb.bk

bb.cb:                                            ; preds = %bb.ca
  %.not91 = icmp eq i8 %i.dz, 0
  %i.ea = load double, ptr %i.h, align 8
  %i.eb = fcmp ogt double %i.ea, %1
  %or.cond117 = select i1 %.not91, i1 true, i1 %i.eb
  br i1 %or.cond117, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit124, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ec = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cd unwind label %bb.bk

bb.cd:                                            ; preds = %bb.cc
  %i.ed = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ec)
          to label %bb.ce unwind label %bb.bk

bb.ce:                                            ; preds = %bb.cd
  %.not92 = icmp eq i32 %i.t, %i.ed
  br i1 %.not92, label %bb.cf, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit124

bb.cf:                                            ; preds = %bb.ce
  %i.ee = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cg unwind label %bb.bk

bb.cg:                                            ; preds = %bb.cf
  %i.ef = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ee)
          to label %bb.ch unwind label %bb.bk

bb.ch:                                            ; preds = %bb.cg
  %.not93 = icmp eq i32 %i.v, %i.ef
  br i1 %.not93, label %bb.dw, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit124

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit124: ; preds = %bb.ch, %bb.ce, %bb.cb
  %i.eg = load ptr, ptr %i.dj, align 8, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(96) %i.dj) #12, !inline_history !20
  br label %bb.ck

bb.ci:                                            ; preds = %bb.bo
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.da) #12
  br label %bb.ea

bb.cj:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.dj) #12
  br label %bb.ea

bb.ck:                                            ; preds = %bb.an, %bb.aw, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit124, %bb.bb, %bb.az, %bb.al
  %i.el = load ptr, ptr %0, align 8, !tbaa !9
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef signext i8 %i.en(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cl unwind label %bb.bk

bb.cl:                                            ; preds = %bb.ck
  %.not95 = icmp eq i8 %i.eo, 0
  br i1 %.not95, label %bb.du, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ep = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cn unwind label %bb.bk

bb.cn:                                            ; preds = %bb.cm
  %i.eq = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ep)
          to label %bb.co unwind label %bb.bk

bb.co:                                            ; preds = %bb.cn
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.es = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cq unwind label %bb.bk

bb.cq:                                            ; preds = %bb.cp
  %i.et = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.es)
          to label %bb.cr unwind label %bb.bk

bb.cr:                                            ; preds = %bb.cq
  %.not96 = icmp eq i32 %i.et, 0
  br i1 %.not96, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr, %bb.co
  %i.eu = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ct unwind label %bb.bk

bb.ct:                                            ; preds = %bb.cs
  %i.ev = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.eu)
          to label %bb.cu unwind label %bb.bk

bb.cu:                                            ; preds = %bb.ct
  %.not97 = icmp eq i32 %i.ev, 0
  br i1 %.not97, label %bb.du, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ew = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cw unwind label %bb.bk

bb.cw:                                            ; preds = %bb.cv
  %i.ex = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ew)
          to label %bb.cx unwind label %bb.bk

bb.cx:                                            ; preds = %bb.cw
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.cy, label %bb.du

bb.cy:                                            ; preds = %bb.cx, %bb.cr
  %i.ez = invoke noundef double @_ZNK6icu_7818TimeZoneTransition7getTimeEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cz unwind label %bb.bk

bb.cz:                                            ; preds = %bb.cy
  %i.fa = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.da unwind label %bb.bk

bb.da:                                            ; preds = %bb.cz
  %i.fb = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fa)
          to label %bb.db unwind label %bb.bk

bb.db:                                            ; preds = %bb.da
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fadd double %i.ez, %i.fc
  %i.fe = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dc unwind label %bb.bk

bb.dc:                                            ; preds = %bb.db
  %i.ff = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fe)
          to label %bb.dd unwind label %bb.bk

bb.dd:                                            ; preds = %bb.dc
  %i.fg = sitofp i32 %i.ff to double
  %i.fh = fadd double %i.fd, %i.fg
  invoke void @_ZN6icu_785Grego12timeToFieldsEdRiRaS2_S2_S1_R10UErrorCode(double noundef %i.fh, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.de unwind label %bb.bk

bb.de:                                            ; preds = %bb.dd
  %i.fi = load i32, ptr %5, align 4, !tbaa !11
  %i.fj = icmp slt i32 %i.fi, 1
  br i1 %i.fj, label %bb.df, label %.critedge

bb.df:                                            ; preds = %bb.de
  %i.fk = load i32, ptr %i.c, align 4, !tbaa !12
  %i.fl = load i8, ptr %i.e, align 1, !tbaa !17
  %i.fm = sext i8 %i.fl to i32
  %i.fn = load i8, ptr %i.f, align 1, !tbaa !17
  %i.fo = sext i8 %i.fn to i32
  %i.fp = invoke noundef i32 @_ZN6icu_785Grego16dayOfWeekInMonthEiii(i32 noundef %i.fk, i32 noundef %i.fm, i32 noundef %i.fo)
          to label %bb.dg unwind label %bb.bk

bb.dg:                                            ; preds = %bb.df
  %i.fq = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #12 ; 4 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fs = load i8, ptr %i.e, align 1, !tbaa !17
  %i.ft = sext i8 %i.fs to i32
  %i.fu = load i8, ptr %i.g, align 1, !tbaa !17
  %i.fv = sext i8 %i.fu to i32
  %i.fw = load i32, ptr %i.d, align 4, !tbaa !12
  invoke void @_ZN6icu_7812DateTimeRuleC1EiiiiNS0_12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(36) %i.fq, i32 noundef %i.ft, i32 noundef %i.fp, i32 noundef %i.fv, i32 noundef %i.fw, i32 noundef 0)
          to label %bb.di unwind label %bb.ds

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.fx = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dj unwind label %bb.bk

bb.dj:                                            ; preds = %bb.di
  %i.fy = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %i.fx, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.dk unwind label %bb.bk     ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  %i.fz = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 96) #12 ; 13 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit125, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.gb = invoke noundef i32 @_ZNK6icu_7818AnnualTimeZoneRule12getStartYearEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bg)
          to label %bb.dm unwind label %bb.dt

bb.dm:                                            ; preds = %bb.dl
  %i.gc = add nsw i32 %i.gb, -1
  %i.gd = load i32, ptr @_ZN6icu_7818AnnualTimeZoneRule8MAX_YEARE, align 4, !tbaa !12
  invoke void @_ZN6icu_7818AnnualTimeZoneRuleC1ERKNS_13UnicodeStringEiiPNS_12DateTimeRuleEii(ptr noundef nonnull align 8 dereferenceable(96) %i.fz, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.t, i32 noundef %i.v, ptr noundef %i.fq, i32 noundef %i.gc, i32 noundef %i.gd)
          to label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit125 unwind label %bb.dt

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit125: ; preds = %bb.dk, %bb.dm
  %i.ge = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dn unwind label %bb.bk

bb.dn:                                            ; preds = %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit125
  %i.gf = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ge)
          to label %bb.do unwind label %bb.bk

bb.do:                                            ; preds = %bb.dn
  %i.gg = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dp unwind label %bb.bk

bb.dp:                                            ; preds = %bb.do
  %i.gh = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.gg)
          to label %bb.dq unwind label %bb.bk

bb.dq:                                            ; preds = %bb.dp
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !9
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = invoke noundef signext i8 %i.gk(ptr noundef nonnull align 8 dereferenceable(96) %i.fz, double noundef %1, i32 noundef %i.gf, i32 noundef %i.gh, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.dr unwind label %bb.bk

bb.dr:                                            ; preds = %bb.dq
  %.not99 = icmp ne i8 %i.gl, 0
  %i.gm = load double, ptr %i.h, align 8
  %i.gn = fcmp ugt double %i.gm, %i.w
  %or.cond120 = select i1 %.not99, i1 %i.gn, i1 false
  br i1 %or.cond120, label %bb.dw, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit126

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit126: ; preds = %bb.dr
  %i.go = load ptr, ptr %i.fz, align 8, !tbaa !9
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(96) %i.fz) #12, !inline_history !20
  br label %bb.du

bb.ds:                                            ; preds = %bb.dh
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.fq) #12
  br label %bb.ea

bb.dt:                                            ; preds = %bb.dm, %bb.dl
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.fz) #12
  br label %bb.ea

bb.du:                                            ; preds = %bb.cl, %bb.cu, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit126, %bb.cx
  br i1 %i.bh, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit127, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.gt = load ptr, ptr %i.bg, align 8, !tbaa !9
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(96) %i.bg) #12, !inline_history !20
  br label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit127

bb.dw:                                            ; preds = %bb.ch, %bb.dr
  %.sroa.0.3 = phi ptr [ %i.fz, %bb.dr ], [ %i.dj, %bb.ch ] ; 4 uses
  %i.gw = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.dx unwind label %bb.bk     ; 0 uses

bb.dx:                                            ; preds = %bb.dw
  %i.gx = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bg)
          to label %bb.dy unwind label %bb.bk

bb.dy:                                            ; preds = %bb.dx
  store i32 %i.gx, ptr %i.a, align 4, !tbaa !12
  %i.gy = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bg)
          to label %bb.dz unwind label %bb.bk

bb.dz:                                            ; preds = %bb.dy
  store i32 %i.gy, ptr %i.b, align 4, !tbaa !12
  br label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit127

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit127: ; preds = %bb.dv, %bb.du, %bb.dz
  %.sroa.0.3162 = phi ptr [ %.sroa.0.3, %bb.dz ], [ null, %bb.du ], [ null, %bb.dv ]
  %.sroa.0143.2 = phi ptr [ %i.bg, %bb.dz ], [ null, %bb.du ], [ null, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.em

bb.ea:                                            ; preds = %bb.dt, %bb.ds, %bb.cj, %bb.ci, %bb.bl, %bb.bj, %bb.bk
  %.sroa.0143.3 = phi ptr [ %.sroa.0143.1, %bb.bk ], [ %i.bg, %bb.dt ], [ %i.bg, %bb.ds ], [ %i.bg, %bb.cj ], [ %i.bg, %bb.ci ], [ null, %bb.bl ], [ null, %bb.bj ]
  %.sroa.0.4 = phi ptr [ %.sroa.0.1, %bb.bk ], [ null, %bb.dt ], [ null, %bb.ds ], [ null, %bb.cj ], [ null, %bb.ci ], [ null, %bb.bl ], [ null, %bb.bj ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.bk ], [ %i.gs, %bb.dt ], [ %i.gr, %bb.ds ], [ %i.ek, %bb.cj ], [ %i.ej, %bb.ci ], [ %i.ct, %bb.bl ], [ %i.cr, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ey

.critedge:                                        ; preds = %bb.bi, %bb.de, %bb.z
  %.sroa.0143.4 = phi ptr [ %i.bg, %bb.de ], [ %i.bg, %bb.bi ], [ null, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.eu

bb.eb:                                            ; preds = %bb.d
  %i.gz = load ptr, ptr %0, align 8, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 120
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = invoke noundef signext i8 %i.hb(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ec unwind label %bb.aa

bb.ec:                                            ; preds = %bb.eb
  %.not82 = icmp eq i8 %i.hc, 0
  br i1 %.not82, label %bb.ek, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.hd = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ee unwind label %bb.aa

bb.ee:                                            ; preds = %bb.ed
  %i.he = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %i.hd, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.ef unwind label %bb.aa     ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  %i.hf = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.eg unwind label %bb.aa

bb.eg:                                            ; preds = %bb.ef
  %i.hg = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hf)
          to label %bb.eh unwind label %bb.aa

bb.eh:                                            ; preds = %bb.eg
  store i32 %i.hg, ptr %i.a, align 4, !tbaa !12
  %i.hh = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ei unwind label %bb.aa

bb.ei:                                            ; preds = %bb.eh
  %i.hi = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hh)
          to label %bb.ej unwind label %bb.aa

bb.ej:                                            ; preds = %bb.ei
  store i32 %i.hi, ptr %i.b, align 4, !tbaa !12
  br label %bb.em

bb.ek:                                            ; preds = %bb.ec
  %i.hj = load ptr, ptr %0, align 8, !tbaa !9
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.el unwind label %bb.aa

bb.el:                                            ; preds = %bb.ek
  %i.hm = load i32, ptr %5, align 4, !tbaa !11
  %i.hn = icmp slt i32 %i.hm, 1
  br i1 %i.hn, label %bb.em, label %bb.eu

bb.em:                                            ; preds = %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit127, %bb.x, %bb.w, %bb.t, %bb.ej, %bb.el
  %.sroa.0143.5 = phi ptr [ null, %bb.el ], [ null, %bb.ej ], [ null, %bb.t ], [ %.sroa.0143.2, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit127 ], [ null, %bb.w ], [ null, %bb.x ] ; 7 uses
  %.sroa.0.6 = phi ptr [ null, %bb.el ], [ null, %bb.ej ], [ null, %bb.t ], [ %.sroa.0.3162, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEE12adoptInsteadEPS1_.exit127 ], [ null, %bb.w ], [ null, %bb.x ] ; 6 uses
  %i.ho = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 80) #12 ; 4 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.hq = load i32, ptr %i.a, align 4, !tbaa !12
  %i.hr = load i32, ptr %i.b, align 4, !tbaa !12
  invoke void @_ZN6icu_7819InitialTimeZoneRuleC1ERKNS_13UnicodeStringEii(ptr noundef nonnull align 8 dereferenceable(80) %i.ho, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %i.hq, i32 noundef %i.hr)
          to label %bb.eo unwind label %bb.es

bb.eo:                                            ; preds = %bb.en, %bb.em
  store ptr %i.ho, ptr %2, align 8, !tbaa !16
  %.not = icmp eq ptr %.sroa.0143.5, null
  %.not164 = icmp eq ptr %.sroa.0.6, null
  %or.cond165 = or i1 %.not, %.not164
  br i1 %or.cond165, label %bb.eu, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.hs = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0143.5)
          to label %bb.eq unwind label %bb.aa

bb.eq:                                            ; preds = %bb.ep
  %.not113 = icmp eq i32 %i.hs, 0
  br i1 %.not113, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store ptr %.sroa.0143.5, ptr %4, align 8, !tbaa !23
  store ptr %.sroa.0.6, ptr %3, align 8, !tbaa !23
  br label %bb.eu

bb.es:                                            ; preds = %bb.en
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ho) #12
  br label %bb.ey

bb.et:                                            ; preds = %bb.eq
  store ptr %.sroa.0143.5, ptr %3, align 8, !tbaa !23
  store ptr %.sroa.0.6, ptr %4, align 8, !tbaa !23
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eo, %bb.et, %bb.er, %bb.el, %.critedge
  %.sroa.0143.6 = phi ptr [ %.sroa.0143.5, %bb.eo ], [ %.sroa.0143.4, %.critedge ], [ null, %bb.et ], [ null, %bb.er ], [ null, %bb.el ] ; 3 uses
  %.sroa.0.7 = phi ptr [ %.sroa.0.6, %bb.eo ], [ null, %.critedge ], [ null, %bb.et ], [ null, %bb.er ], [ null, %bb.el ] ; 3 uses
  call void @_ZN6icu_7818TimeZoneTransitionD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.hu = icmp eq ptr %.sroa.0.7, null
  br i1 %i.hu, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.hv = load ptr, ptr %.sroa.0.7, align 8, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.7) #12, !inline_history !21
  br label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit: ; preds = %bb.eu, %bb.ev
  %i.hy = icmp eq ptr %.sroa.0143.6, null
  br i1 %i.hy, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit128, label %bb.ew

bb.ew:                                            ; preds = %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit
  %i.hz = load ptr, ptr %.sroa.0143.6, align 8, !tbaa !9
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0143.6) #12, !inline_history !21
  br label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit128

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit128: ; preds = %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit, %bb.ew
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ex

bb.ex:                                            ; preds = %bb.a, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit128
  ret void

bb.ey:                                            ; preds = %bb.es, %bb.ea, %bb.aa
  %.sroa.0143.7 = phi ptr [ %.sroa.0143.0, %bb.aa ], [ %.sroa.0143.5, %bb.es ], [ %.sroa.0143.3, %bb.ea ] ; 3 uses
  %.sroa.0.8 = phi ptr [ %.sroa.0.0, %bb.aa ], [ %.sroa.0.6, %bb.es ], [ %.sroa.0.4, %bb.ea ] ; 3 uses
  %.pn107 = phi { ptr, i32 } [ %i.aq, %bb.aa ], [ %i.ht, %bb.es ], [ %.pn.pn.pn, %bb.ea ] ; 2 uses
  call void @_ZN6icu_7818TimeZoneTransitionD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ic = icmp eq ptr %.sroa.0.8, null
  br i1 %i.ic, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit129, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.id = load ptr, ptr %.sroa.0.8, align 8, !tbaa !9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.8) #12, !inline_history !21
  br label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit129

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit129: ; preds = %bb.ez, %bb.ey
  %i.ig = icmp eq ptr %.sroa.0143.7, null
  br i1 %i.ig, label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit130, label %bb.fa

bb.fa:                                            ; preds = %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit129
  %i.ih = load ptr, ptr %.sroa.0143.7, align 8, !tbaa !9
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0143.7) #12, !inline_history !21
  br label %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit130

_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit130: ; preds = %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit129.thread, %bb.fa, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit129
  %.pn107.pn177180 = phi { ptr, i32 } [ %i.ap, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit129.thread ], [ %.pn107, %bb.fa ], [ %.pn107, %_ZN6icu_7812LocalPointerINS_18AnnualTimeZoneRuleEED2Ev.exit129 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  resume { ptr, i32 } %.pn107.pn177180
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN6icu_785Grego12timeToFieldsEdRiRaS2_S2_S1_R10UErrorCode(double noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef i32 @_ZN6icu_785Grego16dayOfWeekInMonthEiii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7812DateTimeRuleC1EiiiiNS0_12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1
end_hunk_0
