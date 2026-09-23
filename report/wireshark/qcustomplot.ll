Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN15QCPScatterStyle12setFromOtherERKS_6QFlagsINS_15ScatterPropertyEE:bb.a
    i32 16, label %bb.k
    i32 17, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN7QPixmapC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
  store i32 16, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %0, i64 32
  %i.v = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QPixmapaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN15QCPScatterStyle9setPixmapERK7QPixmap.exit unwind label %bb.l ; 0 uses

_ZN15QCPScatterStyle9setPixmapERK7QPixmap.exit:   ; preds = %bb.k
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @_ZN12QPainterPathC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  store i32 17, ptr %i.s, align 8
  %i.y = getelementptr i8, ptr %0, i64 56
  %i.z = invoke noundef align 8 dereferenceable(8) ptr @_ZN12QPainterPathaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN15QCPScatterStyle13setCustomPathERK12QPainterPath.exit unwind label %bb.n ; 0 uses

_ZN15QCPScatterStyle13setCustomPathERK12QPainterPath.exit: ; preds = %bb.m
  call void @_ZN12QPainterPathD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QPainterPathD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.p

bb.o:                                             ; preds = %bb.j, %_ZN15QCPScatterStyle9setPixmapERK7QPixmap.exit, %_ZN15QCPScatterStyle13setCustomPathERK12QPainterPath.exit, %bb.i
  ret void

bb.p:                                             ; preds = %bb.n, %bb.l, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.aa, %bb.n ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN15QCPScatterStyle6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(65) initializes((64, 65)) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  store i8 1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @_ZN4QPenaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.b, ptr noundef align 8 dereferenceable(8) %1) #51 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN15QCPScatterStyle11undefinePenEv(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(65) initializes((64, 65)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15QCPScatterStyle8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(65) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = tail call noundef align 8 dereferenceable(8) ptr @_ZN6QBrushaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.a, ptr noundef align 8 dereferenceable(8) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN15QCPScatterStyle7setSizeEd(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(65) initializes((0, 8)) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  store double %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN15QCPScatterStyle8setShapeENS_12ScatterShapeE(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(65) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15QCPScatterStyle9setPixmapERK7QPixmap(ptr noundef align 8 dereferenceable_or_null(65) initializes((8, 12)) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 16, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = tail call noundef align 8 dereferenceable(24) ptr @_ZN7QPixmapaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.b, ptr noundef align 8 dereferenceable(24) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15QCPScatterStyle13setCustomPathERK12QPainterPath(ptr noundef align 8 dereferenceable_or_null(65) initializes((8, 12)) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 17, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 56
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @_ZN12QPainterPathaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.b, ptr noundef align 8 dereferenceable(8) %1) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN7QPixmapaSERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(8) ptr @_ZN12QPainterPathaSERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen(ptr noundef align 8 dereferenceable_or_null(65) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = select i1 %i.c, ptr %i.d, ptr %2
  tail call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.e)
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %bb.a, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 24
  tail call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.i)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterRK7QPointF(ptr noundef align 8 dereferenceable_or_null(65) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load double, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load double, ptr %i.b, align 8
  tail call void @_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterdd(ptr noundef align 8 dereferenceable_or_null(65) %0, ptr noundef %1, double noundef %i.a, double noundef %i.c)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterdd(ptr noundef align 8 dereferenceable_or_null(65) %0, ptr noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QPointF, align 8             ; 5 uses
  %5 = alloca %class.QPointF, align 16            ; 4 uses
  %6 = alloca %class.QPointF, align 8             ; 5 uses
  %7 = alloca %class.QLine, align 16              ; 4 uses
  %8 = alloca %class.QLine, align 16              ; 4 uses
  %9 = alloca %class.QLine, align 16              ; 4 uses
  %10 = alloca %class.QRectF, align 8             ; 7 uses
  %11 = alloca %class.QLine, align 16             ; 4 uses
  %12 = alloca %class.QLine, align 16             ; 4 uses
  %13 = alloca %class.QRectF, align 8             ; 7 uses
  %14 = alloca %class.QLine, align 16             ; 4 uses
  %15 = alloca %class.QLine, align 16             ; 4 uses
  %16 = alloca %class.QRectF, align 8             ; 7 uses
  %17 = alloca %class.QLine, align 16             ; 4 uses
  %18 = alloca %class.QLine, align 16             ; 4 uses
  %19 = alloca %class.QLine, align 16             ; 4 uses
  %20 = alloca %class.QLine, align 16             ; 4 uses
  %21 = alloca %class.QLine, align 16             ; 4 uses
  %22 = alloca %class.QLine, align 16             ; 4 uses
  %23 = alloca %class.QLine, align 16             ; 4 uses
  %24 = alloca %class.QLine, align 16             ; 4 uses
  %25 = alloca %class.QRectF, align 8             ; 7 uses
  %26 = alloca %class.QRectF, align 8             ; 7 uses
  %27 = alloca %class.QLine, align 16             ; 4 uses
  %28 = alloca %class.QLine, align 16             ; 4 uses
  %29 = alloca %class.QLine, align 16             ; 4 uses
  %30 = alloca %class.QLine, align 16             ; 4 uses
  %31 = alloca %class.QLine, align 16             ; 4 uses
  %32 = alloca %class.QLineF, align 8             ; 7 uses
  %33 = alloca %class.QLineF, align 8             ; 7 uses
  %34 = alloca %class.QLineF, align 8             ; 7 uses
  %35 = alloca %class.QLineF, align 8             ; 7 uses
  %36 = alloca %class.QLineF, align 8             ; 7 uses
  %37 = alloca %class.QBrush, align 8             ; 7 uses
  %38 = alloca %class.QBrush, align 8             ; 7 uses
  %39 = alloca %class.QColor, align 8             ; 6 uses
  %40 = alloca %class.QRectF, align 8             ; 7 uses
  %41 = alloca [4 x %class.QPointF], align 16     ; 11 uses
  %42 = alloca %class.QLineF, align 8             ; 7 uses
  %43 = alloca %class.QLineF, align 8             ; 7 uses
  %44 = alloca %class.QLineF, align 16            ; 5 uses
  %45 = alloca %class.QLineF, align 8             ; 4 uses
  %46 = alloca [3 x %class.QPointF], align 16     ; 9 uses
  %47 = alloca [3 x %class.QPointF], align 16     ; 9 uses
  %48 = alloca %class.QRectF, align 8             ; 7 uses
  %49 = alloca %class.QLineF, align 8             ; 7 uses
  %50 = alloca %class.QLineF, align 8             ; 7 uses
  %51 = alloca %class.QRectF, align 8             ; 7 uses
  %52 = alloca %class.QLineF, align 8             ; 7 uses
  %53 = alloca %class.QLineF, align 8             ; 7 uses
  %54 = alloca %class.QLineF, align 16            ; 5 uses
  %55 = alloca %class.QLineF, align 8             ; 4 uses
  %56 = alloca %class.QLineF, align 8             ; 7 uses
  %57 = alloca %class.QLineF, align 8             ; 7 uses
  %58 = alloca %class.QLineF, align 8             ; 7 uses
  %59 = alloca %class.QLineF, align 8             ; 6 uses
  %60 = alloca %class.QLineF, align 8             ; 7 uses
  %61 = alloca %class.QRectF, align 16            ; 5 uses
  %62 = alloca %class.QRectF, align 16            ; 5 uses
  %63 = alloca %class.QTransform, align 8         ; 4 uses
  %i.a = load double, ptr %0, align 8             ; 7 uses
  %i.b = fmul double %i.a, 5.000000e-01           ; 56 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  switch i32 %i.d, label %bb.co [
    i32 17, label %bb.cn
    i32 1, label %bb.b
    i32 2, label %bb.f
    i32 3, label %bb.m
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.ah
    i32 7, label %bb.ai
    i32 8, label %bb.aj
    i32 9, label %bb.aw
    i32 10, label %bb.ax
    i32 11, label %bb.ay
    i32 12, label %bb.bf
    i32 13, label %bb.bm
    i32 14, label %bb.bt
    i32 15, label %bb.ca
    i32 16, label %bb.ck
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = insertelement <2 x double> poison, double %2, i64 0
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  %i.g = fadd <2 x double> %i.f, <double -0.000000e+00, double 1.000000e-04> ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #51
  store double %2, ptr %32, align 8
  %.sroa.4451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store double %3, ptr %.sroa.4451.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.i = extractelement <2 x double> %i.g, i64 1
  store double %i.i, ptr %i.h, align 8
  %.sroa.4449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 24
  store double %3, ptr %.sroa.4449.0..sroa_idx, align 8
  %i.j = getelementptr i8, ptr %1, i64 12
  %i.k = load i8, ptr %i.j, align 4, !range !175, !noundef !176
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 1
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #51
  %i.p = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.g)
  %i.q = tail call double @llvm.copysign.f64(double 5.000000e-01, double %3)
  %i.r = fadd double %3, %i.q
  %i.s = fptosi double %i.r to i32
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.s to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %i.t = fadd <2 x double> %i.g, %i.p
  %i.u = fptosi <2 x double> %i.t to <2 x i32>
  %i.v = zext <2 x i32> %i.u to <2 x i64>
  %i.w = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i.i, i64 0
  %i.x = shufflevector <2 x i64> %i.w, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.y = or disjoint <2 x i64> %i.x, %i.v
  store <2 x i64> %i.y, ptr %31, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %31, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #51
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

_ZN10QCPPainter8drawLineERK7QPointFS2_.exit:      ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #51
  br label %bb.co

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #51
  %i.z = fsub double %2, %i.b                     ; 4 uses
  %i.aa = fsub double %3, %i.b                    ; 4 uses
  %i.ab = fadd double %2, %i.b                    ; 4 uses
  %i.ac = fadd double %3, %i.b                    ; 4 uses
  store double %i.z, ptr %33, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %33, i64 8
  store double %i.aa, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %33, i64 16
  store double %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %33, i64 24
  store double %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4, !range !175, !noundef !176
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr i8, ptr %1, i64 8
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 1
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #51
  %i.am = insertelement <2 x double> poison, double %i.z, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ab, i64 1 ; 2 uses
  %i.ao = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.an)
  %i.ap = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ac, i64 1 ; 2 uses
  %i.ar = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.aq)
  %i.as = fadd <2 x double> %i.an, %i.ao
  %i.at = fptosi <2 x double> %i.as to <2 x i32>
  %i.au = fadd <2 x double> %i.aq, %i.ar
  %i.av = fptosi <2 x double> %i.au to <2 x i32>
  %i.aw = zext <2 x i32> %i.av to <2 x i64>
  %i.ax = shl nuw <2 x i64> %i.aw, splat (i64 32)
  %i.ay = zext <2 x i32> %i.at to <2 x i64>
  %i.az = or disjoint <2 x i64> %i.ax, %i.ay
  store <2 x i64> %i.az, ptr %30, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %30, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

_ZN10QCPPainter8drawLineERK6QLineF.exit:          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #51
  store double %i.z, ptr %34, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %34, i64 8
  store double %i.ac, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %34, i64 16
  store double %i.ab, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %34, i64 24
  store double %i.aa, ptr %i.bc, align 8
  %i.bd = load i8, ptr %i.ag, align 4, !range !175, !noundef !176
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit
  %i.bf = getelementptr i8, ptr %1, i64 8
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 1
  %.not.i261 = icmp eq i32 %i.bh, 0
  br i1 %.not.i261, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN10QCPPainter8drawLineERK6QLineF.exit
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit270

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #51
  %i.bi = insertelement <2 x double> poison, double %i.z, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.ab, i64 1 ; 2 uses
  %i.bk = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bj)
  %i.bl = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.aa, i64 1 ; 2 uses
  %i.bn = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bm)
  %i.bo = fadd <2 x double> %i.bj, %i.bk
  %i.bp = fptosi <2 x double> %i.bo to <2 x i32>
  %i.bq = fadd <2 x double> %i.bm, %i.bn
  %i.br = fptosi <2 x double> %i.bq to <2 x i32>
  %i.bs = zext <2 x i32> %i.br to <2 x i64>
  %i.bt = shl nuw <2 x i64> %i.bs, splat (i64 32)
  %i.bu = zext <2 x i32> %i.bp to <2 x i64>
  %i.bv = or disjoint <2 x i64> %i.bt, %i.bu
  store <2 x i64> %i.bv, ptr %29, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %29, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit270

_ZN10QCPPainter8drawLineERK6QLineF.exit270:       ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #51
  br label %bb.co

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #51
  %i.bw = fsub double %2, %i.b                    ; 2 uses
  %i.bx = fadd double %2, %i.b                    ; 2 uses
  store double %i.bw, ptr %35, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %35, i64 8
  store double %3, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %35, i64 16
  store double %i.bx, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %35, i64 24
  store double %3, ptr %i.ca, align 8
  %i.cb = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4, !range !175, !noundef !176
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.o, label %bb.n

end_hunk_0
begin_hunk_1_@_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterdd:bb.a
  %i.dz = fsub double %2, %i.b
  %i.ea = fsub double %3, %i.b
  %i.eb = fmul double %i.b, 2.000000e+00          ; 2 uses
  store double %i.dz, ptr %25, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %25, i64 8
  store double %i.ea, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %25, i64 16
  store double %i.eb, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %25, i64 24
  store double %i.eb, ptr %i.ee, align 8
  invoke void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #51
  invoke void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %37) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #51
  br label %bb.co

bb.ab:                                            ; preds = %bb.w, %bb.v, %bb.u
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %38) #51
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.ac ], [ %i.ef, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #51
  br label %bb.ag

bb.ae:                                            ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.pn259 = phi { ptr, i32 } [ %i.ei, %bb.af ], [ %i.eh, %bb.ae ], [ %.pn, %bb.ad ]
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %37) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #51
  resume { ptr, i32 } %.pn259

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #51
  %i.ej = fsub double %2, %i.b
  %i.ek = fsub double %3, %i.b
  store double %i.ej, ptr %40, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %40, i64 8
  store double %i.ek, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %40, i64 16
  store double %i.a, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %40, i64 24
  store double %i.a, ptr %i.en, align 8
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %40, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #51
  br label %bb.co

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #51
  %i.eo = fsub double %2, %i.b
  store double %i.eo, ptr %41, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %41, i64 8
  store double %3, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.er = fsub double %3, %i.b
  store double %2, ptr %i.eq, align 16
  %i.es = getelementptr inbounds nuw i8, ptr %41, i64 24
  store double %i.er, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.eu = fadd double %2, %i.b
  store double %i.eu, ptr %i.et, align 16
  %i.ev = getelementptr inbounds nuw i8, ptr %41, i64 40
  store double %3, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %41, i64 48
  %i.ex = fadd double %3, %i.b
  store double %2, ptr %i.ew, align 16
  %i.ey = getelementptr inbounds nuw i8, ptr %41, i64 56
  store double %i.ex, ptr %i.ey, align 8
  call void @_ZN8QPainter11drawPolygonEPK7QPointFiN2Qt8FillRuleE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull %41, i32 noundef 4, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #51
  br label %bb.co

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #51
  %i.ez = fsub double %2, %i.b                    ; 2 uses
  %i.fa = fadd double %2, %i.b                    ; 2 uses
  store double %i.ez, ptr %42, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %42, i64 8
  store double %3, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %42, i64 16
  store double %i.fa, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %42, i64 24
  store double %3, ptr %i.fd, align 8
  %i.fe = getelementptr i8, ptr %1, i64 12        ; 4 uses
  %i.ff = load i8, ptr %i.fe, align 4, !range !175, !noundef !176
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = getelementptr i8, ptr %1, i64 8
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = and i32 %i.fi, 1
  %.not.i291 = icmp eq i32 %i.fj, 0
  br i1 %.not.i291, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit300

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #51
  %i.fk = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fa, i64 1 ; 2 uses
  %i.fm = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.fl)
  %i.fn = tail call double @llvm.copysign.f64(double 5.000000e-01, double %3)
  %i.fo = fadd double %3, %i.fn
  %i.fp = fptosi double %i.fo to i32
  %.sroa.2.0.insert.ext.i.i.i292 = zext i32 %i.fp to i64
  %.sroa.2.0.insert.shift.i.i.i293 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i292, 32
  %i.fq = fadd <2 x double> %i.fl, %i.fm
  %i.fr = fptosi <2 x double> %i.fq to <2 x i32>
  %i.fs = zext <2 x i32> %i.fr to <2 x i64>
  %i.ft = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i293, i64 0
  %i.fu = shufflevector <2 x i64> %i.ft, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fv = or disjoint <2 x i64> %i.fu, %i.fs
  store <2 x i64> %i.fv, ptr %24, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %24, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit300

_ZN10QCPPainter8drawLineERK6QLineF.exit300:       ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #51
  %i.fw = fadd double %3, %i.b                    ; 2 uses
  %i.fx = fsub double %3, %i.b                    ; 2 uses
  store double %2, ptr %43, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %43, i64 8
  store double %i.fw, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %43, i64 16
  store double %2, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %43, i64 24
  store double %i.fx, ptr %i.ga, align 8
  %i.gb = load i8, ptr %i.fe, align 4, !range !175, !noundef !176
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit300
  %i.gd = getelementptr i8, ptr %1, i64 8
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = and i32 %i.ge, 1
  %.not.i301 = icmp eq i32 %i.gf, 0
  br i1 %.not.i301, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN10QCPPainter8drawLineERK6QLineF.exit300
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %43, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit310

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #51
  %i.gg = call double @llvm.copysign.f64(double 5.000000e-01, double %2)
  %i.gh = fadd double %2, %i.gg
  %i.gi = fptosi double %i.gh to i32
  %i.gj = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.fx, i64 1 ; 2 uses
  %i.gl = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.gk)
  %.sroa.0.0.insert.ext.i.i.i304 = zext i32 %i.gi to i64
  %i.gm = fadd <2 x double> %i.gk, %i.gl
  %i.gn = fptosi <2 x double> %i.gm to <2 x i32>
  %i.go = zext <2 x i32> %i.gn to <2 x i64>
  %i.gp = shl nuw <2 x i64> %i.go, splat (i64 32)
  %i.gq = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i304, i64 0
  %i.gr = shufflevector <2 x i64> %i.gq, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gs = or disjoint <2 x i64> %i.gp, %i.gr
  store <2 x i64> %i.gs, ptr %23, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %23, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit310

_ZN10QCPPainter8drawLineERK6QLineF.exit310:       ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #51
  %i.gt = fneg double %i.b
  %i.gu = insertelement <2 x double> poison, double %i.b, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gt, i64 1 ; 2 uses
  %i.gw = insertelement <2 x double> poison, double %2, i64 0
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> splat (double 7.070000e-01), <2 x double> %i.gx) ; 4 uses
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ha = insertelement <2 x double> poison, double %3, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> splat (double 7.070000e-01), <2 x double> %i.hb) ; 7 uses
  %i.hd = shufflevector <2 x double> %i.gy, <2 x double> %i.hc, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.hd, ptr %44, align 16
  %i.he = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.hf = shufflevector <2 x double> %i.gy, <2 x double> %i.hc, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.hf, ptr %i.he, align 16
  %i.hg = load i8, ptr %i.fe, align 4, !range !175, !noundef !176
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit310
  %i.hi = getelementptr i8, ptr %1, i64 8
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = and i32 %i.hj, 1
  %.not.i311 = icmp eq i32 %i.hk, 0
  br i1 %.not.i311, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN10QCPPainter8drawLineERK6QLineF.exit310
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %44, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit320

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #51
  %i.hl = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.gz)
  %i.hm = fadd <2 x double> %i.gz, %i.hl
  %i.hn = fptosi <2 x double> %i.hm to <2 x i32>
  %i.ho = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.hc)
  %i.hp = fadd <2 x double> %i.hc, %i.ho
  %i.hq = fptosi <2 x double> %i.hp to <2 x i32>
  %i.hr = zext <2 x i32> %i.hq to <2 x i64>
  %i.hs = shl nuw <2 x i64> %i.hr, splat (i64 32)
  %i.ht = shufflevector <2 x i64> %i.hs, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hu = zext <2 x i32> %i.hn to <2 x i64>
  %i.hv = or disjoint <2 x i64> %i.ht, %i.hu
  store <2 x i64> %i.hv, ptr %22, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %22, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit320

_ZN10QCPPainter8drawLineERK6QLineF.exit320:       ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #51
  %64 = shufflevector <2 x double> %i.gy, <2 x double> %i.hc, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x double> %64, ptr %45, align 8
  %i.hw = load i8, ptr %i.fe, align 4, !range !175, !noundef !176
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit320
  %i.hy = getelementptr i8, ptr %1, i64 8
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = and i32 %i.hz, 1
  %.not.i321 = icmp eq i32 %i.ia, 0
  br i1 %.not.i321, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN10QCPPainter8drawLineERK6QLineF.exit320
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %45, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit330

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #51
  %i.ib = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.gz)
  %i.ic = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.hc)
  %i.id = fadd <2 x double> %i.gz, %i.ib
  %i.ie = fptosi <2 x double> %i.id to <2 x i32>
  %i.if = fadd <2 x double> %i.hc, %i.ic
  %i.ig = fptosi <2 x double> %i.if to <2 x i32>
  %i.ih = zext <2 x i32> %i.ig to <2 x i64>
  %i.ii = shl nuw <2 x i64> %i.ih, splat (i64 32)
  %i.ij = zext <2 x i32> %i.ie to <2 x i64>
  %i.ik = or disjoint <2 x i64> %i.ii, %i.ij
  store <2 x i64> %i.ik, ptr %21, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %21, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit330

_ZN10QCPPainter8drawLineERK6QLineF.exit330:       ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #51
  br label %bb.co

bb.aw:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #51
  %i.il = fsub double %2, %i.b
  %i.im = insertelement <2 x double> poison, double %i.b, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = insertelement <2 x double> poison, double %3, i64 0
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.in, <2 x double> <double 7.550000e-01, double f0xBFEF4395810624DD>, <2 x double> %i.ip) ; 2 uses
  store double %i.il, ptr %46, align 16
  %i.ir = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.is = extractelement <2 x double> %i.iq, i64 0 ; 2 uses
  store double %i.is, ptr %i.ir, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.iu = fadd double %2, %i.b
  store double %i.iu, ptr %i.it, align 16
  %i.iv = getelementptr inbounds nuw i8, ptr %46, i64 24
  store double %i.is, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %46, i64 32
  store double %2, ptr %i.iw, align 16
  %i.ix = getelementptr inbounds nuw i8, ptr %46, i64 40
  %i.iy = extractelement <2 x double> %i.iq, i64 1
  store double %i.iy, ptr %i.ix, align 8
  call void @_ZN8QPainter11drawPolygonEPK7QPointFiN2Qt8FillRuleE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull %46, i32 noundef 3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #51
  br label %bb.co

bb.ax:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #51
  %i.iz = fsub double %2, %i.b
  %i.ja = insertelement <2 x double> poison, double %i.b, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = insertelement <2 x double> poison, double %3, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> <double -7.550000e-01, double f0x3FEF4395810624DD>, <2 x double> %i.jd) ; 2 uses
  store double %i.iz, ptr %47, align 16
  %i.jf = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.jg = extractelement <2 x double> %i.je, i64 0 ; 2 uses
  store double %i.jg, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.ji = fadd double %2, %i.b
  store double %i.ji, ptr %i.jh, align 16
  %i.jj = getelementptr inbounds nuw i8, ptr %47, i64 24
  store double %i.jg, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %47, i64 32
  store double %2, ptr %i.jk, align 16
  %i.jl = getelementptr inbounds nuw i8, ptr %47, i64 40
  %i.jm = extractelement <2 x double> %i.je, i64 1
  store double %i.jm, ptr %i.jl, align 8
  call void @_ZN8QPainter11drawPolygonEPK7QPointFiN2Qt8FillRuleE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull %47, i32 noundef 3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #51
  br label %bb.co

bb.ay:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #51
  %i.jn = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %48, i64 16
  store double %i.a, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %48, i64 24
  store double %i.a, ptr %i.jp, align 8
  %i.jq = fsub double %3, %i.b                    ; 5 uses
  store double %i.jq, ptr %i.jn, align 8
  %i.jr = fsub double %2, %i.b                    ; 5 uses
  store double %i.jr, ptr %48, align 8
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %48, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #51
  %i.js = insertelement <2 x double> poison, double %i.b, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ju = insertelement <2 x double> poison, double %2, i64 0
  %i.jv = insertelement <2 x double> %i.ju, double %3, i64 1
  %i.jw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> splat (double f0x3FEE666666666666), <2 x double> %i.jv) ; 5 uses
  %i.jx = extractelement <2 x double> %i.jw, i64 1 ; 3 uses
  %i.jy = extractelement <2 x double> %i.jw, i64 0 ; 2 uses
  store double %i.jr, ptr %49, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %49, i64 8
  store double %i.jq, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %49, i64 16
  store double %i.jy, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %49, i64 24
  store double %i.jx, ptr %i.kb, align 8
  %i.kc = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 4, !range !175, !noundef !176
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kf = getelementptr i8, ptr %1, i64 8
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = and i32 %i.kg, 1
  %.not.i331 = icmp eq i32 %i.kh, 0
  br i1 %.not.i331, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %49, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit340

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #51
  %i.ki = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> %i.jw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kk = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.kj)
  %i.kl = insertelement <2 x double> %i.jw, double %i.jq, i64 0 ; 2 uses
  %i.km = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.kl)
  %i.kn = fadd <2 x double> %i.kj, %i.kk
  %i.ko = fptosi <2 x double> %i.kn to <2 x i32>
  %i.kp = fadd <2 x double> %i.kl, %i.km
  %i.kq = fptosi <2 x double> %i.kp to <2 x i32>
  %i.kr = zext <2 x i32> %i.kq to <2 x i64>
  %i.ks = shl nuw <2 x i64> %i.kr, splat (i64 32)
  %i.kt = zext <2 x i32> %i.ko to <2 x i64>
  %i.ku = or disjoint <2 x i64> %i.ks, %i.kt
  store <2 x i64> %i.ku, ptr %20, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %20, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit340

_ZN10QCPPainter8drawLineERK6QLineF.exit340:       ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #51
  store double %i.jr, ptr %50, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %50, i64 8
  store double %i.jx, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %50, i64 16
  store double %i.jy, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %50, i64 24
  store double %i.jq, ptr %i.kx, align 8
  %i.ky = load i8, ptr %i.kc, align 4, !range !175, !noundef !176
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit340
  %i.la = getelementptr i8, ptr %1, i64 8
  %i.lb = load i32, ptr %i.la, align 4
  %i.lc = and i32 %i.lb, 1
  %.not.i341 = icmp eq i32 %i.lc, 0
  br i1 %.not.i341, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN10QCPPainter8drawLineERK6QLineF.exit340
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %50, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit350

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #51
  %i.ld = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> %i.jw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lf = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.le)
  %i.lg = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.lh = insertelement <2 x double> %i.lg, double %i.jq, i64 1 ; 2 uses
  %i.li = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.lh)
  %i.lj = fadd <2 x double> %i.le, %i.lf
  %i.lk = fptosi <2 x double> %i.lj to <2 x i32>
  %i.ll = fadd <2 x double> %i.lh, %i.li
  %i.lm = fptosi <2 x double> %i.ll to <2 x i32>
  %i.ln = zext <2 x i32> %i.lm to <2 x i64>
  %i.lo = shl nuw <2 x i64> %i.ln, splat (i64 32)
  %i.lp = zext <2 x i32> %i.lk to <2 x i64>
  %i.lq = or disjoint <2 x i64> %i.lo, %i.lp
  store <2 x i64> %i.lq, ptr %19, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %19, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit350

_ZN10QCPPainter8drawLineERK6QLineF.exit350:       ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #51
  br label %bb.co

bb.bf:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #51
  %i.lr = fsub double %3, %i.b                    ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %51, i64 8
  store double %i.lr, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %51, i64 16
  store double %i.a, ptr %i.lt, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %51, i64 24
  store double %i.a, ptr %i.lu, align 8
  %i.lv = fsub double %2, %i.b                    ; 3 uses
  store double %i.lv, ptr %51, align 8
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %51, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #51
  %i.lw = call double @llvm.fmuladd.f64(double %i.b, double f0x3FEE666666666666, double %2) ; 2 uses
  store double %i.lv, ptr %52, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %52, i64 8
  store double %3, ptr %i.lx, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %52, i64 16
  store double %i.lw, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %52, i64 24
  store double %3, ptr %i.lz, align 8
  %i.ma = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 4, !range !175, !noundef !176
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.md = getelementptr i8, ptr %1, i64 8
  %i.me = load i32, ptr %i.md, align 4
  %i.mf = and i32 %i.me, 1
  %.not.i351 = icmp eq i32 %i.mf, 0
  br i1 %.not.i351, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %52, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit360

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #51
  %i.mg = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.mh = insertelement <2 x double> %i.mg, double %i.lw, i64 1 ; 2 uses
  %i.mi = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.mh)
  %i.mj = call double @llvm.copysign.f64(double 5.000000e-01, double %3)
  %i.mk = fadd double %3, %i.mj
  %i.ml = fptosi double %i.mk to i32
  %.sroa.2.0.insert.ext.i.i.i352 = zext i32 %i.ml to i64
  %.sroa.2.0.insert.shift.i.i.i353 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i352, 32
  %i.mm = fadd <2 x double> %i.mh, %i.mi
  %i.mn = fptosi <2 x double> %i.mm to <2 x i32>
  %i.mo = zext <2 x i32> %i.mn to <2 x i64>
  %i.mp = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i353, i64 0
  %i.mq = shufflevector <2 x i64> %i.mp, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.mr = or disjoint <2 x i64> %i.mq, %i.mo
  store <2 x i64> %i.mr, ptr %18, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %18, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit360

_ZN10QCPPainter8drawLineERK6QLineF.exit360:       ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #51
  %i.ms = fadd double %3, %i.b                    ; 2 uses
  store double %2, ptr %53, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %53, i64 8
  store double %i.ms, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %53, i64 16
  store double %2, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %53, i64 24
  store double %i.lr, ptr %i.mv, align 8
  %i.mw = load i8, ptr %i.ma, align 4, !range !175, !noundef !176
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit360
  %i.my = getelementptr i8, ptr %1, i64 8
  %i.mz = load i32, ptr %i.my, align 4
  %i.na = and i32 %i.mz, 1
  %.not.i361 = icmp eq i32 %i.na, 0
  br i1 %.not.i361, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN10QCPPainter8drawLineERK6QLineF.exit360
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %53, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit370

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #51
  %i.nb = call double @llvm.copysign.f64(double 5.000000e-01, double %2)
  %i.nc = fadd double %2, %i.nb
  %i.nd = fptosi double %i.nc to i32
  %i.ne = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.nf = insertelement <2 x double> %i.ne, double %i.lr, i64 1 ; 2 uses
  %i.ng = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.nf)
  %.sroa.0.0.insert.ext.i.i.i364 = zext i32 %i.nd to i64
  %i.nh = fadd <2 x double> %i.nf, %i.ng
  %i.ni = fptosi <2 x double> %i.nh to <2 x i32>
  %i.nj = zext <2 x i32> %i.ni to <2 x i64>
  %i.nk = shl nuw <2 x i64> %i.nj, splat (i64 32)
  %i.nl = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i364, i64 0
  %i.nm = shufflevector <2 x i64> %i.nl, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.nn = or disjoint <2 x i64> %i.nk, %i.nm
  store <2 x i64> %i.nn, ptr %17, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %17, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit370

_ZN10QCPPainter8drawLineERK6QLineF.exit370:       ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #51
  br label %bb.co

bb.bm:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #51
  %i.no = fsub double %2, %i.b
  %i.np = fsub double %3, %i.b
  %i.nq = fmul double %i.b, 2.000000e+00          ; 2 uses
  store double %i.no, ptr %16, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %16, i64 8
  store double %i.np, ptr %i.nr, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %16, i64 16
  store double %i.nq, ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %i.nq, ptr %i.nt, align 8
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #51
  %i.nu = fneg double %i.b
  %i.nv = insertelement <2 x double> poison, double %i.b, i64 0
  %i.nw = insertelement <2 x double> %i.nv, double %i.nu, i64 1 ; 2 uses
  %i.nx = insertelement <2 x double> poison, double %2, i64 0
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> <double 6.700000e-01, double 7.070000e-01>, <2 x double> %i.ny) ; 4 uses
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ob = insertelement <2 x double> poison, double %3, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> <double 6.700000e-01, double 7.070000e-01>, <2 x double> %i.oc) ; 7 uses
  %i.oe = shufflevector <2 x double> %i.nz, <2 x double> %i.od, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.oe, ptr %54, align 16
  %i.of = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.og = shufflevector <2 x double> %i.nz, <2 x double> %i.od, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.og, ptr %i.of, align 16
  %i.oh = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.oi = load i8, ptr %i.oh, align 4, !range !175, !noundef !176
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ok = getelementptr i8, ptr %1, i64 8
  %i.ol = load i32, ptr %i.ok, align 4
  %i.om = and i32 %i.ol, 1
  %.not.i371 = icmp eq i32 %i.om, 0
  br i1 %.not.i371, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %54, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit380

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %i.on = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.oa)
  %i.oo = fadd <2 x double> %i.oa, %i.on
  %i.op = fptosi <2 x double> %i.oo to <2 x i32>
  %i.oq = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.od)
  %i.or = fadd <2 x double> %i.od, %i.oq
  %i.os = fptosi <2 x double> %i.or to <2 x i32>
  %i.ot = zext <2 x i32> %i.os to <2 x i64>
  %i.ou = shl nuw <2 x i64> %i.ot, splat (i64 32)
  %i.ov = shufflevector <2 x i64> %i.ou, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ow = zext <2 x i32> %i.op to <2 x i64>
  %i.ox = or disjoint <2 x i64> %i.ov, %i.ow
  store <2 x i64> %i.ox, ptr %15, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %15, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit380

_ZN10QCPPainter8drawLineERK6QLineF.exit380:       ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #51
  %65 = shufflevector <2 x double> %i.nz, <2 x double> %i.od, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x double> %65, ptr %55, align 8
  %i.oy = load i8, ptr %i.oh, align 4, !range !175, !noundef !176
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit380
  %i.pa = getelementptr i8, ptr %1, i64 8
  %i.pb = load i32, ptr %i.pa, align 4
  %i.pc = and i32 %i.pb, 1
  %.not.i381 = icmp eq i32 %i.pc, 0
  br i1 %.not.i381, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZN10QCPPainter8drawLineERK6QLineF.exit380
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit390

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #51
  %i.pd = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.oa)
  %i.pe = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.od)
  %i.pf = fadd <2 x double> %i.oa, %i.pd
  %i.pg = fptosi <2 x double> %i.pf to <2 x i32>
  %i.ph = fadd <2 x double> %i.od, %i.pe
  %i.pi = fptosi <2 x double> %i.ph to <2 x i32>
  %i.pj = zext <2 x i32> %i.pi to <2 x i64>
  %i.pk = shl nuw <2 x i64> %i.pj, splat (i64 32)
  %i.pl = zext <2 x i32> %i.pg to <2 x i64>
  %i.pm = or disjoint <2 x i64> %i.pk, %i.pl
  store <2 x i64> %i.pm, ptr %14, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %14, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit390

_ZN10QCPPainter8drawLineERK6QLineF.exit390:       ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #51
  br label %bb.co

bb.bt:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  %i.pn = fsub double %2, %i.b                    ; 3 uses
  %i.po = fsub double %3, %i.b                    ; 3 uses
  %i.pp = fmul double %i.b, 2.000000e+00          ; 2 uses
  store double %i.pn, ptr %13, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store double %i.po, ptr %i.pq, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %13, i64 16
  store double %i.pp, ptr %i.pr, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %13, i64 24
  store double %i.pp, ptr %i.ps, align 8
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #51
  %i.pt = fadd double %2, %i.b                    ; 2 uses
  store double %i.pn, ptr %56, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %56, i64 8
  store double %3, ptr %i.pu, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %56, i64 16
  store double %i.pt, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %56, i64 24
  store double %3, ptr %i.pw, align 8
  %i.px = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.py = load i8, ptr %i.px, align 4, !range !175, !noundef !176
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qa = getelementptr i8, ptr %1, i64 8
  %i.qb = load i32, ptr %i.qa, align 4
  %i.qc = and i32 %i.qb, 1
  %.not.i391 = icmp eq i32 %i.qc, 0
  br i1 %.not.i391, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %56, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit400

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %i.qd = insertelement <2 x double> poison, double %i.pn, i64 0
  %i.qe = insertelement <2 x double> %i.qd, double %i.pt, i64 1 ; 2 uses
  %i.qf = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.qe)
  %i.qg = call double @llvm.copysign.f64(double 5.000000e-01, double %3)
  %i.qh = fadd double %3, %i.qg
  %i.qi = fptosi double %i.qh to i32
  %.sroa.2.0.insert.ext.i.i.i392 = zext i32 %i.qi to i64
  %.sroa.2.0.insert.shift.i.i.i393 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i392, 32
  %i.qj = fadd <2 x double> %i.qe, %i.qf
  %i.qk = fptosi <2 x double> %i.qj to <2 x i32>
  %i.ql = zext <2 x i32> %i.qk to <2 x i64>
  %i.qm = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i393, i64 0
  %i.qn = shufflevector <2 x i64> %i.qm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.qo = or disjoint <2 x i64> %i.qn, %i.ql
  store <2 x i64> %i.qo, ptr %12, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit400

_ZN10QCPPainter8drawLineERK6QLineF.exit400:       ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #51
  %i.qp = fadd double %3, %i.b                    ; 2 uses
  store double %2, ptr %57, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %57, i64 8
  store double %i.qp, ptr %i.qq, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %57, i64 16
  store double %2, ptr %i.qr, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %57, i64 24
  store double %i.po, ptr %i.qs, align 8
  %i.qt = load i8, ptr %i.px, align 4, !range !175, !noundef !176
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit400
  %i.qv = getelementptr i8, ptr %1, i64 8
  %i.qw = load i32, ptr %i.qv, align 4
  %i.qx = and i32 %i.qw, 1
  %.not.i401 = icmp eq i32 %i.qx, 0
  br i1 %.not.i401, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx, %_ZN10QCPPainter8drawLineERK6QLineF.exit400
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %57, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit410

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.qy = call double @llvm.copysign.f64(double 5.000000e-01, double %2)
  %i.qz = fadd double %2, %i.qy
  %i.ra = fptosi double %i.qz to i32
  %i.rb = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.rc = insertelement <2 x double> %i.rb, double %i.po, i64 1 ; 2 uses
  %i.rd = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.rc)
  %.sroa.0.0.insert.ext.i.i.i404 = zext i32 %i.ra to i64
  %i.re = fadd <2 x double> %i.rc, %i.rd
  %i.rf = fptosi <2 x double> %i.re to <2 x i32>
  %i.rg = zext <2 x i32> %i.rf to <2 x i64>
  %i.rh = shl nuw <2 x i64> %i.rg, splat (i64 32)
  %i.ri = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i404, i64 0
  %i.rj = shufflevector <2 x i64> %i.ri, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.rk = or disjoint <2 x i64> %i.rh, %i.rj
  store <2 x i64> %i.rk, ptr %11, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit410

_ZN10QCPPainter8drawLineERK6QLineF.exit410:       ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #51
  br label %bb.co

bb.ca:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  %i.rl = fsub double %2, %i.b
  %i.rm = fsub double %3, %i.b                    ; 3 uses
  %i.rn = fmul double %i.b, 2.000000e+00          ; 2 uses
  store double %i.rl, ptr %10, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.rm, ptr %i.ro, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.rn, ptr %i.rp, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %10, i64 24
  store double %i.rn, ptr %i.rq, align 8
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #51
  %i.rr = fadd double %3, %i.b                    ; 2 uses
  store double %2, ptr %58, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %58, i64 8
  store double %i.rm, ptr %i.rs, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %58, i64 16
  store double %2, ptr %i.rt, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %58, i64 24
  store double %i.rr, ptr %i.ru, align 8
  %i.rv = getelementptr i8, ptr %1, i64 12        ; 3 uses
  %i.rw = load i8, ptr %i.rv, align 4, !range !175, !noundef !176
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ry = getelementptr i8, ptr %1, i64 8
  %i.rz = load i32, ptr %i.ry, align 4
  %i.sa = and i32 %i.rz, 1
  %.not.i411 = icmp eq i32 %i.sa, 0
  br i1 %.not.i411, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %58, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit420

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.sb = call double @llvm.copysign.f64(double 5.000000e-01, double %2)
  %i.sc = fadd double %2, %i.sb
  %i.sd = fptosi double %i.sc to i32
  %i.se = insertelement <2 x double> poison, double %i.rm, i64 0
  %i.sf = insertelement <2 x double> %i.se, double %i.rr, i64 1 ; 2 uses
  %i.sg = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.sf)
  %.sroa.0.0.insert.ext.i.i.i414 = zext i32 %i.sd to i64
  %i.sh = fadd <2 x double> %i.sf, %i.sg
  %i.si = fptosi <2 x double> %i.sh to <2 x i32>
  %i.sj = zext <2 x i32> %i.si to <2 x i64>
  %i.sk = shl nuw <2 x i64> %i.sj, splat (i64 32)
  %i.sl = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i414, i64 0
end_hunk_1
begin_hunk_2_@_ZNK16QCPColorGradient13stopsUseAlphaEv:bb.a
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
  br i1 %.not.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

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
  tail call void @_ZN12QPainterPathD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.c) #51, !inline_history !869
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.d) #51, !inline_history !869
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.e) #51, !inline_history !869
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.f) #51, !inline_history !869
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.g) #51, !inline_history !869
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.h) #51, !inline_history !869
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
  %12 = alloca %class.QLineF, align 8             ; 4 uses
  %13 = alloca %class.QRectF, align 16            ; 5 uses
  %14 = alloca %class.QRectF, align 16            ; 5 uses
  %15 = alloca %class.QLineF, align 8             ; 4 uses
  %16 = alloca %class.QLineF, align 16            ; 5 uses
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
  %i.p = load i8, ptr %i.o, align 4, !range !175, !noundef !176
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
  %i.ak = load i8, ptr %i.o, align 4, !range !175, !noundef !176
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
  %i.bb = fmul nnan <2 x double> %i.ba, splat (double 5.000000e-01) ; 3 uses
  %19 = shufflevector <2 x double> %i.bb, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %20 = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x double> %19, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x double> %20, ptr %12, align 8
  %i.bc = load i8, ptr %i.o, align 4, !range !175, !noundef !176
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit21
  %i.be = getelementptr i8, ptr %1, i64 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, 1
  %.not.i22 = icmp eq i32 %i.bg, 0
  br i1 %.not.i22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN10QCPPainter8drawLineERK6QLineF.exit21
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit31

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.bh = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bb)
  %i.bi = fadd <2 x double> %i.bb, %i.bh
  %i.bj = fptosi <2 x double> %i.bi to <2 x i32>
  %i.bk = zext <2 x i32> %i.bj to <2 x i64>
  %i.bl = shl nuw <2 x i64> %i.bk, splat (i64 32)
  store <2 x i64> %i.bl, ptr %7, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit31

_ZN10QCPPainter8drawLineERK6QLineF.exit31:        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %bb.ah

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  %i.bm = getelementptr i8, ptr %0, i64 128
  %i.bn = load <2 x i32>, ptr %i.bm, align 8      ; 2 uses
  %i.bo = sub <2 x i32> zeroinitializer, %i.bn
  %i.bp = sitofp <2 x i32> %i.bo to <2 x double>
  %i.bq = fmul nnan <2 x double> %i.bp, splat (double 5.000000e-01)
  store <2 x double> %i.bq, ptr %13, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bs = sitofp <2 x i32> %i.bn to <2 x double>
  store <2 x double> %i.bs, ptr %i.br, align 16
  %i.bt = mul i32 %2, -2880
  call void @_ZN8QPainter7drawArcERK6QRectFii(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef -1440, i32 noundef %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  br label %bb.ah

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #51
  %i.bu = getelementptr i8, ptr %0, i64 128
  %i.bv = load <2 x i32>, ptr %i.bu, align 8      ; 2 uses
  %i.bw = sub <2 x i32> zeroinitializer, %i.bv
  %i.bx = sitofp <2 x i32> %i.bw to <2 x double>
  %i.by = fmul nnan <2 x double> %i.bx, splat (double 5.000000e-01)
  store <2 x double> %i.by, ptr %14, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ca = sitofp <2 x i32> %i.bv to <2 x double>
  store <2 x double> %i.ca, ptr %i.bz, align 16
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  br label %bb.ah

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %i.cb = getelementptr i8, ptr %0, i64 132
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = sub i32 0, %i.cc
  %i.ce = insertelement <2 x i32> poison, i32 %i.cd, i64 0
  %i.cf = insertelement <2 x i32> %i.ce, i32 %i.cc, i64 1
  %i.cg = sitofp <2 x i32> %i.cf to <2 x double>
  %i.ch = fmul nnan <2 x double> %i.cg, splat (double 5.000000e-01) ; 3 uses
  %21 = shufflevector <2 x double> %i.ch, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %22 = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x double> %21, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x double> %22, ptr %15, align 8
  %i.ci = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 4, !range !175, !noundef !176
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr i8, ptr %1, i64 8
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = and i32 %i.cm, 1
  %.not.i32 = icmp eq i32 %i.cn, 0
  br i1 %.not.i32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit41

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.co = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ch)
  %i.cp = fadd <2 x double> %i.ch, %i.co
  %i.cq = fptosi <2 x double> %i.cp to <2 x i32>
  %i.cr = zext <2 x i32> %i.cq to <2 x i64>
  %i.cs = shl nuw <2 x i64> %i.cr, splat (i64 32)
  store <2 x i64> %i.cs, ptr %6, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit41

_ZN10QCPPainter8drawLineERK6QLineF.exit41:        ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #51
  %i.ct = getelementptr i8, ptr %0, i64 128
  %i.cu = load i32, ptr %i.ct, align 8            ; 2 uses
  %i.cv = sub i32 0, %i.cu
  %i.cw = insertelement <2 x i32> poison, i32 %i.cv, i64 0
  %i.cx = insertelement <2 x i32> %i.cw, i32 %i.cu, i64 1
  %i.cy = sitofp <2 x i32> %i.cx to <2 x double>
  %i.cz = fmul nnan <2 x double> %i.cy, splat (double 5.000000e-01) ; 4 uses
  %i.da = insertelement <2 x double> %i.cz, double 0.000000e+00, i64 1
  store <2 x double> %i.da, ptr %16, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.dc = shufflevector <2 x double> %i.cz, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.dc, ptr %i.db, align 16
  %i.dd = load i8, ptr %i.ci, align 4, !range !175, !noundef !176
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit41
  %i.df = getelementptr i8, ptr %1, i64 8
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = and i32 %i.dg, 1
  %.not.i42 = icmp eq i32 %i.dh, 0
  br i1 %.not.i42, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN10QCPPainter8drawLineERK6QLineF.exit41
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit51

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.di = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.cz)
  %i.dj = fadd <2 x double> %i.cz, %i.di
  %i.dk = fptosi <2 x double> %i.dj to <2 x i32>
  %i.dl = zext <2 x i32> %i.dk to <2 x i64>
  store <2 x i64> %i.dl, ptr %5, align 16
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
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dm, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.dn, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %17, ptr noundef nonnull align 8 dereferenceable_or_null(32) %18)
  %i.do = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 79, ptr nonnull @__PRETTY_FUNCTION__._ZNK28QCPSelectionDecoratorBracket11drawBracketEP10QCPPainteri)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.u
  %i.dp = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %.noexc
  %i.dq = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.v
  %i.dr = atomicrmw sub ptr %i.dq, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.dr, 1
  br i1 %.not.i.i.i, label %bb.w, label %_ZN7QStringD2Ev.exit.i

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.ds = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ds, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %i.dt = load ptr, ptr %17, align 8              ; 3 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 48
  %i.dv = load i8, ptr %i.du, align 8, !range !175, !noundef !176
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.x, label %_ZN6QDebuglsEPKc.exit

bb.x:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.dx = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.dt, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.ag ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.x
  %.pre = load ptr, ptr %17, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.y:                                             ; preds = %.noexc
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.y
  %i.ea = atomicrmw sub ptr %i.dz, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ea, 1
  br i1 %.not.i.i4.i, label %bb.z, label %_ZN7QStringD2Ev.exit5.i

bb.z:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.eb = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.eb, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.ec = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.dt, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 72, ptr nonnull @.str.142)
          to label %.noexc61 unwind label %bb.ag

.noexc61:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.ed = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.aa unwind label %bb.ad     ; 0 uses

bb.aa:                                            ; preds = %.noexc61
  %i.ee = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i57, label %_ZN7QStringD2Ev.exit.i60, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58:  ; preds = %bb.aa
  %i.ef = atomicrmw sub ptr %i.ee, i32 1 acq_rel, align 4
  %.not.i.i.i59 = icmp eq i32 %i.ef, 1
  br i1 %.not.i.i.i59, label %bb.ab, label %_ZN7QStringD2Ev.exit.i60

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58
  %i.eg = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.eg, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i60

_ZN7QStringD2Ev.exit.i60:                         ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %i.eh = load ptr, ptr %17, align 8              ; 3 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 48
  %i.ej = load i8, ptr %i.ei, align 8, !range !175, !noundef !176
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ac, label %_ZN6QDebuglsEPKc.exit65

bb.ac:                                            ; preds = %_ZN7QStringD2Ev.exit.i60
  %i.el = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.eh, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit65_crit_edge unwind label %bb.ag ; 0 uses

._ZN6QDebuglsEPKc.exit65_crit_edge:               ; preds = %bb.ac
  %.pre68 = load ptr, ptr %17, align 8
  br label %_ZN6QDebuglsEPKc.exit65

bb.ad:                                            ; preds = %.noexc61
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i53 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i2.i53, label %_ZN7QStringD2Ev.exit5.i56, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i54

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i54: ; preds = %bb.ad
  %i.eo = atomicrmw sub ptr %i.en, i32 1 acq_rel, align 4
  %.not.i.i4.i55 = icmp eq i32 %i.eo, 1
  br i1 %.not.i.i4.i55, label %bb.ae, label %_ZN7QStringD2Ev.exit5.i56

bb.ae:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i54
  %i.ep = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ep, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i56
end_hunk_2
begin_hunk_3_@_ZN28QCPColorScaleAxisRectPrivateC2EP13QCPColorScale:bb.a
  br i1 %.not.i.i.i56, label %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73.sink.split, label %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73

bb.z:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit
  %i.ce = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 2, i32 noundef 0)
          to label %bb.aa unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %5, ptr noundef %i.bi, ptr noundef nonnull @.str.149, ptr noundef %i.ce, ptr noundef nonnull @.str.150, i32 noundef 0)
          to label %bb.ab unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  %i.cf = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 2, i32 noundef 0)
          to label %bb.ac unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ac:                                            ; preds = %bb.ab
  %i.cg = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 1, i32 noundef 0)
          to label %bb.ad unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %6, ptr noundef %i.cf, ptr noundef nonnull @.str.149, ptr noundef %i.cg, ptr noundef nonnull @.str.150, i32 noundef 0)
          to label %bb.ae unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  %i.ch = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 8, i32 noundef 0)
          to label %bb.af unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.af:                                            ; preds = %bb.ae
  %i.ci = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 4, i32 noundef 0)
          to label %bb.ag unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %7, ptr noundef %i.ch, ptr noundef nonnull @.str.149, ptr noundef %i.ci, ptr noundef nonnull @.str.150, i32 noundef 0)
          to label %bb.ah unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #51
  %i.cj = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 4, i32 noundef 0)
          to label %bb.ai unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ai:                                            ; preds = %bb.ah
  %i.ck = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 8, i32 noundef 0)
          to label %bb.aj unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %8, ptr noundef %i.cj, ptr noundef nonnull @.str.149, ptr noundef %i.ck, ptr noundef nonnull @.str.150, i32 noundef 0)
          to label %bb.ak unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  %i.cl = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 1, i32 noundef 0)
          to label %bb.al unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.al:                                            ; preds = %bb.ak
  %i.cm = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 2, i32 noundef 0)
          to label %bb.am unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %9, ptr noundef %i.cl, ptr noundef nonnull @.str.159, ptr noundef %i.cm, ptr noundef nonnull @.str.165, i32 noundef 0)
          to label %bb.an unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.an:                                            ; preds = %bb.am
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %9) #51
  %i.cn = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 2, i32 noundef 0)
          to label %bb.ao unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ao:                                            ; preds = %bb.an
  %i.co = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 1, i32 noundef 0)
          to label %bb.ap unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %10, ptr noundef %i.cn, ptr noundef nonnull @.str.159, ptr noundef %i.co, ptr noundef nonnull @.str.165, i32 noundef 0)
          to label %bb.aq unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #51
  %i.cp = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 8, i32 noundef 0)
          to label %bb.ar unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ar:                                            ; preds = %bb.aq
  %i.cq = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 4, i32 noundef 0)
          to label %bb.as unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %11, ptr noundef %i.cp, ptr noundef nonnull @.str.159, ptr noundef %i.cq, ptr noundef nonnull @.str.165, i32 noundef 0)
          to label %bb.at unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.at:                                            ; preds = %bb.as
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %11) #51
  %i.cr = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 4, i32 noundef 0)
          to label %bb.au unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.au:                                            ; preds = %bb.at
  %i.cs = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef 8, i32 noundef 0)
          to label %bb.av unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %12, ptr noundef %i.cr, ptr noundef nonnull @.str.159, ptr noundef %i.cs, ptr noundef nonnull @.str.165, i32 noundef 0)
          to label %bb.aw unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.aw:                                            ; preds = %bb.av
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %12) #51
  invoke void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %13, ptr noundef %1, ptr noundef nonnull @.str.166, ptr noundef %0, ptr noundef nonnull @.str.167, i32 noundef 0)
          to label %bb.ax unwind label %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #51
  br i1 %.not.i.i.i129, label %_ZN9QtPrivate21qMakeForeachContainerIRK5QListIN7QCPAxis8AxisTypeEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS9_.exit59, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ct = atomicrmw add ptr %i.bf, i32 1 acq_rel, align 4, !noalias !1080 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIRK5QListIN7QCPAxis8AxisTypeEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS9_.exit59

_ZN9QtPrivate21qMakeForeachContainerIRK5QListIN7QCPAxis8AxisTypeEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS9_.exit59: ; preds = %bb.ax, %bb.ay
  br i1 %.not113, label %._crit_edge118, label %.lr.ph117

._crit_edge118:                                   ; preds = %bb.bc, %_ZN9QtPrivate21qMakeForeachContainerIRK5QListIN7QCPAxis8AxisTypeEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS9_.exit59
  br i1 %.not.i.i.i129, label %_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit67, label %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i61

_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i61: ; preds = %._crit_edge118
  %i.cu = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i.i.i62 = icmp eq i32 %i.cu, 1
  br i1 %.not.i.i.i62, label %bb.az, label %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i65

bb.az:                                            ; preds = %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i61
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bf, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i65

_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i65: ; preds = %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i61, %bb.az
  %i.cv = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i.i66 = icmp eq i32 %i.cv, 1
  br i1 %.not.i.i66, label %bb.ba, label %_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit67

bb.ba:                                            ; preds = %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i65
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bf, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit67

_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit67:        ; preds = %._crit_edge118, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i65, %bb.ba
  ret void

_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57: ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i.i129, label %_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit75, label %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73

.lr.ph117:                                        ; preds = %_ZN9QtPrivate21qMakeForeachContainerIRK5QListIN7QCPAxis8AxisTypeEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS9_.exit59, %bb.bc
  %.sroa.10.0116 = phi ptr [ %i.cz, %bb.bc ], [ %i.be, %_ZN9QtPrivate21qMakeForeachContainerIRK5QListIN7QCPAxis8AxisTypeEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS9_.exit59 ] ; 2 uses
  %i.cx = load i32, ptr %.sroa.10.0116, align 4
  %i.cy = invoke noundef ptr @_ZNK11QCPAxisRect4axisEN7QCPAxis8AxisTypeEi(ptr noundef align 8 dereferenceable_or_null(432) %0, i32 noundef %i.cx, i32 noundef 0)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %.lr.ph117
  invoke void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %14, ptr noundef %1, ptr noundef nonnull @.str.166, ptr noundef %i.cy, ptr noundef nonnull @.str.167, i32 noundef 0)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %14) #51
  %i.cz = getelementptr i8, ptr %.sroa.10.0116, i64 4 ; 2 uses
  %.not112 = icmp eq ptr %i.cz, %i.bg
  br i1 %.not112, label %._crit_edge118, label %.lr.ph117, !llvm.loop !1078

bb.bd:                                            ; preds = %bb.bb, %.lr.ph117
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i129, label %_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit75, label %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i69

_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i69: ; preds = %bb.bd
  %i.db = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i.i.i70 = icmp eq i32 %i.db, 1
  br i1 %.not.i.i.i70, label %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73.sink.split, label %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73

_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73.sink.split: ; preds = %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i69, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i55
  %.pn20.pn106.ph = phi { ptr, i32 } [ %i.cc, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i55 ], [ %i.da, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i69 ]
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bf, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73

_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73: ; preds = %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73.sink.split, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i55, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i69, %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57
  %.pn20.pn106 = phi { ptr, i32 } [ %i.cw, %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57 ], [ %i.cc, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i55 ], [ %i.da, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i.i69 ], [ %.pn20.pn106.ph, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73.sink.split ] ; 2 uses
  %i.dc = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i.i74 = icmp eq i32 %i.dc, 1
  br i1 %.not.i.i74, label %bb.be, label %_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit75

bb.be:                                            ; preds = %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bf, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit75

_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit75:        ; preds = %bb.y, %bb.bd, %_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit52, %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73, %bb.be, %bb.n
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %i.bk, %_ZN5QListIN7QCPAxis8AxisTypeEED2Ev.exit52 ], [ %i.cw, %_ZN9QtPrivate17QForeachContainerI5QListIN7QCPAxis8AxisTypeEEED2Ev.exit57 ], [ %.pn20.pn106, %_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE5derefEv.exit.i.i73 ], [ %.pn20.pn106, %bb.be ], [ %i.da, %bb.bd ], [ %i.cc, %bb.y ]
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.h) #51
  call void @_ZN11QCPAxisRectD2Ev(ptr noundef align 8 dead_on_return(432) dereferenceable_or_null(432) %0) #51
  resume { ptr, i32 } %.pn20.pn.pn.pn
}

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN6QImageC1Ev(ptr noundef align 8 dereferenceable_or_null(24)) unnamed_addr #6

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPColorScaleAxisRectPrivate4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(465) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QRectF, align 8              ; 4 uses
  %3 = alloca %class.QRectF, align 8              ; 6 uses
  %4 = alloca %class.QImage, align 8              ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 464
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN28QCPColorScaleAxisRectPrivate19updateGradientImageEv(ptr noundef align 8 dereferenceable_or_null(465) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 432
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 304
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.g, i64 4        ; 3 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.e, i64 312
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit

_ZNK8QPointerI7QCPAxisE4dataEv.exit:              ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.n = load atomic i32, ptr %i.i monotonic, align 4
  %i.o = icmp eq i32 %i.n, 0
  %spec.select19 = select i1 %i.o, ptr null, ptr %i.m
  %i.p = getelementptr i8, ptr %spec.select19, i64 320
  %i.q = load i8, ptr %i.p, align 8, !range !175, !noundef !176
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit7

bb.e:                                             ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit
  %i.s = getelementptr i8, ptr %i.e, i64 168
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq i32 %i.t, 8
  %i.v = icmp eq i32 %i.t, 4
  %spec.select = or i1 %i.u, %i.v
  br label %_ZNK8QPointerI7QCPAxisE4dataEv.exit7

_ZNK8QPointerI7QCPAxisE4dataEv.exit7:             ; preds = %bb.e, %_ZNK8QPointerI7QCPAxisE4dataEv.exit
  %i.w = phi i1 [ false, %_ZNK8QPointerI7QCPAxisE4dataEv.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.x = load atomic i32, ptr %i.i monotonic, align 4
  %i.y = icmp eq i32 %i.x, 0
  %spec.select20 = select i1 %i.y, ptr null, ptr %i.m
  %i.z = getelementptr i8, ptr %spec.select20, i64 320
  %i.aa = load i8, ptr %i.z, align 8, !range !175, !noundef !176
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.f:                                             ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit7
  %i.ac = getelementptr i8, ptr %i.e, i64 168
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = add i32 %i.ad, -1
  %spec.select15 = icmp ult i32 %i.ae, 2
  br label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread:      ; preds = %bb.f, %bb.c, %bb.d, %_ZNK8QPointerI7QCPAxisE4dataEv.exit7, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %.06 = phi i1 [ false, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit ], [ false, %_ZNK8QPointerI7QCPAxisE4dataEv.exit7 ], [ %spec.select15, %bb.f ], [ false, %bb.c ], [ false, %bb.d ]
  %.0 = phi i1 [ false, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit ], [ %i.w, %_ZNK8QPointerI7QCPAxisE4dataEv.exit7 ], [ %i.w, %bb.f ], [ false, %bb.c ], [ false, %bb.d ]
  %i.af = getelementptr i8, ptr %0, i64 92
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 4 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %0, i64 100
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %.sroa.6.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  %i.ag = getelementptr i8, ptr %0, i64 440
  call void @_ZNK6QImage15mirrored_helperEbb(ptr dead_on_unwind nonnull writable sret(%class.QImage) align 8 %4, ptr noundef align 8 dereferenceable_or_null(24) %i.ag, i1 noundef zeroext %.0, i1 noundef zeroext %.06)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  %.sroa.012.0.extract.trunc.a = trunc i64 %.sroa.2.0.copyload.i to i32
  %reass.sub16 = sub i32 %.sroa.6.12.extract.trunc, %.sroa.0.4.extract.trunc
  %.sroa.613.8.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %reass.sub = sub i32 %.sroa.012.0.extract.trunc.a, %.sroa.613.8.extract.trunc
  %5 = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i, i64 0
  %6 = bitcast <2 x i64> %5 to <4 x i32>
  %7 = insertelement <4 x i32> %6, i32 %reass.sub, i64 2
  %8 = insertelement <4 x i32> %7, i32 %reass.sub16, i64 3
  %9 = add <4 x i32> %8, <i32 0, i32 -1, i32 1, i32 1>
  %10 = sitofp <4 x i32> %9 to <4 x double>
  store <4 x double> %10, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.ah = invoke noundef i32 @_ZNK6QImage5widthEv(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %4)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread
  %i.ai = invoke noundef i32 @_ZNK6QImage6heightEv(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %4)
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %.noexc
  %i.aj = sitofp i32 %i.ah to double
  %i.ak = sitofp i32 %i.ai to double
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store double %i.aj, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.ak, ptr %i.am, align 8
  invoke void @_ZN8QPainter9drawImageERK6QRectFRK6QImageS2_6QFlagsIN2Qt19ImageConversionFlagEE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 0)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  call void @_ZN11QCPAxisRect14drawBackgroundEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(432) %0, ptr noundef %1)
  ret void

bb.h:                                             ; preds = %.noexc10, %.noexc, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPColorScaleAxisRectPrivate19updateGradientImageEv(ptr noundef align 8 dereferenceable_or_null(465) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QImage, align 8              ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.QImage, align 8              ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.QList.58, align 8            ; 18 uses
  %4 = alloca %class.QImage, align 8              ; 6 uses
  %5 = alloca %class.QList.224, align 8           ; 17 uses
  %6 = alloca %class.QCPRange, align 8            ; 5 uses
  %7 = alloca %class.QImage, align 8              ; 6 uses
  %8 = alloca %class.QCPRange, align 8            ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %0, i64 100 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.098.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.5.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.d = icmp sgt i32 %.sroa.098.0.extract.trunc, %.sroa.5.8.extract.trunc
  br i1 %i.d, label %_ZNK5QRect7isEmptyEv.exit.thread, label %_ZNK5QRect7isEmptyEv.exit

_ZNK5QRect7isEmptyEv.exit:                        ; preds = %bb.a
  %.sroa.098.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.098.4.extract.trunc = trunc nuw i64 %.sroa.098.4.extract.shift to i32
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %i.e = icmp sgt i32 %.sroa.098.4.extract.trunc, %.sroa.5.12.extract.trunc
  br i1 %i.e, label %_ZNK5QRect7isEmptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5QRect7isEmptyEv.exit
  %i.f = getelementptr i8, ptr %0, i64 432        ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 200
  %i.i = load i32, ptr %i.h, align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.j = sext i32 %i.i to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  %i.k = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 8, i64 noundef %i.j, i32 noundef 1) #51 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 8) ]
  %i.l = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  store ptr %i.l, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %._crit_edge, label %_ZN5QListIdEC2Ex.exit

_ZN5QListIdEC2Ex.exit:                            ; preds = %bb.b
  store i64 %i.j, ptr %i.n, align 8
  %.idx6.i.i = shl nsw i64 %i.j, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %.idx6.i.i, i1 false)
  %i.o = icmp sgt i32 %i.i, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN5QListIdEC2Ex.exit
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.b, %_ZN5QListIdEC2Ex.exit
  %i.p = phi i1 [ false, %bb.b ], [ false, %_ZN5QListIdEC2Ex.exit ], [ true, %bb.c ]
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 168
  %i.s = load i32, ptr %i.r, align 8
  %.sroa.0.0.copyload.i75 = load i64, ptr %i.c, align 4 ; 2 uses
  %.sroa.2.0.copyload.i77 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 4 ; 2 uses
  switch i32 %i.s, label %bb.v [
    i32 8, label %bb.e
    i32 4, label %bb.e
  ]

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5QListIdE6detachEv.exit.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i: ; preds = %.lr.ph
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %_ZN5QListIdE6detachEv.exit.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i

_ZN5QListIdE6detachEv.exit.i:                     ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i, %.lr.ph
  invoke void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZN5QListIdE6detachEv.exit.i
  %.pre.i = load ptr, ptr %3, align 8             ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i: ; preds = %.noexc, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i
  %i.w = phi ptr [ %.pre.i, %.noexc ], [ %i.t, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i ]
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i, label %bb.c

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i
  %i.z = load ptr, ptr %i.m, align 8
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = uitofp nneg i32 %i.ab to double
  store double %i.ac, ptr %i.aa, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1081

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i, %_ZN5QListIdE6detachEv.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.e:                                             ; preds = %._crit_edge, %._crit_edge
  %.sroa.497.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i77, 32
  %.sroa.497.12.extract.trunc = trunc nuw i64 %.sroa.497.12.extract.shift to i32
  %.sroa.096.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i75, 32
  %.sroa.096.4.extract.trunc = trunc nuw i64 %.sroa.096.4.extract.shift to i32
  %reass.sub = sub i32 %.sroa.497.12.extract.trunc, %.sroa.096.4.extract.trunc ; 3 uses
  %i.ae = add i32 %reass.sub, 1                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  invoke void @_ZN6QImageC1EiiNS_6FormatE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %4, i32 noundef %i.i, i32 noundef %i.ae, i32 noundef 6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %0, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %2, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr null, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %0, i64 456       ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr %i.ak, ptr %i.ag, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %2) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %5, i8 0, i64 24, i1 false)
  %i.al = icmp ult i32 %reass.sub, 2147483647
  br i1 %i.al, label %.lr.ph102, label %._crit_edge103

.lr.ph102:                                        ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.h

._crit_edge103:                                   ; preds = %bb.j, %bb.f
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 200
  %i.ap = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.aq = add i32 %i.i, -1
  %i.ar = sitofp i32 %i.aq to double
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6, double noundef 0.000000e+00, double noundef %i.ar)
          to label %bb.l unwind label %bb.p

end_hunk_3
begin_hunk_4_@_ZN18QCPPolarAxisRadial15mousePressEventEP11QMouseEventRK8QVariant:bb.a
bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 68
  %.sroa.0.0.copyload.i4 = load i32, ptr %i.f, align 4
  %i.g = and i32 %.sroa.0.0.copyload.i4, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 488
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.b, i64 232
  %i.j = load i8, ptr %i.i, align 8, !range !175, !noundef !176
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.b, i64 216
  %.sroa.0.0.copyload.i5 = load i32, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 512
  store i32 %.sroa.0.0.copyload.i5, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.b, i64 220
  %.sroa.0.0.copyload.i6 = load i32, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %0, i64 516
  store i32 %.sroa.0.0.copyload.i6, ptr %i.o, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.copyload.i7 = load i32, ptr %i.c, align 8
  %i.p = and i32 %.sroa.0.0.copyload.i7, 1
  %.not12 = icmp eq i32 %i.p, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %0, i64 352
  %i.r = getelementptr i8, ptr %0, i64 496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.r, ptr noundef align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18QCPPolarAxisRadial14mouseMoveEventEP11QMouseEventRK7QPointF(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(776) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 488
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 232
  %i.g = load i8, ptr %i.f, align 8, !range !175, !noundef !176
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.e, i64 220
  store i32 65535, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %i.e, i64 216      ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %i.j, align 8 ; 2 uses
  %i.k = and i32 %.sroa.01.0.copyload.i, 65535
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = or i32 %.sroa.01.0.copyload.i, -65536
  store i32 %i.l, ptr %i.j, align 8
  br label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.m = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 481      ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !range !175, !noundef !176
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit
  store i8 1, ptr %i.n, align 1
  tail call void @_ZN6QTimer10singleShotEiPK7QObjectPKc(i32 noundef 0, ptr noundef align 8 dereferenceable_or_null(513) %i.m, ptr noundef nonnull @.str.125)
  br label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit

_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit: ; preds = %bb.e, %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN18QCPPolarAxisRadial17mouseReleaseEventEP11QMouseEventRK7QPointF(ptr nofree noundef align 8 captures(none) dereferenceable_or_null(776) initializes((488, 489)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #33 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 488
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 232
  %i.e = load i8, ptr %i.d, align 8, !range !175, !noundef !176
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 512
  %i.h = getelementptr i8, ptr %i.c, i64 216
  %i.i = load i32, ptr %i.g, align 8              ; 3 uses
  store i32 %i.i, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.c, i64 220      ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = and i32 %i.k, %i.i
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = xor i32 %i.i, -1
  %i.n = or i32 %i.k, %i.m
  store i32 %i.n, ptr %i.j, align 4
  br label %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit: ; preds = %bb.b, %bb.c
  %i.o = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 516
  %i.q = getelementptr i8, ptr %i.o, i64 220
  %i.r = load i32, ptr %i.p, align 4              ; 3 uses
  store i32 %i.r, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %i.o, i64 216      ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %i.s, align 8 ; 2 uses
  %i.t = and i32 %.sroa.01.0.copyload.i, %i.r
  %.not.i1 = icmp eq i32 %i.t, 0
  br i1 %.not.i1, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit
  %i.u = xor i32 %i.r, -1
  %i.v = or i32 %.sroa.01.0.copyload.i, %i.u
  store i32 %i.v, ptr %i.s, align 8
  br label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit: ; preds = %bb.d, %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18QCPPolarAxisRadial10wheelEventEP11QWheelEvent(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(776) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 224
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8
  %i.d = and i32 %.sroa.0.0.copyload.i, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 12
  store i8 0, ptr %i.e, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11QCustomPlot6replotENS_15RefreshPriorityE(ptr noundef align 8 dereferenceable_or_null(513) %i.b, i32 noundef 2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define void @_ZN18QCPPolarAxisRadial14updateGeometryERK7QPointFd(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(776) initializes((376, 400)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, double noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.a, ptr noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = fcmp olt double %2, 1.000000e+00
  %storemerge = select i1 %i.b, double 1.000000e+00, double %2
  %i.c = getelementptr i8, ptr %0, i64 392
  store double %storemerge, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK18QCPPolarAxisRadial28applyDefaultAntialiasingHintEP10QCPPainter(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(776) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  tail call void @_ZNK12QCPLayerable21applyAntialiasingHintEP10QCPPainterbN3QCP18AntialiasedElementE(ptr noundef align 8 dereferenceable_or_null(57) %0, ptr noundef %1, i1 noundef zeroext %i.c, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18QCPPolarAxisRadial4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(776) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QLine, align 16              ; 4 uses
  %3 = alloca %class.QLine, align 16              ; 4 uses
  %4 = alloca %class.QLine, align 16              ; 4 uses
  %5 = alloca %class.QCPVector2D, align 16        ; 4 uses
  %6 = alloca %class.QPointF, align 16            ; 10 uses
  %7 = alloca %class.QCPVector2D, align 8         ; 5 uses
  %8 = alloca %class.QPen, align 8                ; 7 uses
  %9 = alloca %class.QLineF, align 16             ; 6 uses
  %10 = alloca %class.QPen, align 8               ; 7 uses
  %11 = alloca %class.QLineF, align 16            ; 6 uses
  %12 = alloca %class.QFont, align 8              ; 8 uses
  %13 = alloca %class.QPen, align 8               ; 7 uses
  %14 = alloca %class.QLineF, align 8             ; 5 uses
  %15 = alloca %class.QPointF, align 16           ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 256
  %i.i = load double, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi double [ %i.i, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.k = fadd double %i.b, %i.j
  %i.l = fdiv double %i.k, 1.800000e+02
  %i.m = fmul double %i.l, f0x400921FB54442D18    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.n = tail call noundef double @cos(double noundef %i.m) #51
  %i.o = tail call noundef double @sin(double noundef %i.m) #51
  store double %i.n, ptr %6, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  call void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load double, ptr %i.q, align 8
  %i.s = fneg double %i.r
  %i.t = load double, ptr %7, align 8
  call void @_ZN11QCPVector2DC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, double noundef %i.s, double noundef %i.t)
  %i.u = load <2 x double>, ptr %5, align 16      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  %i.v = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !noalias !1536
  %i.x = and i32 %i.w, 1
  %.not.i = icmp eq i32 %i.x, 0
  %.v.i = select i1 %.not.i, i64 104, i64 112
  %i.y = getelementptr i8, ptr %0, i64 %.v.i
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef align 8 dereferenceable(8) %i.y) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  %i.z = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 4
  %.not.i37 = icmp eq i32 %i.ab, 0
  br i1 %.not.i37, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.j

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.d
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.ac = getelementptr i8, ptr %0, i64 376       ; 5 uses
  %i.ad = getelementptr i8, ptr %0, i64 392       ; 3 uses
  %i.ae = load double, ptr %i.ad, align 8
  %i.af = fadd double %i.ae, -5.000000e-01
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = load <2 x double>, ptr %6, align 16
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.aj, %i.ah
  %i.al = load <2 x double>, ptr %i.ac, align 8
  %i.am = fadd <2 x double> %i.ak, %i.al          ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  store <2 x double> %i.am, ptr %i.ag, align 16
  %i.an = getelementptr i8, ptr %1, i64 12        ; 3 uses
  %i.ao = load i8, ptr %i.an, align 4, !range !175, !noundef !176
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.aq = load i32, ptr %i.z, align 4
  %i.ar = and i32 %i.aq, 1
  %.not.i43 = icmp eq i32 %i.ar, 0
  br i1 %.not.i43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN10QCPPainter6setPenERK4QPen.exit
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  %i.as = load <2 x double>, ptr %9, align 16     ; 2 uses
  %i.at = shufflevector <2 x double> %i.as, <2 x double> %i.am, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.au = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.at)
  %i.av = fadd <2 x double> %i.at, %i.au
  %i.aw = fptosi <2 x double> %i.av to <2 x i32>
  %i.ax = shufflevector <2 x double> %i.as, <2 x double> %i.am, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ay = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ax)
  %i.az = fadd <2 x double> %i.ax, %i.ay
  %i.ba = fptosi <2 x double> %i.az to <2 x i32>
  %i.bb = zext <2 x i32> %i.ba to <2 x i64>
  %i.bc = shl nuw <2 x i64> %i.bb, splat (i64 32)
  %i.bd = zext <2 x i32> %i.aw to <2 x i64>
  %i.be = or disjoint <2 x i64> %i.bc, %i.bd
  store <2 x i64> %i.be, ptr %4, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

_ZN10QCPPainter8drawLineERK6QLineF.exit:          ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  %i.bf = getelementptr i8, ptr %0, i64 480       ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  %i.bi = load i32, ptr %i.v, align 8, !noalias !1537
  %i.bj = and i32 %i.bi, 1
  %.not.i44 = icmp eq i32 %i.bj, 0
  %.v.i45 = select i1 %.not.i44, i64 336, i64 344
  %i.bk = getelementptr i8, ptr %0, i64 %.v.i45
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, ptr noundef align 8 dereferenceable(8) %i.bk) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc47 unwind label %bb.k

.noexc47:                                         ; preds = %bb.h
  %i.bl = load i32, ptr %i.z, align 4
  %i.bm = and i32 %i.bl, 4
  %.not.i46 = icmp eq i32 %i.bm, 0
  br i1 %.not.i46, label %_ZN10QCPPainter6setPenERK4QPen.exit49, label %bb.i

bb.i:                                             ; preds = %.noexc47
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit49 unwind label %bb.k

_ZN10QCPPainter6setPenERK4QPen.exit49:            ; preds = %.noexc47, %bb.i
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  %i.bn = load i64, ptr %i.bf, align 8
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit49
  %i.bp = getelementptr i8, ptr %0, i64 472
  %i.bq = getelementptr i8, ptr %0, i64 308
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bs = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %bb.ak

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %bb.ak

bb.l:                                             ; preds = %.lr.ph, %_ZN10QCPPainter8drawLineERK6QLineF.exit71
  %i.bw = phi i64 [ 0, %.lr.ph ], [ %i.dn, %_ZN10QCPPainter8drawLineERK6QLineF.exit71 ]
  %.024165 = phi i32 [ 0, %.lr.ph ], [ %i.dm, %_ZN10QCPPainter8drawLineERK6QLineF.exit71 ]
  %i.bx = load ptr, ptr %i.bp, align 8
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load double, ptr %i.by, align 8
  %i.ca = call noundef double @_ZNK18QCPPolarAxisRadial13coordToRadiusEd(ptr noundef align 8 dereferenceable_or_null(776) %0, double noundef %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.cb = load <2 x double>, ptr %6, align 16
  %i.cc = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.cd, %i.cb
  %i.cf = load <2 x double>, ptr %i.ac, align 8
  %i.cg = fadd <2 x double> %i.ce, %i.cf          ; 2 uses
  %i.ch = load <2 x i32>, ptr %i.bq, align 4
  %i.ci = shufflevector <2 x i32> %i.ch, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = sitofp <2 x i32> %i.ci to <2 x double>  ; 2 uses
  %i.ck = fmul <2 x double> %i.bt, %i.cj          ; 2 uses
  %i.cl = fmul <2 x double> %i.bs, %i.cj          ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cn = fsub <2 x double> %i.cm, %i.ck          ; 2 uses
  %i.co = fadd <2 x double> %i.cm, %i.ck          ; 2 uses
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> %i.cn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cq = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cr = fsub <2 x double> %i.cq, %i.cl          ; 2 uses
  %i.cs = fadd <2 x double> %i.cq, %i.cl          ; 2 uses
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> %i.cr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cu = shufflevector <2 x double> %i.cn, <2 x double> %i.cr, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.cu, ptr %11, align 16
  %i.cv = extractelement <2 x double> %i.co, i64 0
  store double %i.cv, ptr %i.br, align 16
  %i.cw = extractelement <2 x double> %i.cs, i64 0
  store double %i.cw, ptr %.sroa.4139.0..sroa_idx, align 8
  %i.cx = load i8, ptr %i.an, align 4, !range !175, !noundef !176
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = load i32, ptr %i.z, align 4
  %i.da = and i32 %i.cz, 1
  %.not.i62 = icmp eq i32 %i.da, 0
  br i1 %.not.i62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit71

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.db = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.cp)
  %i.dc = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ct)
  %i.dd = fadd <2 x double> %i.cp, %i.db
  %i.de = fptosi <2 x double> %i.dd to <2 x i32>
  %i.df = fadd <2 x double> %i.ct, %i.dc
  %i.dg = fptosi <2 x double> %i.df to <2 x i32>
  %i.dh = zext <2 x i32> %i.dg to <2 x i64>
  %i.di = shl nuw <2 x i64> %i.dh, splat (i64 32)
  %i.dj = zext <2 x i32> %i.de to <2 x i64>
  %i.dk = or disjoint <2 x i64> %i.di, %i.dj
  %i.dl = shufflevector <2 x i64> %i.dk, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.dl, ptr %3, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit71

_ZN10QCPPainter8drawLineERK6QLineF.exit71:        ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  %i.dm = add i32 %.024165, 1                     ; 2 uses
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = load i64, ptr %i.bf, align 8
  %i.dp = icmp sgt i64 %i.do, %i.dn
  br i1 %i.dp, label %bb.l, label %.loopexit, !llvm.loop !1532

.loopexit:                                        ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit71, %_ZN10QCPPainter6setPenERK4QPen.exit49, %_ZN10QCPPainter8drawLineERK6QLineF.exit
  %i.dq = getelementptr i8, ptr %0, i64 432       ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.aj, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.dt = getelementptr i8, ptr %0, i64 520       ; 2 uses
  %i.du = getelementptr i8, ptr %0, i64 536
  %i.dv = load <2 x double>, ptr %i.ac, align 8
  %i.dw = load <2 x double>, ptr %6, align 16
  %i.dx = fsub <2 x double> %i.dv, %i.dw
  store <2 x double> %i.dx, ptr %i.du, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %i.dy = load i32, ptr %i.v, align 8, !noalias !1538
  %i.dz = and i32 %i.dy, 2
  %.not.i74 = icmp eq i32 %i.dz, 0
  %.v.i75 = select i1 %.not.i74, i64 224, i64 240
  %i.ea = getelementptr i8, ptr %0, i64 %.v.i75
  call void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %12, ptr noundef align 8 dereferenceable(12) %i.ea)
  %i.eb = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %i.ec = invoke noundef zeroext i1 @_ZNK5QFontneERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.eb, ptr noundef nonnull align 8 dereferenceable(12) %12)
          to label %.noexc76 unwind label %bb.s

.noexc76:                                         ; preds = %bb.p
  br i1 %i.ec, label %bb.q, label %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit

bb.q:                                             ; preds = %.noexc76
  %i.ed = invoke noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.eb, ptr noundef nonnull align 8 dereferenceable(12) %12)
          to label %.noexc77 unwind label %bb.s   ; 0 uses

.noexc77:                                         ; preds = %bb.q
  invoke void @_ZN22QCPLabelPainterPrivate18analyzeFontMetricsEv(ptr noundef align 8 dereferenceable_or_null(256) %i.dt)
          to label %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit unwind label %bb.s

_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit: ; preds = %.noexc76, %.noexc77
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  %i.ee = load i32, ptr %i.v, align 8             ; 2 uses
  %i.ef = and i32 %i.ee, 2
  %.not.i79 = icmp eq i32 %i.ef, 0
  %.v.i80 = select i1 %.not.i79, i64 256, i64 272
  %i.eg = getelementptr i8, ptr %0, i64 %.v.i80   ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.eg, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i48
  %i.eh = getelementptr i8, ptr %0, i64 576
  store i64 %.sroa.0.0.copyload.i, ptr %i.eh, align 8
  %.sroa.4132.0..sroa_idx = getelementptr i8, ptr %0, i64 584
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.4132.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  %i.ei = and i32 %i.ee, 1
  %.not.i83 = icmp eq i32 %i.ei, 0
  %.v.i84 = select i1 %.not.i83, i64 320, i64 328
  %i.ej = getelementptr i8, ptr %0, i64 %.v.i84
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13, ptr noundef align 8 dereferenceable(8) %i.ej) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc86 unwind label %bb.t

.noexc86:                                         ; preds = %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit
  %i.ek = load i32, ptr %i.z, align 4
  %i.el = and i32 %i.ek, 4
  %.not.i85 = icmp eq i32 %i.el, 0
  br i1 %.not.i85, label %_ZN10QCPPainter6setPenERK4QPen.exit88, label %bb.r

bb.r:                                             ; preds = %.noexc86
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit88 unwind label %bb.t

_ZN10QCPPainter6setPenERK4QPen.exit88:            ; preds = %bb.r, %.noexc86
  %i.em = load i64, ptr %i.dq, align 8
  %i.en = icmp sgt i64 %i.em, 0
  br i1 %i.en, label %.lr.ph168, label %._crit_edge

.lr.ph168:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit88
  %i.eo = getelementptr i8, ptr %0, i64 424
  %i.ep = getelementptr i8, ptr %0, i64 300
  %i.eq = getelementptr i8, ptr %0, i64 456
  %i.er = getelementptr i8, ptr %0, i64 368
  %i.es = getelementptr i8, ptr %0, i64 312
  %i.et = getelementptr i8, ptr %0, i64 448
  %i.eu = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.u

._crit_edge:                                      ; preds = %bb.ah, %_ZN10QCPPainter6setPenERK4QPen.exit88
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  br label %bb.aj

bb.s:                                             ; preds = %.noexc77, %bb.q, %bb.p
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %bb.ak

bb.t:                                             ; preds = %bb.r, %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.u:                                             ; preds = %.lr.ph168, %bb.ah
  %i.ey = phi i64 [ 0, %.lr.ph168 ], [ %i.hh, %bb.ah ] ; 3 uses
  %.0166 = phi i32 [ 0, %.lr.ph168 ], [ %i.hg, %bb.ah ] ; 2 uses
  %i.ez = load ptr, ptr %i.eo, align 8
  %i.fa = getelementptr [8 x i8], ptr %i.ez, i64 %i.ey
  %i.fb = load double, ptr %i.fa, align 8
  %i.fc = call noundef double @_ZNK18QCPPolarAxisRadial13coordToRadiusEd(ptr noundef align 8 dereferenceable_or_null(776) %0, double noundef %i.fb) ; 3 uses
  %i.fd = load <2 x double>, ptr %6, align 16
  %i.fe = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x double> %i.ff, %i.fd
  %i.fh = load <2 x double>, ptr %i.ac, align 8
  %i.fi = fadd <2 x double> %i.fg, %i.fh          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #51
  %i.fj = load <2 x i32>, ptr %i.ep, align 4
  %i.fk = sitofp <2 x i32> %i.fj to <2 x double>  ; 2 uses
  %i.fl = fmul <2 x double> %i.ev, %i.fk          ; 2 uses
  %i.fm = fmul <2 x double> %i.eu, %i.fk          ; 2 uses
  %i.fn = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = fsub <2 x double> %i.fn, %i.fl          ; 2 uses
  %i.fp = fadd <2 x double> %i.fn, %i.fl          ; 2 uses
  %i.fq = shufflevector <2 x double> %i.fo, <2 x double> %i.fp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fr = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fs = fsub <2 x double> %i.fr, %i.fm          ; 2 uses
  %i.ft = fadd <2 x double> %i.fr, %i.fm          ; 2 uses
  %i.fu = shufflevector <2 x double> %i.fs, <2 x double> %i.ft, <2 x i32> <i32 0, i32 3> ; 2 uses
  %16 = shufflevector <2 x double> %i.fo, <2 x double> %i.fs, <2 x i32> <i32 0, i32 2>
  %17 = shufflevector <2 x double> %i.fp, <2 x double> %i.ft, <2 x i32> <i32 1, i32 3>
  %18 = shufflevector <2 x double> %16, <2 x double> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %18, ptr %14, align 8
  %i.fv = load i8, ptr %i.an, align 4, !range !175, !noundef !176
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fx = load i32, ptr %i.z, align 4
  %i.fy = and i32 %i.fx, 1
  %.not.i101 = icmp eq i32 %i.fy, 0
  br i1 %.not.i101, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  invoke void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 1)
          to label %_ZN10QCPPainter8drawLineERK6QLineF.exit112 unwind label %bb.af

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  %i.fz = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.fq)
  %i.ga = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.fu)
  %i.gb = fadd <2 x double> %i.fq, %i.fz
  %i.gc = fptosi <2 x double> %i.gb to <2 x i32>
  %i.gd = fadd <2 x double> %i.fu, %i.ga
  %i.ge = fptosi <2 x double> %i.gd to <2 x i32>
  %i.gf = zext <2 x i32> %i.ge to <2 x i64>
  %i.gg = shl nuw <2 x i64> %i.gf, splat (i64 32)
  %i.gh = zext <2 x i32> %i.gc to <2 x i64>
  %i.gi = or disjoint <2 x i64> %i.gg, %i.gh
  store <2 x i64> %i.gi, ptr %2, align 16
  invoke void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef 1)
          to label %.noexc111 unwind label %bb.af

.noexc111:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit112

_ZN10QCPPainter8drawLineERK6QLineF.exit112:       ; preds = %.noexc111, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  %i.gj = load i64, ptr %i.eq, align 8            ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit112
  %i.gl = load i8, ptr %i.er, align 8, !range !175, !noundef !176
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gn = add i64 %i.gj, -1
  %i.go = icmp sgt i64 %i.gn, %i.ey
  br i1 %i.go, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gp = load double, ptr %i.ad, align 8
  %i.gq = fsub double %i.gp, %i.fc
  %i.gr = fcmp ogt double %i.gq, 1.000000e+01
  br i1 %i.gr, label %bb.ad, label %bb.ah

bb.ab:                                            ; preds = %bb.y
  %i.gs = icmp sgt i32 %.0166, 0
  br i1 %i.gs, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gt = load double, ptr %i.ad, align 8
  %i.gu = fsub double %i.gt, %i.fc
  %i.gv = fcmp ogt double %i.gu, 1.000000e+01
  br i1 %i.gv, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %i.gw = load i32, ptr %i.es, align 8
  %i.gx = sitofp i32 %i.gw to double
  %i.gy = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x double> %i.u, %i.gz
  %i.hb = fadd <2 x double> %i.fi, %i.ha
  store <2 x double> %i.hb, ptr %15, align 16
  %i.hc = load ptr, ptr %i.et, align 8
  %i.hd = getelementptr [24 x i8], ptr %i.hc, i64 %i.ey
  invoke void @_ZN22QCPLabelPainterPrivate13drawTickLabelEP10QCPPainterRK7QPointFRK7QString(ptr noundef align 8 dereferenceable_or_null(256) %i.dt, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef align 8 dereferenceable(24) %i.hd)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  br label %bb.ah

bb.af:                                            ; preds = %bb.x, %bb.w
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aa, %bb.ac, %bb.ae, %_ZN10QCPPainter8drawLineERK6QLineF.exit112
  %i.hg = add i32 %.0166, 1                       ; 2 uses
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = load i64, ptr %i.dq, align 8
  %i.hj = icmp sgt i64 %i.hi, %i.hh
  br i1 %i.hj, label %bb.u, label %._crit_edge, !llvm.loop !1535

bb.ai:                                            ; preds = %bb.af, %bb.ag, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ex, %bb.t ], [ %i.he, %bb.af ], [ %i.hf, %bb.ag ]
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  ret void

bb.ak:                                            ; preds = %bb.ai, %bb.s, %bb.k, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ai ], [ %i.ew, %bb.s ], [ %i.bv, %bb.k ], [ %i.bu, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZNK18QCPPolarAxisRadial10getBasePenEv(ptr dead_on_unwind noalias writable sret(%class.QPen) align 8 %0, ptr noundef align 8 dereferenceable_or_null(776) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  %.v = select i1 %.not, i64 104, i64 112
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN4QPenC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %i.d) #51
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZNK18QCPPolarAxisRadial13getSubTickPenEv(ptr dead_on_unwind noalias writable sret(%class.QPen) align 8 %0, ptr noundef align 8 dereferenceable_or_null(776) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  %.v = select i1 %.not, i64 336, i64 344
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN4QPenC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %i.d) #51
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK18QCPPolarAxisRadial16getTickLabelFontEv(ptr dead_on_unwind noalias writable sret(%class.QFont) align 8 %0, ptr noundef align 8 dereferenceable_or_null(776) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  %.v = select i1 %.not, i64 224, i64 240
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN5QFontC1ERKS_(ptr noundef align 8 dereferenceable_or_null(12) %0, ptr noundef align 8 dereferenceable(12) %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK18QCPPolarAxisRadial17getTickLabelColorEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(776) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  %.v = select i1 %.not, i64 256, i64 272
  %i.d = getelementptr i8, ptr %0, i64 %.v        ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZNK18QCPPolarAxisRadial10getTickPenEv(ptr dead_on_unwind noalias writable sret(%class.QPen) align 8 %0, ptr noundef align 8 dereferenceable_or_null(776) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  %.v = select i1 %.not, i64 320, i64 328
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN4QPenC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %i.d) #51
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18QCPPolarAxisRadial16setupTickVectorsEv(ptr noundef align 8 dereferenceable_or_null(776) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QLocale, align 8             ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 295
  %i.d = load i8, ptr %i.c, align 1, !range !175, !noundef !176
end_hunk_4
begin_hunk_5_@_ZN19QCPPolarAxisAngular11removeGraphEP13QCPPolarGraph:bb.a
bb.n:                                             ; preds = %.noexc19
  %i.az = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.av, i8 noundef signext 32)
          to label %_ZN6QDebuglsEy.exit unwind label %bb.o ; 0 uses

_ZN6QDebuglsEy.exit:                              ; preds = %.noexc19, %bb.n
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %_ZN5QListIP13QCPPolarGraphE9removeOneIS1_EEbRKT_.exit

bb.o:                                             ; preds = %bb.n, %_ZN6QDebuglsEPKc.exit18, %bb.k, %_ZN6QDebuglsEPKc.exit, %bb.f, %_ZNK23QListSpecialMethodsBaseIP13QCPPolarGraphE8containsIS1_EEbRKT_.exit.thread
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %_ZN7QStringD2Ev.exit5.i9, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %_ZN7QStringD2Ev.exit5.i ], [ %i.ba, %bb.o ], [ %i.ao, %_ZN7QStringD2Ev.exit5.i9 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  resume { ptr, i32 } %eh.lpad-body

bb.p:                                             ; preds = %_ZNK23QListSpecialMethodsBaseIP13QCPPolarGraphE8containsIS1_EEbRKT_.exit
  %i.bb = getelementptr i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNK13QCPPolarGraph16removeFromLegendEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %i.bc, i64 72
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not4.i = icmp eq ptr %i.be, null
  br i1 %.not4.i, label %_ZNK13QCPPolarGraph16removeFromLegendEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call noundef zeroext i1 @_ZNK13QCPPolarGraph16removeFromLegendEP9QCPLegend(ptr noundef readonly align 8 dereferenceable_or_null(280) %1, ptr noundef nonnull %i.be) ; 0 uses
  br label %_ZNK13QCPPolarGraph16removeFromLegendEv.exit

_ZNK13QCPPolarGraph16removeFromLegendEv.exit:     ; preds = %bb.p, %bb.q, %bb.r
  %i.bg = icmp eq ptr %1, null
  br i1 %i.bg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK13QCPPolarGraph16removeFromLegendEv.exit
  %i.bh = load ptr, ptr %1, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable_or_null(280) %1) #51
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK13QCPPolarGraph16removeFromLegendEv.exit
  %i.bk = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.bl = load i64, ptr %i.b, align 8
  %.idx11.i.i = shl i64 %i.bl, 3                  ; 5 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 %.idx11.i.i ; 2 uses
  %i.bn = ashr i64 %.idx11.i.i, 5                 ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t
  %i.bp = and i64 %.idx11.i.i, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bk, i64 %i.bp
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i
  %.052.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.cc, %bb.y ] ; 2 uses
  %.sroa.034.051.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %i.cb, %bb.y ] ; 9 uses
  %i.bq = load ptr, ptr %.sroa.034.051.i.i.i.i.i, align 8
  %i.br = icmp eq ptr %i.bq, %1
  br i1 %i.br, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.bt, %1
  br i1 %i.bu, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = icmp eq ptr %i.bw, %1
  br i1 %i.bx, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit54, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = icmp eq ptr %i.bz, %1
  br i1 %i.ca, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 32
  %i.cc = add nsw i64 %.052.i.i.i.i.i, -1
  %i.cd = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.cd, label %bb.u, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1561

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.y
  %gepdiff.i.i = and i64 %.idx11.i.i, 24
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.t
  %.pre-phi61.i.i.i.i.i = phi i64 [ %gepdiff.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.idx11.i.i, %bb.t ]
  %.sroa.034.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.bk, %bb.t ] ; 5 uses
  %i.ce = ashr exact i64 %.pre-phi61.i.i.i.i.i, 3
  switch i64 %i.ce, label %_ZN5QListIP13QCPPolarGraphE9removeOneIS1_EEbRKT_.exit [
    i64 3, label %bb.z
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cf = load ptr, ptr %.sroa.034.0.lcssa.i.i.i.i.i, align 8
  %i.cg = icmp eq ptr %i.cf, %1
  br i1 %i.cg, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %.sroa.034.0.lcssa.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i, %bb.aa
  %.sroa.034.1.i.i.i.i.i = phi ptr [ %i.ch, %bb.aa ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ci = load ptr, ptr %.sroa.034.1.i.i.i.i.i, align 8
  %i.cj = icmp eq ptr %i.ci, %1
  br i1 %i.cj, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.ck = getelementptr i8, ptr %.sroa.034.1.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i, %bb.ab
  %.sroa.034.2.i.i.i.i.i = phi ptr [ %i.ck, %bb.ab ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.cl = load ptr, ptr %.sroa.034.2.i.i.i.i.i, align 8
  %i.cm = icmp eq ptr %i.cl, %1
  %spec.select.i.i.i.i.i = select i1 %i.cm, ptr %.sroa.034.2.i.i.i.i.i, ptr %i.bm
  br label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i

_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.v
  %i.cn = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 8
  br label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i

_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit54: ; preds = %bb.w
  %i.co = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 16
  br label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i

_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit56: ; preds = %bb.x
  %i.cp = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 24
  br label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i

_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %bb.u, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit54, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit56, %._crit_edge._crit_edge57.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.z
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.034.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %bb.z ], [ %i.cp, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit56 ], [ %i.co, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit54 ], [ %i.cn, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i.i.i, %bb.u ] ; 3 uses
  %i.cq = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, %i.bm
  br i1 %i.cq, label %_ZN5QListIP13QCPPolarGraphE9removeOneIS1_EEbRKT_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i
  %i.cr = getelementptr i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, i64 8
  %i.cs = tail call ptr @_ZN5QListIP13QCPPolarGraphE5eraseENS2_14const_iteratorES3_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.a, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, ptr %i.cr) ; 0 uses
  br label %_ZN5QListIP13QCPPolarGraphE9removeOneIS1_EEbRKT_.exit

_ZN5QListIP13QCPPolarGraphE9removeOneIS1_EEbRKT_.exit: ; preds = %bb.ac, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, %._crit_edge.i.i.i.i.i, %_ZN6QDebuglsEy.exit
  %.1.i.i.i27 = phi i1 [ false, %_ZN6QDebuglsEy.exit ], [ true, %._crit_edge.i.i.i.i.i ], [ true, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i ], [ true, %bb.ac ]
  ret i1 %.1.i.i.i27
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZNK13QCPPolarGraph16removeFromLegendEv(ptr nofree noundef readonly align 8 captures(address) dereferenceable_or_null(280) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZNK13QCPPolarGraph16removeFromLegendEP9QCPLegend(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.e, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK19QCPPolarAxisAngular28applyDefaultAntialiasingHintEP10QCPPainter(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(1080) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  tail call void @_ZNK12QCPLayerable21applyAntialiasingHintEP10QCPPainterbN3QCP18AntialiasedElementE(ptr noundef align 8 dereferenceable_or_null(57) %0, ptr noundef %1, i1 noundef zeroext %i.c, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19QCPPolarAxisAngular4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(1080) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QLine, align 16              ; 4 uses
  %3 = alloca %class.QLineF, align 16             ; 5 uses
  %4 = alloca %class.QLine, align 16              ; 4 uses
  %5 = alloca %class.QLineF, align 8              ; 4 uses
  %6 = alloca %class.QRectF, align 16             ; 6 uses
  %7 = alloca %class.QPen, align 8                ; 7 uses
  %8 = alloca %class.QPen, align 8                ; 7 uses
  %9 = alloca %class.QFont, align 8               ; 8 uses
  %10 = alloca %class.QPen, align 8               ; 7 uses
  %11 = alloca %class.QPointF, align 16           ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 552        ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 568        ; 3 uses
  %i.c = load double, ptr %i.b, align 8
  tail call void @_ZN19QCPPolarAxisAngular14drawBackgroundEP10QCPPainterRK7QPointFd(ptr noundef align 8 dereferenceable_or_null(1080) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(16) %i.a, double noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.d = getelementptr i8, ptr %0, i64 276        ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !1570
  %i.f = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.f, 0
  %.v.i = select i1 %.not.i, i64 280, i64 288
  %i.g = getelementptr i8, ptr %0, i64 %.v.i
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef align 8 dereferenceable(8) %i.g) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 4
  %.not.i31 = icmp eq i32 %i.j, 0
  br i1 %.not.i31, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.e

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.b
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  %i.k = load double, ptr %i.b, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.l = fmul double %i.k, 2.000000e+00           ; 2 uses
  %i.m = load <2 x double>, ptr %i.a, align 8
  %i.n = insertelement <2 x double> poison, double %i.k, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fsub <2 x double> %i.m, %i.o
  store <2 x double> %i.p, ptr %6, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.l, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %i.l, ptr %i.r, align 8
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  %i.s = getelementptr i8, ptr %0, i64 736        ; 3 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  %i.v = load i32, ptr %i.d, align 4, !noalias !1571
  %i.w = and i32 %i.v, 1
  %.not.i33 = icmp eq i32 %i.w, 0
  %.v.i34 = select i1 %.not.i33, i64 512, i64 520
  %i.x = getelementptr i8, ptr %0, i64 %.v.i34
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef align 8 dereferenceable(8) %i.x) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc36 unwind label %bb.f

.noexc36:                                         ; preds = %bb.c
  %i.y = load i32, ptr %i.h, align 4
  %i.z = and i32 %i.y, 4
  %.not.i35 = icmp eq i32 %i.z, 0
  br i1 %.not.i35, label %_ZN10QCPPainter6setPenERK4QPen.exit38, label %bb.d

bb.d:                                             ; preds = %.noexc36
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit38 unwind label %bb.f

_ZN10QCPPainter6setPenERK4QPen.exit38:            ; preds = %.noexc36, %bb.d
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  %i.aa = load i64, ptr %i.s, align 8
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit38
  %i.ac = getelementptr i8, ptr %0, i64 752
  %i.ad = getelementptr i8, ptr %0, i64 484
  %i.ae = getelementptr i8, ptr %1, i64 12
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.ae

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %bb.ae

bb.g:                                             ; preds = %.lr.ph, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit
  %i.ah = phi i64 [ 0, %.lr.ph ], [ %i.bp, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit ]
  %.02598 = phi i32 [ 0, %.lr.ph ], [ %i.bo, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit ]
  %i.ai = load ptr, ptr %i.ac, align 8
  %i.aj = getelementptr [16 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load <2 x double>, ptr %i.aj, align 8   ; 2 uses
  %i.al = load <3 x double>, ptr %i.a, align 8    ; 3 uses
  %i.am = load <2 x i32>, ptr %i.ad, align 4
  %i.an = sitofp <2 x i32> %i.am to <2 x double>  ; 2 uses
  %i.ao = shufflevector <3 x double> %i.al, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ap = fsub <2 x double> %i.ao, %i.an
  %i.aq = fadd <2 x double> %i.ao, %i.an
  %i.ar = shufflevector <2 x double> %i.ap, <2 x double> %i.aq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.as = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.as, %i.ar
  %i.au = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.av = fmul <2 x double> %i.ar, %i.au
  %i.aw = shufflevector <3 x double> %i.al, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fadd <2 x double> %i.aw, %i.at          ; 3 uses
  %i.ay = shufflevector <3 x double> %i.al, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fadd <2 x double> %i.av, %i.ay          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %12 = shufflevector <2 x double> %i.ax, <2 x double> %i.az, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %12, ptr %5, align 8
  %i.ba = load i8, ptr %i.ae, align 4, !range !175, !noundef !176
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load i32, ptr %i.h, align 4
  %i.bd = and i32 %i.bc, 1
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  %i.be = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ax)
  %i.bf = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.az)
  %i.bg = fadd <2 x double> %i.ax, %i.be
  %i.bh = fptosi <2 x double> %i.bg to <2 x i32>
  %i.bi = fadd <2 x double> %i.az, %i.bf
  %i.bj = fptosi <2 x double> %i.bi to <2 x i32>
  %i.bk = zext <2 x i32> %i.bj to <2 x i64>
  %i.bl = shl nuw <2 x i64> %i.bk, splat (i64 32)
  %i.bm = zext <2 x i32> %i.bh to <2 x i64>
  %i.bn = or disjoint <2 x i64> %i.bl, %i.bm
  store <2 x i64> %i.bn, ptr %4, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

_ZN10QCPPainter8drawLineERK7QPointFS2_.exit:      ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  %i.bo = add i32 %.02598, 1                      ; 2 uses
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = load i64, ptr %i.s, align 8
  %i.br = icmp sgt i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.g, label %.loopexit, !llvm.loop !1566

.loopexit:                                        ; preds = %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit, %_ZN10QCPPainter6setPenERK4QPen.exit38, %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.bs = getelementptr i8, ptr %0, i64 664       ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.ad, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bv = getelementptr i8, ptr %0, i64 824       ; 2 uses
  %i.bw = getelementptr i8, ptr %0, i64 840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bw, ptr noundef readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.bx = load i32, ptr %i.d, align 4, !noalias !1572
  %i.by = and i32 %i.bx, 2
  %.not.i45 = icmp eq i32 %i.by, 0
  %.v.i46 = select i1 %.not.i45, i64 400, i64 416
  %i.bz = getelementptr i8, ptr %0, i64 %.v.i46
  call void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %9, ptr noundef align 8 dereferenceable(12) %i.bz)
  %i.ca = getelementptr i8, ptr %0, i64 864       ; 2 uses
  %i.cb = invoke noundef zeroext i1 @_ZNK5QFontneERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.ca, ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %.noexc47 unwind label %bb.n

.noexc47:                                         ; preds = %bb.k
  br i1 %i.cb, label %bb.l, label %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit

bb.l:                                             ; preds = %.noexc47
  %i.cc = invoke noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.ca, ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %.noexc48 unwind label %bb.n   ; 0 uses

.noexc48:                                         ; preds = %bb.l
  invoke void @_ZN22QCPLabelPainterPrivate18analyzeFontMetricsEv(ptr noundef align 8 dereferenceable_or_null(256) %i.bv)
          to label %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit unwind label %bb.n

_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit: ; preds = %.noexc47, %.noexc48
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  %i.cd = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ce = and i32 %i.cd, 2
  %.not.i50 = icmp eq i32 %i.ce, 0
  %.v.i51 = select i1 %.not.i50, i64 432, i64 448
  %i.cf = getelementptr i8, ptr %0, i64 %.v.i51   ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.cf, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i48
  %i.cg = getelementptr i8, ptr %0, i64 880
  store i64 %.sroa.0.0.copyload.i, ptr %i.cg, align 8
  %.sroa.488.0..sroa_idx = getelementptr i8, ptr %0, i64 888
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.488.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  %i.ch = and i32 %i.cd, 1
  %.not.i54 = icmp eq i32 %i.ch, 0
  %.v.i55 = select i1 %.not.i54, i64 496, i64 504
  %i.ci = getelementptr i8, ptr %0, i64 %.v.i55
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, ptr noundef align 8 dereferenceable(8) %i.ci) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc57 unwind label %bb.o

.noexc57:                                         ; preds = %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit
  %i.cj = load i32, ptr %i.h, align 4
  %i.ck = and i32 %i.cj, 4
  %.not.i56 = icmp eq i32 %i.ck, 0
  br i1 %.not.i56, label %_ZN10QCPPainter6setPenERK4QPen.exit59, label %bb.m

bb.m:                                             ; preds = %.noexc57
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit59 unwind label %bb.o

_ZN10QCPPainter6setPenERK4QPen.exit59:            ; preds = %bb.m, %.noexc57
  %i.cl = load i64, ptr %i.bs, align 8
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph100, label %._crit_edge

.lr.ph100:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit59
  %i.cn = getelementptr i8, ptr %0, i64 696       ; 2 uses
  %i.co = getelementptr i8, ptr %0, i64 704       ; 3 uses
  %i.cp = getelementptr i8, ptr %0, i64 476
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cr = getelementptr i8, ptr %1, i64 12
  %i.cs = getelementptr i8, ptr %0, i64 688
  %i.ct = getelementptr i8, ptr %0, i64 680
  br label %bb.p

._crit_edge:                                      ; preds = %bb.aa, %_ZN10QCPPainter6setPenERK4QPen.exit59
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %bb.ad

bb.n:                                             ; preds = %.noexc48, %bb.l, %bb.k
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %bb.ae

bb.o:                                             ; preds = %bb.m, %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %.lr.ph100, %bb.aa
  %i.cw = phi i64 [ 0, %.lr.ph100 ], [ %i.ff, %bb.aa ] ; 4 uses
  %.099 = phi i32 [ 0, %.lr.ph100 ], [ %i.fe, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.cx = load ptr, ptr %i.co, align 8
  %i.cy = getelementptr [16 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load double, ptr %i.b, align 8          ; 2 uses
  %i.da = load <2 x double>, ptr %i.cy, align 8   ; 2 uses
  %i.db = load <2 x double>, ptr %i.a, align 8    ; 2 uses
  %i.dc = load <2 x i32>, ptr %i.cp, align 4
  %i.dd = sitofp <2 x i32> %i.dc to <2 x double>  ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 1
  %i.df = fadd double %i.cz, %i.de
  %i.dg = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x double> %i.da, %i.dh
  %i.dj = fadd <2 x double> %i.db, %i.di
  store <2 x double> %i.dj, ptr %11, align 16
  %i.dk = extractelement <2 x double> %i.dd, i64 0
  %i.dl = fsub double %i.cz, %i.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.dm = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %i.da, %i.dn
  %i.dp = fadd <2 x double> %i.db, %i.do          ; 3 uses
  store <2 x double> %i.dp, ptr %3, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cq, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false)
  %i.dq = load i8, ptr %i.cr, align 4, !range !175, !noundef !176
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = load i32, ptr %i.h, align 4
  %i.dt = and i32 %i.ds, 1
  %.not.i.i68 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i68, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %bb.t unwind label %bb.x

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  %i.du = load <2 x double>, ptr %i.cq, align 16  ; 2 uses
  %i.dv = shufflevector <2 x double> %i.dp, <2 x double> %i.du, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dw = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.dv)
  %i.dx = fadd <2 x double> %i.dv, %i.dw
  %i.dy = fptosi <2 x double> %i.dx to <2 x i32>
  %i.dz = shufflevector <2 x double> %i.du, <2 x double> %i.dp, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.ea = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.dz)
  %i.eb = fadd <2 x double> %i.dz, %i.ea
  %i.ec = fptosi <2 x double> %i.eb to <2 x i32>
  %i.ed = zext <2 x i32> %i.ec to <2 x i64>
  %i.ee = shl nuw <2 x i64> %i.ed, splat (i64 32)
  %i.ef = zext <2 x i32> %i.dy to <2 x i64>
  %i.eg = or disjoint <2 x i64> %i.ee, %i.ef
  store <2 x i64> %i.eg, ptr %2, align 16
  invoke void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef 1)
          to label %.noexc78 unwind label %bb.x

.noexc78:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
end_hunk_5
