Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlot10FormatDateERK10ImPlotTimePciib:bb.a
bb.m:                                             ; preds = %bb.k
  %i.ae = sext i32 %2 to i64
  %i.af = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %1, i64 noundef %i.ae, ptr noundef nonnull @.str.70, i32 noundef %i.n, i32 noundef %i.k, i32 noundef %i.r) #32
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.ag = sext i32 %2 to i64
  %i.ah = sext i32 %i.m to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr @_ZN6ImPlotL11MONTH_ABRVSE, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.ak = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %1, i64 noundef %i.ag, ptr noundef nonnull @.str.71, ptr noundef %i.aj, i32 noundef %i.q) #32
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.al = sext i32 %2 to i64
  %i.am = sext i32 %i.m to i64
  %i.an = getelementptr inbounds [8 x i8], ptr @_ZN6ImPlotL11MONTH_ABRVSE, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !44
  %i.ap = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %1, i64 noundef %i.al, ptr noundef nonnull @.str.72, ptr noundef %i.ao) #32
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.aq = sext i32 %2 to i64
  %i.ar = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %1, i64 noundef %i.aq, ptr noundef nonnull @.str.68, i32 noundef %i.q) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.e, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i32 [ %i.ar, %bb.p ], [ %i.t, %bb.f ], [ %i.v, %bb.g ], [ %i.x, %bb.h ], [ %i.z, %bb.i ], [ %i.ab, %bb.j ], [ 0, %bb.e ], [ %i.ad, %bb.l ], [ %i.af, %bb.m ], [ %i.ak, %bb.n ], [ %i.ap, %bb.o ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6ImPlot14FormatDateTimeERK10ImPlotTimePci18ImPlotDateTimeSpec(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2, i64 %3, i32 %4) local_unnamed_addr #1 {
bb.a:
  %.sroa.012.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %3, 32      ; 3 uses
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.not = icmp eq i32 %.sroa.012.0.extract.trunc, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not16 = icmp eq i64 %.sroa.4.0.extract.shift, 0
  br i1 %.not16, label %bb.e, label %bb.d

.thread:                                          ; preds = %bb.a
  %i.a = trunc i32 %4 to i1
  %i.b = tail call noundef i32 @_ZN6ImPlot10FormatDateERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2, i32 noundef %.sroa.012.0.extract.trunc, i1 noundef zeroext %i.a) ; 3 uses
  %.not1618 = icmp eq i64 %.sroa.4.0.extract.shift, 0
  br i1 %.not1618, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  store i8 32, ptr %i.e, align 1, !tbaa !170
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.c, %bb.c ], [ 0, %bb.b ]     ; 3 uses
  %i.f = sext i32 %.1 to i64
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = sub nsw i32 %2, %.1
  %i.i = and i32 %4, 256
  %i.j = icmp ne i32 %i.i, 0
  %i.k = tail call noundef i32 @_ZN6ImPlot10FormatTimeERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.g, i32 noundef %i.h, i32 noundef %.sroa.4.0.extract.trunc, i1 noundef zeroext %i.j)
  %i.l = add nsw i32 %i.k, %.1
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d, %bb.b
  %.2 = phi i32 [ %i.l, %bb.d ], [ 0, %bb.b ], [ %i.b, %.thread ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot12Locator_TimeER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, float noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5) #4 {
bb.a:
  %6 = alloca %struct.ImPlotTime, align 8         ; 7 uses
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  %i.c = alloca [32 x i8], align 16               ; 8 uses
  %i.d = alloca [32 x i8], align 16               ; 8 uses
  %7 = alloca %struct.ImPlotDateTimeSpec, align 8 ; 5 uses
  %8 = alloca %struct.ImPlotDateTimeSpec, align 8 ; 6 uses
  %9 = alloca %struct.ImPlotTime, align 8         ; 10 uses
  %10 = alloca %struct.ImPlotTime, align 8        ; 11 uses
  %11 = alloca %"struct.ImPlot::Formatter_Time_Data", align 8 ; 23 uses
  %12 = alloca %struct.ImPlotTime, align 8        ; 9 uses
  %13 = alloca %struct.ImPlotTime, align 8        ; 5 uses
  %14 = alloca %struct.ImPlotTime, align 8        ; 8 uses
  %15 = alloca %struct.ImPlotTime, align 8        ; 6 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.76) #32 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !276
  %i.h = load double, ptr %1, align 8, !tbaa !269
  %i.i = fsub double %i.g, %i.h
  %i.j = fdiv float %2, 1.000000e+02
  %i.k = fpext float %i.j to double
  %i.l = fdiv double %i.i, %i.k                   ; 7 uses
  %i.m = load double, ptr @_ZZN6ImPlot15GetUnitForRangeEdE7cutoffs, align 16, !tbaa !266
  %i.n = fcmp ugt double %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZN6ImPlot15GetUnitForRangeEd.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15GetUnitForRangeEdE7cutoffs, i64 8), align 8, !tbaa !266
  %i.p = fcmp ugt double %i.l, %i.o
  br i1 %i.p, label %bb.e, label %_ZN6ImPlot15GetUnitForRangeEd.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15GetUnitForRangeEdE7cutoffs, i64 16), align 16, !tbaa !266
  %i.r = fcmp ugt double %i.l, %i.q
  br i1 %i.r, label %bb.f, label %_ZN6ImPlot15GetUnitForRangeEd.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15GetUnitForRangeEdE7cutoffs, i64 24), align 8, !tbaa !266
  %i.t = fcmp ugt double %i.l, %i.s
  br i1 %i.t, label %bb.g, label %_ZN6ImPlot15GetUnitForRangeEd.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15GetUnitForRangeEdE7cutoffs, i64 32), align 16, !tbaa !266
  %i.v = fcmp ugt double %i.l, %i.u
  br i1 %i.v, label %bb.h, label %_ZN6ImPlot15GetUnitForRangeEd.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15GetUnitForRangeEdE7cutoffs, i64 40), align 8, !tbaa !266
  %i.x = fcmp ugt double %i.l, %i.w
  br i1 %i.x, label %bb.i, label %_ZN6ImPlot15GetUnitForRangeEd.exit

bb.i:                                             ; preds = %bb.h
  %i.y = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15GetUnitForRangeEdE7cutoffs, i64 48), align 16, !tbaa !266
  %i.z = fcmp ugt double %i.l, %i.y
  %spec.select.i = select i1 %i.z, i32 7, i32 6
  br label %_ZN6ImPlot15GetUnitForRangeEd.exit

_ZN6ImPlot15GetUnitForRangeEd.exit:               ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.aa = phi i32 [ 0, %bb.c ], [ 4, %bb.g ], [ 1, %bb.d ], [ %spec.select.i, %bb.i ], [ 2, %bb.e ], [ 5, %bb.h ], [ 3, %bb.f ] ; 8 uses
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 6)
  %i.ac = add nuw nsw i32 %i.ab, 1                ; 3 uses
  %i.ad = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.j, label %_ZN6ImPlot14GetDateTimeFmtEPK18ImPlotDateTimeSpeci.exit222

bb.j:                                             ; preds = %_ZN6ImPlot15GetUnitForRangeEd.exit
  %i.ae = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot14GetDateTimeFmtEPK18ImPlotDateTimeSpeci.exit222

_ZN6ImPlot14GetDateTimeFmtEPK18ImPlotDateTimeSpeci.exit222: ; preds = %_ZN6ImPlot15GetUnitForRangeEd.exit, %bb.j
  %i.af = phi ptr [ %.pre.i.i, %bb.j ], [ %i.ad, %_ZN6ImPlot15GetUnitForRangeEd.exit ] ; 5 uses
  %i.ag = zext nneg i32 %i.aa to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr @_ZN6ImPlotL16TimeFormatLevel0E, i64 %i.ag
  %.sroa.03.0.copyload.i = load i64, ptr %i.ah, align 4, !tbaa !29 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 769
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !290, !range !263, !noundef !264
  %.sroa.24.8.insert.ext.i = zext nneg i8 %i.aj to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 770
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !291, !range !263, !noundef !264
  %.sroa.24.9.insert.ext.i = zext nneg i8 %i.al to i32
  %.sroa.24.9.insert.shift.i = shl nuw nsw i32 %.sroa.24.9.insert.ext.i, 8
  %.sroa.24.9.insert.insert.i = or disjoint i32 %.sroa.24.9.insert.shift.i, %.sroa.24.8.insert.ext.i ; 2 uses
  %.sroa.2110.0.extract.trunc = trunc nuw nsw i32 %.sroa.24.9.insert.insert.i to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.am = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.an = getelementptr inbounds nuw [12 x i8], ptr @_ZN6ImPlotL16TimeFormatLevel1E, i64 %i.am
  %.sroa.03.0.copyload.i196 = load i64, ptr %i.an, align 4, !tbaa !29 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 769
  %i.ap = load i16, ptr %i.ao, align 1
  store i64 %.sroa.03.0.copyload.i196, ptr %7, align 8
  %.sroa.2106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i16 %i.ap, ptr %.sroa.2106.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr @_ZN6ImPlotL21TimeFormatLevel1FirstE, i64 %i.am
  %.sroa.03.0.copyload.i210 = load i64, ptr %i.aq, align 4, !tbaa !29 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 769
  %i.as = load i16, ptr %i.ar, align 1
  store i64 %.sroa.03.0.copyload.i210, ptr %8, align 8
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i16 %i.as, ptr %.sroa.2102.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %.sroa.298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.at = load <2 x double>, ptr %1, align 8, !tbaa !266 ; 3 uses
  %i.au = extractelement <2 x double> %i.at, i64 0 ; 3 uses
  %i.av = fptosi double %i.au to i64
  %i.aw = tail call double @llvm.floor.f64(double %i.au)
  %i.ax = extractelement <2 x double> %i.at, i64 1 ; 3 uses
  %i.ay = tail call double @llvm.floor.f64(double %i.ax)
  %i.az = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1
  %i.bb = fmul <2 x double> %i.ba, splat (double -1.000000e+06)
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> splat (double 1.000000e+06), <2 x double> %i.bb)
  %i.bd = fptosi double %i.ax to i64
  %i.be = fptosi <2 x double> %i.bc to <2 x i32>
  %.frozen = freeze <2 x i32> %i.be               ; 2 uses
  %i.bf = sdiv <2 x i32> %.frozen, splat (i32 1000000) ; 3 uses
  %i.bg = extractelement <2 x i32> %i.bf, i64 0
  %i.bh = sext i32 %i.bg to i64
  %i.bi = add nsw i64 %i.bh, %i.av
  store i64 %i.bi, ptr %9, align 8
  %16 = extractelement <2 x i32> %i.bf, i64 1
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %i.bd
  %19 = mul <2 x i32> %i.bf, splat (i32 1000000)
  %.decomposed = sub <2 x i32> %.frozen, %19      ; 2 uses
  %i.bj = extractelement <2 x i32> %.decomposed, i64 0
  store i32 %i.bj, ptr %.sroa.298.0..sroa_idx, align 8
  store i64 %18, ptr %10, align 8
  %.sroa.294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %20 = extractelement <2 x i32> %.decomposed, i64 1
  store i32 %20, ptr %.sroa.294.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store i64 0, ptr %11, align 8, !tbaa !288
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !289
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %4, ptr %i.bl, align 8, !tbaa !536
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.bm, align 8, !tbaa !537
  %.not = icmp eq i32 %i.aa, 7
  br i1 %.not, label %_ZN6ImPlot14GetDateTimeFmtEPK18ImPlotDateTimeSpeci.exit282, label %bb.k

bb.k:                                             ; preds = %_ZN6ImPlot14GetDateTimeFmtEPK18ImPlotDateTimeSpeci.exit222
  %i.bn = fsub double %i.ax, %i.au
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @_ZN6ImPlotL13TimeUnitSpansE, i64 %i.am
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !266
  %i.bq = fdiv double %i.bn, %i.bp
  %i.br = fptrunc double %i.bq to float
  %i.bs = fdiv float %2, %i.br
  %i.bt = tail call noundef float @_ZN6ImPlot16GetDateTimeWidthE18ImPlotDateTimeSpec(i64 %.sroa.03.0.copyload.i, i32 %.sroa.24.9.insert.insert.i) ; 2 uses
  %.sroa.277.0.copyload = load i32, ptr %.sroa.2106.0..sroa_idx, align 8
  %i.bu = tail call noundef float @_ZN6ImPlot16GetDateTimeWidthE18ImPlotDateTimeSpec(i64 %.sroa.03.0.copyload.i196, i32 %.sroa.277.0.copyload)
  %.sroa.272.0.copyload = load i32, ptr %.sroa.2102.0..sroa_idx, align 8
  %i.bv = tail call noundef float @_ZN6ImPlot16GetDateTimeWidthE18ImPlotDateTimeSpec(i64 %.sroa.03.0.copyload.i210, i32 %.sroa.272.0.copyload)
  %i.bw = fmul float %i.bs, 5.000000e-01
  %i.bx = fdiv float %i.bw, %i.bt
  %i.by = fptosi float %i.bx to i32               ; 27 uses
  %or.cond.i = icmp samesign ult i32 %i.aa, 2
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp slt i32 %i.by, 2
  br i1 %i.bz, label %_ZN6ImPlot11GetTimeStepEii.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.l
  %i.ca = icmp samesign ult i32 %i.by, 4
  br i1 %i.ca, label %.sink.split.i.i, label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.preheader.i
  %i.cb = icmp eq i32 %i.by, 4
  br i1 %i.cb, label %.sink.split.i.i, label %.lr.ph.i.2.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.1.i
  %i.cc = icmp samesign ult i32 %i.by, 10
  br i1 %i.cc, label %.sink.split.i.i, label %.lr.ph.i.3.i

.lr.ph.i.3.i:                                     ; preds = %.lr.ph.i.2.i
  %i.cd = icmp samesign ult i32 %i.by, 20
  br i1 %i.cd, label %.sink.split.i.i, label %.lr.ph.i.4.i

.lr.ph.i.4.i:                                     ; preds = %.lr.ph.i.3.i
  %i.ce = icmp samesign ult i32 %i.by, 40
  br i1 %i.ce, label %.sink.split.i.i, label %.lr.ph.i.5.i

.lr.ph.i.5.i:                                     ; preds = %.lr.ph.i.4.i
  %i.cf = icmp samesign ult i32 %i.by, 50
  br i1 %i.cf, label %.sink.split.i.i, label %.lr.ph.i.6.i

.lr.ph.i.6.i:                                     ; preds = %.lr.ph.i.5.i
  %i.cg = icmp samesign ult i32 %i.by, 100
  br i1 %i.cg, label %.sink.split.i.i, label %.lr.ph.i.7.i

.lr.ph.i.7.i:                                     ; preds = %.lr.ph.i.6.i
  %i.ch = icmp samesign ult i32 %i.by, 200
  br i1 %i.ch, label %.sink.split.i.i, label %.lr.ph.i.8.i

.lr.ph.i.8.i:                                     ; preds = %.lr.ph.i.7.i
  %i.ci = icmp samesign ult i32 %i.by, 500
  br i1 %i.ci, label %.sink.split.i.i, label %.lr.ph.i.9.i

.lr.ph.i.9.i:                                     ; preds = %.lr.ph.i.8.i
  %i.cj = icmp samesign ult i32 %i.by, 1000
  %spec.select.i227 = select i1 %i.cj, i64 10, i64 11
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.i.9.i, %.lr.ph.i.8.i, %.lr.ph.i.7.i, %.lr.ph.i.6.i, %.lr.ph.i.5.i, %.lr.ph.i.4.i, %.lr.ph.i.3.i, %.lr.ph.i.2.i, %.lr.ph.i.1.i, %.lr.ph.i.preheader.i
  %indvars.iv.lcssa.sink.i.i = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ 6, %.lr.ph.i.5.i ], [ 2, %.lr.ph.i.1.i ], [ %spec.select.i227, %.lr.ph.i.9.i ], [ 3, %.lr.ph.i.2.i ], [ 8, %.lr.ph.i.7.i ], [ 4, %.lr.ph.i.3.i ], [ 9, %.lr.ph.i.8.i ], [ 5, %.lr.ph.i.4.i ], [ 7, %.lr.ph.i.6.i ]
  %i.ck = getelementptr [4 x i8], ptr @_ZZN6ImPlot11GetTimeStepEiiE4step, i64 %indvars.iv.lcssa.sink.i.i
  br label %_ZN6ImPlot14LowerBoundStepEiPKiS1_i.exit.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.cl = icmp samesign ult i32 %i.aa, 4
  %i.cm = icmp slt i32 %i.by, 2                   ; 4 uses
  br i1 %i.cl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.cm, label %_ZN6ImPlot11GetTimeStepEii.exit, label %.lr.ph.i18.preheader.i

.lr.ph.i18.preheader.i:                           ; preds = %bb.n
  %i.cn = icmp samesign ult i32 %i.by, 4
  br i1 %i.cn, label %.sink.split.i23.i, label %.lr.ph.i18.1.i

.lr.ph.i18.1.i:                                   ; preds = %.lr.ph.i18.preheader.i
  %i.co = icmp samesign ult i32 %i.by, 6
  br i1 %i.co, label %.sink.split.i23.i, label %.lr.ph.i18.2.i

.lr.ph.i18.2.i:                                   ; preds = %.lr.ph.i18.1.i
  %i.cp = icmp samesign ult i32 %i.by, 12
  br i1 %i.cp, label %.sink.split.i23.i, label %.lr.ph.i18.3.i

.lr.ph.i18.3.i:                                   ; preds = %.lr.ph.i18.2.i
  %i.cq = icmp samesign ult i32 %i.by, 60
  %spec.select59.i = select i1 %i.cq, i64 4, i64 5
  br label %.sink.split.i23.i

.sink.split.i23.i:                                ; preds = %.lr.ph.i18.3.i, %.lr.ph.i18.2.i, %.lr.ph.i18.1.i, %.lr.ph.i18.preheader.i
  %indvars.iv.lcssa.sink.i24.i = phi i64 [ 1, %.lr.ph.i18.preheader.i ], [ 3, %.lr.ph.i18.2.i ], [ 2, %.lr.ph.i18.1.i ], [ %spec.select59.i, %.lr.ph.i18.3.i ]
  %i.cr = getelementptr [4 x i8], ptr @_ZZN6ImPlot11GetTimeStepEiiE4step_0, i64 %indvars.iv.lcssa.sink.i24.i
  br label %_ZN6ImPlot14LowerBoundStepEiPKiS1_i.exit.sink.split.i

bb.o:                                             ; preds = %bb.m
  switch i32 %i.aa, label %default.unreachable428 [
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  br i1 %i.cm, label %_ZN6ImPlot11GetTimeStepEii.exit, label %.lr.ph.i28.preheader.i

.lr.ph.i28.preheader.i:                           ; preds = %bb.p
  %i.cs = icmp samesign ult i32 %i.by, 4
  br i1 %i.cs, label %.sink.split.i33.i, label %.lr.ph.i28.1.i

.lr.ph.i28.1.i:                                   ; preds = %.lr.ph.i28.preheader.i
  %i.ct = icmp samesign ult i32 %i.by, 8
  br i1 %i.ct, label %.sink.split.i33.i, label %.lr.ph.i28.2.i

.lr.ph.i28.2.i:                                   ; preds = %.lr.ph.i28.1.i
  %i.cu = icmp samesign ult i32 %i.by, 12
  br i1 %i.cu, label %.sink.split.i33.i, label %.lr.ph.i28.3.i

.lr.ph.i28.3.i:                                   ; preds = %.lr.ph.i28.2.i
  %i.cv = icmp samesign ult i32 %i.by, 24
  %spec.select60.i = select i1 %i.cv, i64 4, i64 5
  br label %.sink.split.i33.i

.sink.split.i33.i:                                ; preds = %.lr.ph.i28.3.i, %.lr.ph.i28.2.i, %.lr.ph.i28.1.i, %.lr.ph.i28.preheader.i
  %indvars.iv.lcssa.sink.i34.i = phi i64 [ 1, %.lr.ph.i28.preheader.i ], [ 3, %.lr.ph.i28.2.i ], [ 2, %.lr.ph.i28.1.i ], [ %spec.select60.i, %.lr.ph.i28.3.i ]
  %i.cw = getelementptr [4 x i8], ptr @_ZZN6ImPlot11GetTimeStepEiiE4step_1, i64 %indvars.iv.lcssa.sink.i34.i
  br label %_ZN6ImPlot14LowerBoundStepEiPKiS1_i.exit.sink.split.i

bb.q:                                             ; preds = %bb.o
  br i1 %i.cm, label %_ZN6ImPlot11GetTimeStepEii.exit, label %.lr.ph.i38.preheader.i

.lr.ph.i38.preheader.i:                           ; preds = %bb.q
  %i.cx = icmp samesign ult i32 %i.by, 4
  br i1 %i.cx, label %.sink.split.i43.i, label %.lr.ph.i38.1.i

.lr.ph.i38.1.i:                                   ; preds = %.lr.ph.i38.preheader.i
  %i.cy = icmp samesign ult i32 %i.by, 14
  br i1 %i.cy, label %.sink.split.i43.i, label %.lr.ph.i38.2.i

.lr.ph.i38.2.i:                                   ; preds = %.lr.ph.i38.1.i
  %i.cz = icmp samesign ult i32 %i.by, 28
  %spec.select61.i = select i1 %i.cz, i64 3, i64 4
  br label %.sink.split.i43.i

.sink.split.i43.i:                                ; preds = %.lr.ph.i38.2.i, %.lr.ph.i38.1.i, %.lr.ph.i38.preheader.i
  %indvars.iv.lcssa.sink.i44.i = phi i64 [ 1, %.lr.ph.i38.preheader.i ], [ %spec.select61.i, %.lr.ph.i38.2.i ], [ 2, %.lr.ph.i38.1.i ]
  %i.da = getelementptr [4 x i8], ptr @_ZZN6ImPlot11GetTimeStepEiiE4step_2, i64 %indvars.iv.lcssa.sink.i44.i
  br label %_ZN6ImPlot14LowerBoundStepEiPKiS1_i.exit.sink.split.i

bb.r:                                             ; preds = %bb.o
  br i1 %i.cm, label %_ZN6ImPlot11GetTimeStepEii.exit, label %.lr.ph.i48.preheader.i

.lr.ph.i48.preheader.i:                           ; preds = %bb.r
  %i.db = icmp samesign ult i32 %i.by, 4
  br i1 %i.db, label %.sink.split.i53.i, label %.lr.ph.i48.1.i

.lr.ph.i48.1.i:                                   ; preds = %.lr.ph.i48.preheader.i
  %i.dc = icmp samesign ult i32 %i.by, 6
  br i1 %i.dc, label %.sink.split.i53.i, label %.lr.ph.i48.2.i

.lr.ph.i48.2.i:                                   ; preds = %.lr.ph.i48.1.i
  %i.dd = icmp samesign ult i32 %i.by, 12
  %spec.select62.i = select i1 %i.dd, i64 3, i64 4
  br label %.sink.split.i53.i

.sink.split.i53.i:                                ; preds = %.lr.ph.i48.2.i, %.lr.ph.i48.1.i, %.lr.ph.i48.preheader.i
  %indvars.iv.lcssa.sink.i54.i = phi i64 [ 1, %.lr.ph.i48.preheader.i ], [ %spec.select62.i, %.lr.ph.i48.2.i ], [ 2, %.lr.ph.i48.1.i ]
  %i.de = getelementptr [4 x i8], ptr @_ZZN6ImPlot11GetTimeStepEiiE4step_3, i64 %indvars.iv.lcssa.sink.i54.i
  br label %_ZN6ImPlot14LowerBoundStepEiPKiS1_i.exit.sink.split.i

_ZN6ImPlot14LowerBoundStepEiPKiS1_i.exit.sink.split.i: ; preds = %.sink.split.i53.i, %.sink.split.i43.i, %.sink.split.i33.i, %.sink.split.i23.i, %.sink.split.i.i
  %.sink63.i = phi ptr [ %i.de, %.sink.split.i53.i ], [ %i.da, %.sink.split.i43.i ], [ %i.cw, %.sink.split.i33.i ], [ %i.cr, %.sink.split.i23.i ], [ %i.ck, %.sink.split.i.i ]
  %i.df = getelementptr i8, ptr %.sink63.i, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !29
  br label %_ZN6ImPlot11GetTimeStepEii.exit

default.unreachable428:                           ; preds = %bb.o
  unreachable

_ZN6ImPlot11GetTimeStepEii.exit:                  ; preds = %bb.l, %bb.n, %bb.p, %bb.q, %bb.r, %_ZN6ImPlot14LowerBoundStepEiPKiS1_i.exit.sink.split.i
  %.0.i = phi i32 [ %i.dg, %_ZN6ImPlot14LowerBoundStepEiPKiS1_i.exit.sink.split.i ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.dh = load double, ptr %1, align 8, !tbaa !269 ; 3 uses
  %i.di = fptosi double %i.dh to i64
  %i.dj = tail call double @llvm.floor.f64(double %i.dh)
  %i.dk = fmul double %i.dj, -1.000000e+06
end_hunk_0
begin_hunk_1_@_ZN6ImPlot16GetDateTimeWidthE18ImPlotDateTimeSpec:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %.sroa.012.0.extract.trunc.i = trunc i64 %0 to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %0, 32    ; 3 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %.not.i = icmp eq i32 %.sroa.012.0.extract.trunc.i, 0
  br i1 %.not.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %.not16.i = icmp eq i64 %.sroa.4.0.extract.shift.i, 0
  br i1 %.not16.i, label %_ZN6ImPlot14FormatDateTimeERK10ImPlotTimePci18ImPlotDateTimeSpec.exit, label %bb.g

.thread.i:                                        ; preds = %bb.d
  %i.g = trunc i32 %1 to i1
  %i.h = call noundef i32 @_ZN6ImPlot10FormatDateERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) @_ZZN6ImPlot16GetDateTimeWidthE18ImPlotDateTimeSpecE11t_max_width, ptr noundef nonnull %i.a, i32 noundef 32, i32 noundef %.sroa.012.0.extract.trunc.i, i1 noundef zeroext %i.g) ; 2 uses
  %.not1618.i = icmp eq i64 %.sroa.4.0.extract.shift.i, 0
  br i1 %.not1618.i, label %_ZN6ImPlot14FormatDateTimeERK10ImPlotTimePci18ImPlotDateTimeSpec.exit, label %bb.f

bb.f:                                             ; preds = %.thread.i
  %i.i = add nsw i32 %i.h, 1
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  store i8 32, ptr %i.k, align 1, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ %i.i, %bb.f ], [ 0, %bb.e ]   ; 2 uses
  %i.l = sext i32 %.1.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.l
  %i.n = sub nsw i32 32, %.1.i
  %i.o = and i32 %1, 256
  %i.p = icmp ne i32 %i.o, 0
  %i.q = call noundef i32 @_ZN6ImPlot10FormatTimeERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) @_ZZN6ImPlot16GetDateTimeWidthE18ImPlotDateTimeSpecE11t_max_width, ptr noundef nonnull %i.m, i32 noundef %i.n, i32 noundef %.sroa.4.0.extract.trunc.i, i1 noundef zeroext %i.p) ; 0 uses
  br label %_ZN6ImPlot14FormatDateTimeERK10ImPlotTimePci18ImPlotDateTimeSpec.exit

_ZN6ImPlot14FormatDateTimeERK10ImPlotTimePci18ImPlotDateTimeSpec.exit: ; preds = %bb.e, %.thread.i, %bb.g
  %i.r = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #32
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.r, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret float %.sroa.0.0.vec.extract
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef i32 @_ZN6ImPlotL14Formatter_TimeEdPciPv(double %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.extract.trunc.i = trunc i64 %.sroa.01.0.copyload to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.01.0.copyload, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %.not.i = icmp eq i32 %.sroa.012.0.extract.trunc.i, 0
  br i1 %.not.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq i64 %.sroa.4.0.extract.shift.i, 0
  br i1 %.not16.i, label %_ZN6ImPlot14FormatDateTimeERK10ImPlotTimePci18ImPlotDateTimeSpec.exit, label %bb.d

.thread.i:                                        ; preds = %bb.a
  %i.b = trunc i32 %.sroa.22.0.copyload to i1
  %i.c = tail call noundef i32 @_ZN6ImPlot10FormatDateERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef %1, i32 noundef %2, i32 noundef %.sroa.012.0.extract.trunc.i, i1 noundef zeroext %i.b) ; 3 uses
  %.not1618.i = icmp eq i64 %.sroa.4.0.extract.shift.i, 0
  br i1 %.not1618.i, label %_ZN6ImPlot14FormatDateTimeERK10ImPlotTimePci18ImPlotDateTimeSpec.exit, label %bb.c

bb.c:                                             ; preds = %.thread.i
  %i.d = add nsw i32 %i.c, 1
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  store i8 32, ptr %i.f, align 1, !tbaa !170
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.d, %bb.c ], [ 0, %bb.b ]   ; 3 uses
  %i.g = sext i32 %.1.i to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = sub nsw i32 %2, %.1.i
  %i.j = and i32 %.sroa.22.0.copyload, 256
  %i.k = icmp ne i32 %i.j, 0
  %i.l = tail call noundef i32 @_ZN6ImPlot10FormatTimeERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef %i.h, i32 noundef %i.i, i32 noundef %.sroa.4.0.extract.trunc.i, i1 noundef zeroext %i.k)
  %i.m = add nsw i32 %i.l, %.1.i
  br label %_ZN6ImPlot14FormatDateTimeERK10ImPlotTimePci18ImPlotDateTimeSpec.exit

_ZN6ImPlot14FormatDateTimeERK10ImPlotTimePci18ImPlotDateTimeSpec.exit: ; preds = %bb.b, %.thread.i, %bb.d
  %.2.i = phi i32 [ %i.m, %bb.d ], [ 0, %bb.b ], [ %i.c, %.thread.i ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6ImPlot9DragFloatIdEEbPKcPT_fS3_S3_(ptr noundef %0, ptr noundef %1, float noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  store double %3, ptr %i.a, align 8, !tbaa !266
  store double %4, ptr %i.b, align 8, !tbaa !266
  %i.c = call noundef zeroext i1 @_ZN5ImGui10DragScalarEPKciPvfPKvS4_S1_i(ptr noundef %0, i32 noundef 9, ptr noundef %1, float noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.77, i32 noundef 1) #32
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN5ImGui10DragScalarEPKciPvfPKvS4_S1_i(ptr noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6ImPlot9DragFloatIfEEbPKcPT_fS3_S3_(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca float, align 4                    ; 2 uses
  store float %3, ptr %i.a, align 4, !tbaa !41
  store float %4, ptr %i.b, align 4, !tbaa !41
  %i.c = call noundef zeroext i1 @_ZN5ImGui10DragScalarEPKciPvfPKvS4_S1_i(ptr noundef %0, i32 noundef 8, ptr noundef %1, float noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.77, i32 noundef 1) #32
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot19ShowAxisContextMenuER10ImPlotAxisPS0_b(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1, i1 zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %3 = alloca %struct.ImPlotTime, align 8         ; 14 uses
  %4 = alloca %struct.ImPlotTime, align 8         ; 14 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = alloca double, align 8                   ; 5 uses
  tail call void @_ZN5ImGui13PushItemWidthEf(float noundef 7.500000e+01) #32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 367 ; 9 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !295, !range !263, !noundef !264
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 1
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  br i1 %i.q, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = and i32 %.pre, 2048
  %i.s = icmp ne i32 %i.r, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.t = phi i1 [ %i.s, %bb.b ], [ true, %bb.a ]  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !296
  %.not.i = icmp ne i32 %i.v, -1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 27 uses
  %i.x = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.z = and <4 x i32> %i.y, <i32 8, i32 4, i32 2, i32 1>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  %i.aa = icmp eq <4 x i32> %i.z, zeroinitializer ; 4 uses
  %i.ab = extractelement <4 x i1> %i.aa, i64 3
  %i.ac = select i1 %.not.i, i1 %i.ab, i1 false
  %i.ad = zext i1 %i.ac to i8
  store i8 %i.ad, ptr %i.e, align 1, !tbaa !262
  %i.ae = extractelement <4 x i1> %i.aa, i64 2
  %i.af = zext i1 %i.ae to i8
  store i8 %i.af, ptr %i.f, align 1, !tbaa !262
  %i.ag = extractelement <4 x i1> %i.aa, i64 1
  %i.ah = zext i1 %i.ag to i8
  store i8 %i.ah, ptr %i.g, align 1, !tbaa !262
  %i.ai = extractelement <4 x i1> %i.aa, i64 0
  %i.aj = zext i1 %i.ai to i8
  store i8 %i.aj, ptr %i.h, align 1, !tbaa !262
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.am = load <2 x double>, ptr %i.ak, align 8, !tbaa !266 ; 3 uses
  %i.an = extractelement <2 x double> %i.am, i64 0 ; 3 uses
  %i.ao = extractelement <2 x double> %i.am, i64 1 ; 3 uses
  %i.ap = fsub double %i.ao, %i.an                ; 2 uses
  %i.aq = fcmp ugt double %i.ap, f0x3CB0000000000000
  %i.ar = fmul double %i.ap, 1.000000e-02
  %i.as = fptrunc double %i.ar to float
  %i.at = select i1 %i.aq, float %i.as, float f0x3B1184E7 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !297
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.c, label %bb.z

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ax = fptosi double %i.an to i64
  %i.ay = tail call double @llvm.floor.f64(double %i.an)
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.az = fptosi double %i.ao to i64
  %i.ba = tail call double @llvm.floor.f64(double %i.ao)
  %i.bb = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = fmul <2 x double> %i.bc, splat (double -1.000000e+06)
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> splat (double 1.000000e+06), <2 x double> %i.bd)
  %i.bf = fptosi <2 x double> %i.be to <2 x i32>
  %.frozen = freeze <2 x i32> %i.bf               ; 2 uses
  %i.bg = sdiv <2 x i32> %.frozen, splat (i32 1000000) ; 3 uses
  %i.bh = extractelement <2 x i32> %i.bg, i64 0
  %i.bi = sext i32 %i.bh to i64
  %i.bj = add nsw i64 %i.bi, %i.ax
  store i64 %i.bj, ptr %3, align 8
  %5 = extractelement <2 x i32> %i.bg, i64 1
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, %i.az
  %8 = mul <2 x i32> %i.bg, splat (i32 1000000)
  %.decomposed = sub <2 x i32> %.frozen, %8       ; 2 uses
  %i.bk = extractelement <2 x i32> %.decomposed, i64 0
  store i32 %i.bk, ptr %.sroa.244.0..sroa_idx, align 8
  store i64 %7, ptr %4, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %9 = extractelement <2 x i32> %.decomposed, i64 1
  store i32 %9, ptr %.sroa.240.0..sroa_idx, align 8
  br i1 %i.t, label %bb.d, label %_ZN6ImPlot21BeginDisabledControlsEb.exit

_ZN6ImPlot21BeginDisabledControlsEb.exit:         ; preds = %bb.c
  %i.bl = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.78, ptr noundef nonnull %i.w, i32 noundef 16384) #32 ; 0 uses
  br label %_ZN6ImPlot19EndDisabledControlsEb.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 1024, i1 noundef zeroext true) #32
  %i.bm = tail call noundef nonnull align 4 dereferenceable(1232) ptr @_ZN5ImGui8GetStyleEv() #32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !298
  %i.bp = fmul float %i.bo, 2.500000e-01
  tail call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 0, float noundef %i.bp) #32
  %i.bq = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.78, ptr noundef nonnull %i.w, i32 noundef 16384) #32 ; 0 uses
  tail call void @_ZN5ImGui11PopItemFlagEv() #32
  tail call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #32
  br label %_ZN6ImPlot19EndDisabledControlsEb.exit

_ZN6ImPlot19EndDisabledControlsEb.exit:           ; preds = %_ZN6ImPlot21BeginDisabledControlsEb.exit, %bb.d
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 4 uses
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.e, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.thread

bb.e:                                             ; preds = %_ZN6ImPlot19EndDisabledControlsEb.exit
  %i.bu = load i8, ptr %i.k, align 1, !tbaa !295, !range !263, !noundef !264
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = load i32, ptr %i.n, align 8
  %i.bx = icmp eq i32 %i.bw, 1
  %i.by = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %i.by, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.thread, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit

_ZNK10ImPlotAxis11IsLockedMinEv.exit:             ; preds = %bb.e
  %i.bz = load i32, ptr %i.w, align 4, !tbaa !300
  %i.ca = and i32 %i.bz, 16384
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = or i1 %i.t, %i.cb
  br i1 %i.cc, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.thread, label %_ZN6ImPlot21BeginDisabledControlsEb.exit136

_ZNK10ImPlotAxis11IsLockedMinEv.exit.thread:      ; preds = %_ZN6ImPlot19EndDisabledControlsEb.exit, %bb.e, %_ZNK10ImPlotAxis11IsLockedMinEv.exit
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 1024, i1 noundef zeroext true) #32
  %i.cd = tail call noundef nonnull align 4 dereferenceable(1232) ptr @_ZN5ImGui8GetStyleEv() #32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !298
  %i.cg = fmul float %i.cf, 2.500000e-01
  tail call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 0, float noundef %i.cg) #32
  br label %_ZN6ImPlot21BeginDisabledControlsEb.exit136

_ZN6ImPlot21BeginDisabledControlsEb.exit136:      ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.thread
  %i.ch = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.79, i1 noundef zeroext true) #32
  br i1 %i.ch, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZN6ImPlot21BeginDisabledControlsEb.exit136
  %i.ci = call noundef zeroext i1 @_ZN6ImPlot14ShowTimePickerEPKcP10ImPlotTime(ptr noundef nonnull @.str.80, ptr noundef nonnull %3)
  br i1 %i.ci, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.val119 = load i64, ptr %3, align 8, !tbaa !288 ; 4 uses
  %.val120 = load i32, ptr %.sroa.244.0..sroa_idx, align 8 ; 5 uses
  %.val121 = load i64, ptr %4, align 8, !tbaa !288 ; 3 uses
  %.val122 = load i32, ptr %.sroa.240.0..sroa_idx, align 8 ; 3 uses
  %i.cj = icmp eq i64 %.val121, %.val119          ; 2 uses
  %i.ck = icmp slt i32 %.val122, %.val120
  %i.cl = icmp slt i64 %.val121, %.val119
  %i.cm = select i1 %i.cj, i1 %i.ck, i1 %i.cl
  %i.cn = icmp eq i32 %.val120, %.val122
  %i.co = select i1 %i.cj, i1 %i.cn, i1 false
  %or.cond = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond, label %_ZgeRK10ImPlotTimeS1_.exit.thread, label %bb.h

_ZgeRK10ImPlotTimeS1_.exit.thread:                ; preds = %bb.g
  %i.cp = add nsw i64 %.val119, 1
  %i.cq = sdiv i32 %.val120, 1000000
  %i.cr = sext i32 %i.cq to i64
  %i.cs = add nsw i64 %i.cp, %i.cr                ; 2 uses
  %i.ct = srem i32 %.val120, 1000000              ; 2 uses
  store i64 %i.cs, ptr %4, align 8, !tbaa !285
  store i32 %i.ct, ptr %.sroa.240.0..sroa_idx, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZgeRK10ImPlotTimeS1_.exit.thread
  %i.cu = phi i32 [ %.val122, %bb.g ], [ %i.ct, %_ZgeRK10ImPlotTimeS1_.exit.thread ]
  %i.cv = phi i64 [ %.val121, %bb.g ], [ %i.cs, %_ZgeRK10ImPlotTimeS1_.exit.thread ]
  %i.cw = sitofp i64 %.val119 to double
  %i.cx = insertelement <2 x i32> poison, i32 %.val120, i64 0
  %i.cy = insertelement <2 x i32> %i.cx, i32 %i.cu, i64 1
  %i.cz = sitofp <2 x i32> %i.cy to <2 x double>
  %i.da = sitofp i64 %i.cv to double
  %i.db = fdiv <2 x double> %i.cz, splat (double 1.000000e+06) ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  %i.dd = fadd double %i.dc, %i.cw
  %i.de = extractelement <2 x double> %i.db, i64 1
  %i.df = fadd double %i.de, %i.da
  call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %0, double noundef %i.dd, double noundef %i.df)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  call void @_ZN5ImGui9SeparatorEv() #32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.di = call noundef zeroext i1 @_ZN6ImPlot14ShowDatePickerEPKcPiP10ImPlotTimePKS3_S6_(ptr noundef nonnull @.str.81, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dh, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br i1 %i.di, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dj = call { i64, i32 } @_ZN6ImPlot15CombineDateTimeERK10ImPlotTimeS2_(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull align 8 dereferenceable(12) %3) ; 2 uses
  %.fca.0.extract23 = extractvalue { i64, i32 } %i.dj, 0 ; 5 uses
  %.fca.1.extract24 = extractvalue { i64, i32 } %i.dj, 1 ; 6 uses
  store i64 %.fca.0.extract23, ptr %3, align 8, !tbaa !285
  store i32 %.fca.1.extract24, ptr %.sroa.244.0..sroa_idx, align 8, !tbaa !29
  %.val117 = load i64, ptr %4, align 8, !tbaa !288 ; 3 uses
  %.val118 = load i32, ptr %.sroa.240.0..sroa_idx, align 8 ; 3 uses
  %i.dk = icmp eq i64 %.val117, %.fca.0.extract23 ; 2 uses
  %i.dl = icmp slt i32 %.val118, %.fca.1.extract24
  %i.dm = icmp slt i64 %.val117, %.fca.0.extract23
  %i.dn = select i1 %i.dk, i1 %i.dl, i1 %i.dm
  %i.do = icmp eq i32 %.fca.1.extract24, %.val118
  %i.dp = select i1 %i.dk, i1 %i.do, i1 false
  %or.cond204 = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %or.cond204, label %_ZgeRK10ImPlotTimeS1_.exit139.thread, label %bb.k

_ZgeRK10ImPlotTimeS1_.exit139.thread:             ; preds = %bb.j
  %i.dq = add nsw i64 %.fca.0.extract23, 1
  %i.dr = sdiv i32 %.fca.1.extract24, 1000000
  %i.ds = sext i32 %i.dr to i64
  %i.dt = add nsw i64 %i.dq, %i.ds                ; 2 uses
  %i.du = srem i32 %.fca.1.extract24, 1000000     ; 2 uses
  store i64 %i.dt, ptr %4, align 8, !tbaa !285
  store i32 %i.du, ptr %.sroa.240.0..sroa_idx, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZgeRK10ImPlotTimeS1_.exit139.thread
  %i.dv = phi i32 [ %.val118, %bb.j ], [ %i.du, %_ZgeRK10ImPlotTimeS1_.exit139.thread ]
  %i.dw = phi i64 [ %.val117, %bb.j ], [ %i.dt, %_ZgeRK10ImPlotTimeS1_.exit139.thread ]
  %i.dx = sitofp i64 %.fca.0.extract23 to double
  %i.dy = insertelement <2 x i32> poison, i32 %.fca.1.extract24, i64 0
  %i.dz = insertelement <2 x i32> %i.dy, i32 %i.dv, i64 1
  %i.ea = sitofp <2 x i32> %i.dz to <2 x double>
  %i.eb = sitofp i64 %i.dw to double
  %i.ec = fdiv <2 x double> %i.ea, splat (double 1.000000e+06) ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 0
  %i.ee = fadd double %i.ed, %i.dx
  %i.ef = extractelement <2 x double> %i.ec, i64 1
  %i.eg = fadd double %i.ef, %i.eb
  call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %0, double noundef %i.ee, double noundef %i.eg)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  call void @_ZN5ImGui7EndMenuEv() #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6ImPlot21BeginDisabledControlsEb.exit136
  %i.eh = load i8, ptr %i.br, align 4, !tbaa !299, !range !263, !noundef !264
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.n, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit142.thread

bb.n:                                             ; preds = %bb.m
  %i.ej = load i8, ptr %i.k, align 1, !tbaa !295, !range !263, !noundef !264
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = load i32, ptr %i.n, align 8
  %i.em = icmp eq i32 %i.el, 1
  %i.en = select i1 %i.ek, i1 %i.em, i1 false
  br i1 %i.en, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit142.thread, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit142

_ZNK10ImPlotAxis11IsLockedMinEv.exit142:          ; preds = %bb.n
  %i.eo = load i32, ptr %i.w, align 4, !tbaa !300
  %i.ep = and i32 %i.eo, 16384
  %i.eq = icmp ne i32 %i.ep, 0
  %i.er = or i1 %i.t, %i.eq
  br i1 %i.er, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit142.thread, label %_ZN6ImPlot19EndDisabledControlsEb.exit143

_ZNK10ImPlotAxis11IsLockedMinEv.exit142.thread:   ; preds = %bb.m, %bb.n, %_ZNK10ImPlotAxis11IsLockedMinEv.exit142
  call void @_ZN5ImGui11PopItemFlagEv() #32
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #32
  br label %_ZN6ImPlot19EndDisabledControlsEb.exit143

_ZN6ImPlot19EndDisabledControlsEb.exit143:        ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit142, %_ZNK10ImPlotAxis11IsLockedMinEv.exit142.thread
  br i1 %i.t, label %bb.o, label %_ZN6ImPlot21BeginDisabledControlsEb.exit144

_ZN6ImPlot21BeginDisabledControlsEb.exit144:      ; preds = %_ZN6ImPlot19EndDisabledControlsEb.exit143
  %i.es = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.82, ptr noundef nonnull %i.w, i32 noundef 32768) #32 ; 0 uses
  br label %_ZN6ImPlot19EndDisabledControlsEb.exit145

bb.o:                                             ; preds = %_ZN6ImPlot19EndDisabledControlsEb.exit143
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 1024, i1 noundef zeroext true) #32
  %i.et = call noundef nonnull align 4 dereferenceable(1232) ptr @_ZN5ImGui8GetStyleEv() #32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !298
  %i.ew = fmul float %i.ev, 2.500000e-01
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 0, float noundef %i.ew) #32
  %i.ex = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.82, ptr noundef nonnull %i.w, i32 noundef 32768) #32 ; 0 uses
  call void @_ZN5ImGui11PopItemFlagEv() #32
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #32
  br label %_ZN6ImPlot19EndDisabledControlsEb.exit145

_ZN6ImPlot19EndDisabledControlsEb.exit145:        ; preds = %_ZN6ImPlot21BeginDisabledControlsEb.exit144, %bb.o
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #32
  %i.ey = load i8, ptr %i.br, align 4, !tbaa !299, !range !263, !noundef !264
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.p, label %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.thread
end_hunk_1
begin_hunk_2_@_ZN6ImPlot14ShowTimePickerEPKcP10ImPlotTime:bb.a
.preheader:                                       ; preds = %bb.m, %.preheader
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.preheader ], [ 0, %bb.m ] ; 4 uses
  %.06593 = phi i32 [ %spec.select79, %.preheader ], [ %i.t, %bb.m ] ; 2 uses
  %.692 = phi i1 [ %spec.select78, %.preheader ], [ %.5, %bb.m ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot14ShowTimePickerEPKcP10ImPlotTimeE4nums, i64 %indvars.iv98
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !44
  %i.bd = zext i32 %.06593 to i64
  %i.be = icmp eq i64 %indvars.iv98, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !41
  %i.bf = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.bc, i1 noundef zeroext %i.be, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %7) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %spec.select78 = select i1 %i.bf, i1 true, i1 %.692 ; 2 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv98 to i32
  %spec.select79 = select i1 %i.bf, i32 %i.bg, i32 %.06593 ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next99, 60
  br i1 %exitcond100.not, label %bb.n, label %.preheader, !llvm.loop !542

bb.o:                                             ; preds = %bb.n, %bb.m
  %.8 = phi i1 [ %spec.select78, %bb.n ], [ %.5, %bb.m ] ; 2 uses
  %.267 = phi i32 [ %spec.select79, %bb.n ], [ %i.t, %bb.m ]
  br i1 %i.m, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #32
  %i.bh = zext i1 %i.v to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot14ShowTimePickerEPKcP10ImPlotTimeE5am_pm, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store float 0.000000e+00, ptr %8, align 4, !tbaa !172
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.aa, ptr %i.bk, align 4, !tbaa !173
  %i.bl = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef %i.bj, ptr noundef nonnull align 4 dereferenceable(8) %8) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %spec.select80 = xor i1 %i.v, %i.bl
  %spec.select81 = select i1 %i.bl, i1 true, i1 %.8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.072.in = phi i1 [ %i.v, %bb.o ], [ %spec.select80, %bb.p ]
  %.9 = phi i1 [ %.8, %bb.o ], [ %spec.select81, %bb.p ] ; 2 uses
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3) #32
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2) #32
  call void @_ZN5ImGui5PopIDEv() #32
  br i1 %.9, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  br i1 %i.m, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = srem i32 %.2, 12
  %i.bn = select i1 %.072.in, i32 12, i32 0
  %i.bo = add nsw i32 %i.bn, %i.bm
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.3 = phi i32 [ %.2, %bb.r ], [ %i.bo, %bb.s ]
  store i32 %.3, ptr %i.u, align 8, !tbaa !280
  store i32 %.261, ptr %i.r, align 4, !tbaa !279
  store i32 %.267, ptr %i.b, align 8, !tbaa !278
  %i.bp = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i82, label %bb.u, label %_ZN6ImPlot8GetStyleEv.exit.i83

bb.u:                                             ; preds = %bb.t
  %i.bq = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i84 = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i83

_ZN6ImPlot8GetStyleEv.exit.i83:                   ; preds = %bb.u, %bb.t
  %i.br = phi ptr [ %.pre.i.i84, %bb.u ], [ %i.bp, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 768
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !284, !range !263, !noundef !264
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i83
  %i.bv = call i64 @mktime(ptr noundef nonnull %i.b) #32
  br label %_ZN6ImPlotL6MkTimeEP2tm.exit

bb.w:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i83
  %i.bw = call i64 @timegm(ptr noundef nonnull %i.b) #32
  br label %_ZN6ImPlotL6MkTimeEP2tm.exit

_ZN6ImPlotL6MkTimeEP2tm.exit:                     ; preds = %bb.v, %bb.w
  %.sink.i = phi i64 [ %i.bw, %bb.w ], [ %i.bv, %bb.v ]
  %spec.select.i8.i = call i64 @llvm.smax.i64(i64 %.sink.i, i64 0)
  store i64 %spec.select.i8.i, ptr %1, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %_ZN6ImPlotL6MkTimeEP2tm.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %.9
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %0, double noundef %1, double noundef %2) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = fcmp olt double %1, %2
  %i.b = select i1 %i.a, double %1, double %2     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = fcmp oge double %1, %2
  %i.e = select i1 %i.d, double %1, double %2     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = fcmp ult double %i.b, f0x7FEFFFFFFFFFFFFF
  %i.h = fcmp ole double %i.b, f0xFFEFFFFFFFFFFFFF
  %i.i = select i1 %i.h, double f0xFFEFFFFFFFFFFFFF, double %i.b
  %i.j = select i1 %i.g, double %i.i, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i = fcmp ord double %i.j, 0.000000e+00
  %i.k = select i1 %.inv.i.i, double %i.j, double 0.000000e+00 ; 3 uses
  store double %i.k, ptr %i.c, align 8, !tbaa !301
  %i.l = fcmp ult double %i.e, f0x7FEFFFFFFFFFFFFF
  %i.m = fcmp ole double %i.e, f0xFFEFFFFFFFFFFFFF
  %i.n = select i1 %i.m, double f0xFFEFFFFFFFFFFFFF, double %i.e
  %i.o = select i1 %i.l, double %i.n, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i14.i = fcmp ord double %i.o, 0.000000e+00
  %i.p = select i1 %.inv.i14.i, double %i.o, double 0.000000e+00 ; 3 uses
  store double %i.p, ptr %i.f, align 8, !tbaa !302
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load double, ptr %i.q, align 8, !tbaa !303 ; 3 uses
  %i.s = fcmp olt double %i.k, %i.r
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %i.r, ptr %i.c, align 8, !tbaa !301
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi double [ %i.r, %bb.b ], [ %i.k, %bb.a ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load double, ptr %i.u, align 8, !tbaa !313 ; 3 uses
  %i.w = fcmp ogt double %i.p, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %i.v, ptr %i.f, align 8, !tbaa !302
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi double [ %i.v, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.y = fsub double %i.x, %i.t                   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load double, ptr %i.z, align 8, !tbaa !304 ; 2 uses
  %i.ab = fcmp olt double %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = fsub double %i.aa, %i.y
  %i.ad = fmul double %i.ac, 5.000000e-01         ; 2 uses
  %i.ae = fsub double %i.t, %i.ad                 ; 2 uses
  store double %i.ae, ptr %i.c, align 8, !tbaa !301
  %i.af = fadd double %i.x, %i.ad                 ; 2 uses
  store double %i.af, ptr %i.f, align 8, !tbaa !302
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = phi double [ %i.af, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.ah = phi double [ %i.ae, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !305 ; 2 uses
  %i.ak = fcmp ogt double %i.y, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = fsub double %i.y, %i.aj
  %i.am = fmul double %i.al, 5.000000e-01         ; 2 uses
  %i.an = fadd double %i.ah, %i.am                ; 2 uses
  store double %i.an, ptr %i.c, align 8, !tbaa !301
  %i.ao = fsub double %i.ag, %i.am                ; 2 uses
  store double %i.ao, ptr %i.f, align 8, !tbaa !302
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = phi double [ %i.an, %bb.h ], [ %i.ah, %bb.g ] ; 8 uses
  %i.aq = phi double [ %i.ao, %bb.h ], [ %i.ag, %bb.g ] ; 2 uses
  %i.ar = fcmp ugt double %i.aq, %i.ap
  br i1 %i.ar, label %_ZN10ImPlotAxis9ConstrainEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = fadd double %i.ap, f0x3CB0000000000000  ; 2 uses
  store double %i.as, ptr %i.f, align 8, !tbaa !302
  br label %_ZN10ImPlotAxis9ConstrainEv.exit

_ZN10ImPlotAxis9ConstrainEv.exit:                 ; preds = %bb.i, %bb.j
  %i.at = phi double [ %i.aq, %bb.i ], [ %i.as, %bb.j ] ; 5 uses
  %i.au = fptosi double %i.ap to i64
  %i.av = tail call double @llvm.floor.f64(double %i.ap)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ax = fptosi double %i.at to i64
  %i.ay = tail call double @llvm.floor.f64(double %i.at)
  %i.az = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1
  %i.bb = fmul <2 x double> %i.ba, splat (double -1.000000e+06)
  %i.bc = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.at, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> splat (double 1.000000e+06), <2 x double> %i.bb)
  %i.bf = fptosi <2 x double> %i.be to <2 x i32>
  %.frozen = freeze <2 x i32> %i.bf               ; 2 uses
  %i.bg = sdiv <2 x i32> %.frozen, splat (i32 1000000) ; 3 uses
  %i.bh = extractelement <2 x i32> %i.bg, i64 0
  %i.bi = sext i32 %i.bh to i64
  %i.bj = add nsw i64 %i.bi, %i.au
  store i64 %i.bj, ptr %i.aw, align 8, !tbaa !285
  %3 = extractelement <2 x i32> %i.bg, i64 1
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, %i.ax
  %6 = mul <2 x i32> %i.bg, splat (i32 1000000)
  %.decomposed = sub <2 x i32> %.frozen, %6       ; 2 uses
  %i.bk = extractelement <2 x i32> %.decomposed, i64 0
  store i32 %i.bk, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %5, ptr %i.bl, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %7 = extractelement <2 x i32> %.decomposed, i64 1
  store i32 %7, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !306
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !307
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fpext float %i.bq to double
  %i.bs = fsub double %i.at, %i.ap
  %i.bt = fdiv double %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %i.bt, ptr %i.bu, align 8, !tbaa !308
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !309 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN10ImPlotAxis9ConstrainEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !310
  %i.bz = tail call noundef double %i.bw(double noundef %i.ap, ptr noundef %i.by) #32, !inline_history !10
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 280
  store double %i.bz, ptr %i.ca, align 8, !tbaa !311
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !309
  %i.cc = load double, ptr %i.f, align 8, !tbaa !302
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !310
  %i.ce = tail call noundef double %i.cb(double noundef %i.cc, ptr noundef %i.cd) #32, !inline_history !10
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit

bb.l:                                             ; preds = %_ZN10ImPlotAxis9ConstrainEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 280
  store double %i.ap, ptr %i.cf, align 8, !tbaa !311
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit

_ZN10ImPlotAxis20UpdateTransformCacheEv.exit:     ; preds = %bb.k, %bb.l
  %.sink.i = phi double [ %i.at, %bb.l ], [ %i.ce, %bb.k ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %.sink.i, ptr %i.cg, align 8, !tbaa !312
  ret void
}

declare void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6ImPlot14ShowDatePickerEPKcPiP10ImPlotTimePKS3_S6_(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.ImPlotTime, align 8         ; 7 uses
  %6 = alloca %struct.ImPlotTime, align 8         ; 7 uses
  %7 = alloca %struct.ImVec4, align 4             ; 5 uses
  %8 = alloca %struct.ImVec4, align 4             ; 5 uses
  %9 = alloca %struct.ImVec4, align 4             ; 13 uses
  %10 = alloca %struct.ImVec4, align 4            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 40 uses
  %i.a = alloca [32 x i8], align 16               ; 20 uses
  %13 = alloca %struct.ImPlotTime, align 8        ; 6 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 4 uses
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef %0) #32
  tail call void @_ZN5ImGui10BeginGroupEv() #32
  %i.b = tail call noundef nonnull align 4 dereferenceable(1232) ptr @_ZN5ImGui8GetStyleEv() #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !314
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !314
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !314
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store <2 x float> zeroinitializer, ptr %11, align 8, !tbaa !41
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.f = call noundef float @_ZN5ImGui14GetFrameHeightEv() #32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.g = fmul float %i.f, 1.250000e+00
  store float %i.g, ptr %12, align 8, !tbaa !172
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 4
  store float %i.f, ptr %i.h, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.i = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 992 ; 10 uses
  %.not321 = icmp ne ptr %3, null                 ; 8 uses
  br i1 %.not321, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %_ZN6ImPlot8GetStyleEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i

_ZN6ImPlot8GetStyleEv.exit.i:                     ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 768
  %i.n = load i8, ptr %i.m, align 4, !tbaa !284, !range !263, !noundef !264
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i
  %i.p = call noundef ptr @localtime_r(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.j) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit

bb.e:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i
  %i.q = call noundef ptr @gmtime_r(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.j) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit

_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit:      ; preds = %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 1008
  %i.s = load i32, ptr %i.r, align 8, !tbaa !282
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 1004
  %i.u = load i32, ptr %i.t, align 4, !tbaa !281
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 1012
  %i.w = load i32, ptr %i.v, align 4, !tbaa !283
  %i.x = add nsw i32 %i.w, 1900
  br label %bb.f

bb.f:                                             ; preds = %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit, %bb.a
  %.0298 = phi i32 [ %i.x, %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit ], [ 0, %bb.a ] ; 7 uses
  %.0297 = phi i32 [ %i.u, %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit ], [ 0, %bb.a ] ; 2 uses
  %.0296 = phi i32 [ %i.s, %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit ], [ 0, %bb.a ] ; 3 uses
  %i.y = icmp ne ptr %4, null                     ; 7 uses
  br i1 %i.y, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.not.i.i343 = icmp eq ptr %i.z, null
  br i1 %.not.i.i343, label %bb.h, label %_ZN6ImPlot8GetStyleEv.exit.i344

bb.h:                                             ; preds = %bb.g
  %i.aa = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i346 = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i344

_ZN6ImPlot8GetStyleEv.exit.i344:                  ; preds = %bb.h, %bb.g
  %i.ab = phi ptr [ %.pre.i.i346, %bb.h ], [ %i.z, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 768
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !284, !range !263, !noundef !264
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i344
  %i.af = call noundef ptr @localtime_r(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull %i.j) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit347

bb.j:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i344
  %i.ag = call noundef ptr @gmtime_r(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull %i.j) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit347

_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit347:   ; preds = %bb.i, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 1008
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !282
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 1004
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !281
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 1012
  %i.am = load i32, ptr %i.al, align 4, !tbaa !283
  %i.an = add nsw i32 %i.am, 1900
  br label %bb.k

bb.k:                                             ; preds = %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit347, %bb.f
  %.0301 = phi i32 [ %i.an, %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit347 ], [ 0, %bb.f ] ; 7 uses
  %.0300 = phi i32 [ %i.ak, %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit347 ], [ 0, %bb.f ] ; 2 uses
  %.0299 = phi i32 [ %i.ai, %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit347 ], [ 0, %bb.f ] ; 3 uses
  %i.ao = load i32, ptr %1, align 4, !tbaa !29
  switch i32 %i.ao, label %.loopexit [
    i32 0, label %bb.l
    i32 1, label %bb.bq
    i32 2, label %bb.dt
  ]

bb.l:                                             ; preds = %bb.k
  %i.ap = call { i64, i32 } @_ZN6ImPlot9FloorTimeERK10ImPlotTimei(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 5) ; 2 uses
  %.fca.0.extract212 = extractvalue { i64, i32 } %i.ap, 0
  %.fca.1.extract213 = extractvalue { i64, i32 } %i.ap, 1
  store i64 %.fca.0.extract212, ptr %2, align 8, !tbaa !285
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 %.fca.1.extract213, ptr %.sroa.4217.0..sroa_idx, align 8, !tbaa !29
  %i.aq = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.not.i.i348 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i348, label %bb.m, label %_ZN6ImPlot8GetStyleEv.exit.i349

bb.m:                                             ; preds = %bb.l
  %i.ar = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i351 = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i349

_ZN6ImPlot8GetStyleEv.exit.i349:                  ; preds = %bb.m, %bb.l
  %i.as = phi ptr [ %.pre.i.i351, %bb.m ], [ %i.aq, %bb.l ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 768
  %i.au = load i8, ptr %i.at, align 4, !tbaa !284, !range !263, !noundef !264
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i349
end_hunk_2
