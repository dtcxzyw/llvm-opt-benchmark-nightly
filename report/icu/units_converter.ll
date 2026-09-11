Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/units_converter?download=true
inline.NumInlined: 208
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
._crit_edge.i.i:                                  ; preds = %bb.m, %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !101
  store i32 0, ptr %4, align 8, !tbaa !25, !noalias !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !101
  store <2 x ptr> <ptr @.str.20, ptr @.str.20>, ptr %i.t, align 8, !tbaa !62, !noalias !101
  store i16 0, ptr %i.u, align 8, !tbaa !28, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !101
  %i.dw = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %4, ptr noundef %i.dj, i32 noundef %i.dk, ptr noundef nonnull %i.a), !noalias !101
  %i.dx = load i32, ptr %i.a, align 4, !tbaa !14, !noalias !101
  %.not.i30.i.i = icmp eq i32 %i.dx, %i.dk
  br i1 %.not.i30.i.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i
  store i32 3, ptr %3, align 4, !tbaa !30, !noalias !101
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i: ; preds = %bb.q, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !101
  br label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread: ; preds = %bb.b, %.loopexit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %.loopexit

_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit: ; preds = %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i
  %.0.i.i = phi double [ %i.dv, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i ], [ %i.dw, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !101
  %.pre = load i32, ptr %3, align 4, !tbaa !30
  %i.dy = icmp slt i32 %.pre, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br i1 %i.dy, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit
  %i.dz = load i32, ptr %i.ac, align 4, !tbaa !105 ; 3 uses
  %i.ea = icmp eq i32 %i.dz, 30
  br i1 %i.ea, label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = call i32 @umeas_getPrefixPower_78(i32 noundef %i.dz) ; 2 uses
  %i.ec = call i32 @umeas_getPrefixBase_78(i32 noundef %i.dz)
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = call i32 @llvm.abs.i32(i32 %i.eb, i1 true)
  %i.ef = uitofp nneg i32 %i.ee to double
  %i.eg = call double @pow(double noundef %i.ed, double noundef %i.ef) #19 ; 2 uses
  %i.eh = icmp sgt i32 %i.eb, -1
  br i1 %i.eh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ei = load double, ptr %16, align 16, !tbaa !18
  %i.ej = fmul double %i.eg, %i.ei
  store double %i.ej, ptr %16, align 16, !tbaa !18
  br label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit

bb.u:                                             ; preds = %bb.s
  %i.ek = load double, ptr %i.l, align 8, !tbaa !19
  %i.el = fmul double %i.eg, %i.ek
  store double %i.el, ptr %i.l, align 8, !tbaa !19
  br label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit

_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit: ; preds = %bb.r, %bb.t, %bb.u
  %i.em = load i32, ptr %i.ad, align 4, !tbaa !50 ; 17 uses
  %i.en = load i32, ptr %scevgep.i15, align 4, !tbaa !14
  %i.eo = mul nsw i32 %i.en, %i.em                ; 2 uses
  store i32 %i.eo, ptr %scevgep.i15, align 4, !tbaa !14
  %i.ep = load i32, ptr %i.ae, align 16, !tbaa !14
  %i.eq = mul nsw i32 %i.ep, %i.em                ; 2 uses
  store i32 %i.eq, ptr %i.ae, align 16, !tbaa !14
  %i.er = load i32, ptr %i.af, align 4, !tbaa !14
  %i.es = mul nsw i32 %i.er, %i.em                ; 2 uses
  store i32 %i.es, ptr %i.af, align 4, !tbaa !14
  %i.et = load i32, ptr %i.ag, align 8, !tbaa !14
  %i.eu = mul nsw i32 %i.et, %i.em                ; 2 uses
  store i32 %i.eu, ptr %i.ag, align 8, !tbaa !14
  %i.ev = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.ew = mul nsw i32 %i.ev, %i.em                ; 2 uses
  store i32 %i.ew, ptr %i.ah, align 4, !tbaa !14
  %i.ex = load i32, ptr %i.ai, align 16, !tbaa !14
  %i.ey = mul nsw i32 %i.ex, %i.em                ; 2 uses
  store i32 %i.ey, ptr %i.ai, align 16, !tbaa !14
  %i.ez = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.fa = mul nsw i32 %i.ez, %i.em                ; 2 uses
  store i32 %i.fa, ptr %i.aj, align 4, !tbaa !14
  %i.fb = load i32, ptr %i.ak, align 8, !tbaa !14
  %i.fc = mul nsw i32 %i.fb, %i.em                ; 2 uses
  store i32 %i.fc, ptr %i.ak, align 8, !tbaa !14
  %i.fd = load i32, ptr %i.al, align 4, !tbaa !14
  %i.fe = mul nsw i32 %i.fd, %i.em                ; 2 uses
  store i32 %i.fe, ptr %i.al, align 4, !tbaa !14
  %i.ff = load i32, ptr %i.am, align 16, !tbaa !14
  %i.fg = mul nsw i32 %i.ff, %i.em                ; 2 uses
  store i32 %i.fg, ptr %i.am, align 16, !tbaa !14
  %i.fh = load i32, ptr %i.an, align 4, !tbaa !14
  %i.fi = mul nsw i32 %i.fh, %i.em                ; 2 uses
  store i32 %i.fi, ptr %i.an, align 4, !tbaa !14
  %i.fj = load i32, ptr %i.ao, align 8, !tbaa !14
  %i.fk = mul nsw i32 %i.fj, %i.em                ; 2 uses
  store i32 %i.fk, ptr %i.ao, align 8, !tbaa !14
  %i.fl = load i32, ptr %i.ap, align 4, !tbaa !14
  %i.fm = mul nsw i32 %i.fl, %i.em                ; 2 uses
  store i32 %i.fm, ptr %i.ap, align 4, !tbaa !14
  %i.fn = load i32, ptr %i.aq, align 16, !tbaa !14
  %i.fo = mul nsw i32 %i.fn, %i.em                ; 2 uses
  store i32 %i.fo, ptr %i.aq, align 16, !tbaa !14
  %i.fp = load i32, ptr %i.ar, align 4, !tbaa !14
  %i.fq = mul nsw i32 %i.fp, %i.em                ; 2 uses
  store i32 %i.fq, ptr %i.ar, align 4, !tbaa !14
  %i.fr = icmp slt i32 %i.em, 0                   ; 2 uses
  %i.fs = load double, ptr %16, align 16, !tbaa !18
  %i.ft = call i32 @llvm.abs.i32(i32 %i.em, i1 true)
  %i.fu = uitofp nneg i32 %i.ft to double         ; 2 uses
  %i.fv = call noundef double @pow(double noundef %i.fs, double noundef %i.fu) #19 ; 3 uses
  store double %i.fv, ptr %16, align 16, !tbaa !18
  %i.fw = load double, ptr %i.l, align 8, !tbaa !19
  %i.fx = call noundef double @pow(double noundef %i.fw, double noundef %i.fu) #19 ; 2 uses
  %i.fy = select i1 %i.fr, double %i.fv, double %i.fx
  %i.fz = select i1 %i.fr, double %i.fx, double %i.fv
  %i.ga = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fy, i64 1
  %i.gc = fmul <2 x double> %i.gb, %i.bw          ; 3 uses
  store <2 x double> %i.gc, ptr %0, align 8, !tbaa !13
  %i.gd = add nsw i32 %i.bv, %i.eo                ; 2 uses
  store i32 %i.gd, ptr %scevgep.i, align 4, !tbaa !14
  %i.ge = add nsw i32 %i.bu, %i.eq                ; 2 uses
  store i32 %i.ge, ptr %i.as, align 8, !tbaa !14
  %i.gf = add nsw i32 %i.bt, %i.es                ; 2 uses
  store i32 %i.gf, ptr %i.at, align 4, !tbaa !14
  %i.gg = add nsw i32 %i.bs, %i.eu                ; 2 uses
  store i32 %i.gg, ptr %i.au, align 8, !tbaa !14
  %i.gh = add nsw i32 %i.br, %i.ew                ; 2 uses
  store i32 %i.gh, ptr %i.av, align 4, !tbaa !14
  %i.gi = add nsw i32 %i.bq, %i.ey                ; 2 uses
  store i32 %i.gi, ptr %i.aw, align 8, !tbaa !14
  %i.gj = add nsw i32 %i.bp, %i.fa                ; 2 uses
  store i32 %i.gj, ptr %i.ax, align 4, !tbaa !14
  %i.gk = add nsw i32 %i.bo, %i.fc                ; 2 uses
  store i32 %i.gk, ptr %i.ay, align 8, !tbaa !14
  %i.gl = add nsw i32 %i.bn, %i.fe                ; 2 uses
  store i32 %i.gl, ptr %i.az, align 4, !tbaa !14
  %i.gm = add nsw i32 %i.bm, %i.fg                ; 2 uses
  store i32 %i.gm, ptr %i.ba, align 8, !tbaa !14
  %i.gn = add nsw i32 %i.bl, %i.fi                ; 2 uses
  store i32 %i.gn, ptr %i.bb, align 4, !tbaa !14
  %i.go = add nsw i32 %i.bk, %i.fk                ; 2 uses
  store i32 %i.go, ptr %i.bc, align 8, !tbaa !14
  %i.gp = add nsw i32 %i.bj, %i.fm                ; 2 uses
  store i32 %i.gp, ptr %i.bd, align 4, !tbaa !14
  %i.gq = add nsw i32 %i.bi, %i.fo                ; 2 uses
  store i32 %i.gq, ptr %i.be, align 8, !tbaa !14
  %i.gr = add nsw i32 %i.bh, %i.fq                ; 2 uses
  store i32 %i.gr, ptr %i.bf, align 4, !tbaa !14
  %i.gs = fcmp olt double %.0.i.i, %i.bg
  %i.gt = select i1 %i.gs, double %i.bg, double %.0.i.i ; 2 uses
  store double %i.gt, ptr %i.e, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !99

.loopexit:                                        ; preds = %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit, %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.w

._crit_edge.loopexit:                             ; preds = %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit
  %i.gu = extractelement <2 x double> %i.gc, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.gv = phi double [ 1.000000e+00, %bb.a ], [ %i.gu, %._crit_edge.loopexit ]
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !63 ; 2 uses
  %.not14 = icmp eq i64 %i.gx, 0
  br i1 %.not14, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.gy = uitofp i64 %i.gx to double
  %i.gz = fmul double %i.gv, %i.gy
  store double %i.gz, ptr %i.d, align 8, !tbaa !19
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %._crit_edge, %bb.v
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK6icu_785units14UnitsConverter11scaleToBaseEdPdi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(296) %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fneg double %1
  %.0 = select i1 %i.a, double %i.b, double %1
  %i.c = fadd double %.0, 5.000000e-01            ; 2 uses
  %i.d = sitofp i32 %3 to double                  ; 2 uses
  %i.e = fcmp ogt double %i.c, %i.d
  %.1 = select i1 %i.e, double %i.d, double %i.c
  %i.f = fptosi double %.1 to i32
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 2 uses
  %4 = load double, ptr %i.h, align 8, !tbaa !13
  %5 = getelementptr i8, ptr %i.h, i64 8
  %6 = load double, ptr %5, align 8, !tbaa !13
  %7 = fadd double %4, %6
  %i.i = fmul double %7, 5.000000e-01
  ret double %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(296) %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fneg double %1
  %.0 = select i1 %i.a, double %i.b, double %1    ; 3 uses
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load double, ptr %i.d, align 8, !tbaa !13
  %i.f = fcmp ult double %.0, %i.e
  br i1 %i.f, label %bb.b, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %3, -1
  br i1 %i.g, label %.lr.ph.preheader.i, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = add nuw nsw i32 %3, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.025.i = phi i32 [ %.1.i, %bb.d ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %.02024.i = phi i32 [ %.121.i, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.i = add nuw nsw i32 %.02024.i, %.025.i
  %i.j = lshr i32 %i.i, 1                         ; 5 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !13
  %i.n = fcmp olt double %.0, %i.m
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add nuw nsw i32 %i.j, 1                  ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !13
  %i.s = fcmp ogt double %.0, %i.r
  br i1 %i.s, label %bb.d, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.121.i = phi i32 [ %.02024.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 2 uses
  %.1.i = phi i32 [ %i.j, %.lr.ph.i ], [ %.025.i, %bb.c ] ; 2 uses
  %i.t = icmp slt i32 %.121.i, %.1.i
  br i1 %i.t, label %.lr.ph.i, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit, !llvm.loop !3

_ZN6icu_785unitsL13bsearchRangesEPdid.exit:       ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.022.i = phi i32 [ %3, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  %i.u = sitofp i32 %.022.i to double
  ret double %i.u
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK6icu_785units14UnitsConverter7convertEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, double noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.l, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(9) @.str.19) #22
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = fcmp olt double %1, 0.000000e+00
  %i.j = fneg double %1
  %.0.i = select i1 %i.i, double %i.j, double %1
  %i.k = fadd double %.0.i, 5.000000e-01          ; 2 uses
  %i.l = fcmp ogt double %i.k, 1.700000e+01
  %.1.i = select i1 %i.l, double 1.700000e+01, double %i.k
  %i.m = fptosi double %.1.i to i32
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.n ; 2 uses
  %2 = load double, ptr %i.o, align 8, !tbaa !13
  %3 = getelementptr i8, ptr %i.o, i64 8
  %4 = load double, ptr %3, align 8, !tbaa !13
  %5 = fadd double %2, %4
  %i.p = fmul double %5, 5.000000e-01
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load double, ptr %i.q, align 8, !tbaa !75
  %i.s = fmul double %1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = load double, ptr %i.t, align 8, !tbaa !76
  %i.v = fdiv double %i.s, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi double [ %i.v, %bb.e ], [ %i.p, %bb.d ], [ %1, %bb.c ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(9) @.str.19) #22
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = fcmp olt double %.0, 0.000000e+00
  %i.ac = fneg double %.0
  %.0.i21 = select i1 %i.ab, double %i.ac, double %.0 ; 3 uses
  %i.ad = fcmp ult double %.0.i21, 5.580000e+01
  br i1 %i.ad, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.j
  %.025.i.i = phi i32 [ %.1.i.i, %bb.j ], [ 18, %bb.h ] ; 2 uses
  %.02024.i.i = phi i32 [ %.121.i.i, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.ae = add nuw nsw i32 %.02024.i.i, %.025.i.i
  %i.af = lshr i32 %i.ae, 1                       ; 4 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13
  %i.aj = fcmp olt double %.0.i21, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ak = add nuw nsw i32 %i.af, 1                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !13
  %i.ao = fcmp ogt double %.0.i21, %i.an
  br i1 %i.ao, label %bb.j, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.121.i.i = phi i32 [ %.02024.i.i, %.lr.ph.i.i ], [ %i.ak, %bb.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.af, %.lr.ph.i.i ], [ %.025.i.i, %bb.i ] ; 2 uses
  %i.ap = icmp slt i32 %.121.i.i, %.1.i.i
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, !llvm.loop !3

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit: ; preds = %bb.j, %bb.i
  %i.aq = uitofp nneg i32 %i.af to double
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.k:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.as = load double, ptr %i.ar, align 8, !tbaa !76
  %i.at = fmul double %.0, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = load double, ptr %i.au, align 8, !tbaa !75
  %i.aw = fdiv double %i.at, %i.av
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.l:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !77
  %i.az = fadd double %1, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !75
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !76
  %i.be = fdiv double %i.bb, %i.bd
  %i.bf = fmul double %i.az, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !78
  %i.bi = fsub double %i.bf, %i.bh                ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !79, !range !80, !noundef !81
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.m, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.m:                                             ; preds = %bb.l
  %i.bm = fcmp oeq double %i.bi, 0.000000e+00
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bn = tail call double @uprv_getInfinity_78()
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.o:                                             ; preds = %bb.m
  %i.bo = fdiv double 1.000000e+00, %i.bi
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit: ; preds = %bb.h, %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, %bb.l, %bb.o, %bb.k, %bb.g, %bb.n
  %.018 = phi double [ %i.bn, %bb.n ], [ %.0, %bb.g ], [ %i.aw, %bb.k ], [ %i.bi, %bb.l ], [ %i.bo, %bb.o ], [ 1.700000e+01, %bb.h ], [ %i.aq, %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit ]
  ret double %.018
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare double @uprv_getInfinity_78() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK6icu_785units14UnitsConverter14convertInverseEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, double noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(9) @.str.19) #22
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = fcmp olt double %1, 0.000000e+00
  %i.j = fneg double %1
  %.0.i = select i1 %i.i, double %i.j, double %1
  %i.k = fadd double %.0.i, 5.000000e-01          ; 2 uses
  %i.l = fcmp ogt double %i.k, 1.700000e+01
  %.1.i = select i1 %i.l, double 1.700000e+01, double %i.k
  %i.m = fptosi double %.1.i to i32
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.n ; 2 uses
  %2 = load double, ptr %i.o, align 8, !tbaa !13
  %3 = getelementptr i8, ptr %i.o, i64 8
  %4 = load double, ptr %3, align 8, !tbaa !13
  %5 = fadd double %2, %4
  %i.p = fmul double %5, 5.000000e-01
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load double, ptr %i.q, align 8, !tbaa !75
  %i.s = fmul double %1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = load double, ptr %i.t, align 8, !tbaa !76
  %i.v = fdiv double %i.s, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi double [ %i.v, %bb.e ], [ %i.p, %bb.d ], [ %1, %bb.c ] ; 5 uses
  br i1 %i.c, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(9) @.str.19) #22
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.h:                                             ; preds = %bb.g
  %i.y = fcmp olt double %.0, 0.000000e+00
  %i.z = fneg double %.0
  %.0.i21 = select i1 %i.y, double %i.z, double %.0 ; 3 uses
  %i.aa = fcmp ult double %.0.i21, 5.580000e+01
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.j
  %.025.i.i = phi i32 [ %.1.i.i, %bb.j ], [ 18, %bb.h ] ; 2 uses
  %.02024.i.i = phi i32 [ %.121.i.i, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.ab = add nuw nsw i32 %.02024.i.i, %.025.i.i
  %i.ac = lshr i32 %i.ab, 1                       ; 4 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13
  %i.ag = fcmp olt double %.0.i21, %i.af
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ah = add nuw nsw i32 %i.ac, 1                ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !13
  %i.al = fcmp ogt double %.0.i21, %i.ak
  br i1 %i.al, label %bb.j, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.121.i.i = phi i32 [ %.02024.i.i, %.lr.ph.i.i ], [ %i.ah, %bb.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.ac, %.lr.ph.i.i ], [ %.025.i.i, %bb.i ] ; 2 uses
  %i.am = icmp slt i32 %.121.i.i, %.1.i.i
  br i1 %i.am, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, !llvm.loop !3

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit: ; preds = %bb.j, %bb.i
  %i.an = uitofp nneg i32 %i.ac to double
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.k:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !76
  %i.aq = fmul double %.0, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.as = load double, ptr %i.ar, align 8, !tbaa !75
  %i.at = fdiv double %i.aq, %i.as
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.l:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.av = load i8, ptr %i.au, align 8, !tbaa !79, !range !80, !noundef !81
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ax = fcmp oeq double %1, 0.000000e+00
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call double @uprv_getInfinity_78()
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.o:                                             ; preds = %bb.m
  %i.az = fdiv double 1.000000e+00, %1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.1 = phi double [ %i.az, %bb.o ], [ %1, %bb.l ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !78
  %i.bc = fadd double %.1, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.be = load double, ptr %i.bd, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !75
  %i.bh = fdiv double %i.be, %i.bg
  %i.bi = fmul double %i.bc, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !77
  %i.bl = fsub double %i.bi, %i.bk
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit: ; preds = %bb.h, %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, %bb.k, %bb.g, %bb.p, %bb.n
  %.018 = phi double [ %i.ay, %bb.n ], [ %i.bl, %bb.p ], [ %i.at, %bb.k ], [ %.0, %bb.g ], [ 1.700000e+01, %bb.h ], [ %i.an, %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit ]
  ret double %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK6icu_785units14UnitsConverter17getConversionInfoEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.icu_78::units::ConversionInfo") align 8 captures(none) initializes((0, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load double, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.d = load double, ptr %i.c, align 8, !tbaa !76
  %i.e = fdiv double %i.b, %i.d                   ; 2 uses
  store double %i.e, ptr %0, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.g = load double, ptr %i.f, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.i = load double, ptr %i.h, align 8, !tbaa !78
  %i.j = fneg double %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.g, double %i.e, double %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.k, ptr %i.l, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.n = load i8, ptr %i.m, align 8, !tbaa !79, !range !80, !noundef !81
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.n, ptr %i.o, align 8, !tbaa !109
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

declare noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydaEPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #15

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #15

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

declare void @_ZN6icu_785units21getAllConversionRatesERNS_16MaybeStackVectorINS0_18ConversionRateInfoELi8EEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i8, ptr %i.d, align 4, !tbaa !73
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  invoke void @uprv_free_78(ptr noundef %i.g)
          to label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #20
  unreachable

_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.j = phi i32 [ %i.a, %.lr.ph ], [ %i.aa, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112  ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.p) #19
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.r) #19
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.t) #19
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.v) #19
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.x) #19
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.z) #19
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.m) #19
  %.pre = load i32, ptr %0, align 8, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.j, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.d, label %._crit_edge, !llvm.loop !110
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr %1, i32 %2, i32 noundef range(i32 -1, 2) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  store ptr %1, ptr %8, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %i.b, align 8
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !74
  %i.f = icmp eq i8 %i.e, 94
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !113

bb.c:                                             ; preds = %.lr.ph
  %i.g = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef 0, i32 noundef %i.g)
  %.fca.0.load.i = load ptr, ptr %7, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = load i32, ptr @_ZN6icu_7811StringPiece4nposE, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef %i.h, i32 noundef %i.i)
  %.fca.0.load.i27 = load ptr, ptr %6, align 8
  %.fca.1.gep.i29 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.fca.1.load.i30 = load i32, ptr %.fca.1.gep.i29, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr @.str.20, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @.str.20, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i16 0, ptr %i.m, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.n = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %5, ptr noundef %.fca.0.load.i27, i32 noundef %.fca.1.load.i30, ptr noundef nonnull %i.a)
  %i.o = load i32, ptr %i.a, align 4, !tbaa !14
  %.not.i = icmp eq i32 %i.o, %.fca.1.load.i30
  br i1 %.not.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 3, ptr %4, align 4, !tbaa !30
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.p = fptosi double %i.n to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit
  %.sroa.032.0 = phi ptr [ %.fca.0.load.i, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit ], [ %1, %bb.a ], [ %1, %bb.b ]
  %.sroa.633.0 = phi i32 [ %.fca.1.load.i, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit ], [ %2, %bb.a ], [ %2, %bb.b ]
  %.0 = phi i32 [ %i.p, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  call void @_ZN6icu_785units23addSingleFactorConstantENS_11StringPieceEiNS0_6SignumERNS0_6FactorER10UErrorCode(ptr %.sroa.032.0, i32 %.sroa.633.0, i32 noundef %.0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void
}

declare void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"double", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!"bool", !8, i64 0}
!16 = !{!"_ZTSN6icu_785units6FactorE", !12, i64 0, !12, i64 8, !12, i64 16, !15, i64 24, !8, i64 28}
!17 = !{!16, !12, i64 16}
!18 = !{!16, !12, i64 0}
!19 = !{!16, !12, i64 8}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"any pointer", !8, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"short", !8, i64 0}
!24 = !{!"_ZTSN6icu_7817double_conversion23StringToDoubleConverterE", !9, i64 0, !12, i64 8, !12, i64 16, !22, i64 24, !22, i64 32, !23, i64 40}
!25 = !{!24, !9, i64 0}
!26 = !{!24, !22, i64 24}
!27 = !{!24, !22, i64 32}
!28 = !{!24, !23, i64 40}
!29 = !{!"_ZTS10UErrorCode", !8, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"_ZTSN6icu_7822UMeasureUnitComplexityE", !8, i64 0}
!32 = !{!"any p2 pointer", !21, i64 0}
!33 = !{!"p2 _ZTSN6icu_7814SingleUnitImplE", !32, i64 0}
!34 = !{!"_ZTSN6icu_7815MaybeStackArrayIPNS_14SingleUnitImplELi8EEE", !33, i64 0, !9, i64 8, !8, i64 12, !8, i64 16}
!35 = !{!"_ZTSN6icu_7810MemoryPoolINS_14SingleUnitImplELi8EEE", !9, i64 0, !34, i64 8}
!36 = !{!"_ZTSN6icu_7816MaybeStackVectorINS_14SingleUnitImplELi8EEE", !35, i64 0}
!37 = !{!"_ZTSN6icu_7811FixedStringE", !22, i64 0}
!38 = !{!"long", !8, i64 0}
!39 = !{!"_ZTSN6icu_7815MeasureUnitImplE", !31, i64 0, !36, i64 8, !37, i64 96, !38, i64 104}
!40 = !{!39, !31, i64 0}
!41 = !{!35, !9, i64 0}
!42 = !{!34, !33, i64 0}
!43 = !{!34, !9, i64 8}
!44 = !{!34, !8, i64 12}
!45 = !{!"p1 _ZTSN6icu_7814SingleUnitImplE", !21, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!37, !22, i64 0}
!48 = !{!"_ZTSN6icu_7814UMeasurePrefixE", !8, i64 0}
!49 = !{!"_ZTSN6icu_7814SingleUnitImplE", !9, i64 0, !48, i64 4, !9, i64 8}
!50 = !{!49, !9, i64 8}
!51 = !{!"p2 _ZTSN6icu_785units12_GLOBAL__N_121UnitIndexAndDimensionE", !32, i64 0}
!52 = !{!"_ZTSN6icu_7815MaybeStackArrayIPNS_5units12_GLOBAL__N_121UnitIndexAndDimensionELi8EEE", !51, i64 0, !9, i64 8, !8, i64 12, !8, i64 16}
!53 = !{!"_ZTSN6icu_7810MemoryPoolINS_5units12_GLOBAL__N_121UnitIndexAndDimensionELi8EEE", !9, i64 0, !52, i64 8}
!54 = !{!53, !9, i64 0}
!55 = !{!52, !51, i64 0}
!56 = !{!52, !9, i64 8}
!57 = !{!52, !8, i64 12}
!58 = !{!"p1 _ZTSN6icu_785units12_GLOBAL__N_121UnitIndexAndDimensionE", !21, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"_ZTSN6icu_785units12_GLOBAL__N_121UnitIndexAndDimensionE", !9, i64 0, !9, i64 4}
!61 = !{!60, !9, i64 4}
!62 = !{!22, !22, i64 0}
!63 = !{!39, !38, i64 104}
!64 = !{!"_ZTSN6icu_785units14ConversionRateE", !39, i64 8, !39, i64 120, !37, i64 232, !37, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !15, i64 280}
!65 = !{!"_ZTSN6icu_785units14UnitsConverterE", !64, i64 8}
!66 = !{!65, !31, i64 16}
!67 = !{!65, !31, i64 128}
!68 = !{!"p2 _ZTSN6icu_785units18ConversionRateInfoE", !32, i64 0}
!69 = !{!"_ZTSN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EEE", !68, i64 0, !9, i64 8, !8, i64 12, !8, i64 16}
!70 = !{!"_ZTSN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EEE", !9, i64 0, !69, i64 8}
!71 = !{!70, !9, i64 0}
!72 = !{!69, !68, i64 0}
!73 = !{!69, !8, i64 12}
!74 = !{!8, !8, i64 0}
!75 = !{!65, !12, i64 256}
!76 = !{!65, !12, i64 264}
!77 = !{!65, !12, i64 272}
!78 = !{!65, !12, i64 280}
!79 = !{!65, !15, i64 288}
!80 = !{i8 0, i8 2}
!81 = !{}
!82 = !{!"branch_weights", i32 1, i32 1048575}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = !{!60, !9, i64 0}
!89 = !{!69, !9, i64 8}
!90 = !{!64, !12, i64 248}
!91 = !{!64, !12, i64 256}
!92 = !{!64, !15, i64 280}
!93 = distinct !{!93, !"_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode"}
!94 = distinct !{!94, !93, !"_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode: argument 0"}
!95 = distinct !{!95, !"_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode"}
!96 = distinct !{!96, !95, !"_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode: argument 0"}
!97 = distinct !{!97, !20, !104}
!98 = distinct !{!98, !20}
!99 = distinct !{!99, !20}
!100 = !{!16, !15, i64 24}
!101 = !{!94}
!102 = !{!96}
!103 = !{!96, !94}
!104 = !{!"llvm.loop.peeled.count", i32 1}
!105 = !{!49, !48, i64 4}
!106 = !{!"_ZTSN6icu_785units14ConversionInfoE", !12, i64 0, !12, i64 8, !15, i64 16}
!107 = !{!106, !12, i64 0}
!108 = !{!106, !12, i64 8}
!109 = !{!106, !15, i64 16}
!110 = distinct !{!110, !20}
!111 = !{!"p1 _ZTSN6icu_785units18ConversionRateInfoE", !21, i64 0}
!112 = !{!111, !111, i64 0}
!113 = distinct !{!113, !20}
end_hunk_0
