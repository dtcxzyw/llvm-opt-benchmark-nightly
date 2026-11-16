Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN15QCPScatterStyle12setFromOtherERKS_6QFlagsINS_15ScatterPropertyEE:bb.a
  store double %i.o, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = and i32 %2, 8
  %.not18 = icmp eq i32 %i.p, 0
  br i1 %.not18, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 8          ; 3 uses
  store i32 %i.r, ptr %i.s, align 8
  switch i32 %i.r, label %bb.o [
    i32 16, label %bb.k
    i32 17, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN7QPixmapC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
  store i32 16, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %0, i64 32
  %i.v = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QPixmapaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN15QCPScatterStyle9setPixmapERK7QPixmap.exit unwind label %bb.l ; 0 uses

_ZN15QCPScatterStyle9setPixmapERK7QPixmap.exit:   ; preds = %bb.k
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @_ZN12QPainterPathC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  store i32 17, ptr %i.s, align 8
  %i.y = getelementptr i8, ptr %0, i64 56
  %i.z = invoke noundef align 8 dereferenceable(8) ptr @_ZN12QPainterPathaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN15QCPScatterStyle13setCustomPathERK12QPainterPath.exit unwind label %bb.n ; 0 uses

_ZN15QCPScatterStyle13setCustomPathERK12QPainterPath.exit: ; preds = %bb.m
  call void @_ZN12QPainterPathD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QPainterPathD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
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
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @_ZN4QPenaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.b, ptr noundef align 8 dereferenceable(8) %1) #49 ; 0 uses
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
  switch i32 %i.d, label %bb.cn [
    i32 17, label %bb.cm
    i32 1, label %bb.b
    i32 2, label %bb.f
    i32 3, label %bb.m
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.ag
    i32 7, label %bb.ah
    i32 8, label %bb.ai
    i32 9, label %bb.av
    i32 10, label %bb.aw
    i32 11, label %bb.ax
    i32 12, label %bb.be
    i32 13, label %bb.bl
    i32 14, label %bb.bs
    i32 15, label %bb.bz
    i32 16, label %bb.cj
  ]

bb.b:                                             ; preds = %bb.a
  %64 = insertelement <2 x double> poison, double %2, i64 0
  %65 = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> zeroinitializer
  %66 = fadd <2 x double> %65, <double -0.000000e+00, double 1.000000e-04> ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #49
  store double %2, ptr %32, align 8
  %.sroa.4451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store double %3, ptr %.sroa.4451.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %32, i64 16
  %67 = extractelement <2 x double> %66, i64 1
  store double %67, ptr %i.e, align 8
  %.sroa.4449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 24
  store double %3, ptr %.sroa.4449.0..sroa_idx, align 8
  %i.f = getelementptr i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !range !175, !noundef !176
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 1
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #49
  %68 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %66)
  %i.l = tail call double @llvm.copysign.f64(double 5.000000e-01, double %3)
  %i.m = fadd double %3, %i.l
  %i.n = fptosi double %i.m to i32
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.n to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %69 = fadd <2 x double> %66, %68
  %70 = fptosi <2 x double> %69 to <2 x i32>
  %71 = zext <2 x i32> %70 to <2 x i64>
  %72 = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i.i, i64 0
  %73 = shufflevector <2 x i64> %72, <2 x i64> poison, <2 x i32> zeroinitializer
  %74 = or disjoint <2 x i64> %73, %71
  store <2 x i64> %74, ptr %31, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %31, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #49
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

_ZN10QCPPainter8drawLineERK7QPointFS2_.exit:      ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #49
  br label %bb.cn

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #49
  %i.o = fsub double %2, %i.b                     ; 4 uses
  %i.p = fsub double %3, %i.b                     ; 4 uses
  %i.q = fadd double %2, %i.b                     ; 4 uses
  %i.r = fadd double %3, %i.b                     ; 4 uses
  store double %i.o, ptr %33, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %33, i64 8
  store double %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %33, i64 16
  store double %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %33, i64 24
  store double %i.r, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !range !175, !noundef !176
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 1
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #49
  %i.ab = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.q, i64 1 ; 2 uses
  %i.ad = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ac)
  %i.ae = insertelement <2 x double> poison, double %i.p, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.r, i64 1 ; 2 uses
  %i.ag = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.af)
  %i.ah = fadd <2 x double> %i.ac, %i.ad
  %i.ai = fptosi <2 x double> %i.ah to <2 x i32>
  %i.aj = fadd <2 x double> %i.af, %i.ag
  %i.ak = fptosi <2 x double> %i.aj to <2 x i32>
  %i.al = zext <2 x i32> %i.ak to <2 x i64>
  %i.am = shl nuw <2 x i64> %i.al, splat (i64 32)
  %i.an = zext <2 x i32> %i.ai to <2 x i64>
  %i.ao = or disjoint <2 x i64> %i.am, %i.an
  store <2 x i64> %i.ao, ptr %30, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %30, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

_ZN10QCPPainter8drawLineERK6QLineF.exit:          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #49
  store double %i.o, ptr %34, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %34, i64 8
  store double %i.r, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %34, i64 16
  store double %i.q, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %34, i64 24
  store double %i.p, ptr %i.ar, align 8
  %i.as = load i8, ptr %i.v, align 4, !range !175, !noundef !176
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit
  %i.au = getelementptr i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 1
  %.not.i261 = icmp eq i32 %i.aw, 0
  br i1 %.not.i261, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN10QCPPainter8drawLineERK6QLineF.exit
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit270

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #49
  %i.ax = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.q, i64 1 ; 2 uses
  %i.az = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ay)
  %i.ba = insertelement <2 x double> poison, double %i.r, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.p, i64 1 ; 2 uses
  %i.bc = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bb)
  %i.bd = fadd <2 x double> %i.ay, %i.az
  %i.be = fptosi <2 x double> %i.bd to <2 x i32>
  %i.bf = fadd <2 x double> %i.bb, %i.bc
  %i.bg = fptosi <2 x double> %i.bf to <2 x i32>
  %i.bh = zext <2 x i32> %i.bg to <2 x i64>
  %i.bi = shl nuw <2 x i64> %i.bh, splat (i64 32)
  %i.bj = zext <2 x i32> %i.be to <2 x i64>
  %i.bk = or disjoint <2 x i64> %i.bi, %i.bj
  store <2 x i64> %i.bk, ptr %29, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %29, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit270

_ZN10QCPPainter8drawLineERK6QLineF.exit270:       ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #49
  br label %bb.cn

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #49
  %i.bl = fsub double %2, %i.b                    ; 2 uses
  %i.bm = fadd double %2, %i.b                    ; 2 uses
  store double %i.bl, ptr %35, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %35, i64 8
  store double %3, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %35, i64 16
  store double %i.bm, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %35, i64 24
  store double %3, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.br = load i8, ptr %i.bq, align 4, !range !175, !noundef !176
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr i8, ptr %1, i64 8
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = and i32 %i.bu, 1
  %.not.i271 = icmp eq i32 %i.bv, 0
  br i1 %.not.i271, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %35, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit280

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #49
  %i.bw = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bm, i64 1 ; 2 uses
  %i.by = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bx)
  %i.bz = tail call double @llvm.copysign.f64(double 5.000000e-01, double %3)
  %i.ca = fadd double %3, %i.bz
  %i.cb = fptosi double %i.ca to i32
  %.sroa.2.0.insert.ext.i.i.i272 = zext i32 %i.cb to i64
  %.sroa.2.0.insert.shift.i.i.i273 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i272, 32
  %i.cc = fadd <2 x double> %i.bx, %i.by
  %i.cd = fptosi <2 x double> %i.cc to <2 x i32>
  %i.ce = zext <2 x i32> %i.cd to <2 x i64>
  %i.cf = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i273, i64 0
  %i.cg = shufflevector <2 x i64> %i.cf, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ch = or disjoint <2 x i64> %i.cg, %i.ce
  store <2 x i64> %i.ch, ptr %28, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %28, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit280

_ZN10QCPPainter8drawLineERK6QLineF.exit280:       ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #49
  %i.ci = fadd double %3, %i.b                    ; 2 uses
  %i.cj = fsub double %3, %i.b                    ; 2 uses
  store double %2, ptr %36, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %36, i64 8
  store double %i.ci, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %36, i64 16
  store double %2, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %36, i64 24
  store double %i.cj, ptr %i.cm, align 8
  %i.cn = load i8, ptr %i.bq, align 4, !range !175, !noundef !176
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit280
  %i.cp = getelementptr i8, ptr %1, i64 8
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = and i32 %i.cq, 1
  %.not.i281 = icmp eq i32 %i.cr, 0
  br i1 %.not.i281, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN10QCPPainter8drawLineERK6QLineF.exit280
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit290

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #49
  %i.cs = call double @llvm.copysign.f64(double 5.000000e-01, double %2)
  %i.ct = fadd double %2, %i.cs
  %i.cu = fptosi double %i.ct to i32
  %i.cv = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cj, i64 1 ; 2 uses
  %i.cx = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.cw)
  %.sroa.0.0.insert.ext.i.i.i284 = zext i32 %i.cu to i64
  %i.cy = fadd <2 x double> %i.cw, %i.cx
  %i.cz = fptosi <2 x double> %i.cy to <2 x i32>
  %i.da = zext <2 x i32> %i.cz to <2 x i64>
  %i.db = shl nuw <2 x i64> %i.da, splat (i64 32)
  %i.dc = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i284, i64 0
  %i.dd = shufflevector <2 x i64> %i.dc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.de = or disjoint <2 x i64> %i.db, %i.dd
  store <2 x i64> %i.de, ptr %27, align 16
end_hunk_0
