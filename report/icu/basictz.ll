Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/basictz?download=true
inline.NumInlined: 137
inline.NumDeleted: 55
begin_hunk_0_@_ZNK6icu_7813BasicTimeZone21getTimeZoneRulesAfterEdRPNS_19InitialTimeZoneRuleERPNS_7UVectorER10UErrorCode:bb.a
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !12
  %i.bk = sext i32 %i.bj to i64
  %i.bl = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.bk) #14
          to label %bb.z unwind label %bb.ab      ; 5 uses

bb.z:                                             ; preds = %bb.y
  %.not368 = icmp eq ptr %i.bl, null
  br i1 %.not368, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  store i32 7, ptr %4, align 4, !tbaa !11
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.ab:                                            ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryIbED2Ev.exit291

bb.ac:                                            ; preds = %bb.z
  %i.bn = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #12 ; 12 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit272 unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bp = load i32, ptr %4, align 4
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 7, ptr %4, align 4, !tbaa !11
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit272: ; preds = %bb.ad
  %.pre440 = load i32, ptr %4, align 4, !tbaa !11
  %i.br = icmp slt i32 %.pre440, 1
  br i1 %i.br, label %bb.ai, label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit.thread472

bb.ag:                                            ; preds = %bb.ad
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bn) #12
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit290

bb.ah:                                            ; preds = %bb.aj, %bb.ai
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit289.thread

bb.ai:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit272
  %i.bu = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aj unwind label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  %i.bv = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.ak unwind label %bb.ah     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.bw = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 80) #12 ; 10 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.by = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.bz = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.by)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.ca = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.cb = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ca)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN6icu_7819InitialTimeZoneRuleC1ERKNS_13UnicodeStringEii(ptr noundef nonnull align 8 dereferenceable(80) %i.bw, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %i.bz, i32 noundef %i.cb)
          to label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEEC2EPS1_R10UErrorCode.exit unwind label %bb.as

bb.aq:                                            ; preds = %bb.ak
  %i.cc = load i32, ptr %4, align 4
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit.thread472, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 7, ptr %4, align 4, !tbaa !11
  br label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit.thread472

_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.ap
  %.pre441 = load i32, ptr %4, align 4, !tbaa !11
  %i.ce = icmp slt i32 %.pre441, 1
  br i1 %i.ce, label %.preheader388, label %.critedge268.thread.thread471

.preheader388:                                    ; preds = %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEEC2EPS1_R10UErrorCode.exit
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !12
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph404, label %._crit_edge405

bb.as:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bw) #12
  br label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit289.thread

.loopexit383:                                     ; preds = %.critedge
  %lpad.loopexit385 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit289

.loopexit.split-lp384:                            ; preds = %.lr.ph404, %bb.at, %bb.au, %bb.av
  %lpad.loopexit.split-lp386 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit289

.lr.ph404:                                        ; preds = %.preheader388, %bb.aw
  %indvars.iv433 = phi i64 [ %indvars.iv.next434, %bb.aw ], [ 0, %.preheader388 ] ; 3 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv433 to i32
  %i.cj = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i32 noundef %i.ci)
          to label %bb.at unwind label %.loopexit.split-lp384 ; 2 uses

bb.at:                                            ; preds = %.lr.ph404
  %i.ck = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bw)
          to label %bb.au unwind label %.loopexit.split-lp384

bb.au:                                            ; preds = %bb.at
  %i.cl = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bw)
          to label %bb.av unwind label %.loopexit.split-lp384

bb.av:                                            ; preds = %bb.au
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef signext i8 %i.co(ptr noundef nonnull align 8 dereferenceable(80) %i.cj, double noundef %1, i32 noundef %i.ck, i32 noundef %i.cl, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.aw unwind label %.loopexit.split-lp384

bb.aw:                                            ; preds = %bb.av
  %.not251 = icmp eq i8 %i.cp, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv433
  %i.cr = zext i1 %.not251 to i8
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !38
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 2 uses
  %i.cs = load i32, ptr %i.b, align 4, !tbaa !12
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next434, %i.ct
  br i1 %i.cu, label %.lr.ph404, label %._crit_edge405, !llvm.loop !25

._crit_edge405:                                   ; preds = %bb.aw, %.preheader388
  store double %1, ptr %i.c, align 8, !tbaa !40
  %i.cv = load i32, ptr @_ZN6icu_7818AnnualTimeZoneRule8MAX_YEARE, align 4
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge405, %.critedge268
  %.0184421 = phi i8 [ 0, %._crit_edge405 ], [ %.4188, %.critedge268 ] ; 5 uses
  %.0189420 = phi i8 [ 0, %._crit_edge405 ], [ %.4193, %.critedge268 ] ; 5 uses
  %i.cw = load double, ptr %i.c, align 8, !tbaa !40
  %i.cx = load ptr, ptr %0, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 112
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef signext i8 %i.cz(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %i.cw, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ax unwind label %.loopexit383

bb.ax:                                            ; preds = %.critedge
  %.not216 = icmp eq i8 %i.da, 0
  br i1 %.not216, label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.db = invoke noundef double @_ZNK6icu_7818TimeZoneTransition7getTimeEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.az unwind label %bb.bb     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.dc = load double, ptr %i.c, align 8, !tbaa !40
  %i.dd = fcmp oeq double %i.db, %i.dc
  br i1 %i.dd, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  store i32 27, ptr %4, align 4, !tbaa !11
  br label %.critedge268.thread.thread471

bb.bb:                                            ; preds = %bb.ay
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit289

bb.bc:                                            ; preds = %bb.az
  store double %i.db, ptr %i.c, align 8, !tbaa !40
  %i.df = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.preheader377 unwind label %.loopexit.split-lp379 ; 3 uses

.preheader377:                                    ; preds = %bb.bc
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !12
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph407, label %._crit_edge408.thread

.lr.ph407:                                        ; preds = %.preheader377, %bb.bf
  %.2170406 = phi i32 [ %i.dn, %bb.bf ], [ 0, %.preheader377 ] ; 3 uses
  %i.di = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i32 noundef %.2170406)
          to label %bb.bd unwind label %.loopexit378 ; 2 uses

bb.bd:                                            ; preds = %.lr.ph407
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef zeroext i1 %i.dl(ptr noundef nonnull align 8 dereferenceable(80) %i.di, ptr noundef nonnull align 8 dereferenceable(80) %i.df)
          to label %bb.be unwind label %.loopexit378

bb.be:                                            ; preds = %bb.bd
  %.pre442.pre = load i32, ptr %i.b, align 4, !tbaa !12 ; 2 uses
  br i1 %i.dm, label %._crit_edge408, label %bb.bf

.loopexit378:                                     ; preds = %.lr.ph407, %bb.bd
  %lpad.loopexit380 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit289

.loopexit.split-lp379:                            ; preds = %bb.bc
  %lpad.loopexit.split-lp381 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_19InitialTimeZoneRuleEED2Ev.exit289

bb.bf:                                            ; preds = %bb.be
  %i.dn = add nuw nsw i32 %.2170406, 1            ; 3 uses
  %i.do = icmp slt i32 %i.dn, %.pre442.pre
  br i1 %i.do, label %.lr.ph407, label %._crit_edge408, !llvm.loop !26

._crit_edge408:                                   ; preds = %bb.bf, %bb.be
  %.2170.lcssa.ph = phi i32 [ %i.dn, %bb.bf ], [ %.2170406, %bb.be ] ; 2 uses
  %i.dp = icmp slt i32 %.2170.lcssa.ph, %.pre442.pre
  br i1 %i.dp, label %bb.bg, label %._crit_edge408.thread

._crit_edge408.thread:                            ; preds = %.preheader377, %._crit_edge408
  store i32 27, ptr %4, align 4, !tbaa !11
  br label %.critedge268.thread.thread471

bb.bg:                                            ; preds = %._crit_edge408
  %i.dq = zext nneg i32 %.2170.lcssa.ph to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dq ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !38, !range !41, !noundef !42
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %.critedge268, label %bb.bh, !llvm.loop !27

bb.bh:                                            ; preds = %bb.bg
  %i.du = call ptr @__dynamic_cast(ptr nonnull %i.df, ptr nonnull @_ZTIN6icu_7812TimeZoneRuleE, ptr nonnull @_ZTIN6icu_7821TimeArrayTimeZoneRuleE, i64 0) #12 ; 13 uses
  %.not218 = icmp eq ptr %i.du, null
  br i1 %.not218, label %bb.dd, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZN6icu_7818TimeZoneTransitionC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.preheader371 unwind label %bb.bk

.preheader371:                                    ; preds = %bb.bi, %bb.bo
  %storemerge = phi double [ %i.ef, %bb.bo ], [ %1, %bb.bi ] ; 2 uses
  store double %storemerge, ptr %i.d, align 8, !tbaa !40
  %i.dv = load ptr, ptr %0, align 8, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 112
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke noundef signext i8 %i.dx(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %storemerge, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bj unwind label %.loopexit372

bb.bj:                                            ; preds = %.preheader371
  %.not227 = icmp eq i8 %i.dy, 0
  br i1 %.not227, label %.critedge261, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit372:                                     ; preds = %.preheader371, %bb.bl, %bb.bm, %bb.bo
  %lpad.loopexit374 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryIdED2Ev.exit281

.loopexit.split-lp373:                            ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt
  %lpad.loopexit.split-lp375 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryIdED2Ev.exit281

bb.bl:                                            ; preds = %bb.bj
  %i.ea = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bm unwind label %.loopexit372 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !9
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef zeroext i1 %i.ed(ptr noundef nonnull align 8 dereferenceable(80) %i.ea, ptr noundef nonnull align 8 dereferenceable(80) %i.du)
          to label %bb.bn unwind label %.loopexit372

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.ee, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ef = invoke noundef double @_ZNK6icu_7818TimeZoneTransition7getTimeEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.preheader371 unwind label %.loopexit372, !llvm.loop !28

bb.bp:                                            ; preds = %bb.bn
  %i.eg = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bq unwind label %.loopexit.split-lp373

bb.bq:                                            ; preds = %bb.bp
  %i.eh = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.eg)
          to label %bb.br unwind label %.loopexit.split-lp373

bb.br:                                            ; preds = %bb.bq
  %i.ei = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bs unwind label %.loopexit.split-lp373

bb.bs:                                            ; preds = %bb.br
  %i.ej = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ei)
          to label %bb.bt unwind label %.loopexit.split-lp373

bb.bt:                                            ; preds = %bb.bs
  %i.ek = load ptr, ptr %i.du, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef signext i8 %i.em(ptr noundef nonnull align 8 dereferenceable(352) %i.du, i32 noundef %i.eh, i32 noundef %i.ej, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.bu unwind label %.loopexit.split-lp373 ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.eo = load double, ptr %i.e, align 8, !tbaa !40
  %i.ep = fcmp ogt double %i.eo, %1
  br i1 %i.ep, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.eq = load ptr, ptr %i.du, align 8, !tbaa !9
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = invoke noundef ptr %i.es(ptr noundef nonnull align 8 dereferenceable(352) %i.du)
          to label %bb.bw unwind label %bb.by     ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.eu = icmp ne ptr %i.et, null
  %i.ev = load i32, ptr %4, align 4
  %i.ew = icmp sgt i32 %i.ev, 0
  %or.cond.i274 = select i1 %i.eu, i1 true, i1 %i.ew
  br i1 %or.cond.i274, label %_ZN6icu_7812LocalPointerINS_21TimeArrayTimeZoneRuleEEC2EPS1_R10UErrorCode.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i32 7, ptr %4, align 4, !tbaa !11
  br label %_ZN6icu_7812LocalPointerINS_21TimeArrayTimeZoneRuleEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_21TimeArrayTimeZoneRuleEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.bx, %bb.bw
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef %i.et, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_7812LocalPointerINS_21TimeArrayTimeZoneRuleEED2Ev.exit unwind label %_ZN6icu_7812LocalPointerINS_21TimeArrayTimeZoneRuleEED2Ev.exit275

_ZN6icu_7812LocalPointerINS_21TimeArrayTimeZoneRuleEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_21TimeArrayTimeZoneRuleEEC2EPS1_R10UErrorCode.exit
  %i.ex = load i32, ptr %4, align 4, !tbaa !11
  %i.ey = icmp slt i32 %i.ex, 1
  br i1 %i.ey, label %.critedge261, label %.critedge265

bb.by:                                            ; preds = %bb.bv
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryIdED2Ev.exit281

_ZN6icu_7812LocalPointerINS_21TimeArrayTimeZoneRuleEED2Ev.exit275: ; preds = %_ZN6icu_7812LocalPointerINS_21TimeArrayTimeZoneRuleEEC2EPS1_R10UErrorCode.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryIdED2Ev.exit281

bb.bz:                                            ; preds = %bb.bu
  %i.fb = invoke noundef i32 @_ZNK6icu_7821TimeArrayTimeZoneRule15countStartTimesEv(ptr noundef nonnull align 8 dereferenceable(352) %i.du)
          to label %bb.ca unwind label %.loopexit.split-lp ; 4 uses

bb.ca:                                            ; preds = %bb.bz
  %i.fc = invoke noundef i32 @_ZNK6icu_7821TimeArrayTimeZoneRule11getTimeTypeEv(ptr noundef nonnull align 8 dereferenceable(352) %i.du)
          to label %.preheader370 unwind label %.loopexit.split-lp ; 2 uses

.preheader370:                                    ; preds = %bb.ca
  %i.fd = icmp sgt i32 %i.fb, 0
  br i1 %i.fd, label %.lr.ph412, label %._crit_edge413

.lr.ph412:                                        ; preds = %.preheader370, %bb.cj
  %.0142411 = phi i32 [ %i.fr, %bb.cj ], [ 0, %.preheader370 ] ; 3 uses
  %i.fe = invoke noundef signext i8 @_ZNK6icu_7821TimeArrayTimeZoneRule14getStartTimeAtEiRd(ptr noundef nonnull align 8 dereferenceable(352) %i.du, i32 noundef %.0142411, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.cb unwind label %.loopexit ; 0 uses

bb.cb:                                            ; preds = %.lr.ph412
  switch i32 %i.fc, label %._crit_edge443 [
    i32 1, label %bb.cc
    i32 0, label %bb.cf
  ]

._crit_edge443:                                   ; preds = %bb.cb
  %.pre444 = load double, ptr %i.d, align 8, !tbaa !40
  br label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  %i.ff = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.cd unwind label %.loopexit

bb.cd:                                            ; preds = %bb.cc
  %i.fg = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ff)
          to label %bb.ce unwind label %.loopexit

bb.ce:                                            ; preds = %bb.cd
  %i.fh = sitofp i32 %i.fg to double
  %i.fi = load double, ptr %i.d, align 8, !tbaa !40
  %i.fj = fsub double %i.fi, %i.fh                ; 2 uses
  store double %i.fj, ptr %i.d, align 8, !tbaa !40
  br label %bb.ci

.loopexit:                                        ; preds = %.lr.ph412, %bb.cc, %bb.cd, %bb.cf, %bb.cg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryIdED2Ev.exit281

.loopexit.split-lp:                               ; preds = %bb.bz, %bb.ca
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryIdED2Ev.exit281

bb.cf:                                            ; preds = %bb.cb
  %i.fk = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition7getFromEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.cg unwind label %.loopexit

bb.cg:                                            ; preds = %bb.cf
  %i.fl = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fk)
          to label %bb.ch unwind label %.loopexit

bb.ch:                                            ; preds = %bb.cg
  %i.fm = sitofp i32 %i.fl to double
  %i.fn = load double, ptr %i.d, align 8, !tbaa !40
  %i.fo = fsub double %i.fn, %i.fm                ; 2 uses
  store double %i.fo, ptr %i.d, align 8, !tbaa !40
  br label %bb.ci

bb.ci:                                            ; preds = %._crit_edge443, %bb.ce, %bb.ch
  %i.fp = phi double [ %.pre444, %._crit_edge443 ], [ %i.fj, %bb.ce ], [ %i.fo, %bb.ch ]
  %i.fq = fcmp ogt double %i.fp, %1
  br i1 %i.fq, label %._crit_edge413, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fr = add nuw nsw i32 %.0142411, 1            ; 2 uses
end_hunk_0
