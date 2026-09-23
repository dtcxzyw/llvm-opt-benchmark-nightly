Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/theme_preview_widget?download=true
inline.NumInlined: 902
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK18ThemePreviewWidget11buildLayoutERK5QRect:bb.a
bb.ap:                                            ; preds = %bb.ao, %bb.m, %bb.h, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ao ], [ %i.m, %bb.h ], [ %i.x, %bb.m ], [ %i.l, %bb.g ]
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %4) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ap ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN11FontManager4fontEv(ptr dead_on_unwind writable sret(%class.QFont) align 8) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11FontManager13monospaceFontEv(ptr dead_on_unwind writable sret(%class.QFont) align 8) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK5QFont6familyEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(12)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12), ptr noundef align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN13QFontMetricsFC1ERK5QFont(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef double @_ZNK13QFontMetricsF6heightEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QFontC1ERKS_(ptr noundef align 8 dereferenceable_or_null(12), ptr noundef align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN13QFontMetricsFC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN13QFontMetricsFD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN5QFontD1Ev(ptr noundef align 8 dead_on_return(12) dereferenceable_or_null(12)) unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18ThemePreviewWidget17paintWindowChromeER8QPainterRK5QRectRK6QColor(ptr dead_on_unwind noalias writable sret(%"struct.ThemePreviewWidget::WindowChrome") align 8 %0, ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(64) %1, ptr noundef align 8 dereferenceable(8) %2, ptr nofree noundef readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef align 4 dereferenceable(14) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.QColor, align 8              ; 6 uses
  %6 = alloca %class.QRectF, align 16             ; 7 uses
  %7 = alloca %class.QPainterPath, align 8        ; 9 uses
  %8 = alloca %class.QRectF, align 16             ; 8 uses
  %i.a = tail call noundef i32 @_ZNK6QColor9lightnessEv(ptr noundef align 4 dereferenceable_or_null(14) %4) #23
  %i.b = icmp slt i32 %i.a, 128                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.str..str.1 = select i1 %i.b, ptr @.str, ptr @.str.1
  %.str.2..str.3 = select i1 %i.b, ptr @.str.2, ptr @.str.3
  %i.c = tail call { i64, i64 } @_ZN6QColor10fromStringE14QAnyStringView(ptr nonnull %.str..str.1, i64 4611686018427387911) #23 ; 2 uses
  %.fca.0.extract.i20 = extractvalue { i64, i64 } %i.c, 0
  %.fca.1.extract.i21 = extractvalue { i64, i64 } %i.c, 1
  %.sroa.2.0.extract.trunc.i22 = trunc i64 %.fca.1.extract.i21 to i48
  store i64 %.fca.0.extract.i20, ptr %5, align 8
  store i48 %.sroa.2.0.extract.trunc.i22, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.d = tail call { i64, i64 } @_ZN6QColor10fromStringE14QAnyStringView(ptr nonnull %.str.2..str.3, i64 4611686018427387911) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load <2 x i32>, ptr %3, align 4          ; 2 uses
  %i.g = sitofp <2 x i32> %i.f to <2 x double>
  %i.h = fadd <2 x double> %i.g, splat (double 5.000000e-01)
  store <2 x double> %i.h, ptr %6, align 16, !alias.scope !16
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.e, align 4
  %i.k = sub <2 x i32> %i.j, %i.f
  %i.l = add <2 x i32> %i.k, splat (i32 1)
  %i.m = sitofp <2 x i32> %i.l to <2 x double>
  %i.n = fadd <2 x double> %i.m, splat (double -5.000000e-01)
  %i.o = fadd <2 x double> %i.n, splat (double -5.000000e-01)
  store <2 x double> %i.o, ptr %i.i, align 16, !alias.scope !16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN12QPainterPathC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7) #23
  invoke void @_ZN12QPainterPath14addRoundedRectERK6QRectFddN2Qt8SizeModeE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef 8.000000e+00, double noundef 8.000000e+00, i32 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef align 8 dereferenceable_or_null(8) %2, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8QPainter11setClipPathERK12QPainterPathN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.p = load double, ptr %i.i, align 16
  %i.q = load <2 x double>, ptr %6, align 16
  store <2 x double> %i.q, ptr %8, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %i.p, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  store double 2.400000e+01, ptr %i.s, align 8
  invoke void @_ZN8QPainter8fillRectERK6QRectFRK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(14) %5)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN18ThemePreviewWidget18drawWindowControlsER8QPainterRK6QRectFb(ptr align 8 poison, ptr noundef align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext %i.b)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8QPainter8setBrushEN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8) %2, i32 noundef 0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef align 8 dereferenceable_or_null(8) %2, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = load <4 x i32>, ptr %3, align 4          ; 2 uses
  invoke void @_ZN12QPainterPathC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.v = add <2 x i32> %i.u, <i32 24, i32 -1>
  %i.w = shufflevector <4 x i32> %i.t, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.x = add <2 x i32> %i.w, <i32 1, i32 -1>
  %.sroa.643.0.in = extractvalue { i64, i64 } %i.d, 1
  %.sroa.643.0 = trunc i64 %.sroa.643.0.in to i48
  %.sroa.042.0 = extractvalue { i64, i64 } %i.d, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.042.0, ptr %i.y, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i48 %.sroa.643.0, ptr %.sroa.643.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = zext <2 x i32> %i.v to <2 x i64>
  %i.ab = shl nuw <2 x i64> %i.aa, splat (i64 32)
  %i.ac = zext <2 x i32> %i.x to <2 x i64>
  %i.ad = or disjoint <2 x i64> %i.ab, %i.ac
  store <2 x i64> %i.ad, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN12QPainterPathD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.af, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.ae, %bb.j ]
  call void @_ZN12QPainterPathD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind null_pointer_is_valid
declare noundef i32 @_ZNK6QColor9lightnessEv(ptr noundef align 4 dereferenceable_or_null(14)) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN12QPainterPathC1Ev(ptr noundef align 8 dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QPainterPath14addRoundedRectERK6QRectFddN2Qt8SizeModeE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32), double noundef, double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef align 8 dereferenceable_or_null(8), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter11setClipPathERK12QPainterPathN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter8fillRectERK6QRectFRK6QColor(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32), ptr noundef align 4 dereferenceable(14)) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18ThemePreviewWidget18drawWindowControlsER8QPainterRK6QRectFb(ptr nofree readnone align 8 captures(none) %0, ptr noundef align 8 dereferenceable(8) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QLineF, align 8              ; 7 uses
  %5 = alloca %class.QLineF, align 8              ; 7 uses
  %6 = alloca %class.QLineF, align 8              ; 7 uses
  %7 = alloca %class.QColor, align 8              ; 6 uses
  %8 = alloca %class.QPen, align 8                ; 7 uses
  %9 = alloca %class.QBrush, align 8              ; 7 uses
  %10 = alloca %class.QRectF, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load double, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.str.4..str.5 = select i1 %3, ptr @.str.4, ptr @.str.5
  %i.e = tail call { i64, i64 } @_ZN6QColor10fromStringE14QAnyStringView(ptr nonnull %.str.4..str.5, i64 4611686018427387911) #23 ; 2 uses
  %.fca.0.extract.i19 = extractvalue { i64, i64 } %i.e, 0
  %.fca.1.extract.i20 = extractvalue { i64, i64 } %i.e, 1
  %.sroa.2.0.extract.trunc.i21 = trunc i64 %.fca.1.extract.i20 to i48
  store i64 %.fca.0.extract.i19, ptr %7, align 8
  store i48 %.sroa.2.0.extract.trunc.i21, ptr %.sroa.4.0..sroa_idx.i, align 8
  tail call void @_ZN8QPainter8setBrushEN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %9, ptr noundef nonnull align 4 dereferenceable(14) %7, i32 noundef 1)
  invoke void @_ZN4QPenC1ERK6QBrushdN2Qt8PenStyleENS3_11PenCapStyleENS3_12PenJoinStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, double noundef 1.200000e+00, i32 noundef 1, i32 noundef 16, i32 noundef 64)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = fmul double %i.d, 5.000000e-01
  %i.g = fadd double %i.b, %i.f                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #23
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.i = load double, ptr %2, align 8
  %i.j = load double, ptr %i.h, align 8
  %i.k = fadd double %i.i, %i.j
  %i.l = fadd double %i.k, -1.200000e+01
  %i.m = fadd double %i.l, -1.000000e+01          ; 4 uses
  %i.n = fadd double %i.m, 1.000000e+01           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store double %i.m, ptr %6, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.n, ptr %i.o, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %12 = insertelement <4 x double> <double poison, double poison, double -0.000000e+00, double -0.000000e+00>, double %i.m, i64 0
  %13 = insertelement <4 x double> %12, double %i.g, i64 1
  %14 = fadd <4 x double> %13, <double -1.800000e+01, double -5.000000e+00, double 1.000000e+01, double 1.000000e+01> ; 2 uses
  %15 = extractelement <4 x double> %14, i64 1    ; 3 uses
  %16 = fadd double %15, 1.000000e+01             ; 2 uses
  store double %15, ptr %.sroa.444.0..sroa_idx, align 8
  store double %16, ptr %.sroa.442.0..sroa_idx, align 8
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store double %i.n, ptr %5, align 8
  store double %15, ptr %.sroa.440.0..sroa_idx, align 8
  store double %i.m, ptr %11, align 8
  store double %16, ptr %.sroa.438.0..sroa_idx, align 8
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store <4 x double> %14, ptr %10, align 8
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 1)
  %i.p = load double, ptr %10, align 8
  %i.q = fadd double %i.p, -1.800000e+01          ; 2 uses
  %i.r = fadd double %i.q, 1.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store double %i.q, ptr %4, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.g, ptr %.sroa.434.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.r, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.t, %bb.d ]
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter8setBrushEN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QPainterPathC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN12QPainterPathD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 4 dereferenceable(14), i32 noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN4QPenC1ERK6QBrushdN2Qt8PenStyleENS3_11PenCapStyleENS3_12PenJoinStyleE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8), double noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN4QPenD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN6QBrushD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18ThemePreviewWidget17strokeWindowFrameER8QPainterRKNS_12WindowChromeE(ptr nofree readnone align 8 captures(none) %0, ptr noundef align 8 dereferenceable(8) %1, ptr noundef align 8 dereferenceable(40) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QPen, align 8                ; 7 uses
  %4 = alloca %class.QBrush, align 8              ; 7 uses
  tail call void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 1, i1 noundef zeroext true)
  tail call void @_ZN8QPainter11setClippingEb(ptr noundef align 8 dereferenceable_or_null(8) %1, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %4, ptr noundef nonnull align 4 dereferenceable(14) %i.a, i32 noundef 1)
  invoke void @_ZN4QPenC1ERK6QBrushdN2Qt8PenStyleENS3_11PenCapStyleENS3_12PenJoinStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef 1.000000e+00, i32 noundef 1, i32 noundef 16, i32 noundef 64)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #23
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN8QPainter8setBrushEN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 0)
  call void @_ZN8QPainter8drawPathERK12QPainterPath(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %2)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.b, %bb.d ]
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter11setClippingEb(ptr noundef align 8 dereferenceable_or_null(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter8drawPathERK12QPainterPath(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define void @_ZNK18ThemePreviewWidget8cellRectERK5QRectiii(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.QRectF) align 8 captures(none) %0, ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(64) %1, ptr nofree noundef readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %3, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.016.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.016.epil = phi double [ %.016.epil.init, %.lr.ph.epil.preheader ], [ %i.e, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = getelementptr [24 x i8], ptr @_ZN12_GLOBAL__N_18kColumnsE, i64 %indvars.iv.epil
  %i.d = load double, ptr %i.c, align 8
  %i.e = fadd double %.016.epil, %i.d             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !17

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ], [ %i.e, %.lr.ph.epil ]
  %i.f = load i32, ptr %2, align 4                ; 2 uses
  %i.g = sitofp i32 %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %reass.sub = sub i32 %i.i, %i.f
  %i.j = add i32 %reass.sub, 1
  %i.k = sitofp i32 %i.j to double                ; 2 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %.0.lcssa, double %i.k, double %i.g)
  %i.m = sext i32 %3 to i64
  %i.n = getelementptr [24 x i8], ptr @_ZN12_GLOBAL__N_18kColumnsE, i64 %i.m
  %i.o = load double, ptr %i.n, align 8
  %i.p = fmul double %i.o, %i.k
  %i.q = sitofp i32 %4 to double
  %i.r = sitofp i32 %5 to double
  %i.s = fadd double %i.l, 4.000000e+00
  %i.t = fadd double %i.p, -4.000000e+00
  %i.u = fadd double %i.t, -4.000000e+00
  store double %i.s, ptr %0, align 8, !alias.scope !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.q, ptr %i.v, align 8, !alias.scope !21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.u, ptr %i.w, align 8, !alias.scope !21
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.x, align 8, !alias.scope !21
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.016 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.y = getelementptr [24 x i8], ptr @_ZN12_GLOBAL__N_18kColumnsE, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 16
  %i.aa = fadd double %.016, %i.z
  %i.ab = getelementptr [24 x i8], ptr @_ZN12_GLOBAL__N_18kColumnsE, i64 %indvars.iv
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = fadd double %i.aa, %i.ad
  %i.af = getelementptr [24 x i8], ptr @_ZN12_GLOBAL__N_18kColumnsE, i64 %indvars.iv
  %i.ag = getelementptr i8, ptr %i.af, i64 48
  %i.ah = load double, ptr %i.ag, align 16
  %i.ai = fadd double %i.ae, %i.ah
  %i.aj = getelementptr [24 x i8], ptr @_ZN12_GLOBAL__N_18kColumnsE, i64 %indvars.iv
  %i.ak = getelementptr i8, ptr %i.aj, i64 72
  %i.al = load double, ptr %i.ak, align 8
  %i.am = fadd double %i.ai, %i.al                ; 3 uses
end_hunk_0
