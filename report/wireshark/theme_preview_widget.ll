Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/theme_preview_widget?download=true
inline.NumInlined: 902
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN18ThemePreviewWidget18drawWindowControlsER8QPainterRK6QRectFb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.z, %bb.d ]
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
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !20
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef range(i32 129, 131) i32 @_ZNK18ThemePreviewWidget9cellFlagsEi(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(64) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %2 = getelementptr [24 x i8], ptr @_ZN12_GLOBAL__N_18kColumnsE, i64 %i.a
  %3 = getelementptr i8, ptr %2, i64 8
  %4 = load i8, ptr %3, align 8, !range !8, !noundef !9
  %5 = trunc nuw i8 %4 to i1
  %i.b = select i1 %5, i32 130, i32 129
  ret i32 %i.b
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18ThemePreviewWidget11drawToolbarER8QPainterRKNS_6LayoutE(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(64) %0, ptr noundef align 8 dereferenceable(8) %1, ptr noundef align 8 dereferenceable(180) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QLineF, align 8              ; 7 uses
  %4 = alloca %class.QLine, align 8               ; 5 uses
  %5 = alloca %class.QPalette, align 8            ; 8 uses
  %6 = alloca %class.QColor, align 8              ; 6 uses
  %7 = alloca %class.QColor, align 8              ; 7 uses
  %8 = alloca %class.StockIcon, align 8           ; 7 uses
  %9 = alloca %class.QString, align 8             ; 6 uses
  %10 = alloca %class.QRect, align 4              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN15QGuiApplication7paletteEv(ptr dead_on_unwind nonnull writable sret(%class.QPalette) align 8 %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.a = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %5, i32 noundef 4, i32 noundef 10)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 39, ptr noundef align 4 dereferenceable(14) %i.c)
          to label %bb.c unwind label %bb.j       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract17 = extractvalue { i64, i64 } %i.d, 0
  %.fca.1.extract18 = extractvalue { i64, i64 } %i.d, 1
  store i64 %.fca.0.extract17, ptr %6, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.220.0.extract.trunc = trunc i64 %.fca.1.extract18 to i48
  store i48 %.sroa.220.0.extract.trunc, ptr %.sroa.220.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.e = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %5, i32 noundef 4, i32 noundef 5)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 52, ptr noundef align 4 dereferenceable(14) %i.g)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.fca.0.extract = extractvalue { i64, i64 } %i.h, 0
  %.fca.1.extract = extractvalue { i64, i64 } %i.h, 1
  store i64 %.fca.0.extract, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.extract.trunc = trunc i64 %.fca.1.extract to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 3 uses
  invoke void @_ZN8QPainter8fillRectERK5QRectRK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(14) %6)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %7)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %.sroa.2.0.insert.ext.i = zext i32 %i.l to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.j to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.n = load i64, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 %.sroa.0.0.insert.insert.i, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8
  invoke void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull %4, i32 noundef 1)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.p = load i32, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.r = load i32, ptr %i.q, align 8              ; 5 uses
  %i.s = add i32 %i.p, 1
  %i.t = sub i32 %i.s, %i.r                       ; 3 uses
  %i.u = add i32 %i.t, -8                         ; 2 uses
  %i.v = load i32, ptr %i.i, align 4
  %i.w = add i32 %i.v, 6
  %i.x = add i32 %i.r, 4
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = add i32 %i.t, -9
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ac = add i32 %i.r, 3
  %i.ad = add i32 %i.ac, %i.u
  %i.ae = add i32 %i.t, -6
  %i.af = add i32 %i.r, 7
  %i.ag = sitofp i32 %i.af to double
  %i.ah = add i32 %i.r, 1
  %i.ai = add i32 %i.ah, %i.u
  %i.aj = sitofp i32 %i.ai to double
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.k

bb.i:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.j:                                             ; preds = %bb.a, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %bb.h, %bb.s
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %.03560 = phi i32 [ %i.w, %bb.h ], [ %.1, %bb.s ] ; 4 uses
  %i.am = and i64 %indvars.iv, 11
  %.not = icmp eq i64 %i.am, 3
  br i1 %.not, label %bb.l, label %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %7)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.an = add i32 %.03560, 4
  %i.ao = sitofp i32 %i.an to double              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store double %i.ao, ptr %3, align 8
  store double %i.ag, ptr %.sroa.557.0..sroa_idx, align 8
  store double %i.ao, ptr %i.ak, align 8
  store double %i.aj, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.s

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.m, %bb.f, %bb.e, %bb.d, %bb.c, %bb.g
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit: ; preds = %bb.k
  %i.ap = getelementptr [8 x i8], ptr @_ZZN18ThemePreviewWidget11drawToolbarER8QPainterRKNS_6LayoutEE5icons, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.aq) #23
  invoke void @_ZN7QString10fromLatin1E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, i64 %i.ar, ptr nonnull %i.aq)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit
  invoke void @_ZN9StockIconC1E7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull align 8 %9)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i32 %.03560, ptr %10, align 4
  store i32 %i.x, ptr %i.y, align 4
  %i.as = add i32 %i.aa, %.03560
  store i32 %i.as, ptr %i.z, align 4
  store i32 %i.ad, ptr %i.ab, align 4
  invoke void @_ZNK5QIcon5paintEP8QPainterRK5QRect6QFlagsIN2Qt13AlignmentFlagEENS_4ModeENS_5StateE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 132, i32 noundef 0, i32 noundef 1)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN5QIconD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #23
  %i.at = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.q
  %i.au = atomicrmw sub ptr %i.at, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.au, 1
  br i1 %.not.i.i, label %bb.r, label %_ZN7QStringD2Ev.exit

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.av = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.av, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.s

bb.s:                                             ; preds = %_ZN7QStringD2Ev.exit, %bb.n
  %.pn48 = phi i32 [ %i.ae, %_ZN7QStringD2Ev.exit ], [ 9, %bb.n ]
  %.1 = add i32 %.pn48, %.03560
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %bb.i, label %bb.k, !llvm.loop !22

bb.t:                                             ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit53
end_hunk_0
begin_hunk_1_@_ZN18ThemePreviewWidget16drawColumnHeaderER8QPainterRKNS_6LayoutE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add i32 %i.x, -1
  %.sroa.5.8.insert.ext.i = zext i32 %i.y to i64
  %.sroa.5.8.insert.shift.i = shl nuw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.v to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  store i64 %i.r, ptr %9, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.3.8.insert.insert.i, ptr %i.z, align 8
  invoke void @_ZN8QPainter9drawRectsEPK5QRecti(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
          to label %_ZN8QPainter8drawRectERK5QRect.exit unwind label %bb.v

_ZN8QPainter8drawRectERK5QRect.exit:              ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.aa = load i32, ptr %2, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZN8QPainter7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.ad)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.preheader:                                       ; preds = %_ZN8QPainter8drawRectERK5QRect.exit
  %i.ae = sitofp i32 %i.aa to double              ; 6 uses
  %reass.sub = sub i32 %i.ac, %i.aa
  %i.af = add i32 %reass.sub, -10
  %i.ag = sitofp i32 %i.af to double              ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %8)
          to label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.peel: ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.al = load i32, ptr %i.s, align 8             ; 2 uses
  %i.am = load i32, ptr %i.w, align 8
  %reass.sub92.peel = sub i32 %i.am, %i.al
  %i.an = add i32 %reass.sub92.peel, 1
  %i.ao = call double @llvm.fmuladd.f64(double %i.ag, double 0.000000e+00, double %i.ae)
  %i.ap = fmul nnan double %i.ag, 6.000000e-02
  %i.aq = sitofp i32 %i.al to double
  %i.ar = sitofp i32 %i.an to double
  %i.as = fadd double %i.ao, 4.000000e+00
  %i.at = fadd double %i.ap, -4.000000e+00
  %i.au = fadd double %i.at, -4.000000e+00
  store double %i.as, ptr %10, align 8, !alias.scope !33
  store double %i.aq, ptr %i.ah, align 8, !alias.scope !33
  store double %i.au, ptr %i.ai, align 8, !alias.scope !33
  store double %i.ar, ptr %i.aj, align 8, !alias.scope !33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %11, ptr noundef align 8 dereferenceable_or_null(56) @_ZN18ThemePreviewWidget16staticMetaObjectE, ptr noundef @.str.119, ptr noundef null, i32 noundef -1)
          to label %_ZN18ThemePreviewWidget2trEPKcS1_i.exit.peel unwind label %.loopexit.split-lp130

_ZN18ThemePreviewWidget2trEPKcS1_i.exit.peel:     ; preds = %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.peel
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 130, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef null)
          to label %bb.m unwind label %.loopexit.split-lp134

bb.m:                                             ; preds = %_ZN18ThemePreviewWidget2trEPKcS1_i.exit.peel
  %i.av = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i.peel = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.peel, label %_ZN7QStringD2Ev.exit.peel, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.peel

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.peel: ; preds = %bb.m
  %i.aw = atomicrmw sub ptr %i.av, i32 1 acq_rel, align 4
  %.not.i.i.peel = icmp eq i32 %i.aw, 1
  br i1 %.not.i.i.peel, label %bb.n, label %_ZN7QStringD2Ev.exit.peel

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.peel
  %i.ax = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ax, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit.peel

_ZN7QStringD2Ev.exit.peel:                        ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.peel, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %7)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.o:                                             ; preds = %_ZN7QStringD2Ev.exit.peel
  %i.ay = call double @llvm.fmuladd.f64(double %i.ag, double 6.000000e-02, double %i.ae) ; 2 uses
  %i.az = load i32, ptr %i.s, align 8
  %i.ba = add i32 %i.az, 3
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = load i32, ptr %i.w, align 8
  %i.bd = add i32 %i.bc, -3
  %i.be = sitofp i32 %i.bd to double
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store double %i.ay, ptr %3, align 8
  store double %i.bb, ptr %.sroa.579.0..sroa_idx, align 8
  store double %i.ay, ptr %i.ak, align 8
  store double %i.be, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %.peel.next unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.peel.next:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %8)
          to label %.lr.ph.i.preheader.peel102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.lr.ph.i.preheader.peel102:                       ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bf = load i32, ptr %i.s, align 8             ; 2 uses
  %i.bg = load i32, ptr %i.w, align 8
  %reass.sub92.peel100 = sub i32 %i.bg, %i.bf
  %i.bh = add i32 %reass.sub92.peel100, 1
  %i.bi = call double @llvm.fmuladd.f64(double %i.ag, double 6.000000e-02, double %i.ae)
  %i.bj = fmul nnan double %i.ag, 1.100000e-01
  %i.bk = sitofp i32 %i.bf to double
  %i.bl = sitofp i32 %i.bh to double
  %i.bm = fadd double %i.bi, 4.000000e+00
  %i.bn = fadd double %i.bj, -4.000000e+00
  %i.bo = fadd double %i.bn, -4.000000e+00
  store double %i.bm, ptr %10, align 8, !alias.scope !34
  store double %i.bk, ptr %i.ah, align 8, !alias.scope !34
  store double %i.bo, ptr %i.ai, align 8, !alias.scope !34
  store double %i.bl, ptr %i.aj, align 8, !alias.scope !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %11, ptr noundef align 8 dereferenceable_or_null(56) @_ZN18ThemePreviewWidget16staticMetaObjectE, ptr noundef @.str.120, ptr noundef null, i32 noundef -1)
          to label %_ZN18ThemePreviewWidget2trEPKcS1_i.exit.peel120 unwind label %.loopexit.split-lp130

_ZN18ThemePreviewWidget2trEPKcS1_i.exit.peel120:  ; preds = %.lr.ph.i.preheader.peel102
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 129, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef null)
          to label %bb.p unwind label %.loopexit.split-lp134

bb.p:                                             ; preds = %_ZN18ThemePreviewWidget2trEPKcS1_i.exit.peel120
  %i.bp = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i.peel121 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.peel121, label %_ZN7QStringD2Ev.exit.peel124, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.peel122

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.peel122: ; preds = %bb.p
  %i.bq = atomicrmw sub ptr %i.bp, i32 1 acq_rel, align 4
  %.not.i.i.peel123 = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i.peel123, label %bb.q, label %_ZN7QStringD2Ev.exit.peel124

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.peel122
  %i.br = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit.peel124

_ZN7QStringD2Ev.exit.peel124:                     ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.peel122, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %7)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.r:                                             ; preds = %_ZN7QStringD2Ev.exit.peel124
  %i.bs = call double @llvm.fmuladd.f64(double %i.ag, double f0x3FC5C28F5C28F5C2, double %i.ae) ; 2 uses
  %i.bt = load i32, ptr %i.s, align 8
  %i.bu = add i32 %i.bt, 3
  %i.bv = sitofp i32 %i.bu to double
  %i.bw = load i32, ptr %i.w, align 8
  %i.bx = add i32 %i.bw, -3
  %i.by = sitofp i32 %i.bx to double
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store double %i.bs, ptr %3, align 8
  store double %i.bv, ptr %.sroa.579.0..sroa_idx, align 8
  store double %i.bs, ptr %i.ak, align 8
  store double %i.by, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %.peel.next99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.peel.next99:                                     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.w

.loopexit138:                                     ; preds = %_ZN7QStringD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.s:                                             ; preds = %bb.a, %bb.b
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.t:                                             ; preds = %bb.c, %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.u:                                             ; preds = %bb.e, %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.v:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.ac, %.peel.next99
  %indvars.iv = phi i64 [ 2, %.peel.next99 ], [ %indvars.iv.next, %bb.ac ] ; 4 uses
  %.04289 = phi double [ f0x3FC5C28F5C28F5C2, %.peel.next99 ], [ %i.cw, %bb.ac ]
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %8)
          to label %.lr.ph.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.lr.ph.i.preheader:                               ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.cd = load i32, ptr %i.s, align 8             ; 2 uses
  %i.ce = load i32, ptr %i.w, align 8
  %reass.sub92 = sub i32 %i.ce, %i.cd
  %i.cf = add i32 %reass.sub92, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  switch i64 %indvars.iv, label %.lr.ph.i.6 [
    i64 2, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit
    i64 3, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split
    i64 4, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split139
    i64 5, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split140
    i64 6, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split141
  ]

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split: ; preds = %.lr.ph.i.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split139: ; preds = %.lr.ph.i.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split140: ; preds = %.lr.ph.i.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split141: ; preds = %.lr.ph.i.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit: ; preds = %.lr.ph.i.preheader, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split141, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split140, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split139, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split, %.lr.ph.i.6
  %.lcssa = phi double [ 6.900000e-01, %.lr.ph.i.6 ], [ f0x3FC5C28F5C28F5C2, %.lr.ph.i.preheader ], [ 5.400000e-01, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split140 ], [ 2.600000e-01, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split ], [ 4.000000e-01, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split139 ], [ 6.300000e-01, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split141 ]
  %i.cg = call double @llvm.fmuladd.f64(double %.lcssa, double %i.ag, double %i.ae)
  %i.ch = fadd double %i.cg, 4.000000e+00
  %i.ci = getelementptr [24 x i8], ptr @_ZN12_GLOBAL__N_18kColumnsE, i64 %indvars.iv ; 4 uses
  %i.cj = load double, ptr %i.ci, align 8, !noalias !35
  %i.ck = fmul double %i.cj, %i.ag
  %i.cl = sitofp i32 %i.cd to double
  %i.cm = sitofp i32 %i.cf to double
  %i.cn = fadd double %i.ck, -4.000000e+00
  %i.co = fadd double %i.cn, -4.000000e+00
  store double %i.ch, ptr %10, align 8, !alias.scope !36
  store double %i.cl, ptr %i.ah, align 8, !alias.scope !36
  store double %i.co, ptr %i.ai, align 8, !alias.scope !36
  store double %i.cm, ptr %i.aj, align 8, !alias.scope !36
  %12 = getelementptr i8, ptr %i.ci, i64 8
  %13 = load i8, ptr %12, align 8, !range !8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.cp = getelementptr i8, ptr %i.ci, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %11, ptr noundef align 8 dereferenceable_or_null(56) @_ZN18ThemePreviewWidget16staticMetaObjectE, ptr noundef %i.cq, ptr noundef null, i32 noundef -1)
          to label %_ZN18ThemePreviewWidget2trEPKcS1_i.exit unwind label %.loopexit.split-lp130

_ZN18ThemePreviewWidget2trEPKcS1_i.exit:          ; preds = %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit
  %14 = trunc nuw i8 %13 to i1
  %i.cr = select i1 %14, i32 130, i32 129
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef null)
          to label %bb.x unwind label %.loopexit.split-lp134

bb.x:                                             ; preds = %_ZN18ThemePreviewWidget2trEPKcS1_i.exit
  %i.cs = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.x
  %i.ct = atomicrmw sub ptr %i.cs, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.ct, 1
  br i1 %.not.i.i, label %bb.y, label %_ZN7QStringD2Ev.exit

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.cu = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cu, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.x, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.cv = load double, ptr %i.ci, align 8
  %i.cw = fadd double %.04289, %i.cv              ; 2 uses
  %.not = icmp eq i64 %indvars.iv, 7
  br i1 %.not, label %.loopexit138, label %bb.z

bb.z:                                             ; preds = %_ZN7QStringD2Ev.exit
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %7)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.cx = call double @llvm.fmuladd.f64(double %i.cw, double %i.ag, double %i.ae) ; 2 uses
  %i.cy = load i32, ptr %i.s, align 8
  %i.cz = add i32 %i.cy, 3
  %i.da = sitofp i32 %i.cz to double
  %i.db = load i32, ptr %i.w, align 8
  %i.dc = add i32 %i.db, -3
  %i.dd = sitofp i32 %i.dc to double
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store double %i.cx, ptr %3, align 8
  store double %i.da, ptr %.sroa.579.0..sroa_idx, align 8
  store double %i.cx, ptr %i.ak, align 8
  store double %i.dd, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit.split-lp130:                            ; preds = %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.peel, %.lr.ph.i.preheader.peel102
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit77

.loopexit.split-lp134:                            ; preds = %_ZN18ThemePreviewWidget2trEPKcS1_i.exit, %_ZN18ThemePreviewWidget2trEPKcS1_i.exit.peel, %_ZN18ThemePreviewWidget2trEPKcS1_i.exit.peel120
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.de = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i74, label %_ZN7QStringD2Ev.exit77, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75:    ; preds = %.loopexit.split-lp134
  %i.df = atomicrmw sub ptr %i.de, i32 1 acq_rel, align 4
  %.not.i.i76 = icmp eq i32 %i.df, 1
  br i1 %.not.i.i76, label %bb.ab, label %_ZN7QStringD2Ev.exit77

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75
  %i.dg = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dg, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit77

_ZN7QStringD2Ev.exit77:                           ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75, %.loopexit.split-lp134, %.loopexit.split-lp130
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp131, %.loopexit.split-lp130 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp134 ], [ %lpad.loopexit.split-lp136, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75 ], [ %lpad.loopexit.split-lp136, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.g, %_ZN8QPainter8drawRectERK5QRect.exit, %bb.aa, %bb.w, %bb.z, %.preheader, %_ZN7QStringD2Ev.exit.peel, %bb.o, %.peel.next, %_ZN7QStringD2Ev.exit.peel124, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.w, !llvm.loop !32

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %_ZN7QStringD2Ev.exit77, %bb.v
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7QStringD2Ev.exit77 ], [ %i.cc, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %bb.u
  %.pn53.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn, %.loopexit.split-lp ], [ %i.cb, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.t
  %.pn53.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn, %bb.ad ], [ %i.ca, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.s
  %.pn53.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn, %bb.ae ], [ %i.bz, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn53.pn.pn.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32), i32 noundef, ptr noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18ThemePreviewWidget14drawPacketListER8QPainterRKNS_6LayoutE(ptr noundef align 8 dereferenceable_or_null(64) %0, ptr noundef align 8 dereferenceable(8) %1, ptr noundef align 8 dereferenceable(180) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QPalette, align 8            ; 13 uses
  %4 = alloca %class.QColor, align 8              ; 7 uses
  %5 = alloca %class.QColor, align 8              ; 7 uses
  %6 = alloca %class.QColor, align 8              ; 6 uses
  %7 = alloca %class.QColor, align 8              ; 6 uses
  %8 = alloca %class.QColor, align 8              ; 6 uses
  %9 = alloca %class.QRect, align 4               ; 8 uses
  %10 = alloca %class.QColor, align 8             ; 14 uses
  %11 = alloca %class.QColor, align 8             ; 8 uses
  %12 = alloca %class.QString, align 8            ; 7 uses
  %13 = alloca %class.QFont, align 8              ; 8 uses
  %14 = alloca %class.QRectF, align 8             ; 20 uses
  %15 = alloca %class.QString, align 8            ; 27 uses
  %16 = alloca %class.QRect, align 16             ; 7 uses
  %17 = alloca %class.QBrush, align 8             ; 7 uses
  %18 = alloca %class.QRectF, align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN15QGuiApplication7paletteEv(ptr dead_on_unwind nonnull writable sret(%class.QPalette) align 8 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %3, i32 noundef 4, i32 noundef 9)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 40, ptr noundef align 4 dereferenceable(14) %i.c)
          to label %bb.c unwind label %bb.s       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract68 = extractvalue { i64, i64 } %i.d, 0
  %.fca.1.extract69 = extractvalue { i64, i64 } %i.d, 1
  store i64 %.fca.0.extract68, ptr %4, align 8
  %.sroa.271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.271.0.extract.trunc = trunc i64 %.fca.1.extract69 to i48
  store i48 %.sroa.271.0.extract.trunc, ptr %.sroa.271.0..sroa_idx, align 8
  %i.e = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %3, i32 noundef 4, i32 noundef 16)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 43, ptr noundef align 4 dereferenceable(14) %i.g)
          to label %bb.e unwind label %bb.s       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.fca.0.extract61 = extractvalue { i64, i64 } %i.h, 0
  %.fca.1.extract62 = extractvalue { i64, i64 } %i.h, 1
  %.sroa.264.0.extract.trunc = trunc i64 %.fca.1.extract62 to i48
  %i.i = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %3, i32 noundef 4, i32 noundef 6)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 41, ptr noundef align 4 dereferenceable(14) %i.k)
          to label %bb.g unwind label %bb.s       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.fca.0.extract54 = extractvalue { i64, i64 } %i.l, 0
  %.fca.1.extract55 = extractvalue { i64, i64 } %i.l, 1
  %.sroa.257.0.extract.trunc = trunc i64 %.fca.1.extract55 to i48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.m = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %3, i32 noundef 4, i32 noundef 5)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 44, ptr noundef align 4 dereferenceable(14) %i.o)
          to label %bb.i unwind label %bb.t       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.fca.0.extract50 = extractvalue { i64, i64 } %i.p, 0
  %.fca.1.extract51 = extractvalue { i64, i64 } %i.p, 1
  store i64 %.fca.0.extract50, ptr %5, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.253.0.extract.trunc = trunc i64 %.fca.1.extract51 to i48
  store i48 %.sroa.253.0.extract.trunc, ptr %.sroa.253.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.q = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %3, i32 noundef 4, i32 noundef 3)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 45, ptr noundef align 4 dereferenceable(14) %i.s)
          to label %bb.k unwind label %bb.w       ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN18ThemePreviewWidget14drawPacketListER8QPainterRKNS_6LayoutE:bb.a

bb.af:                                            ; preds = %bb.ae
  store i64 %.fca.0.extract39, ptr %10, align 8
  store i48 %.sroa.242.0.extract.trunc, ptr %.sroa.566.0..sroa_idx, align 8
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ae
  store i64 %.fca.0.extract25, ptr %10, align 8
  store i48 %.sroa.228.0.extract.trunc, ptr %.sroa.566.0..sroa_idx, align 8
  br label %.sink.split

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %10, ptr noundef nonnull align 8 dereferenceable(14) %4, i64 14, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.ag, %bb.ah
  %.pn192 = phi { i64, i64 } [ %i.ag, %bb.ah ], [ %i.af, %bb.ag ], [ %i.ab, %bb.af ] ; 2 uses
  %.096.ph = phi i1 [ true, %bb.ah ], [ false, %bb.ag ], [ false, %bb.af ]
  %.sroa.2.0.extract.trunc.sink.in = extractvalue { i64, i64 } %.pn192, 1
  %.sroa.2.0.extract.trunc.sink = trunc i64 %.sroa.2.0.extract.trunc.sink.in to i48
  %.fca.0.extract.sink = extractvalue { i64, i64 } %.pn192, 0
  store i64 %.fca.0.extract.sink, ptr %11, align 8
  store i48 %.sroa.2.0.extract.trunc.sink, ptr %.sroa.559.0..sroa_idx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ae
  %.096 = phi i1 [ false, %bb.ae ], [ %.096.ph, %.sink.split ]
  %i.dv = load i32, ptr %10, align 8
  %.not175 = icmp eq i32 %i.dv, 0
  br i1 %.not175, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN8QPainter8fillRectERK5QRectRK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(14) %10)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.al:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %i.aw)
          to label %bb.am unwind label %bb.ay

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN5QFont12setStrikeOutEb(ptr noundef nonnull align 8 dereferenceable_or_null(12) %13, i1 noundef zeroext %.096)
          to label %bb.an unwind label %bb.az

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN8QPainter7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %13)
          to label %bb.ao unwind label %bb.az

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %11)
          to label %.preheader.peel unwind label %bb.az

.preheader.peel:                                  ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.dx = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.dy = load i32, ptr %i.aq, align 4
  %reass.sub.peel = sub i32 %i.dy, %i.dx
  %i.dz = add i32 %reass.sub.peel, 1
  %i.ea = sitofp i32 %i.dx to double
  %i.eb = sitofp i32 %i.dz to double
  store double %i.be, ptr %14, align 8, !alias.scope !50
  store double %i.ea, ptr %i.az, align 8, !alias.scope !50
  store double %i.bg, ptr %i.ba, align 8, !alias.scope !50
  store double %i.eb, ptr %i.bb, align 8, !alias.scope !50
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ec = load ptr, ptr %i.ca, align 16           ; 2 uses
  %i.ed = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ec) #23
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, i64 %i.ed, ptr %i.ec)
          to label %bb.ap unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %.preheader.peel
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 130, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null)
          to label %bb.aq unwind label %.loopexit.split-lp260

bb.aq:                                            ; preds = %bb.ap
  %i.ee = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i158.peel = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i158.peel, label %_ZN7QStringD2Ev.exit161.peel, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel: ; preds = %bb.aq
  %i.ef = atomicrmw sub ptr %i.ee, i32 1 acq_rel, align 4
  %.not.i.i160.peel = icmp eq i32 %i.ef, 1
  br i1 %.not.i.i160.peel, label %bb.ar, label %_ZN7QStringD2Ev.exit161.peel

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel
  %i.eg = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.eg, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit161.peel

_ZN7QStringD2Ev.exit161.peel:                     ; preds = %bb.ar, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.eh = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ei = load i32, ptr %i.aq, align 4
  %reass.sub.peel196 = sub i32 %i.ei, %i.eh
  %i.ej = add i32 %reass.sub.peel196, 1
  %i.ek = sitofp i32 %i.eh to double
  %i.el = sitofp i32 %i.ej to double
  store double %i.bj, ptr %14, align 8, !alias.scope !51
  store double %i.ek, ptr %i.az, align 8, !alias.scope !51
  store double %i.bl, ptr %i.ba, align 8, !alias.scope !51
  store double %i.el, ptr %i.bb, align 8, !alias.scope !51
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.em = getelementptr i8, ptr %i.ca, i64 8
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.en) #23
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, i64 %i.eo, ptr %i.en)
          to label %bb.as unwind label %.loopexit.split-lp

bb.as:                                            ; preds = %_ZN7QStringD2Ev.exit161.peel
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 129, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null)
          to label %bb.at unwind label %.loopexit.split-lp260

bb.at:                                            ; preds = %bb.as
  %i.ep = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i158.peel220 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i158.peel220, label %_ZN7QStringD2Ev.exit161.peel223, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel221

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel221: ; preds = %bb.at
  %i.eq = atomicrmw sub ptr %i.ep, i32 1 acq_rel, align 4
  %.not.i.i160.peel222 = icmp eq i32 %i.eq, 1
  br i1 %.not.i.i160.peel222, label %bb.au, label %_ZN7QStringD2Ev.exit161.peel223

bb.au:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel221
  %i.er = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.er, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit161.peel223

_ZN7QStringD2Ev.exit161.peel223:                  ; preds = %bb.au, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel221, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.es = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.et = load i32, ptr %i.aq, align 4
  %reass.sub.peel228 = sub i32 %i.et, %i.es
  %i.eu = add i32 %reass.sub.peel228, 1
  %i.ev = sitofp i32 %i.es to double
  %i.ew = sitofp i32 %i.eu to double
  store double %i.bo, ptr %14, align 8, !alias.scope !52
  store double %i.ev, ptr %i.az, align 8, !alias.scope !52
  store double %i.bq, ptr %i.ba, align 8, !alias.scope !52
  store double %i.ew, ptr %i.bb, align 8, !alias.scope !52
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ex = getelementptr i8, ptr %i.ca, i64 16
  %i.ey = load ptr, ptr %i.ex, align 16           ; 2 uses
  %i.ez = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ey) #23
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, i64 %i.ez, ptr %i.ey)
          to label %bb.av unwind label %.loopexit.split-lp

bb.av:                                            ; preds = %_ZN7QStringD2Ev.exit161.peel223
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 130, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null)
          to label %bb.aw unwind label %.loopexit.split-lp260

bb.aw:                                            ; preds = %bb.av
  %i.fa = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i158.peel252 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i158.peel252, label %_ZN7QStringD2Ev.exit161.peel255, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel253

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel253: ; preds = %bb.aw
  %i.fb = atomicrmw sub ptr %i.fa, i32 1 acq_rel, align 4
  %.not.i.i160.peel254 = icmp eq i32 %i.fb, 1
  br i1 %.not.i.i160.peel254, label %bb.ax, label %_ZN7QStringD2Ev.exit161.peel255

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel253
  %i.fc = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fc, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit161.peel255

_ZN7QStringD2Ev.exit161.peel255:                  ; preds = %bb.ax, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel253, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.preheader

.loopexit264:                                     ; preds = %_ZN7QStringD2Ev.exit161
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next186, 9
  br i1 %exitcond188.not, label %bb.r, label %bb.x, !llvm.loop !46

bb.ay:                                            ; preds = %bb.al
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.preheader:                                       ; preds = %_ZN7QStringD2Ev.exit161.peel255, %_ZN7QStringD2Ev.exit161
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7QStringD2Ev.exit161 ], [ 3, %_ZN7QStringD2Ev.exit161.peel255 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.ff = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.fg = load i32, ptr %i.aq, align 4
  %reass.sub = sub i32 %i.fg, %i.ff
  %i.fh = add i32 %reass.sub, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  switch i64 %indvars.iv, label %.lr.ph.i.6 [
    i64 3, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit
    i64 4, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split
    i64 5, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split265
    i64 6, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split266
  ]

.lr.ph.i.6:                                       ; preds = %.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split: ; preds = %.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split265: ; preds = %.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split266: ; preds = %.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit: ; preds = %.preheader, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split266, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split265, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split, %.lr.ph.i.6
  %.lcssa = phi double [ 6.900000e-01, %.lr.ph.i.6 ], [ 5.400000e-01, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split265 ], [ 2.600000e-01, %.preheader ], [ 4.000000e-01, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split ], [ 6.300000e-01, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split266 ]
  %i.fi = call double @llvm.fmuladd.f64(double %.lcssa, double %i.ay, double %i.ax)
  %i.fj = fadd double %i.fi, 4.000000e+00
  %i.fk = getelementptr [24 x i8], ptr @_ZN12_GLOBAL__N_18kColumnsE, i64 %indvars.iv ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !noalias !53
  %i.fm = fmul double %i.fl, %i.ay
  %i.fn = sitofp i32 %i.ff to double
  %i.fo = sitofp i32 %i.fh to double
  %i.fp = fadd double %i.fm, -4.000000e+00
  %i.fq = fadd double %i.fp, -4.000000e+00
  store double %i.fj, ptr %14, align 8, !alias.scope !54
  store double %i.fn, ptr %i.az, align 8, !alias.scope !54
  store double %i.fq, ptr %i.ba, align 8, !alias.scope !54
  store double %i.fo, ptr %i.bb, align 8, !alias.scope !54
  %19 = getelementptr i8, ptr %i.fk, i64 8
  %20 = load i8, ptr %19, align 8, !range !8, !noundef !9
  %21 = trunc nuw i8 %20 to i1
  %i.fr = select i1 %21, i32 130, i32 129
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.fs = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.ft = load ptr, ptr %i.fs, align 8            ; 3 uses
  %.not.i154.a = icmp eq ptr %i.ft, null
  br i1 %.not.i154.a, label %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit157, label %.split.i155

.split.i155:                                      ; preds = %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit
  %i.fu = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ft) #23
  br label %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit157

_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit157: ; preds = %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit, %.split.i155
  %.sink5.i156 = phi i64 [ %i.fu, %.split.i155 ], [ 0, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, i64 %.sink5.i156, ptr %i.ft)
          to label %bb.ba unwind label %.loopexit.split-lp

bb.ba:                                            ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit157
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null)
          to label %bb.bb unwind label %.loopexit.split-lp260

bb.bb:                                            ; preds = %bb.ba
  %i.fv = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i158, label %_ZN7QStringD2Ev.exit161, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159:   ; preds = %bb.bb
  %i.fw = atomicrmw sub ptr %i.fv, i32 1 acq_rel, align 4
  %.not.i.i160 = icmp eq i32 %i.fw, 1
  br i1 %.not.i.i160, label %bb.bc, label %_ZN7QStringD2Ev.exit161

bb.bc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159
  %i.fx = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fx, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit161

_ZN7QStringD2Ev.exit161:                          ; preds = %bb.bb, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit264, label %.preheader, !llvm.loop !49

.loopexit.split-lp:                               ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit157, %.preheader.peel, %_ZN7QStringD2Ev.exit161.peel, %_ZN7QStringD2Ev.exit161.peel223
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit165

.loopexit.split-lp260:                            ; preds = %bb.ba, %bb.ap, %bb.as, %bb.av
  %lpad.loopexit.split-lp262 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fy = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i162 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i162, label %_ZN7QStringD2Ev.exit165, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163:   ; preds = %.loopexit.split-lp260
  %i.fz = atomicrmw sub ptr %i.fy, i32 1 acq_rel, align 4
  %.not.i.i164 = icmp eq i32 %i.fz, 1
  br i1 %.not.i.i164, label %bb.bd, label %_ZN7QStringD2Ev.exit165

bb.bd:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163
  %i.ga = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ga, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit165

_ZN7QStringD2Ev.exit165:                          ; preds = %bb.bd, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163, %.loopexit.split-lp260, %.loopexit.split-lp
  %.pn123 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp262, %.loopexit.split-lp260 ], [ %lpad.loopexit.split-lp262, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163 ], [ %lpad.loopexit.split-lp262, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.be

bb.be:                                            ; preds = %_ZN7QStringD2Ev.exit165, %bb.az
  %.pn123.pn = phi { ptr, i32 } [ %.pn123, %_ZN7QStringD2Ev.exit165 ], [ %i.fe, %bb.az ]
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %13) #23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ay
  %.pn123.pn.pn = phi { ptr, i32 } [ %.pn123.pn, %bb.be ], [ %i.fd, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ak, %bb.ad
  %.pn123.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn, %bb.bf ], [ %i.dw, %bb.ak ], [ %i.ds, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bu

bb.bh:                                            ; preds = %bb.r
  invoke void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN8QPainter6setPenEN2Qt8PenStyleE(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 0)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %17, ptr noundef nonnull align 4 dereferenceable(14) %5, i32 noundef 1)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bl unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.gb = load <2 x i32>, ptr %16, align 16       ; 2 uses
  %i.gc = add <2 x i32> %i.gb, <i32 2, i32 3>
  %i.gd = sitofp <2 x i32> %i.gc to <2 x double>
  store <2 x double> %i.gd, ptr %18, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.gf = load <2 x i32>, ptr %i.br, align 8
  %i.gg = sub <2 x i32> %i.gf, %i.gb
  %i.gh = add <2 x i32> %i.gg, <i32 -3, i32 1>
  %i.gi = sitofp <2 x i32> %i.gh to <2 x double>
  %i.gj = fmul nnan <2 x double> %i.gi, <double 1.000000e+00, double 4.500000e-01>
  store <2 x double> %i.gj, ptr %i.ge, align 16
  invoke void @_ZN8QPainter15drawRoundedRectERK6QRectFddN2Qt8SizeModeE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %18, double noundef 3.000000e+00, double noundef 3.000000e+00, i32 noundef 0)
          to label %bb.bm unwind label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.bo:                                            ; preds = %bb.bi, %bb.bh, %bb.r
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bj
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bk
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %17) #23
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.bq ], [ %i.gl, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bm, %bb.bl
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bo
  %.pn119 = phi { ptr, i32 } [ %i.gn, %bb.bs ], [ %.pn, %bb.br ], [ %i.gk, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bg, %bb.bt, %bb.u, %bb.w, %bb.v
  %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.w ], [ %i.bx, %bb.u ], [ %i.by, %bb.v ], [ %.pn123.pn.pn.pn, %bb.bg ], [ %.pn119, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.t
  %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %i.bw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.s
  %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.s ], [ %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind writable sret(%class.QString) align 8, i64, ptr) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QFont12setStrikeOutEb(ptr noundef align 8 dereferenceable_or_null(12), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter15drawRoundedRectERK6QRectFddN2Qt8SizeModeE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32), double noundef, double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18ThemePreviewWidget15drawDetailsPaneER8QPainterRKNS_6LayoutE(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(64) %0, ptr noundef align 8 dereferenceable(8) %1, ptr noundef align 8 dereferenceable(180) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QPalette, align 8            ; 10 uses
  %4 = alloca %class.QColor, align 8              ; 6 uses
  %5 = alloca %class.QColor, align 8              ; 7 uses
end_hunk_2
