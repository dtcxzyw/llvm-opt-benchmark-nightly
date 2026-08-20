inline.NumInlined: 26891
inline.NumDeleted: 6475
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZNK16QCPColorGradient13stopsUseAlphaEv:bb.a
_ZNK4QMapId6QColorE10constBeginEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %.sroa.0.0.i.i410 = select i1 %.not.i.i, ptr null, ptr %i.e
  %.not11.not = icmp eq ptr %.sroa.0.0.i.i, %.sroa.0.0.i.i410
  br i1 %.not11.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4QMapId6QColorE10constBeginEv.exit, %bb.c
  %.sroa.05.012 = phi ptr [ %i.i, %bb.c ], [ %.sroa.0.0.i.i, %_ZNK4QMapId6QColorE10constBeginEv.exit ] ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.05.012, i64 40
  %i.g = tail call noundef i32 @_ZNK6QColor5alphaEv(ptr noundef align 4 dereferenceable_or_null(14) %i.f) #51
  %i.h = icmp slt i32 %i.g, 255                   ; 3 uses
  br i1 %i.h, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.05.012) #55 ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.j, null
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %.sroa.0.0.i.i4 = select i1 %.not.i.i3, ptr null, ptr %i.k
  %.not.not = icmp eq ptr %i.i, %.sroa.0.0.i.i4
  br i1 %.not.not, label %._crit_edge, label %.lr.ph, !llvm.loop !728

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %_ZNK4QMapId6QColorE10constBeginEv.exit
  %.not.lcssa = phi i1 [ false, %_ZNK4QMapId6QColorE10constBeginEv.exit ], [ %i.h, %bb.c ], [ %i.h, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid
declare { i64, i64 } @_ZNK6QColor5toHsvEv(ptr noundef align 4 dereferenceable_or_null(14)) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare noundef float @_ZNK6QColor4hueFEv(ptr noundef align 4 dereferenceable_or_null(14)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare { i64, i64 } @_ZN6QColor8fromHsvFEffff(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare noundef float @_ZNK6QColor11saturationFEv(ptr noundef align 4 dereferenceable_or_null(14)) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare noundef float @_ZNK6QColor6valueFEv(ptr noundef align 4 dereferenceable_or_null(14)) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare noundef i32 @_ZNK6QColor3rgbEv(ptr noundef align 4 dereferenceable_or_null(14)) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare noundef float @_ZNK6QColor6alphaFEv(ptr noundef align 4 dereferenceable_or_null(14)) local_unnamed_addr #6

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPSelectionDecoratorBracketC2Ev(ptr noundef align 8 dereferenceable_or_null(148) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QColor, align 4              ; 5 uses
  tail call void @_ZN21QCPSelectionDecoratorC2Ev(ptr noundef align 8 dereferenceable_or_null(112) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV28QCPSelectionDecoratorBracket, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #51
  call void @_ZN6QColorC1EN2Qt11GlobalColorE(ptr noundef nonnull align 4 dereferenceable_or_null(14) %1, i32 noundef 2) #51
  invoke void @_ZN4QPenC1ERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.a, ptr noundef nonnull align 4 dereferenceable(14) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_ZN6QBrushC1EN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.b, i32 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 50, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 2, ptr %i.g, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.a) #51
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  call void @_ZN21QCPSelectionDecoratorD2Ev(ptr noundef align 8 dead_on_return(112) dereferenceable_or_null(112) %0) #51
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPSelectionDecoratorBracketD2Ev(ptr noundef align 8 dead_on_return(148) dereferenceable_or_null(148) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV28QCPSelectionDecoratorBracket, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.a) #51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.b) #51
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV21QCPSelectionDecorator, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN12QPainterPathD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.c) #51, !inline_history !733
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.d) #51, !inline_history !733
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.e) #51, !inline_history !733
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.f) #51, !inline_history !733
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.g) #51, !inline_history !733
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.h) #51, !inline_history !733
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPSelectionDecoratorBracketD0Ev(ptr noundef align 8 dereferenceable_or_null(148) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN28QCPSelectionDecoratorBracketD1Ev(ptr noundef align 8 dead_on_return(148) dereferenceable_or_null(148) %0) #51
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 152) #53
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPSelectionDecoratorBracket13setBracketPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(148) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = tail call noundef align 8 dereferenceable(8) ptr @_ZN4QPenaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.a, ptr noundef align 8 dereferenceable(8) %1) #51 ; 0 uses
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPSelectionDecoratorBracket15setBracketBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(148) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = tail call noundef align 8 dereferenceable(8) ptr @_ZN6QBrushaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.a, ptr noundef align 8 dereferenceable(8) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN28QCPSelectionDecoratorBracket15setBracketWidthEi(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(148) initializes((128, 132)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN28QCPSelectionDecoratorBracket16setBracketHeightEi(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(148) initializes((132, 136)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 132
  store i32 %1, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN28QCPSelectionDecoratorBracket15setBracketStyleENS_12BracketStyleE(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(148) initializes((136, 140)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN28QCPSelectionDecoratorBracket16setTangentToDataEb(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(148) initializes((140, 141)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr i8, ptr %0, i64 140
  store i8 %i.a, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN28QCPSelectionDecoratorBracket17setTangentAverageEi(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(148) initializes((144, 148)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %spec.select = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %i.a = getelementptr i8, ptr %0, i64 144
  store i32 %spec.select, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK28QCPSelectionDecoratorBracket11drawBracketEP10QCPPainteri(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(148) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QLine, align 16              ; 4 uses
  %6 = alloca %class.QLine, align 16              ; 4 uses
  %7 = alloca %class.QLine, align 16              ; 4 uses
  %8 = alloca %class.QLine, align 8               ; 5 uses
  %9 = alloca %class.QLine, align 8               ; 5 uses
  %10 = alloca %class.QLineF, align 8             ; 7 uses
  %11 = alloca %class.QLineF, align 8             ; 7 uses
  %12 = alloca %class.QLineF, align 8             ; 7 uses
  %13 = alloca %class.QRectF, align 16            ; 5 uses
  %14 = alloca %class.QRectF, align 16            ; 5 uses
  %15 = alloca %class.QLineF, align 8             ; 7 uses
  %16 = alloca %class.QLineF, align 8             ; 7 uses
  %17 = alloca %class.QDebug, align 8             ; 12 uses
  %18 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.u [
    i32 0, label %bb.b
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  %i.c = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = mul i32 %i.d, %2
  %i.f = sitofp i32 %i.e to double                ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 132        ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub i32 0, %i.h
  %i.j = sitofp i32 %i.i to double
  %i.k = fmul nnan double %i.j, 5.000000e-01      ; 4 uses
  store double %i.f, ptr %10, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double 0.000000e+00, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 24
  store double %i.k, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %1, i64 12         ; 3 uses
  %i.p = load i8, ptr %i.o, align 4, !range !6, !noundef !7
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 1
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.u = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.f)
  %i.v = fadd double %i.u, %i.f
  %i.w = fptosi double %i.v to i32
  %i.x = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.k)
  %i.y = fadd double %i.k, %i.x
  %i.z = fptosi double %i.y to i32
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.z to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.w to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %9, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.2.0.insert.shift.i.i.i, ptr %i.aa, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

_ZN10QCPPainter8drawLineERK6QLineF.exit:          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.ab = load i32, ptr %i.c, align 8
  %i.ac = mul i32 %i.ab, %2
  %i.ad = sitofp i32 %i.ac to double              ; 3 uses
  %i.ae = load i32, ptr %i.g, align 4
  %i.af = sitofp i32 %i.ae to double
  %i.ag = fmul nnan double %i.af, 5.000000e-01    ; 4 uses
  store double %i.ad, ptr %11, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double 0.000000e+00, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 24
  store double %i.ag, ptr %i.aj, align 8
  %i.ak = load i8, ptr %i.o, align 4, !range !6, !noundef !7
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit
  %i.am = getelementptr i8, ptr %1, i64 8
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 1
  %.not.i12 = icmp eq i32 %i.ao, 0
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN10QCPPainter8drawLineERK6QLineF.exit
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit21

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  %i.ap = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ad)
  %i.aq = fadd double %i.ap, %i.ad
  %i.ar = fptosi double %i.aq to i32
  %i.as = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ag)
  %i.at = fadd double %i.ag, %i.as
  %i.au = fptosi double %i.at to i32
  %.sroa.2.0.insert.ext.i.i.i13 = zext i32 %i.au to i64
  %.sroa.2.0.insert.shift.i.i.i14 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i13, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i15 = zext i32 %i.ar to i64
  %.sroa.0.0.insert.insert.i.i.i16 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i14, %.sroa.0.0.insert.ext.i.i.i15
  store i64 %.sroa.0.0.insert.insert.i.i.i16, ptr %8, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.2.0.insert.shift.i.i.i14, ptr %i.av, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit21

_ZN10QCPPainter8drawLineERK6QLineF.exit21:        ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %i.aw = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ax = sub i32 0, %i.aw
  %i.ay = insertelement <2 x i32> poison, i32 %i.ax, i64 0
  %i.az = insertelement <2 x i32> %i.ay, i32 %i.aw, i64 1
  %i.ba = sitofp <2 x i32> %i.az to <2 x double>
  %i.bb = fmul nnan <2 x double> %i.ba, splat (double 5.000000e-01) ; 4 uses
  store double 0.000000e+00, ptr %12, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %19 = extractelement <2 x double> %i.bb, i64 0
  store double %19, ptr %i.bc, align 8
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store double 0.000000e+00, ptr %20, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.be = extractelement <2 x double> %i.bb, i64 1
  store double %i.be, ptr %i.bd, align 8
  %i.bf = load i8, ptr %i.o, align 4, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit21
  %i.bh = getelementptr i8, ptr %1, i64 8
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 1
  %.not.i22 = icmp eq i32 %i.bj, 0
  br i1 %.not.i22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN10QCPPainter8drawLineERK6QLineF.exit21
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit31

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.bk = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bb)
  %i.bl = fadd <2 x double> %i.bb, %i.bk
  %i.bm = fptosi <2 x double> %i.bl to <2 x i32>
  %i.bn = zext <2 x i32> %i.bm to <2 x i64>
  %i.bo = shl nuw <2 x i64> %i.bn, splat (i64 32)
  store <2 x i64> %i.bo, ptr %7, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit31

_ZN10QCPPainter8drawLineERK6QLineF.exit31:        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %bb.ah

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  %i.bp = getelementptr i8, ptr %0, i64 128
  %i.bq = load <2 x i32>, ptr %i.bp, align 8      ; 2 uses
  %i.br = sub <2 x i32> zeroinitializer, %i.bq
  %i.bs = sitofp <2 x i32> %i.br to <2 x double>
  %i.bt = fmul nnan <2 x double> %i.bs, splat (double 5.000000e-01)
  store <2 x double> %i.bt, ptr %13, align 16
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bv = sitofp <2 x i32> %i.bq to <2 x double>
  store <2 x double> %i.bv, ptr %i.bu, align 16
  %i.bw = mul i32 %2, -2880
  call void @_ZN8QPainter7drawArcERK6QRectFii(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef -1440, i32 noundef %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  br label %bb.ah

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #51
  %i.bx = getelementptr i8, ptr %0, i64 128
  %i.by = load <2 x i32>, ptr %i.bx, align 8      ; 2 uses
  %i.bz = sub <2 x i32> zeroinitializer, %i.by
  %i.ca = sitofp <2 x i32> %i.bz to <2 x double>
  %i.cb = fmul nnan <2 x double> %i.ca, splat (double 5.000000e-01)
  store <2 x double> %i.cb, ptr %14, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cd = sitofp <2 x i32> %i.by to <2 x double>
  store <2 x double> %i.cd, ptr %i.cc, align 16
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  br label %bb.ah

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %i.ce = getelementptr i8, ptr %0, i64 132
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = sub i32 0, %i.cf
  %i.ch = insertelement <2 x i32> poison, i32 %i.cg, i64 0
  %i.ci = insertelement <2 x i32> %i.ch, i32 %i.cf, i64 1
  %i.cj = sitofp <2 x i32> %i.ci to <2 x double>
  %i.ck = fmul nnan <2 x double> %i.cj, splat (double 5.000000e-01) ; 4 uses
  store double 0.000000e+00, ptr %15, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %21 = extractelement <2 x double> %i.ck, i64 0
  store double %21, ptr %i.cl, align 8
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store double 0.000000e+00, ptr %22, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cn = extractelement <2 x double> %i.ck, i64 1
  store double %i.cn, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.cp = load i8, ptr %i.co, align 4, !range !6, !noundef !7
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr i8, ptr %1, i64 8
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = and i32 %i.cs, 1
  %.not.i32 = icmp eq i32 %i.ct, 0
  br i1 %.not.i32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit41

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.cu = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ck)
  %i.cv = fadd <2 x double> %i.ck, %i.cu
  %i.cw = fptosi <2 x double> %i.cv to <2 x i32>
  %i.cx = zext <2 x i32> %i.cw to <2 x i64>
  %i.cy = shl nuw <2 x i64> %i.cx, splat (i64 32)
  store <2 x i64> %i.cy, ptr %6, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit41

_ZN10QCPPainter8drawLineERK6QLineF.exit41:        ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #51
  %i.cz = getelementptr i8, ptr %0, i64 128
  %i.da = load i32, ptr %i.cz, align 8            ; 2 uses
  %i.db = sub i32 0, %i.da
  %i.dc = insertelement <2 x i32> poison, i32 %i.db, i64 0
  %i.dd = insertelement <2 x i32> %i.dc, i32 %i.da, i64 1
  %i.de = sitofp <2 x i32> %i.dd to <2 x double>
  %i.df = fmul nnan <2 x double> %i.de, splat (double 5.000000e-01) ; 4 uses
  %23 = extractelement <2 x double> %i.df, i64 0
  store double %23, ptr %16, align 8
  %24 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store double 0.000000e+00, ptr %24, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %25 = extractelement <2 x double> %i.df, i64 1
  store double %25, ptr %i.dg, align 8
  %26 = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double 0.000000e+00, ptr %26, align 8
  %i.dh = load i8, ptr %i.co, align 4, !range !6, !noundef !7
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit41
  %i.dj = getelementptr i8, ptr %1, i64 8
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = and i32 %i.dk, 1
  %.not.i42 = icmp eq i32 %i.dl, 0
  br i1 %.not.i42, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN10QCPPainter8drawLineERK6QLineF.exit41
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit51

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.dm = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.df)
  %i.dn = fadd <2 x double> %i.df, %i.dm
  %i.do = fptosi <2 x double> %i.dn to <2 x i32>
  %i.dp = zext <2 x i32> %i.do to <2 x i64>
  store <2 x i64> %i.dp, ptr %5, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit51

_ZN10QCPPainter8drawLineERK6QLineF.exit51:        ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #51
  br label %bb.ah

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #51
  store i32 2, ptr %18, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dq, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.dr, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %17, ptr noundef nonnull align 8 dereferenceable_or_null(32) %18)
  %i.ds = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 79, ptr nonnull @__PRETTY_FUNCTION__._ZNK28QCPSelectionDecoratorBracket11drawBracketEP10QCPPainteri)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.u
  %i.dt = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %.noexc
  %i.du = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.v
  %i.dv = atomicrmw sub ptr %i.du, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.dv, 1
  br i1 %.not.i.i.i, label %bb.w, label %_ZN7QStringD2Ev.exit.i

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.dw = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dw, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %i.dx = load ptr, ptr %17, align 8              ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 48
  %i.dz = load i8, ptr %i.dy, align 8, !range !6, !noundef !7
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.x, label %_ZN6QDebuglsEPKc.exit

bb.x:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.eb = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.dx, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.ag ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.x
  %.pre = load ptr, ptr %17, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.y:                                             ; preds = %.noexc
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.y
  %i.ee = atomicrmw sub ptr %i.ed, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ee, 1
  br i1 %.not.i.i4.i, label %bb.z, label %_ZN7QStringD2Ev.exit5.i

bb.z:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.ef = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ef, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.eg = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.dx, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 72, ptr nonnull @.str.142)
          to label %.noexc61 unwind label %bb.ag

.noexc61:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.eh = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.aa unwind label %bb.ad     ; 0 uses

bb.aa:                                            ; preds = %.noexc61
  %i.ei = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i57, label %_ZN7QStringD2Ev.exit.i60, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58:  ; preds = %bb.aa
  %i.ej = atomicrmw sub ptr %i.ei, i32 1 acq_rel, align 4
  %.not.i.i.i59 = icmp eq i32 %i.ej, 1
  br i1 %.not.i.i.i59, label %bb.ab, label %_ZN7QStringD2Ev.exit.i60

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58
  %i.ek = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ek, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i60

_ZN7QStringD2Ev.exit.i60:                         ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %i.el = load ptr, ptr %17, align 8              ; 3 uses
  %i.em = getelementptr i8, ptr %i.el, i64 48
  %i.en = load i8, ptr %i.em, align 8, !range !6, !noundef !7
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ac, label %_ZN6QDebuglsEPKc.exit65

bb.ac:                                            ; preds = %_ZN7QStringD2Ev.exit.i60
  %i.ep = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.el, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit65_crit_edge unwind label %bb.ag ; 0 uses

._ZN6QDebuglsEPKc.exit65_crit_edge:               ; preds = %bb.ac
  %.pre68 = load ptr, ptr %17, align 8
  br label %_ZN6QDebuglsEPKc.exit65

bb.ad:                                            ; preds = %.noexc61
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i53 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i2.i53, label %_ZN7QStringD2Ev.exit5.i56, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i54

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i54: ; preds = %bb.ad
  %i.es = atomicrmw sub ptr %i.er, i32 1 acq_rel, align 4
  %.not.i.i4.i55 = icmp eq i32 %i.es, 1
  br i1 %.not.i.i4.i55, label %bb.ae, label %_ZN7QStringD2Ev.exit5.i56

bb.ae:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i54
  %i.et = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.et, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i56

_ZN7QStringD2Ev.exit5.i56:                        ; preds = %bb.ae, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i54, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %.body

_ZN6QDebuglsEPKc.exit65:                          ; preds = %._ZN6QDebuglsEPKc.exit65_crit_edge, %_ZN7QStringD2Ev.exit.i60
  %i.eu = phi ptr [ %.pre68, %._ZN6QDebuglsEPKc.exit65_crit_edge ], [ %i.el, %_ZN7QStringD2Ev.exit.i60 ]
  %i.ev = load i32, ptr %i.a, align 8
  %i.ew = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.eu, i32 noundef %i.ev)
          to label %.noexc66 unwind label %bb.ag  ; 0 uses

.noexc66:                                         ; preds = %_ZN6QDebuglsEPKc.exit65
  %i.ex = load ptr, ptr %17, align 8              ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 48
  %i.ez = load i8, ptr %i.ey, align 8, !range !6, !noundef !7
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.af, label %_ZN6QDebuglsEi.exit

bb.af:                                            ; preds = %.noexc66
  %i.fb = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ex, i8 noundef signext 32)
          to label %_ZN6QDebuglsEi.exit unwind label %bb.ag ; 0 uses

_ZN6QDebuglsEi.exit:                              ; preds = %.noexc66, %bb.af
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %17) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #51
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af, %_ZN6QDebuglsEPKc.exit65, %bb.ac, %_ZN6QDebuglsEPKc.exit, %bb.x, %bb.u
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ag, %_ZN7QStringD2Ev.exit5.i56, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ec, %_ZN7QStringD2Ev.exit5.i ], [ %i.fc, %bb.ag ], [ %i.eq, %_ZN7QStringD2Ev.exit5.i56 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %17) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #51
  resume { ptr, i32 } %eh.lpad-body

bb.ah:                                            ; preds = %_ZN6QDebuglsEi.exit, %_ZN10QCPPainter8drawLineERK6QLineF.exit51, %bb.m, %bb.l, %_ZN10QCPPainter8drawLineERK6QLineF.exit31
  ret void
}
end_hunk_0
