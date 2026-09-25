Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/overlay_scroll_bar?download=true
inline.NumInlined: 221
inline.NumDeleted: 133
begin_hunk_0_@_ZN16OverlayScrollBar19setNearOverlayImageER6QImageiii5QListIiEi:bb.a
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.m, i64 noundef 4, i64 noundef 8) #11
  br label %_ZN5QListIiEaSERKS0_.exit

_ZN5QListIiEaSERKS0_.exit:                        ; preds = %_ZN17QArrayDataPointerIiEC2ERKS0_.exit.i.i, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i, %bb.c
  %i.p = sitofp i32 %6 to double                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable_or_null(10) %i.q, i32 noundef 12), !inline_history !0
  %i.v = sitofp i32 %i.u to double
  %i.w = fmul nnan double %i.v, f0x3EF0000000000000
  %i.x = fcmp olt double %i.w, %i.p
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5QListIiEaSERKS0_.exit
  %i.y = load ptr, ptr %i.q, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable_or_null(10) %i.q, i32 noundef 12), !inline_history !0
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fmul nnan double %i.ac, f0x3EF0000000000000
  br label %bb.e

bb.e:                                             ; preds = %_ZN5QListIiEaSERKS0_.exit, %bb.d
  %i.ae = phi double [ %i.ad, %bb.d ], [ %i.p, %_ZN5QListIiEaSERKS0_.exit ]
  %i.af = fptosi double %i.ae to i32
  %i.ag = getelementptr i8, ptr %0, i64 192
  store i32 %i.af, ptr %i.ag, align 8
  %i.ah = tail call noundef i32 @_ZNK6QImage5widthEv(ptr noundef align 8 dereferenceable_or_null(24) %i.a)
  %.not = icmp eq i32 %i.b, %i.ah
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.q, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable_or_null(10) %i.q, i32 noundef 12), !inline_history !0
  %i.am = sitofp i32 %i.al to double
  %i.an = fmul nnan double %i.am, f0x3EF0000000000000
  %i.ao = tail call noundef i32 @_ZNK6QImage5widthEv(ptr noundef align 8 dereferenceable_or_null(24) %i.a)
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fdiv double %i.ap, %i.an
  %i.ar = fptosi double %i.aq to i32
  %i.as = getelementptr i8, ptr %0, i64 144
  store i32 %i.ar, ptr %i.as, align 8
  tail call void @_ZN7QWidget14updateGeometryEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN7QWidget6updateEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK6QImage5widthEv(ptr noundef align 8 dereferenceable_or_null(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN6QImageaSERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget14updateGeometryEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget6updateEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16OverlayScrollBar20setMarkedPacketImageER6QImage(ptr noundef align 8 dereferenceable_or_null(196) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable_or_null(10) %i.a, i32 noundef 12), !inline_history !0
  %i.f = sitofp i32 %i.e to double
  %i.g = fmul nnan double %i.f, f0x3EF0000000000000
  %i.h = getelementptr i8, ptr %0, i64 120
  %i.i = tail call noundef align 8 dereferenceable(24) ptr @_ZN6QImageaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.h, ptr noundef align 8 dereferenceable(24) %1) ; 0 uses
  %i.j = tail call noundef i32 @_ZNK6QImage5widthEv(ptr noundef align 8 dereferenceable_or_null(24) %1)
  %i.k = sitofp i32 %i.j to double
  %i.l = fdiv double %i.k, %i.g
  %i.m = fptosi double %i.l to i32
  %i.n = getelementptr i8, ptr %0, i64 148
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %0, i64 56
  tail call void @_ZN7QWidget6updateEv(ptr noundef align 8 dereferenceable_or_null(40) %i.o)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { i64, i64 } @_ZN16OverlayScrollBar10grooveRectEv(ptr noundef align 8 dereferenceable_or_null(196) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QStyleOptionSlider, align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @_ZN18QStyleOptionSliderC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(128) %1)
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 20
  %i.h = getelementptr i8, ptr %i.f, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = load i32, ptr %i.g, align 4
  %i.k = getelementptr i8, ptr %i.f, i64 32
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr i8, ptr %i.f, i64 24
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sub i32 %i.i, %i.j
  %i.p = sub i32 %i.l, %i.n
  %.sroa.5.8.insert.ext.i = zext i32 %i.p to i64
  %.sroa.5.8.insert.shift.i = shl nuw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.o to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.3.8.insert.insert.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.r = invoke noundef ptr @_ZNK7QWidget5styleEv(ptr noundef align 8 dereferenceable_or_null(40) %i.d)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke { i64, i64 } %i.u(ptr noundef align 8 dereferenceable_or_null(16) %i.r, i32 noundef 2, ptr noundef nonnull %1, i32 noundef 128, ptr noundef %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN12QStyleOptionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable_or_null(128) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret { i64, i64 } %i.v

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QStyleOptionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable_or_null(128) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  resume { ptr, i32 } %i.w
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN18QStyleOptionSliderC1Ev(ptr noundef align 8 dereferenceable_or_null(128)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK7QWidget5styleEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN12QStyleOptionD2Ev(ptr noundef align 8 dead_on_return(64) dereferenceable_or_null(64)) unnamed_addr #2

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16OverlayScrollBar11resizeEventEP12QResizeEvent(ptr noundef align 8 dereferenceable_or_null(196) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.QSize, align 4               ; 5 uses
  %3 = alloca %class.QPoint, align 4              ; 5 uses
  tail call void @_ZN7QWidget11resizeEventEP12QResizeEvent(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1)
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 %i.c, ptr %3, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.d, align 4
  call void @_ZN7QWidget4moveERK6QPoint(ptr noundef align 8 dereferenceable_or_null(40) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.e = call i64 @_ZNK10QScrollBar8sizeHintEv(ptr noundef align 8 dereferenceable_or_null(40) %i.a)
  %.sroa.0.0.extract.trunc = trunc i64 %i.e to i32
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.i, 1
  %i.m = sub i32 %i.l, %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i32 %.sroa.0.0.extract.trunc, ptr %2, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.m, ptr %i.n, align 4
  call void @_ZN7QWidget6resizeERK5QSize(ptr noundef align 8 dereferenceable_or_null(40) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget11resizeEventEP12QResizeEvent(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16OverlayScrollBar10paintEventEP11QPaintEvent(ptr noundef align 8 dereferenceable_or_null(196) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QPointF, align 8             ; 4 uses
  %3 = alloca %class.QLine, align 8               ; 5 uses
  %4 = alloca %class.QLine, align 8               ; 5 uses
  %5 = alloca %class.QLine, align 8               ; 5 uses
  %6 = alloca %class.QRect, align 4               ; 7 uses
  %7 = alloca %class.QRectF, align 8              ; 5 uses
  %8 = alloca %class.QRectF, align 8              ; 6 uses
  %9 = alloca %class.QSize, align 8               ; 7 uses
  %10 = alloca %class.QPainter, align 8           ; 8 uses
  %11 = alloca %class.QImage, align 8             ; 10 uses
  %12 = alloca %class.QPainter, align 8           ; 18 uses
  %13 = alloca %class.QImage, align 8             ; 9 uses
  %14 = alloca %class.QSize, align 8              ; 5 uses
  %15 = alloca %class.QBrush, align 8             ; 7 uses
  %16 = alloca %class.QColor, align 4             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable_or_null(10) %i.a, i32 noundef 12), !inline_history !0
  %i.f = sitofp i32 %i.e to double
  %i.g = fmul nnan double %i.f, f0x3EF0000000000000 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.h = getelementptr i8, ptr %0, i64 144
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr i8, ptr %i.k, i64 24
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.m, 1
  %i.q = sub i32 %i.p, %i.o
  %i.r = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %i.s = insertelement <2 x i32> %i.r, i32 %i.q, i64 1
  %i.t = sitofp <2 x i32> %i.s to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.g, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul nnan <2 x double> %i.v, %i.t        ; 2 uses
  %i.x = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.w)
  %i.y = fadd <2 x double> %i.w, %i.x
  %i.z = fptosi <2 x double> %i.y to <2 x i32>
  store <2 x i32> %i.z, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @_ZN8QPainterC1EP12QPaintDevice(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, ptr noundef nonnull %i.a)
  %i.aa = getelementptr i8, ptr %1, i64 16
  %i.ab = invoke noundef align 8 dereferenceable(12) ptr @_ZNK7QWidget7paletteEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.ac = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef align 8 dereferenceable_or_null(12) %i.ab, i32 noundef 4, i32 noundef 9)
          to label %_ZNK8QPalette4baseEv.exit unwind label %bb.o

_ZNK8QPalette4baseEv.exit:                        ; preds = %bb.b
  invoke void @_ZN8QPainter8fillRectERK5QRectRK6QBrush(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, ptr noundef align 4 dereferenceable(16) %i.aa, ptr noundef align 8 dereferenceable(8) %i.ac)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %_ZNK8QPalette4baseEv.exit
  %i.ad = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %i.ae = invoke noundef zeroext i1 @_ZNK6QImage6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.ad)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  br i1 %i.ae, label %bb.bg, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  invoke void @_ZN6QImageC1ERK5QSizeNS_6FormatE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef 6)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6QImage4fillEN2Qt11GlobalColorE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11, i32 noundef 19)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  invoke void @_ZN8QPainterC1EP12QPaintDevice(ptr noundef nonnull align 8 dereferenceable_or_null(8) %12, ptr noundef nonnull %11)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN8QPainter6setPenEN2Qt8PenStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %12, i32 noundef 0)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.af = load i64, ptr %9, align 8               ; 5 uses
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = add i64 %i.af, 4294967295
  %.sroa.14.8.insert.ext = and i64 %i.ai, 4294967295 ; 2 uses
  %i.aj = and i64 %i.af, -4294967296
  %.sroa.14.12.insert.shift = add i64 %i.aj, -4294967296 ; 3 uses
  %.sroa.14.12.insert.insert = or disjoint i64 %.sroa.14.12.insert.shift, %.sroa.14.8.insert.ext ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  store i64 %i.af, ptr %14, align 8
  invoke void @_ZNK6QImage6scaledERK5QSizeN2Qt15AspectRatioModeENS3_18TransformationModeE(ptr dead_on_unwind nonnull writable sret(%class.QImage) align 8 %13, ptr noundef align 8 dereferenceable_or_null(24) %i.ad, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef 0, i32 noundef 1)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %17 = bitcast i64 %i.af to <2 x i32>
  %18 = sitofp <2 x i32> %17 to <2 x double>
  store <2 x double> %18, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.al = invoke noundef i32 @_ZNK6QImage5widthEv(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %13)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.j
  %i.am = invoke noundef i32 @_ZNK6QImage6heightEv(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %13)
          to label %.noexc40 unwind label %bb.u

.noexc40:                                         ; preds = %.noexc
  %i.an = sitofp i32 %i.al to double
  %i.ao = sitofp i32 %i.am to double
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store double %i.an, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 24
  store double %i.ao, ptr %i.aq, align 8
  invoke void @_ZN8QPainter9drawImageERK6QRectFRK6QImageS2_6QFlagsIN2Qt19ImageConversionFlagEE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %12, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 0)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.ar = getelementptr i8, ptr %0, i64 184
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %bb.l, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr i8, ptr %0, i64 168
  %i.av = load ptr, ptr %i.au, align 8, !noalias !23 ; 6 uses
  %i.aw = getelementptr i8, ptr %0, i64 176
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null       ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = atomicrmw add ptr %i.av, i32 1 acq_rel, align 4, !noalias !23 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit: ; preds = %bb.l, %bb.m
  %.idx = shl i64 %i.as, 2                        ; 2 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 %.idx
  %.not115 = icmp eq i64 %.idx, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit
  %i.ba = getelementptr i8, ptr %0, i64 192
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 12
  br label %bb.w

._crit_edge:                                      ; preds = %bb.aj, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i:     ; preds = %._crit_edge
  %i.be = atomicrmw sub ptr %i.av, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.be, 1
  br i1 %.not.i.i.i, label %bb.n, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.av, i64 noundef 4, i64 noundef 8) #11
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit

bb.o:                                             ; preds = %bb.b, %bb.c, %_ZNK8QPalette4baseEv.exit, %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.p:                                             ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.q:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.r:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.s:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit47

bb.t:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %.noexc40, %.noexc, %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %13) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %i.bk, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit47

bb.w:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.10.0116 = phi ptr [ %i.ax, %.lr.ph ], [ %i.cf, %bb.aj ] ; 2 uses
  %i.bm = load i32, ptr %.sroa.10.0116, align 4   ; 3 uses
  %i.bn = invoke noundef i32 @_ZNK6QImage6heightEv(ptr noundef align 8 dereferenceable_or_null(24) %i.ad)
          to label %bb.x unwind label %bb.ae      ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bo = icmp sgt i32 %i.bm, -1
  %i.bp = icmp slt i32 %i.bm, %i.bn
  %or.cond = and i1 %i.bo, %i.bp
  br i1 %or.cond, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN8QPainter4saveEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %12)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.bq = mul i32 %i.bm, %i.ah
  %i.br = sdiv i32 %i.bq, %i.bn                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  %i.bs = invoke noundef align 8 dereferenceable(12) ptr @_ZNK7QWidget7paletteEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.bt = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef align 8 dereferenceable_or_null(12) %i.bs, i32 noundef 4, i32 noundef 12)
          to label %_ZNK8QPalette9highlightEv.exit unwind label %bb.af

_ZNK8QPalette9highlightEv.exit:                   ; preds = %bb.aa
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  invoke void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %15, ptr noundef align 4 dereferenceable(14) %i.bv, i32 noundef 1)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %_ZNK8QPalette9highlightEv.exit
  invoke void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef nonnull align 8 dereferenceable_or_null(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %i.bw = load i32, ptr %9, align 8
  %i.bx = load i32, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i32 0, ptr %6, align 4
  store i32 %i.br, ptr %i.bb, align 4
  %i.by = add i32 %i.bw, -1
  store i32 %i.by, ptr %i.bc, align 4
  %i.bz = add i32 %i.br, -1
  %i.ca = add i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.bd, align 4
  invoke void @_ZN8QPainter9drawRectsEPK5QRecti(ptr noundef nonnull align 8 dereferenceable_or_null(8) %12, ptr noundef nonnull %6, i32 noundef 1)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  invoke void @_ZN8QPainter7restoreEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %12)
          to label %bb.aj unwind label %bb.ai

bb.ae:                                            ; preds = %bb.y, %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %bb.aa, %_ZNK8QPalette9highlightEv.exit, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %15) #11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn28 = phi { ptr, i32 } [ %i.cd, %bb.ag ], [ %i.cc, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ac, %bb.ad
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ad, %bb.x
  %i.cf = getelementptr i8, ptr %.sroa.10.0116, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.az
  br i1 %.not, label %._crit_edge, label %bb.w, !llvm.loop !22

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.ae
  %.pn30.pn = phi { ptr, i32 } [ %i.cb, %bb.ae ], [ %i.ce, %bb.ai ], [ %.pn28, %bb.ah ] ; 3 uses
end_hunk_0
