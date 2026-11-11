Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/vtzone?download=true
inline.NumInlined: 686
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6icu_78L17createRuleByRRULEERKNS_13UnicodeStringEiidPNS_7UVectorEiR10UErrorCode:bb.a

bb.ag:                                            ; preds = %bb.ae
  %i.fs = load double, ptr %i.g, align 8, !tbaa !45 ; 2 uses
  %i.ft = fcmp ogt double %i.fs, %spec.store.select253262
  %spec.store.select = select i1 %i.ft, double %i.fs, double %spec.store.select253262 ; 2 uses
  %i.fu = load i32, ptr %i.h, align 4, !tbaa !43  ; 11 uses
  %i.fv = icmp eq i32 %i.fu, -1
  %i.fw = load i32, ptr %i.i, align 4             ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  %or.cond11 = select i1 %i.fv, i1 true, i1 %i.fx
  %i.fy = load i32, ptr %i.l, align 4             ; 6 uses
  %i.fz = icmp eq i32 %i.fy, 0
  %or.cond13 = select i1 %or.cond11, i1 true, i1 %i.fz
  br i1 %or.cond13, label %.thread227, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ga = add nsw i32 %i.fm, %i.fy                ; 3 uses
  %i.gb = icmp slt i32 %i.ga, 8
  %.not193 = icmp eq i32 %i.fw, %i.ed
  %or.cond201 = select i1 %i.gb, i1 %.not193, i1 false
  br i1 %or.cond201, label %bb.ai, label %.thread227

bb.ai:                                            ; preds = %bb.ah
  %.not194 = icmp eq i32 %i.fu, %i.eb
  br i1 %.not194, label %.thread207, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gc = icmp eq i32 %.0138265, -1
  br i1 %i.gc, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.gd = sub nsw i32 %i.fu, %i.eb
  switch i32 %i.gd, label %.thread227 [
    i32 -1, label %.thread207
    i32 -11, label %.thread207
    i32 11, label %bb.al
    i32 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  br label %.thread207

bb.am:                                            ; preds = %bb.aj
  %.not195 = icmp eq i32 %i.fu, %.0138265
  br i1 %.not195, label %.thread207, label %.thread227

.thread207:                                       ; preds = %bb.ak, %bb.ak, %bb.al, %bb.am, %bb.ai
  %.3151 = phi i32 [ %.0148263, %bb.ai ], [ %.0148263, %bb.am ], [ %i.fu, %bb.ak ], [ %i.fu, %bb.ak ], [ %.0148263, %bb.al ] ; 3 uses
  %.4147 = phi i32 [ %.1144264, %bb.ai ], [ %.1144264, %bb.am ], [ 31, %bb.ak ], [ 31, %bb.ak ], [ %.1144264, %bb.al ] ; 3 uses
  %.3141 = phi i32 [ %.0138265, %bb.ai ], [ %.0138265, %bb.am ], [ %i.fu, %bb.ak ], [ %i.fu, %bb.ak ], [ %i.fu, %bb.al ]
  %i.ge = icmp eq i32 %i.fu, %.3151
  %i.gf = icmp sgt i32 %i.fy, 0
  %or.cond276 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond276, label %.lr.ph251, label %.loopexit

.lr.ph251:                                        ; preds = %.thread207
  %i.gg = sext i32 %i.fu to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr @_ZN6icu_78L11MONTHLENGTHE, i64 %i.gg ; 3 uses
  %wide.trip.count293 = zext nneg i32 %i.fy to i64 ; 2 uses
  %xtraiter394 = and i64 %wide.trip.count293, 1
  %i.gi = icmp eq i32 %i.fy, 1
  br i1 %i.gi, label %.epil.preheader393, label %.lr.ph251.new

.lr.ph251.new:                                    ; preds = %.lr.ph251
  %unroll_iter398 = and i64 %wide.trip.count293, 2147483646
  br label %bb.an

bb.an:                                            ; preds = %bb.ar, %.lr.ph251.new
  %indvars.iv290 = phi i64 [ 0, %.lr.ph251.new ], [ %indvars.iv.next291.1, %bb.ar ] ; 3 uses
  %.5249 = phi i32 [ %.4147, %.lr.ph251.new ], [ %..5.1, %bb.ar ]
  %niter399 = phi i64 [ 0, %.lr.ph251.new ], [ %niter399.next.1, %bb.ar ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv290 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !43 ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gm = load i32, ptr %i.gh, align 4, !tbaa !43
  %i.gn = add nsw i32 %i.gk, 1
  %i.go = add i32 %i.gn, %i.gm
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.gp = phi i32 [ %i.go, %bb.ao ], [ %i.gk, %bb.an ] ; 2 uses
  store i32 %i.gp, ptr %i.gj, align 8, !tbaa !43
  %..5 = call i32 @llvm.smin.i32(i32 %i.gp, i32 %.5249)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv290
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !43 ; 3 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gu = load i32, ptr %i.gh, align 4, !tbaa !43
  %i.gv = add nsw i32 %i.gs, 1
  %i.gw = add i32 %i.gv, %i.gu
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gx = phi i32 [ %i.gw, %bb.aq ], [ %i.gs, %bb.ap ] ; 2 uses
  store i32 %i.gx, ptr %i.gr, align 4, !tbaa !43
  %..5.1 = call i32 @llvm.smin.i32(i32 %i.gx, i32 %..5) ; 3 uses
  %indvars.iv.next291.1 = add nuw nsw i64 %indvars.iv290, 2 ; 2 uses
  %niter399.next.1 = add i64 %niter399, 2         ; 2 uses
  %niter399.ncmp.1 = icmp eq i64 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.an, !llvm.loop !76

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ar
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %.loopexit, label %.epil.preheader393

.epil.preheader393:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph251
  %indvars.iv290.epil.init = phi i64 [ 0, %.lr.ph251 ], [ %indvars.iv.next291.1, %.loopexit.loopexit.unr-lcssa ]
  %.5249.epil.init = phi i32 [ %.4147, %.lr.ph251 ], [ %..5.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod397 = trunc i32 %i.fy to i1
  call void @llvm.assume(i1 %lcmp.mod397)
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv290.epil.init ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !43 ; 3 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.loopexit.loopexit.epilog-lcssa, label %bb.as

bb.as:                                            ; preds = %.epil.preheader393
  %i.hb = load i32, ptr %i.gh, align 4, !tbaa !43
  %i.hc = add nsw i32 %i.gz, 1
  %i.hd = add i32 %i.hc, %i.hb
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.as, %.epil.preheader393
  %i.he = phi i32 [ %i.hd, %bb.as ], [ %i.gz, %.epil.preheader393 ] ; 2 uses
  store i32 %i.he, ptr %i.gy, align 4, !tbaa !43
  %..5.epil = call i32 @llvm.smin.i32(i32 %i.he, i32 %.5249.epil.init)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %.thread207
  %.6 = phi i32 [ %.4147, %.thread207 ], [ %..5.1, %.loopexit.loopexit.unr-lcssa ], [ %..5.epil, %.loopexit.loopexit.epilog-lcssa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %i.hf = add nuw nsw i32 %.3133266, 1            ; 2 uses
  %i.hg = load i32, ptr %i.s, align 8, !tbaa !41
  %i.hh = icmp slt i32 %i.hf, %i.hg
  br i1 %i.hh, label %.lr.ph267, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %.loopexit, %.preheader236
  %.lcssa = phi i32 [ %i.ef, %.preheader236 ], [ %i.ga, %.loopexit ]
  %spec.store.select253.lcssa = phi double [ %.promoted, %.preheader236 ], [ %spec.store.select, %.loopexit ]
  %.0148.lcssa = phi i32 [ %i.eb, %.preheader236 ], [ %.3151, %.loopexit ]
  %.1144.lcssa = phi i32 [ %.0143.lcssa, %.preheader236 ], [ %.6, %.loopexit ]
  store double %spec.store.select253.lcssa, ptr %i.f, align 8
  %.not190 = icmp eq i32 %.lcssa, 7
  br i1 %.not190, label %.thread220, label %.thread223

.thread220:                                       ; preds = %._crit_edge
  store i32 %.0148.lcssa, ptr %i.a, align 4, !tbaa !43
  br label %.thread203

.thread227:                                       ; preds = %bb.ak, %bb.ah, %bb.ag, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %.thread223

bb.at:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.bo

.thread203:                                       ; preds = %.preheader.5, %.thread220, %bb.g
  %.2167 = phi i32 [ %.1144.lcssa, %.thread220 ], [ 0, %bb.g ], [ %spec.select.6, %.preheader.5 ] ; 2 uses
  %i.hi = sitofp i32 %5 to double
  %i.hj = fadd double %3, %i.hi
  invoke void @_ZN6icu_785Grego12timeToFieldsEdRiRaS2_S1_R10UErrorCode(double noundef %i.hj, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %.thread203
  %i.hk = load i32, ptr %6, align 4, !tbaa !38
  %i.hl = icmp slt i32 %i.hk, 1
  br i1 %i.hl, label %bb.av, label %bb.bo

bb.av:                                            ; preds = %bb.au
  %i.hm = load i32, ptr %i.a, align 4, !tbaa !43  ; 2 uses
  %i.hn = icmp eq i32 %i.hm, -1
  %i.ho = load i8, ptr %i.o, align 1
  %i.hp = sext i8 %i.ho to i32
  %i.hq = select i1 %i.hn, i32 %i.hp, i32 %i.hm   ; 3 uses
  %i.hr = load i32, ptr %i.b, align 4, !tbaa !43  ; 3 uses
  %i.hs = icmp eq i32 %i.hr, 0                    ; 3 uses
  %i.ht = load i32, ptr %i.c, align 4             ; 2 uses
  %i.hu = icmp eq i32 %i.ht, 0                    ; 3 uses
  %or.cond19 = select i1 %i.hs, i1 %i.hu, i1 false ; 2 uses
  %i.hv = icmp eq i32 %.2167, 0                   ; 2 uses
  %or.cond21 = select i1 %or.cond19, i1 %i.hv, i1 false
  %i.hw = load i8, ptr %i.p, align 1
  %i.hx = sext i8 %i.hw to i32
  %.3168 = select i1 %or.cond21, i32 %i.hx, i32 %.2167 ; 3 uses
  %i.hy = load double, ptr %i.f, align 8, !tbaa !45 ; 2 uses
  %i.hz = fcmp une double %i.hy, f0xC384763B62073280
  br i1 %i.hz, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ia = invoke noundef i32 @_ZN6icu_785Grego10timeToYearEdR10UErrorCode(double noundef %i.hy, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  %i.ib = load i32, ptr %6, align 4, !tbaa !38
  %i.ic = icmp slt i32 %i.ib, 1
  br i1 %i.ic, label %bb.az, label %bb.bo

bb.ay:                                            ; preds = %bb.av
  %i.id = load i32, ptr @_ZN6icu_7818AnnualTimeZoneRule8MAX_YEARE, align 4, !tbaa !43
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.0137 = phi i32 [ %i.ia, %bb.ax ], [ %i.id, %bb.ay ]
  %i.ie = icmp ne i32 %.3168, 0                   ; 2 uses
  %or.cond25 = select i1 %or.cond19, i1 %i.ie, i1 false
  br i1 %or.cond25, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.if = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #18 ; 4 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %.thread223, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ih = load i32, ptr %i.n, align 4, !tbaa !43
  invoke void @_ZN6icu_7812DateTimeRuleC1EiiiNS0_12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(36) %i.if, i32 noundef %i.hq, i32 noundef %.3168, i32 noundef %i.ih, i32 noundef 0)
          to label %bb.bl unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.if) #18
  br label %bb.bp

bb.bd:                                            ; preds = %bb.az
  %i.ij = select i1 %i.hs, i1 true, i1 %i.hu
  %or.cond27 = xor i1 %i.ij, true
  %i.ik = select i1 %or.cond27, i1 %i.hv, i1 false
  br i1 %i.ik, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.il = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #18 ; 4 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %.thread223, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.in = load i32, ptr %i.n, align 4, !tbaa !43
  invoke void @_ZN6icu_7812DateTimeRuleC1EiiiiNS0_12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(36) %i.il, i32 noundef %i.hq, i32 noundef %i.ht, i32 noundef %i.hr, i32 noundef %i.in, i32 noundef 0)
          to label %bb.bl unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.il) #18
  br label %bb.bp

bb.bh:                                            ; preds = %bb.bd
  %.not = xor i1 %i.hs, true
  %or.cond31 = select i1 %.not, i1 %i.hu, i1 false
  %or.cond33 = select i1 %or.cond31, i1 %i.ie, i1 false
  br i1 %or.cond33, label %bb.bi, label %.thread223

bb.bi:                                            ; preds = %bb.bh
  %i.ip = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #18 ; 4 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %.thread223, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ir = load i32, ptr %i.n, align 4, !tbaa !43
  invoke void @_ZN6icu_7812DateTimeRuleC1EiiiaiNS0_12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(36) %i.ip, i32 noundef %i.hq, i32 noundef %.3168, i32 noundef %i.hr, i8 noundef signext 1, i32 noundef %i.ir, i32 noundef 0)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ip) #18
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bb, %bb.bf, %bb.bj
  %.0136 = phi ptr [ %i.ip, %bb.bj ], [ %i.if, %bb.bb ], [ %i.il, %bb.bf ]
  %i.it = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 96) #18 ; 4 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iv = load i32, ptr %i.m, align 4, !tbaa !43
  invoke void @_ZN6icu_7818AnnualTimeZoneRuleC1ERKNS_13UnicodeStringEiiPNS_12DateTimeRuleEii(ptr noundef nonnull align 8 dereferenceable(96) %i.it, ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %.0136, i32 noundef %i.iv, i32 noundef %.0137)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.it) #18
  br label %bb.bp

.thread223:                                       ; preds = %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader233, %bb.bi, %bb.be, %bb.ba, %bb.bh, %._crit_edge, %.thread227, %bb.v, %bb.h
  store i32 27, ptr %6, align 4, !tbaa !38
  br label %bb.bo

bb.bo:                                            ; preds = %bb.at, %bb.bl, %bb.bm, %bb.ax, %bb.au, %bb.e, %.thread223
  %.3 = phi ptr [ null, %bb.at ], [ null, %.thread223 ], [ null, %bb.e ], [ null, %bb.ax ], [ null, %bb.au ], [ null, %bb.bl ], [ %i.it, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bq

bb.bp:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af, %bb.bn, %bb.bk, %bb.bg, %bb.bc
  %.pn199 = phi { ptr, i32 } [ %i.iw, %bb.bn ], [ %i.is, %bb.bk ], [ %i.ii, %bb.bc ], [ %i.fr, %bb.af ], [ %i.io, %bb.bg ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn199

bb.bq:                                            ; preds = %bb.a, %bb.bo, %bb.c
  %.4 = phi ptr [ %.3, %bb.bo ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN6icu_78L17createRuleByRDATEERKNS_13UnicodeStringEiidPNS_7UVectorEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef range(i32 0, -2147483648) %2, double noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  store double %3, ptr %i.a, align 8, !tbaa !45
  %i.b = load i32, ptr %6, align 4, !tbaa !38
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.critedge60

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41   ; 5 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 352) #18 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6icu_7821TimeArrayTimeZoneRuleC1ERKNS_13UnicodeStringEiiPKdiNS_12DateTimeRule12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(352) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 2)
          to label %.critedge60 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.g) #18
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.j = sext i32 %i.e to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.k) #19 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not5566 = icmp sgt i32 %i.e, 0
  br i1 %.not5566, label %.critedge.preheader, label %.critedge58

.critedge.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %6, align 4, !tbaa !38
  br label %.critedge60

bb.h:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge58, label %.critedge, !llvm.loop !78

.critedge:                                        ; preds = %.critedge.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %i.n)
  %i.p = tail call fastcc noundef double @_ZN6icu_78L19parseDateTimeStringERKNS_13UnicodeStringEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  store double %i.p, ptr %i.q, align 8, !tbaa !45
  %i.r = load i32, ptr %6, align 4, !tbaa !38
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.i

bb.i:                                             ; preds = %.critedge
  tail call void @uprv_free_78(ptr noundef nonnull %i.l)
  br label %.critedge60

.critedge58:                                      ; preds = %bb.h, %.preheader
  %i.t = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 352) #18 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread65, label %bb.j

.thread65:                                        ; preds = %.critedge58
  tail call void @uprv_free_78(ptr noundef nonnull %i.l)
  br label %.thread

bb.j:                                             ; preds = %.critedge58
  invoke void @_ZN6icu_7821TimeArrayTimeZoneRuleC1ERKNS_13UnicodeStringEiiPKdiNS_12DateTimeRule12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(352) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.l, i32 noundef %i.e, i32 noundef 2)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.t) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @uprv_free_78(ptr noundef nonnull %i.l)
  br label %.critedge60

.thread:                                          ; preds = %bb.c, %.thread65
  store i32 7, ptr %6, align 4, !tbaa !38
  br label %.critedge60

bb.m:                                             ; preds = %bb.e, %bb.k
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.v, %bb.k ]
  resume { ptr, i32 } %.pn

.critedge60:                                      ; preds = %bb.d, %bb.l, %bb.i, %.thread, %bb.g, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ %i.t, %bb.l ], [ null, %.thread ], [ null, %bb.i ], [ null, %bb.g ], [ %i.g, %bb.d ]
  ret ptr %.5
}

declare void @_ZN6icu_7819InitialTimeZoneRuleC1ERKNS_13UnicodeStringEii(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) unnamed_addr #5

declare void @_ZN6icu_7817RuleBasedTimeZoneC1ERKNS_13UnicodeStringEPNS_19InitialTimeZoneRuleE(ptr noundef nonnull align 8 dereferenceable(105), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11
end_hunk_0
