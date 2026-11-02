Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/info_banner_widget?download=true
inline.NumInlined: 2736
inline.NumDeleted: 1108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16InfoBannerWidget19updateAccessibilityEv:bb.a
bb.au:                                            ; preds = %bb.ao
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.eq = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i121, label %_ZN7QStringD2Ev.exit124, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i122

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i122:   ; preds = %bb.au
  %i.er = atomicrmw add ptr %i.eq, i32 -1 acq_rel, align 4
  %.not.i.i123 = icmp eq i32 %i.er, 1
  br i1 %.not.i.i123, label %bb.av, label %_ZN7QStringD2Ev.exit124

bb.av:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i122
  %i.es = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.es, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit124

_ZN7QStringD2Ev.exit124:                          ; preds = %bb.av, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i122, %bb.au, %bb.at
  %.pn27 = phi { ptr, i32 } [ %i.eo, %bb.at ], [ %i.ep, %bb.au ], [ %i.ep, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i122 ], [ %i.ep, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN7QStringD2Ev.exit124, %_ZN7QStringD2Ev.exit113, %bb.ab
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %_ZN7QStringD2Ev.exit124 ], [ %.pn24.pn, %_ZN7QStringD2Ev.exit113 ], [ %i.ci, %bb.ab ]
  call void @_ZN5QListI7QStringED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ba

bb.ax:                                            ; preds = %_ZN5QListI7QStringED2Ev.exit, %_ZN7QStringD2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV16QAccessibleEvent, i64 16), ptr %14, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 32780, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %0, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 -1, ptr %i.ev, align 8
  invoke void @_ZN11QAccessible19updateAccessibilityEP16QAccessibleEvent(ptr noundef nonnull %14)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN16QAccessibleEventD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable_or_null(28) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  ret void

bb.az:                                            ; preds = %bb.ax
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16QAccessibleEventD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable_or_null(28) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN7QStringD2Ev.exit79, %bb.aw, %bb.az, %_ZN7QStringD2Ev.exit44, %_ZN7QStringD2Ev.exit40
  %.pn31 = phi { ptr, i32 } [ %i.ew, %bb.az ], [ %i.p, %_ZN7QStringD2Ev.exit44 ], [ %i.l, %_ZN7QStringD2Ev.exit40 ], [ %.pn27.pn, %bb.aw ], [ %.pn.pn.pn, %_ZN7QStringD2Ev.exit79 ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget6updateEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN16InfoBannerWidget5eventEP6QEvent(ptr noundef align 8 dereferenceable_or_null(152) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8
  switch i16 %i.b, label %bb.b [
    i16 38, label %.sink.split
    i16 89, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.a, %bb.a
  tail call void @_ZN7QWidget6updateEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN6QFrame5eventEP6QEvent(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1)
  ret i1 %i.c
}

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN6QFrame5eventEP6QEvent(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget17setAccessibleNameERK7QString(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget24setAccessibleDescriptionERK7QString(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), i64 noundef, i32 noundef, i32 noundef, i16) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24), i32 noundef, i16) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI7QStringED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i:  ; preds = %bb.a
  %i.b = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i = mul i64 %i.f, 24                    ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i, align 8    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #28
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i:       ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

_ZN17QArrayDataPointerI7QStringED2Ev.exit:        ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QAccessible19updateAccessibilityEP16QAccessibleEvent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN16QAccessibleEventD1Ev(ptr noundef align 8 dead_on_return(28) dereferenceable_or_null(28)) unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16InfoBannerWidget14setCompactModeEb(ptr noundef align 8 dereferenceable_or_null(152) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !range !16, !noundef !17
  %i.c = zext i1 %1 to i8                         ; 2 uses
  %i.d = icmp eq i8 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.c, ptr %i.a, align 4
  %i.e = select i1 %1, i32 180, i32 360
  tail call void @_ZN7QWidget16setMaximumHeightEi(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef %i.e)
  tail call void @_ZN7QWidget14updateGeometryEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  tail call void @_ZN7QWidget6updateEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget14updateGeometryEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK16InfoBannerWidget13isCompactModeEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(152) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef i64 @_ZNK16InfoBannerWidget8sizeHintEv(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(152) %0) unnamed_addr #12 align 2 {
bb.a:
  ret i64 1546188226860
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef i64 @_ZNK16InfoBannerWidget15minimumSizeHintEv(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(152) %0) unnamed_addr #12 align 2 {
bb.a:
  ret i64 773094113580
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16InfoBannerWidget10paintEventEP11QPaintEvent(ptr noundef align 8 dereferenceable_or_null(152) %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %sincos.sin = alloca double, align 8            ; 2 uses
  %sincos.cos = alloca double, align 8            ; 2 uses
  %2 = alloca %class.QPointF, align 8             ; 5 uses
  %3 = alloca %class.QSize, align 8               ; 4 uses
  %4 = alloca %class.QPointF, align 16            ; 4 uses
  %5 = alloca %class.QPointF, align 16            ; 4 uses
  %6 = alloca %class.QPointF, align 16            ; 4 uses
  %7 = alloca %class.QPointF, align 16            ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %class.QPainter, align 8            ; 53 uses
  %9 = alloca %class.QRectF, align 8              ; 7 uses
  %10 = alloca [2 x %class.QColor], align 4       ; 5 uses
  %11 = alloca %class.QLinearGradient, align 8    ; 8 uses
  %12 = alloca %class.QPointF, align 16           ; 5 uses
  %13 = alloca %class.QPointF, align 16           ; 5 uses
  %14 = alloca %class.QBrush, align 8             ; 7 uses
  %15 = alloca %class.QRectF, align 8             ; 7 uses
  %16 = alloca %class.QPainterPath, align 8       ; 15 uses
  %17 = alloca %class.QRectF, align 8             ; 6 uses
  %18 = alloca %class.QRectF, align 8             ; 7 uses
  %19 = alloca %class.QString, align 8            ; 13 uses
  %20 = alloca %class.QPixmap, align 8            ; 8 uses
  %21 = alloca %class.QPixmap, align 8            ; 10 uses
  %22 = alloca %class.QBrush, align 8             ; 7 uses
  %23 = alloca %class.QColor, align 4             ; 7 uses
  %24 = alloca %class.QFont, align 8              ; 10 uses
  %25 = alloca %class.QColor, align 4             ; 7 uses
  %26 = alloca %class.QString, align 8            ; 9 uses
  %27 = alloca %class.QFont, align 8              ; 12 uses
  %28 = alloca %class.QString, align 8            ; 10 uses
  %29 = alloca %class.QFontMetrics, align 8       ; 8 uses
  %30 = alloca %class.QRectF, align 8             ; 8 uses
  %31 = alloca %class.QBrush, align 8             ; 7 uses
  %32 = alloca %class.QColor, align 4             ; 7 uses
  %33 = alloca %class.QColor, align 4             ; 7 uses
  %34 = alloca %class.QFont, align 8              ; 9 uses
  %35 = alloca %class.QColor, align 4             ; 5 uses
  %36 = alloca %class.QRectF, align 8             ; 8 uses
  %37 = alloca %class.QFont, align 8              ; 9 uses
  %38 = alloca %class.QFontMetrics, align 8       ; 10 uses
  %39 = alloca %class.QRectF, align 8             ; 8 uses
  %40 = alloca %class.QBrush, align 8             ; 7 uses
  %41 = alloca %class.QColor, align 4             ; 7 uses
  %42 = alloca %class.QColor, align 4             ; 7 uses
  %43 = alloca %class.QRectF, align 8             ; 8 uses
  %44 = alloca %class.QString, align 8            ; 9 uses
  %45 = alloca %class.QColor, align 4             ; 7 uses
  %46 = alloca %class.QRectF, align 8             ; 8 uses
  %47 = alloca %class.QString, align 8            ; 9 uses
  %48 = alloca %class.QFont, align 8              ; 8 uses
  %49 = alloca %class.QColor, align 4             ; 7 uses
  %50 = alloca %class.QRectF, align 8             ; 8 uses
  %51 = alloca %class.QFont, align 8              ; 10 uses
  %52 = alloca %class.QFontMetrics, align 8       ; 8 uses
  %53 = alloca %class.QRectF, align 8             ; 8 uses
  %54 = alloca %class.QBrush, align 8             ; 7 uses
  %55 = alloca %class.QColor, align 4             ; 7 uses
  %56 = alloca %class.QPen, align 8               ; 7 uses
  %57 = alloca %class.QBrush, align 8             ; 7 uses
  %58 = alloca %class.QColor, align 4             ; 7 uses
  %59 = alloca %class.QPen, align 8               ; 7 uses
  %60 = alloca %class.QBrush, align 8             ; 7 uses
  %61 = alloca %class.QColor, align 4             ; 7 uses
  %62 = alloca %class.QColor, align 4             ; 7 uses
  %63 = alloca %class.QRectF, align 8             ; 7 uses
  %64 = alloca %class.QBrush, align 8             ; 7 uses
  %65 = alloca %class.QColor, align 4             ; 7 uses
  %66 = alloca %class.QBrush, align 8             ; 7 uses
  %67 = alloca %class.QColor, align 4             ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.io, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  call void @_ZN8QPainterC1EP12QPaintDevice(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull %i.f)
  invoke void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, i32 noundef 2, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN5QListI11BannerSlideE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i: ; preds = %bb.d
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %_ZN5QListI11BannerSlideE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i

_ZN5QListI11BannerSlideE6detachEv.exit.i:         ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i, %bb.d
  invoke void @_ZN17QArrayDataPointerI11BannerSlideE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.b, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZN5QListI11BannerSlideE6detachEv.exit.i
  %.pre.i = load ptr, ptr %i.b, align 8           ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i: ; preds = %.noexc, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i
  %i.m = phi ptr [ %.pre.i, %.noexc ], [ %i.j, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i ]
  %i.n = load atomic i32, ptr %i.m monotonic, align 4
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i, label %bb.e

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI11BannerSlideE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.b, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i
  %i.p = getelementptr i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr [248 x i8], ptr %i.q, i64 %i.i ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.s = getelementptr i8, ptr %0, i64 32         ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 20
  %i.v = getelementptr i8, ptr %i.t, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.y = load <2 x i32>, ptr %i.v, align 4
  %i.z = load <2 x i32>, ptr %i.u, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.aa = add <2 x i32> %i.y, <i32 0, i32 1>
  %i.ab = sub <2 x i32> %i.aa, %i.z               ; 2 uses
  %i.ac = add <2 x i32> %i.ab, <i32 1, i32 0>
  %i.ad = sitofp <2 x i32> %i.ac to <2 x double>
  store <2 x double> %i.ad, ptr %i.w, align 8
  %i.ae = extractelement <2 x i32> %i.ab, i64 0   ; 2 uses
  %i.af = add i32 %i.ae, -31
  %i.ag = load i32, ptr %i.r, align 8
  %i.ah = icmp eq i32 %i.ag, 3                    ; 5 uses
  %i.ai = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %i.aj = invoke noundef align 8 dereferenceable(72) ptr @_ZN4QMapI15BannerSlideType15SlideTypeConfigEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.ai, ptr noundef align 4 dereferenceable(4) %i.r)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = sitofp i32 %i.al to double
  %i.an = fmul nnan double %i.am, f0x3F91DF46A2529D39
  %i.ao = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ao, i64 16     ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not10.i.i.i.i, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.as = load i32, ptr %i.r, align 8             ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.h ]
  %i.at = getelementptr i8, ptr %.012.i.i.i.i, i64 32
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp slt i32 %i.au, %i.as               ; 2 uses
  %.19.i.i.i.i = select i1 %i.av, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i242 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i242, label %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, label %bb.h, !llvm.loop !0

_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i: ; preds = %bb.h
  %i.aw = icmp eq ptr %.19.i.i.i.i, %i.ar
  br i1 %i.aw, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i, label %_ZNK4QMapI15BannerSlideType15SlideTypeConfigE8containsERKS0_.exit

_ZNK4QMapI15BannerSlideType15SlideTypeConfigE8containsERKS0_.exit: ; preds = %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  %i.ax = getelementptr i8, ptr %.19.i.i.i.i, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %.not = icmp slt i32 %i.as, %i.ay
  br i1 %.not, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4QMapI15BannerSlideType15SlideTypeConfigE8containsERKS0_.exit
  %i.az = invoke noundef align 8 dereferenceable(72) ptr @_ZN4QMapI15BannerSlideType15SlideTypeConfigEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.ai, ptr noundef align 4 dereferenceable(4) %i.r)
          to label %bb.j unwind label %.thread    ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %.not.i.i.i.i243 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i243, label %_ZN5QListI6QColorEaSERKS1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = atomicrmw add ptr %i.bb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5QListI6QColorEaSERKS1_.exit

bb.l:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i, %_ZN5QListI11BannerSlideE6detachEv.exit.i, %bb.b, %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

.thread:                                          ; preds = %bb.e, %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QColorED2Ev.exit331

_ZN17QArrayDataPointerI6QColorED2Ev.exit.i:       ; preds = %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, %bb.g, %bb.f, %_ZNK4QMapI15BannerSlideType15SlideTypeConfigE8containsERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.bj = getelementptr i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %10, ptr noundef align 8 dereferenceable(14) %i.bj, i64 14, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bl = getelementptr i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.bk, ptr noundef align 8 dereferenceable(14) %i.bl, i64 14, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bm = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 8, i64 noundef 2, i32 noundef 1) #28 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bm, i64 8) ]
  %i.bn = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 4 dereferenceable(32) %10, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZN5QListI6QColorEaSERKS1_.exit

_ZN5QListI6QColorEaSERKS1_.exit:                  ; preds = %bb.k, %bb.j, %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i
  %.sroa.12355.0 = phi ptr [ %i.bm, %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i ], [ %i.bd, %bb.j ], [ %i.bd, %bb.k ]
  %.sroa.16.0 = phi i64 [ 2, %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i ], [ %i.bf, %bb.j ], [ %i.bf, %bb.k ] ; 3 uses
  %.sroa.0349.0 = phi ptr [ %i.bn, %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i ], [ null, %bb.j ], [ %i.bb, %bb.k ] ; 6 uses
  %i.bo = fadd double %i.an, f0xBFF921FB54442D18
  call void @sincos(double %i.bo, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load double, ptr %sincos.sin, align 8
  %cos = load double, ptr %sincos.cos, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.bp = load <2 x double>, ptr %i.w, align 8    ; 2 uses
  %i.bq = fmul <2 x double> %i.bp, splat (double 5.000000e-01) ; 2 uses
  %i.br = insertelement <2 x double> poison, double %cos, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %sin, i64 1
  %i.bt = fmul <2 x double> %i.bp, %i.bs
  %i.bu = fmul <2 x double> %i.bt, splat (double 5.000000e-01) ; 2 uses
  %i.bv = fsub <2 x double> %i.bq, %i.bu
  store <2 x double> %i.bv, ptr %12, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.bw = fadd <2 x double> %i.bq, %i.bu
  store <2 x double> %i.bw, ptr %13, align 16
  invoke void @_ZN15QLinearGradientC1ERK7QPointFS2_(ptr noundef nonnull align 8 dereferenceable_or_null(88) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN5QListI6QColorEaSERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.bx = icmp sgt i64 %.sroa.16.0, 0
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.by = add nsw i64 %.sroa.16.0, -1
  %i.bz = uitofp nneg i64 %i.by to double
  br label %bb.o

._crit_edge:                                      ; preds = %bb.p, %bb.m
  invoke void @_ZN8QPainter6setPenEN2Qt8PenStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, i32 noundef 0)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_ZN5QListI6QColorEaSERKS1_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.iy

bb.o:                                             ; preds = %.lr.ph, %bb.p
  %i.cb = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.p ]
  %.0101380 = phi i32 [ 0, %.lr.ph ], [ %i.cf, %bb.p ] ; 2 uses
  %i.cc = sitofp i32 %.0101380 to double
  %i.cd = fdiv double %i.cc, %i.bz
  %i.ce = getelementptr [16 x i8], ptr %.sroa.12355.0, i64 %i.cb
  invoke void @_ZN9QGradient10setColorAtEdRK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(88) %11, double noundef %i.cd, ptr noundef align 4 dereferenceable(14) %i.ce)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.cf = add i32 %.0101380, 1                    ; 2 uses
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = icmp sgt i64 %.sroa.16.0, %i.cg
  br i1 %i.ch, label %bb.o, label %._crit_edge, !llvm.loop !101

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZN6QBrushC1ERK9QGradient(ptr noundef nonnull align 8 dereferenceable_or_null(8) %14, ptr noundef nonnull align 8 dereferenceable(88) %11)
          to label %bb.r unwind label %bb.at

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.s unwind label %bb.au

bb.s:                                             ; preds = %bb.r
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  invoke void @_ZN8QPainter15drawRoundedRectERK6QRectFddN2Qt8SizeModeE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, double noundef 8.000000e+00, double noundef 8.000000e+00, i32 noundef 0)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr i8, ptr %0, i64 68        ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 4, !range !16, !noundef !17
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ch, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.cl = load double, ptr %i.w, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.co = insertelement <2 x double> <double poison, double 1.200000e+02>, double %i.cl, i64 0
  store <2 x double> %i.co, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN12QPainterPathC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store <2 x double> <double 8.000000e+00, double 0.000000e+00>, ptr %7, align 16
  invoke void @_ZN12QPainterPath6moveToERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(8) %16, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.v unwind label %bb.ay

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.600000e+01), ptr %i.cp, align 8
  invoke void @_ZN12QPainterPath5arcToERK6QRectFdd(ptr noundef nonnull align 8 dereferenceable_or_null(8) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, double noundef 9.000000e+01, double noundef 9.000000e+01)
          to label %bb.w unwind label %bb.aw

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store <2 x double> <double 0.000000e+00, double 1.200000e+02>, ptr %6, align 16
  invoke void @_ZN12QPainterPath6lineToERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(8) %16, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.x unwind label %bb.ay

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cq = load double, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.cr = insertelement <2 x double> <double poison, double 1.200000e+02>, double %i.cq, i64 0
  store <2 x double> %i.cr, ptr %5, align 16
  invoke void @_ZN12QPainterPath6lineToERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(8) %16, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.y unwind label %bb.ay

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.cs = load double, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ct = insertelement <2 x double> <double poison, double 8.000000e+00>, double %i.cs, i64 0
  store <2 x double> %i.ct, ptr %4, align 16
  invoke void @_ZN12QPainterPath6lineToERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(8) %16, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.z unwind label %bb.ay

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.cu = load double, ptr %i.w, align 8
  %i.cv = fadd double %i.cu, -1.600000e+01
  store double %i.cv, ptr %18, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x double> <double 0.000000e+00, double 1.600000e+01>, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %18, i64 24
  store double 1.600000e+01, ptr %i.cx, align 8
  invoke void @_ZN12QPainterPath5arcToERK6QRectFdd(ptr noundef nonnull align 8 dereferenceable_or_null(8) %16, ptr noundef nonnull align 8 dereferenceable(32) %18, double noundef 0.000000e+00, double noundef 9.000000e+01)
          to label %bb.aa unwind label %bb.ax

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  invoke void @_ZN12QPainterPath12closeSubpathEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %16)
          to label %bb.ab unwind label %bb.ay

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr i8, ptr %i.r, i64 192
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.critedge, label %_ZN7QStringC2ERKS_.exit.i

_ZN7QStringC2ERKS_.exit.i:                        ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  store ptr null, ptr %19, align 8, !alias.scope !108
  %i.dc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.50, ptr %i.dc, align 8, !alias.scope !108
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 15, ptr %i.dd, align 8, !alias.scope !108
  %i.de = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %_ZN17QArrayDataPointerIDsED2Ev.exit unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %_ZN7QStringC2ERKS_.exit.i
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dg = load ptr, ptr %19, align 8              ; 2 uses
  %.not.i.i.i332 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i332, label %_ZN17QArrayDataPointerIDsED2Ev.exit275, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i333

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i333:   ; preds = %bb.ac
  %i.dh = atomicrmw add ptr %i.dg, i32 -1 acq_rel, align 4
  %.not.i.i334 = icmp eq i32 %i.dh, 1
  br i1 %.not.i.i334, label %_ZN17QArrayDataPointerIDsED2Ev.exit275.sink.split, label %_ZN17QArrayDataPointerIDsED2Ev.exit275

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %_ZN7QStringC2ERKS_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  invoke void @_ZN7QPixmapC1ERK7QStringPKc6QFlagsIN2Qt19ImageConversionFlagEE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef null, i32 0)
          to label %bb.ad unwind label %bb.az

bb.ad:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit
  %i.di = invoke noundef zeroext i1 @_ZNK7QPixmap6isNullEv(ptr noundef nonnull align 8 dereferenceable_or_null(24) %20)
          to label %bb.ae unwind label %bb.ba     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.di, label %bb.be, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN8QPainter4saveEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8)
          to label %bb.ag unwind label %bb.ba

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN8QPainter11setClipPathERK12QPainterPathN2Qt13ClipOperationE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1)
          to label %bb.ah unwind label %bb.ba

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.dj = load <2 x double>, ptr %i.cm, align 8
  %i.dk = load ptr, ptr %i.f, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef i32 %i.dm(ptr noundef nonnull align 8 dereferenceable_or_null(10) %i.f, i32 noundef 12)
          to label %bb.ai unwind label %bb.bb, !inline_history !104

bb.ai:                                            ; preds = %bb.ah
  %i.do = load double, ptr %i.cn, align 8
  %i.dp = load ptr, ptr %i.f, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef i32 %i.dr(ptr noundef nonnull align 8 dereferenceable_or_null(10) %i.f, i32 noundef 12)
          to label %bb.aj unwind label %bb.bb, !inline_history !104
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E:bb.a

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef align 8 dereferenceable_or_null(48) %0, ptr noundef %i.b)
  %i.c = getelementptr i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %.07, i64 88       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit, label %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i.i.i.i

_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i.i.i.i
  %i.h = load ptr, ptr %i.e, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.h, i64 noundef 16, i64 noundef 8) #28
  br label %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit

_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit: ; preds = %.lr.ph, %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 112) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !116

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef align 8 dereferenceable_or_null(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef align 8 dereferenceable_or_null(48) %0, ptr noundef %i.b)
  %i.c = getelementptr i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !117

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI11BannerSlideED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.thread, label %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit

_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit: ; preds = %bb.a
  %i.b = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.thread

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i = mul i64 %i.f, 248                     ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i
  %.not4.i.i.i.i = icmp eq i64 %.idx.i, 0
  br i1 %.not4.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  tail call void @_ZN11BannerSlideD2Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %.05.i.i.i.i) #28
  %i.h = getelementptr i8, ptr %.05.i.i.i.i, i64 248 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit: ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.i = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 248, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.thread

_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.thread: ; preds = %bb.a, %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit, %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare noundef i32 @_ZN9QtPrivate14compareStringsE11QStringView13QLatin1StringN2Qt15CaseSensitivityE(i64, ptr, i64, ptr, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind writable sret(%class.QByteArray) align 8, ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString7sectionERKS_xx6QFlagsINS_11SectionFlagEE(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24), i64 noundef, i64 noundef, i32) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QStringC1E5QChar(ptr noundef align 8 dereferenceable_or_null(24), i16) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef align 8 dereferenceable_or_null(5000), ptr noundef align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef align 8 dereferenceable_or_null(5000)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNSt13random_device7_M_finiEv(ptr noundef align 8 dereferenceable_or_null(5000)) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare { i64, i64 } @_ZN6QColor10fromStringE14QAnyStringView(ptr, i64) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noundef i64 @_ZNK11QJsonObject4sizeEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN18QJsonValueConstRef9objectKeyES_(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr, i64) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind writable sret(%class.QString) align 8, i64, ptr) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef align 8 dereferenceable_or_null(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK13QJsonValueRef7toValueEv(ptr dead_on_unwind writable sret(%class.QJsonValue) align 8, ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @_ZN5QDate10fromStringE11QStringViewN2Qt10DateFormatE(i64, ptr, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64, ptr, i64, ptr, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QtPrivate16QStringList_joinEPK5QListI7QStringEPK5QCharx(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI7QStringED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.thread, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit

_ZN17QArrayDataPointerI7QStringE5derefEv.exit:    ; preds = %bb.a
  %i.b = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.thread

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i = mul i64 %i.f, 24                      ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i
  %.not4.i.i.i.i = icmp eq i64 %.idx.i, 0
  br i1 %.not4.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8      ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #28
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i:         ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.thread

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.thread: ; preds = %bb.a, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QPainterPath6moveToERK7QPointF(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QPainterPath6lineToERK7QPointF(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QPixmap6scaledERK5QSizeN2Qt15AspectRatioModeENS3_18TransformationModeE(ptr dead_on_unwind writable sret(%class.QPixmap) align 8, ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter10drawPixmapERK7QPointFRK7QPixmap(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(16), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString14toUpper_helperERKS_(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QFont9setWeightENS_6WeightE(ptr noundef align 8 dereferenceable_or_null(12), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #21

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN4QMapI15BannerSlideTypebE6detachEv(ptr noundef align 8 dereferenceable_or_null(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEE6detachEv(ptr noundef align 8 dereferenceable_or_null(8) %0)
  br label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEE5resetEPSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(56) ptr @_Znwm(i64 noundef 56) #27 ; 9 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 40
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 48
  store i64 0, ptr %i.g, align 8
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %.not5.i = icmp eq i32 %i.i, 1
  br i1 %.not5.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8                ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  invoke void @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable_or_null(48) %i.l, ptr noundef %i.n)
          to label %_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEED2Ev.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEED2Ev.exit.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 56) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEED2Ev.exit.i, %bb.e, %bb.d, %bb.c
  store ptr %i.b, ptr %0, align 8
  %.not4.i = icmp eq ptr %i.b, null
  br i1 %.not4.i, label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEE5resetEPSB_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEE5resetEPSB_.exit

_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEE5resetEPSB_.exit: ; preds = %bb.i, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEE6detachEv(ptr noundef align 8 dereferenceable_or_null(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Rb_tree<BannerSlideType, std::pair<const BannerSlideType, bool>, std::_Select1st<std::pair<const BannerSlideType, bool>>, std::less<BannerSlideType>>::_Alloc_node", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(56) ptr @_Znwm(i64 noundef 56) #27 ; 8 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 40
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 48
  store i64 0, ptr %i.g, align 8
  store ptr %i.b, ptr %0, align 8
  %i.h = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load atomic i32, ptr %i.a monotonic, align 4
  %.not2 = icmp eq i32 %i.i, 1
  br i1 %.not2, label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noalias noundef dereferenceable_or_null(56) ptr @_Znwm(i64 noundef 56) #27 ; 11 uses
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  store i32 0, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.j, i64 40       ; 2 uses
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.j, i64 48       ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEEC2ERKS9_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %i.s, ptr %1, align 8
  %i.t = invoke noundef ptr @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable_or_null(48) %i.s, ptr noundef nonnull %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i.i.i unwind label %bb.l ; 3 uses

.noexc.i.i.i:                                     ; preds = %bb.e, %.noexc.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = getelementptr i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %.noexc.i.i.i, !llvm.loop !6

_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.w = getelementptr i8, ptr %.0.i.i7.i.i.i.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i8.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.g, label %bb.f, !llvm.loop !7

bb.g:                                             ; preds = %bb.f
  store ptr %.0.i.i7.i.i.i.i.i, ptr %i.o, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  store ptr %i.t, ptr %i.m, align 8
  br label %_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEEC2ERKS9_.exit

_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEEC2ERKS9_.exit: ; preds = %bb.g, %bb.d
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEEC2EPSB_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEEC2ERKS9_.exit
  %i.aa = atomicrmw add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEEC2EPSB_.exit

_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEEC2EPSB_.exit: ; preds = %_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEEC2ERKS9_.exit, %bb.h
  %i.ab = load ptr, ptr %0, align 8               ; 5 uses
  store ptr %i.j, ptr %0, align 8
  %.not.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i3, label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEEC2EPSB_.exit
  %i.ac = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4
  %.not2.i = icmp eq i32 %i.ac, 1
  br i1 %.not2.i, label %bb.j, label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = getelementptr i8, ptr %i.ab, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable_or_null(48) %i.ad, ptr noundef %i.af)
          to label %_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEED2Ev.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #31
  unreachable

_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEED2Ev.exit.i: ; preds = %bb.j
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 56) #29
  br label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEED2Ev.exit

bb.l:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 56) #29
  resume { ptr, i32 } %i.ai

_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEED2Ev.exit: ; preds = %_ZN8QMapDataISt3mapI15BannerSlideTypebSt4lessIS1_ESaISt4pairIKS1_bEEEED2Ev.exit.i, %bb.i, %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideTypebSt4lessIS3_ESaISt4pairIKS3_bEEEEEC2EPSB_.exit, %bb.c, %bb.b
  ret void
}

end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_:bb.a
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(ptr noundef align 8 dereferenceable_or_null(48) %0, ptr noundef nonnull %i.i, ptr noundef %i.b, ptr noundef align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.b, i64 24
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.030.in34 = getelementptr i8, ptr %1, i64 16
  %.03035 = load ptr, ptr %.030.in34, align 8     ; 2 uses
  %.not3236 = icmp eq ptr %.03035, null
  br i1 %.not3236, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.03038 = phi ptr [ %.030, %bb.i ], [ %.03035, %bb.d ] ; 4 uses
  %.03137 = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.d ] ; 2 uses
  %i.l = invoke noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #27
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %.03038, i64 32
  %i.n = getelementptr i8, ptr %i.l, i64 32
  %i.o = load i64, ptr %i.m, align 4
  store i64 %i.o, ptr %i.n, align 4
  %i.p = load i32, ptr %.03038, align 8
  store i32 %i.p, ptr %i.l, align 8
  %i.q = getelementptr i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = getelementptr i8, ptr %.03137, i64 16
  store ptr %i.l, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.l, i64 8
  store ptr %.03137, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.03038, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef ptr @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(ptr noundef align 8 dereferenceable_or_null(48) %0, ptr noundef nonnull %i.u, ptr noundef %i.l, ptr noundef align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.l, i64 24
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.f, %bb.b
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          catch ptr null
  %.0 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp42, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #28 ; 0 uses
  invoke void @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef align 8 dereferenceable_or_null(48) %0, ptr noundef %i.b)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #33
          to label %bb.m unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.e
  %.030.in = getelementptr i8, ptr %.03038, i64 16
  %.030 = load ptr, ptr %.030.in, align 8         ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !118

bb.j:                                             ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.i, %bb.d
  ret ptr %i.b

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

bb.m:                                             ; preds = %bb.h
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind writable sret(%"class.QMetaObject::Connection") align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate11QSlotObjectIM16InfoBannerWidgetFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 32) #29
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %.unpack12 = load i64, ptr %i.b, align 8        ; 3 uses
  %.elt13 = getelementptr i8, ptr %1, i64 24
  %.unpack14 = load i64, ptr %.elt13, align 8
  %i.c = getelementptr inbounds i8, ptr %2, i64 %.unpack14 ; 2 uses
  %i.d = and i64 %.unpack12, 1
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack12
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !17
  br label %_ZN9QtPrivate15FunctionPointerIM16InfoBannerWidgetFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit

bb.f:                                             ; preds = %bb.d
  %i.i = inttoptr i64 %.unpack12 to ptr
  br label %_ZN9QtPrivate15FunctionPointerIM16InfoBannerWidgetFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit

_ZN9QtPrivate15FunctionPointerIM16InfoBannerWidgetFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit: ; preds = %bb.e, %bb.f
  %i.j = phi ptr [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  tail call void %i.j(ptr noundef align 8 dereferenceable_or_null(152) %i.c), !inline_history !119
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %.unpack = load i64, ptr %3, align 8            ; 2 uses
  %.elt7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.unpack8 = load i64, ptr %.elt7, align 8
  %i.k = getelementptr i8, ptr %1, i64 16
  %.unpack9 = load i64, ptr %i.k, align 8
  %.elt10 = getelementptr i8, ptr %1, i64 24
  %.unpack11 = load i64, ptr %.elt10, align 8
  %i.l = icmp eq i64 %.unpack, %.unpack9
  %i.m = icmp eq i64 %.unpack, 0
  %i.n = icmp eq i64 %.unpack8, %.unpack11
  %i.o = or i1 %i.m, %i.n
  %i.p = and i1 %i.l, %i.o
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr %4, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.g, %_ZN9QtPrivate15FunctionPointerIM16InfoBannerWidgetFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define internal void @"_ZN9QtPrivate18QFunctorSlotObjectIZN16InfoBannerWidgetC1EP7QWidgetE3$_0Li0ENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb"(i32 noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 align 2 {
bb.a:
  switch i32 %0, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 24) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 8
  tail call void @_ZN7QWidget6updateEv(ptr noundef align 8 dereferenceable_or_null(40) %.val)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN4QMapI15BannerSlideType15SlideTypeConfigE6detachEv(ptr noundef align 8 dereferenceable_or_null(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE6detachEv(ptr noundef align 8 dereferenceable_or_null(8) %0)
  br label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE5resetEPSC_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(56) ptr @_Znwm(i64 noundef 56) #27 ; 9 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 40
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 48
  store i64 0, ptr %i.g, align 8
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %.not5.i = icmp eq i32 %i.i, 1
  br i1 %.not5.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8                ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  invoke void @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable_or_null(48) %i.l, ptr noundef %i.n)
          to label %_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEED2Ev.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEED2Ev.exit.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 56) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEED2Ev.exit.i, %bb.e, %bb.d, %bb.c
  store ptr %i.b, ptr %0, align 8
  %.not4.i = icmp eq ptr %i.b, null
  br i1 %.not4.i, label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE5resetEPSC_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE5resetEPSC_.exit

_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE5resetEPSC_.exit: ; preds = %bb.i, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE6detachEv(ptr noundef align 8 dereferenceable_or_null(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Rb_tree<BannerSlideType, std::pair<const BannerSlideType, SlideTypeConfig>, std::_Select1st<std::pair<const BannerSlideType, SlideTypeConfig>>, std::less<BannerSlideType>>::_Alloc_node", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(56) ptr @_Znwm(i64 noundef 56) #27 ; 8 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 40
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 48
  store i64 0, ptr %i.g, align 8
  store ptr %i.b, ptr %0, align 8
  %i.h = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load atomic i32, ptr %i.a monotonic, align 4
  %.not2 = icmp eq i32 %i.i, 1
  br i1 %.not2, label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noalias noundef dereferenceable_or_null(56) ptr @_Znwm(i64 noundef 56) #27 ; 11 uses
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  store i32 0, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.j, i64 40       ; 2 uses
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.j, i64 48       ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEEC2ERKSA_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %i.s, ptr %1, align 8
  %i.t = invoke noundef ptr @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable_or_null(48) %i.s, ptr noundef nonnull %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i.i.i unwind label %bb.l ; 3 uses

.noexc.i.i.i:                                     ; preds = %bb.e, %.noexc.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = getelementptr i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %.noexc.i.i.i, !llvm.loop !6

_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.w = getelementptr i8, ptr %.0.i.i7.i.i.i.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i8.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.g, label %bb.f, !llvm.loop !7

bb.g:                                             ; preds = %bb.f
  store ptr %.0.i.i7.i.i.i.i.i, ptr %i.o, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  store ptr %i.t, ptr %i.m, align 8
  br label %_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEEC2ERKSA_.exit

_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEEC2ERKSA_.exit: ; preds = %bb.g, %bb.d
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEEC2EPSC_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEEC2ERKSA_.exit
  %i.aa = atomicrmw add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEEC2EPSC_.exit

_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEEC2EPSC_.exit: ; preds = %_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEEC2ERKSA_.exit, %bb.h
  %i.ab = load ptr, ptr %0, align 8               ; 5 uses
  store ptr %i.j, ptr %0, align 8
  %.not.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i3, label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEEC2EPSC_.exit
  %i.ac = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4
  %.not2.i = icmp eq i32 %i.ac, 1
  br i1 %.not2.i, label %bb.j, label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = getelementptr i8, ptr %i.ab, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void @_ZNSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable_or_null(48) %i.ad, ptr noundef %i.af)
          to label %_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEED2Ev.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #31
  unreachable

_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEED2Ev.exit.i: ; preds = %bb.j
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 56) #29
  br label %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEED2Ev.exit

bb.l:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 56) #29
  resume { ptr, i32 } %i.ai

_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEED2Ev.exit: ; preds = %_ZN8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS1_ESaISt4pairIKS1_S2_EEEED2Ev.exit.i, %bb.i, %_ZN9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEEC2EPSC_.exit, %bb.c, %bb.b
end_hunk_2
begin_hunk_3_@_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10moveAppendEPS1_S3_:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.bf = getelementptr inbounds nuw i8, ptr %.010, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8
  store ptr %i.bg, ptr %i.be, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.bi = getelementptr inbounds nuw i8, ptr %.010, i64 144
  %i.bj = load i64, ptr %i.bi, align 8
  store i64 %i.bj, ptr %i.bh, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bl = getelementptr inbounds nuw i8, ptr %.010, i64 152 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  store ptr %i.bm, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %.010, i64 160
  %i.bp = load ptr, ptr %i.bo, align 8
  store ptr %i.bp, ptr %i.bn, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.br = getelementptr inbounds nuw i8, ptr %.010, i64 168
  %i.bs = load i64, ptr %i.br, align 8
  store i64 %i.bs, ptr %i.bq, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.bu = getelementptr inbounds nuw i8, ptr %.010, i64 176 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  store ptr %i.bv, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bx = getelementptr inbounds nuw i8, ptr %.010, i64 184
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.bw, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %.010, i64 192
  %i.cb = load i64, ptr %i.ca, align 8
  store i64 %i.cb, ptr %i.bz, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.cd = getelementptr inbounds nuw i8, ptr %.010, i64 200
  %i.ce = load i64, ptr %i.cd, align 8
  store i64 %i.ce, ptr %i.cc, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.cg = getelementptr inbounds nuw i8, ptr %.010, i64 208 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  store ptr %i.ch, ptr %i.cf, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.cj = getelementptr inbounds nuw i8, ptr %.010, i64 216
  %i.ck = load ptr, ptr %i.cj, align 8
  store ptr %i.ck, ptr %i.ci, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.cm = getelementptr inbounds nuw i8, ptr %.010, i64 224
  %i.cn = load i64, ptr %i.cm, align 8
  store i64 %i.cn, ptr %i.cl, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.cp = getelementptr inbounds nuw i8, ptr %.010, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cq = getelementptr i8, ptr %.010, i64 248    ; 2 uses
  %i.cr = load i64, ptr %i.e, align 8
  %i.cs = add i64 %i.cr, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.e, align 8
  %i.ct = icmp ult ptr %i.cq, %2
  br i1 %i.ct, label %bb.c, label %.loopexit, !llvm.loop !121

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN17QArrayDataPointerI11BannerSlideE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit, label %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit.i

_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 248
  %.neg4.i = sdiv exact i64 %i.j, -248
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %.neg3.i = sub i64 %i.c, %i.m
  %i.n = add i64 %.neg3.i, %.neg4.i
  br label %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit.i
  %.0.i24 = phi i64 [ %i.k, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = phi i64 [ %i.c, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i20 = phi i64 [ %i.n, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ]
  %i.p = icmp ne i32 %1, 0
  %.not = icmp slt i64 %.0.i24, %2
  %or.cond = or i1 %i.p, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit
  %i.q = getelementptr i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = mul i64 %i.r, 3
  %i.t = shl i64 %i.o, 1
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %.thread

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit
  %i.v = icmp ne i32 %1, 1
  %.not18 = icmp slt i64 %.0.i20, %2
  %or.cond19 = or i1 %i.v, %.not18
  br i1 %or.cond19, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = mul i64 %i.x, 3
  %i.z = icmp slt i64 %i.y, %i.o
  br i1 %i.z, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = add i64 %2, %i.x
  %i.ab = sub i64 %i.o, %i.aa
  %i.ac = sdiv i64 %i.ab, 2
  %i.ad = tail call noundef i64 @llvm.smax.i64(i64 %i.ac, i64 0)
  %i.ae = add i64 %i.ad, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.af = phi i64 [ %i.r, %bb.b ], [ %i.x, %bb.e ] ; 5 uses
  %.0 = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %i.ag = sub i64 %.0, %.0.i24                    ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %.idx.i = mul i64 %i.ag, 248                    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %.idx.i ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.al = icmp eq i64 %i.af, 0
  br i1 %i.al, label %_ZN9QtPrivate20q_relocate_overlap_nI11BannerSlidexEEvPT_T0_S3_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %.idx.i, 0
  %i.an = icmp eq ptr %i.ai, null
  %or.cond.i.i = or i1 %i.an, %i.am
  %i.ao = icmp eq ptr %i.aj, null
  %or.cond3.i.i = or i1 %i.ao, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI11BannerSlidexEEvPT_T0_S3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp ult ptr %i.aj, %i.ai
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN9QtPrivate30q_relocate_overlap_n_left_moveIP11BannerSlidexEEvT_T0_S3_(ptr noundef nonnull %i.ai, i64 noundef %i.af, ptr noundef nonnull %i.aj)
  br label %_ZN9QtPrivate20q_relocate_overlap_nI11BannerSlidexEEvPT_T0_S3_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aq = getelementptr [248 x i8], ptr %i.ai, i64 %i.af
  %i.ar = getelementptr [248 x i8], ptr %i.aj, i64 %i.af
  store ptr %i.aq, ptr %4, align 8
  store ptr %i.ar, ptr %5, align 8
  call void @_ZN9QtPrivate30q_relocate_overlap_n_left_moveISt16reverse_iteratorIP11BannerSlideExEEvT_T0_S5_(ptr noundef nonnull align 8 dead_on_return %4, i64 noundef %i.af, ptr noundef nonnull align 8 dead_on_return %5)
  br label %_ZN9QtPrivate20q_relocate_overlap_nI11BannerSlidexEEvPT_T0_S3_.exit.i

_ZN9QtPrivate20q_relocate_overlap_nI11BannerSlidexEEvPT_T0_S3_.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i21 = icmp eq ptr %3, null
  br i1 %.not.i21, label %_ZN17QArrayDataPointerI11BannerSlideE8relocateExPPKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI11BannerSlidexEEvPT_T0_S3_.exit.i
  %i.as = load ptr, ptr %3, align 8               ; 3 uses
  %i.at = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.au = load i64, ptr %i.ak, align 8
  %i.av = getelementptr [248 x i8], ptr %i.at, i64 %i.au
  %i.aw = icmp uge ptr %i.as, %i.at
  %i.ax = icmp ult ptr %i.as, %i.av
  %spec.select.i.i = and i1 %i.aw, %i.ax
  br i1 %spec.select.i.i, label %bb.l, label %_ZN17QArrayDataPointerI11BannerSlideE8relocateExPPKS0_.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr [248 x i8], ptr %i.as, i64 %i.ag
  store ptr %i.ay, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI11BannerSlideE8relocateExPPKS0_.exit

_ZN17QArrayDataPointerI11BannerSlideE8relocateExPPKS0_.exit: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI11BannerSlidexEEvPT_T0_S3_.exit.i, %bb.k, %bb.l
  store ptr %i.aj, ptr %i.ah, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %_ZN17QArrayDataPointerI11BannerSlideE8relocateExPPKS0_.exit
  %.015 = phi i1 [ true, %_ZN17QArrayDataPointerI11BannerSlideE8relocateExPPKS0_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: mustprogress noinline null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI11BannerSlideE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.QArrayDataPointer, align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN17QArrayDataPointerI11BannerSlideE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind nonnull writable sret(%struct.QArrayDataPointer) align 8 %4, ptr noundef align 8 dereferenceable(24) %0, i64 noundef %2, i32 noundef %1)
  %i.a = icmp sgt i64 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %or.cond22 = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond22, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_Z9qBadAllocv() #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17QArrayDataPointerI11BannerSlideED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not17 = icmp eq i64 %i.f, 0
  br i1 %.not17, label %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10copyAppendEPKS1_S4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = call i64 @llvm.smin.i64(i64 %2, i64 0)
  %spec.select = add i64 %i.f, %i.g               ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit: ; preds = %bb.f
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = icmp sgt i32 %i.i, 1
  %i.k = icmp ne ptr %3, null
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread, label %bb.h

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread: ; preds = %bb.f, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.idx = mul i64 %spec.select, 248               ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %.idx    ; 2 uses
  %i.o = icmp ne i64 %.idx, 0
  %i.p = icmp ult ptr %i.m, %i.n
  %or.cond28 = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond28, label %.lr.ph.i, label %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10copyAppendEPKS1_S4_.exit

.lr.ph.i:                                         ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre.i = load i64, ptr %i.q, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %i.r = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.v, %bb.g ]
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.t, %bb.g ] ; 2 uses
  %i.s = getelementptr [248 x i8], ptr %i.c, i64 %i.r
  call void @_ZN11BannerSlideC2ERKS_(ptr noundef align 8 dereferenceable_or_null(248) %i.s, ptr noundef align 8 dereferenceable(248) %.010.i) #28
  %i.t = getelementptr i8, ptr %.010.i, i64 248   ; 2 uses
  %i.u = load i64, ptr %i.q, align 16
  %i.v = add i64 %i.u, 1                          ; 2 uses
  store i64 %i.v, ptr %i.q, align 16
  %i.w = icmp ult ptr %i.t, %i.n
  br i1 %i.w, label %bb.g, label %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10copyAppendEPKS1_S4_.exit, !llvm.loop !8

bb.h:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit
  %i.x = getelementptr i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr [248 x i8], ptr %i.y, i64 %spec.select
  call void @_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10moveAppendEPS1_S3_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %4, ptr noundef %i.y, ptr noundef %i.z)
  br label %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10copyAppendEPKS1_S4_.exit

_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10copyAppendEPKS1_S4_.exit: ; preds = %bb.g, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread, %bb.h, %bb.e
  %i.aa = load ptr, ptr %0, align 8               ; 3 uses
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = load <2 x ptr>, ptr %4, align 16
  store ptr %i.aa, ptr %4, align 16
  store <2 x ptr> %i.ad, ptr %0, align 8
  store ptr %i.ac, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.af = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 16
  store i64 %i.ag, ptr %i.e, align 8
  store i64 %i.af, ptr %i.ae, align 16
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10copyAppendEPKS1_S4_.exit
  %i.ah = getelementptr i8, ptr %3, i64 8
  %i.ai = load <2 x ptr>, ptr %3, align 8
  %i.aj = load ptr, ptr %3, align 8
  store ptr %i.aa, ptr %3, align 8
  store ptr %i.ac, ptr %i.ah, align 8
  store <2 x ptr> %i.ai, ptr %4, align 16
  %i.ak = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  store i64 %i.af, ptr %i.ak, align 8
  store i64 %i.al, ptr %i.ae, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10copyAppendEPKS1_S4_.exit
  %i.am = phi ptr [ %i.aj, %bb.i ], [ %i.aa, %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10copyAppendEPKS1_S4_.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI11BannerSlideED2Ev.exit, label %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.i

_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.i: ; preds = %bb.j
  %i.an = atomicrmw add ptr %i.am, i32 -1 acq_rel, align 4
  %.not.i19 = icmp eq i32 %i.an, 1
  br i1 %.not.i19, label %bb.k, label %_ZN17QArrayDataPointerI11BannerSlideED2Ev.exit

bb.k:                                             ; preds = %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.i
  %i.ao = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ap = load i64, ptr %i.ae, align 16
  %.idx.i.i = mul i64 %i.ap, 248                  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.k ] ; 2 uses
  call void @_ZN11BannerSlideD2Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %.05.i.i.i.i.i) #28
  %i.ar = getelementptr i8, ptr %.05.i.i.i.i.i, i64 248 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.k
  %i.as = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.as, i64 noundef 248, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI11BannerSlideED2Ev.exit

_ZN17QArrayDataPointerI11BannerSlideED2Ev.exit:   ; preds = %bb.j, %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate30q_relocate_overlap_n_left_moveIP11BannerSlidexEEvT_T0_S3_(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.Destructor, align 8         ; 11 uses
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr [248 x i8], ptr %2, i64 %1 ; 5 uses
  %i.d = icmp ult ptr %0, %i.c                    ; 2 uses
  %i.e = select i1 %i.d, ptr %0, ptr %i.c         ; 2 uses
  %i.f = select i1 %i.d, ptr %i.c, ptr %0         ; 2 uses
  %.not11 = icmp eq ptr %2, %i.e
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi ptr [ %i.cs, %.lr.ph ], [ %2, %bb.a ] ; 30 uses
  %i.h = phi ptr [ %i.ct, %.lr.ph ], [ %0, %bb.a ] ; 31 uses
  %i.i = load i32, ptr %i.h, align 8
  store i32 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.p, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  store ptr %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aa = load i64, ptr %i.z, align 8
  store i64 %i.aa, ptr %i.y, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  store ptr %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 72
end_hunk_3
begin_hunk_4_@_ZN11BannerSlideaSEOS_:bb.a
  store ptr %i.bq, ptr %i.bn, align 8
  store ptr %i.bp, ptr %i.bo, align 8
  %i.br = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = load i64, ptr %i.bs, align 8
  store i64 %i.bu, ptr %i.br, align 8
  store i64 %i.bt, ptr %i.bs, align 8
  %i.bv = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8
  %i.by = load ptr, ptr %i.bw, align 8
  store ptr %i.by, ptr %i.bv, align 8
  store ptr %i.bx, ptr %i.bw, align 8
  %i.bz = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8
  %i.cc = load ptr, ptr %i.ca, align 8
  store ptr %i.cc, ptr %i.bz, align 8
  store ptr %i.cb, ptr %i.ca, align 8
  %i.cd = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cf = load i64, ptr %i.cd, align 8
  %i.cg = load i64, ptr %i.ce, align 8
  store i64 %i.cg, ptr %i.cd, align 8
  store i64 %i.cf, ptr %i.ce, align 8
  %i.ch = getelementptr i8, ptr %0, i64 176       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.cj = load ptr, ptr %i.ch, align 8
  %i.ck = load ptr, ptr %i.ci, align 8
  store ptr %i.ck, ptr %i.ch, align 8
  store ptr %i.cj, ptr %i.ci, align 8
  %i.cl = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.cn = load ptr, ptr %i.cl, align 8
  %i.co = load ptr, ptr %i.cm, align 8
  store ptr %i.co, ptr %i.cl, align 8
  store ptr %i.cn, ptr %i.cm, align 8
  %i.cp = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.cr = load i64, ptr %i.cp, align 8
  %i.cs = load i64, ptr %i.cq, align 8
  store i64 %i.cs, ptr %i.cp, align 8
  store i64 %i.cr, ptr %i.cq, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cv = load i64, ptr %i.cu, align 8
  store i64 %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.cy = load ptr, ptr %i.cw, align 8
  %i.cz = load ptr, ptr %i.cx, align 8
  store ptr %i.cz, ptr %i.cw, align 8
  store ptr %i.cy, ptr %i.cx, align 8
  %i.da = getelementptr i8, ptr %0, i64 216       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.dc = load ptr, ptr %i.da, align 8
  %i.dd = load ptr, ptr %i.db, align 8
  store ptr %i.dd, ptr %i.da, align 8
  store ptr %i.dc, ptr %i.db, align 8
  %i.de = getelementptr i8, ptr %0, i64 224       ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.dg = load i64, ptr %i.de, align 8
  %i.dh = load i64, ptr %i.df, align 8
  store i64 %i.dh, ptr %i.de, align 8
  store i64 %i.dg, ptr %i.df, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI11BannerSlideE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.g)
  %i.i = add i64 %.sroa.speculated45, %2
  %i.j = icmp eq i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = add i64 %i.m, 23
  %i.o = and i64 %i.n, -8
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o                       ; 2 uses
  br i1 %i.j, label %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit.i, label %bb.b

_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit.thread
  %.neg4.i.neg = sdiv exact i64 %i.q, 248
  %.neg3.i.neg = sub i64 %i.h, %i.g
  %.neg50 = add i64 %.neg3.i.neg, %.neg4.i.neg
  br label %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit.thread

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit.thread
  %.neg = sdiv exact i64 %i.q, -248
  br label %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit.thread

_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit.thread: ; preds = %bb.b, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit.i
  %.ph.neg = phi i64 [ %.neg, %bb.b ], [ %.neg50, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit.i ]
  %i.r = add i64 %i.i, %.ph.neg                   ; 2 uses
  %i.s = getelementptr i8, ptr %i.c, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 1
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit31, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 %i.g)
  br label %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit31: ; preds = %bb.c, %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit.thread, %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit
  %i.v = phi i64 [ %i.e, %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.c ], [ %i.r, %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit.thread ] ; 2 uses
  %i.w = phi i64 [ 0, %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.c ], [ %i.g, %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit.thread ]
  %i.x = icmp sle i64 %i.v, %i.w
  %i.y = zext i1 %i.x to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.z = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 248, i64 noundef 8, i64 noundef %i.v, i32 noundef %i.y) #28 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.z, i64 8) ]
  %i.aa = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not = icmp ne ptr %i.aa, null
  %i.ab = icmp ne ptr %i.z, null
  %i.ac = and i1 %i.ab, %.not
  br i1 %i.ac, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit31
  %i.ad = icmp eq i32 %3, 1
  br i1 %i.ad, label %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %1, align 8               ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK17QArrayDataPointerI11BannerSlideE5flagsEv.exit, label %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = add i64 %i.ai, 23
  %i.ak = and i64 %i.aj, -8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.al, %i.ak
  %i.an = getelementptr i8, ptr %i.z, i64 %i.am
  br label %bb.f

_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33: ; preds = %bb.d
  %i.ao = getelementptr i8, ptr %i.aa, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.b, align 8
  %i.ar = add i64 %2, %i.aq
  %i.as = sub i64 %i.ap, %i.ar
  %i.at = sdiv i64 %i.as, 2
  %i.au = call noundef i64 @llvm.smax.i64(i64 %i.at, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.av = getelementptr [248 x i8], ptr %i.z, i64 %i.au
  %i.aw = getelementptr [248 x i8], ptr %i.av, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerI11BannerSlideE5flagsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33
  %i.ax = phi ptr [ %i.an, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33.thread ], [ %i.aw, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ae, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33 ]
  %i.ay = getelementptr i8, ptr %.pr62, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  br label %_ZNK17QArrayDataPointerI11BannerSlideE5flagsEv.exit

_ZNK17QArrayDataPointerI11BannerSlideE5flagsEv.exit: ; preds = %bb.e, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33, %bb.f
  %i.ba = phi ptr [ %i.ax, %bb.f ], [ %i.aw, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33 ], [ %i.z, %bb.e ]
  %.sroa.0.0.i = phi i32 [ %i.az, %bb.f ], [ 0, %_ZNK17QArrayDataPointerI11BannerSlideE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.e ]
  %i.bb = getelementptr i8, ptr %i.aa, i64 4
  store i32 %.sroa.0.0.i, ptr %i.bb, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerI11BannerSlideE5flagsEv.exit
  %.sink = phi ptr [ %i.ba, %_ZNK17QArrayDataPointerI11BannerSlideE5flagsEv.exit ], [ %i.z, %_ZNK17QArrayDataPointerI11BannerSlideE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.aa, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bd, align 8
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare void @_Z9qBadAllocv() local_unnamed_addr #24

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN11BannerSlideC2ERKS_(ptr noundef align 8 dereferenceable_or_null(248) %0, ptr noundef align 8 dereferenceable(248) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  store i32 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  store ptr %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8
  store i64 %i.j, ptr %i.h, align 8
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN7QStringC2ERKS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = atomicrmw add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit

_ZN7QStringC2ERKS_.exit:                          ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  store ptr %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8
  store i64 %i.t, ptr %i.r, align 8
  %.not.i.i.i13 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i13, label %_ZN7QStringC2ERKS_.exit14, label %bb.c

bb.c:                                             ; preds = %_ZN7QStringC2ERKS_.exit
  %i.u = atomicrmw add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit14

_ZN7QStringC2ERKS_.exit14:                        ; preds = %_ZN7QStringC2ERKS_.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  store ptr %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.ab, align 8
  %.not.i.i.i15 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i15, label %_ZN7QStringC2ERKS_.exit16, label %bb.d

bb.d:                                             ; preds = %_ZN7QStringC2ERKS_.exit14
  %i.ae = atomicrmw add ptr %i.x, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit16

_ZN7QStringC2ERKS_.exit16:                        ; preds = %_ZN7QStringC2ERKS_.exit14, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = load i64, ptr %i.am, align 8
  store i64 %i.an, ptr %i.al, align 8
  %.not.i.i.i17 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i17, label %_ZN7QStringC2ERKS_.exit18, label %bb.e

bb.e:                                             ; preds = %_ZN7QStringC2ERKS_.exit16
  %i.ao = atomicrmw add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit18

_ZN7QStringC2ERKS_.exit18:                        ; preds = %_ZN7QStringC2ERKS_.exit16, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.au = load ptr, ptr %i.at, align 8
  store ptr %i.au, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ax = load i64, ptr %i.aw, align 8
  store i64 %i.ax, ptr %i.av, align 8
  %.not.i.i.i19 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i19, label %_ZN7QStringC2ERKS_.exit20, label %bb.f

bb.f:                                             ; preds = %_ZN7QStringC2ERKS_.exit18
  %i.ay = atomicrmw add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit20

_ZN7QStringC2ERKS_.exit20:                        ; preds = %_ZN7QStringC2ERKS_.exit18, %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.be = load ptr, ptr %i.bd, align 8
  store ptr %i.be, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bh = load i64, ptr %i.bg, align 8
  store i64 %i.bh, ptr %i.bf, align 8
  %.not.i.i.i21 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i21, label %_ZN7QStringC2ERKS_.exit22, label %bb.g

bb.g:                                             ; preds = %_ZN7QStringC2ERKS_.exit20
  %i.bi = atomicrmw add ptr %i.bb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit22

_ZN7QStringC2ERKS_.exit22:                        ; preds = %_ZN7QStringC2ERKS_.exit20, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bo = load ptr, ptr %i.bn, align 8
  store ptr %i.bo, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.br = load i64, ptr %i.bq, align 8
  store i64 %i.br, ptr %i.bp, align 8
  %.not.i.i.i23 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i23, label %_ZN7QStringC2ERKS_.exit24, label %bb.h

bb.h:                                             ; preds = %_ZN7QStringC2ERKS_.exit22
  %i.bs = atomicrmw add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit24

_ZN7QStringC2ERKS_.exit24:                        ; preds = %_ZN7QStringC2ERKS_.exit22, %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  store ptr %i.bv, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.bw, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cb = load i64, ptr %i.ca, align 8
  store i64 %i.cb, ptr %i.bz, align 8
  %.not.i.i.i25 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i25, label %_ZN7QStringC2ERKS_.exit26, label %bb.i

bb.i:                                             ; preds = %_ZN7QStringC2ERKS_.exit24
  %i.cc = atomicrmw add ptr %i.bv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit26

_ZN7QStringC2ERKS_.exit26:                        ; preds = %_ZN7QStringC2ERKS_.exit24, %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cf = load i64, ptr %i.ce, align 8
  store i64 %i.cf, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  store ptr %i.ci, ptr %i.cg, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cl = load ptr, ptr %i.ck, align 8
  store ptr %i.cl, ptr %i.cj, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.co = load i64, ptr %i.cn, align 8
  store i64 %i.co, ptr %i.cm, align 8
  %.not.i.i.i27 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i27, label %_ZN7QStringC2ERKS_.exit28, label %bb.j

bb.j:                                             ; preds = %_ZN7QStringC2ERKS_.exit26
  %i.cp = atomicrmw add ptr %i.ci, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit28

_ZN7QStringC2ERKS_.exit28:                        ; preds = %_ZN7QStringC2ERKS_.exit26, %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN4QMapI15BannerSlideType5QListI11BannerSlideEE6detachEv(ptr noundef align 8 dereferenceable_or_null(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
end_hunk_4
begin_hunk_5_@_ZN17QArrayDataPointerI6QColorE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_:bb.a

_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit: ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = add i64 %i.p, 23
  %i.r = and i64 %i.q, -8
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.s, %i.r
  %i.u = ashr exact i64 %i.t, 4                   ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  %i.x = add i64 %i.w, %i.u
  %i.y = sub i64 %i.m, %i.x
  %.not17 = icmp slt i64 %i.y, %2
  br i1 %.not17, label %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit.i, label %bb.j

_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
  %.not.i19 = icmp slt i64 %i.u, %2
  br i1 %.not.i19, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit.i
  %i.z = mul i64 %i.w, 3
  %i.aa = shl i64 %i.m, 1
  %i.ab = icmp slt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nsw i64 0, %i.u                     ; 2 uses
  %.idx.i.i = shl i64 %i.ac, 4                    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.o, i64 %.idx.i.i ; 3 uses
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %.idx.i.i, 0
  %i.ag = icmp eq ptr %i.o, null
  %or.cond.i.i.i = or i1 %i.af, %i.ag
  %i.ah = icmp eq ptr %i.ad, null
  %or.cond3.i.i.i = or i1 %i.ah, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = shl i64 %i.w, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ad, ptr noundef nonnull align 1 %i.o, i64 noundef %i.ai, i1 noundef false) #28
  br label %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i.i

_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.not.i21.i = icmp eq ptr %3, null
  br i1 %.not.i21.i, label %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, label %bb.h

bb.h:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i.i
  %i.aj = load ptr, ptr %3, align 8               ; 3 uses
  %i.ak = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.al = load i64, ptr %i.v, align 8
  %i.am = getelementptr [16 x i8], ptr %i.ak, i64 %i.al
  %i.an = icmp uge ptr %i.aj, %i.ak
  %i.ao = icmp ult ptr %i.aj, %i.am
  %spec.select.i.i.i = and i1 %i.an, %i.ao
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr [16 x i8], ptr %i.aj, i64 %i.ac
  store ptr %i.ap, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i.i, %bb.h, %bb.i
  store ptr %i.ad, ptr %i.n, align 8
  br label %bb.j

_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit: ; preds = %bb.c, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit
  %i.aq = tail call noundef zeroext i1 @_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  br i1 %i.aq, label %bb.j, label %.critedge

.critedge:                                        ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit.i, %bb.d, %bb.a, %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit, %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit
  tail call void @_ZN17QArrayDataPointerI6QColorE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit, %.critedge, %bb.b, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit, label %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i

_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.k
  %i.o = sub i64 %i.c, %i.n
  br label %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i
  %.0.i24 = phi i64 [ %i.k, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.p = phi i64 [ %i.c, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i20 = phi i64 [ %i.o, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ]
  %i.q = icmp ne i32 %1, 0
  %.not = icmp slt i64 %.0.i24, %2
  %or.cond = or i1 %i.q, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = mul i64 %i.s, 3
  %i.u = shl i64 %i.p, 1
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %.thread

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
  %i.w = icmp ne i32 %1, 1
  %.not18 = icmp slt i64 %.0.i20, %2
  %or.cond19 = or i1 %i.w, %.not18
  br i1 %or.cond19, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = mul i64 %i.y, 3
  %i.aa = icmp slt i64 %i.z, %i.p
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = add i64 %2, %i.y
  %i.ac = sub i64 %i.p, %i.ab
  %i.ad = sdiv i64 %i.ac, 2
  %i.ae = tail call noundef i64 @llvm.smax.i64(i64 %i.ad, i64 0)
  %i.af = add i64 %i.ae, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.ag = phi i64 [ %i.s, %bb.b ], [ %i.y, %bb.e ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %i.ah = sub i64 %.0, %.0.i24                    ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.idx.i = shl i64 %i.ah, 4                      ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = icmp eq i64 %i.ag, 0
  br i1 %i.am, label %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp eq i64 %.idx.i, 0
  %i.ao = icmp eq ptr %i.aj, null
  %or.cond.i.i = or i1 %i.ao, %i.an
  %i.ap = icmp eq ptr %i.ak, null
  %or.cond3.i.i = or i1 %i.ap, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = shl i64 %i.ag, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.aj, i64 noundef %i.aq, i1 noundef false) #28
  br label %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i

_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.not.i21 = icmp eq ptr %3, null
  br i1 %.not.i21, label %_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i
  %i.ar = load ptr, ptr %3, align 8               ; 3 uses
  %i.as = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.at = load i64, ptr %i.al, align 8
  %i.au = getelementptr [16 x i8], ptr %i.as, i64 %i.at
  %i.av = icmp uge ptr %i.ar, %i.as
  %i.aw = icmp ult ptr %i.ar, %i.au
  %spec.select.i.i = and i1 %i.av, %i.aw
  br i1 %spec.select.i.i, label %bb.j, label %_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr [16 x i8], ptr %i.ar, i64 %i.ah
  store ptr %i.ax, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit

_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i, %bb.i, %bb.j
  store ptr %i.ak, ptr %i.ai, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit
  %.015 = phi i1 [ true, %_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: mustprogress noinline null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI6QColorE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.QArrayDataPointer.16, align 16 ; 14 uses
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %3, null                     ; 3 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit

_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit: ; preds = %bb.b
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = icmp sgt i32 %i.d, 1
  %i.f = icmp slt i64 %2, 1
  %or.cond3.not = or i1 %i.f, %i.e
  br i1 %or.cond3.not, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit: ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = add i64 %i.i, 23
  %i.k = and i64 %i.j, -8
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.l, %i.k
  %i.n = ashr exact i64 %i.m, 4
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %2
  %i.r = add i64 %i.q, %i.n
  %i.s = tail call { ptr, ptr } @_ZN10QArrayData19reallocateUnalignedEPS_PvxxNS_16AllocationOptionE(ptr noundef nonnull %i.c, ptr noundef %i.h, i64 noundef 16, i64 noundef %i.r, i32 noundef 0) #28 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  %.not.i28 = icmp eq ptr %i.t, null
  br i1 %.not.i28, label %bb.c, label %_ZN9QtPrivate16QMovableArrayOpsI6QColorE10reallocateExN10QArrayData16AllocationOptionE.exit

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
  tail call void @_Z9qBadAllocv() #34
  unreachable

_ZN9QtPrivate16QMovableArrayOpsI6QColorE10reallocateExN10QArrayData16AllocationOptionE.exit: ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
  %i.u = extractvalue { ptr, ptr } %i.s, 0
  store ptr %i.u, ptr %0, align 8
  store ptr %i.t, ptr %i.g, align 8
  br label %bb.n

_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread: ; preds = %bb.b, %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN17QArrayDataPointerI6QColorE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind nonnull writable sret(%struct.QArrayDataPointer.16) align 8 %4, ptr noundef align 8 dereferenceable(24) %0, i64 noundef %2, i32 noundef %1)
  %i.v = icmp sgt i64 %2, 0
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 7 uses
  %.not = icmp eq ptr %i.x, null
  %or.cond42 = select i1 %i.v, i1 %.not, i1 false
  br i1 %or.cond42, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread
  invoke void @_Z9qBadAllocv() #34
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %4, align 16               ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit, label %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i

_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i:   ; preds = %bb.f
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %.not.i29 = icmp eq i32 %i.aa, 1
  br i1 %.not.i29, label %bb.g, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i
  %i.ab = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ab, i64 noundef 16, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI6QColorED2Ev.exit

_ZN17QArrayDataPointerI6QColorED2Ev.exit:         ; preds = %bb.f, %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread
  %i.ac = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.not26 = icmp eq i64 %i.ad, 0
  br i1 %.not26, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = call i64 @llvm.smin.i64(i64 %2, i64 0)
  %spec.select = add i64 %i.ad, %i.ae             ; 2 uses
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i30 = icmp eq ptr %i.af, null
  br i1 %.not.i30, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31.thread, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31

_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31: ; preds = %bb.i
  %i.ag = load atomic i32, ptr %i.af monotonic, align 4
  %i.ah = icmp sgt i32 %i.ag, 1
  %or.cond5 = or i1 %i.b, %i.ah
  br i1 %or.cond5, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31.thread, label %bb.j

_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31.thread: ; preds = %bb.i, %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31
  %i.ai = getelementptr i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 5 uses
  %.idx43 = shl i64 %spec.select, 4               ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx43 ; 2 uses
  %i.al = icmp ne i64 %.idx43, 0
  %i.am = icmp ult ptr %i.aj, %i.ak
  %or.cond58 = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond58, label %.lr.ph.i, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit

.lr.ph.i:                                         ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31.thread
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %.pre.i = load i64, ptr %i.an, align 16         ; 2 uses
  %i.ao = add i64 %.idx43, -16                    ; 2 uses
  %i.ap = and i64 %i.ao, 16
  %lcmp.mod65.not.not = icmp eq i64 %i.ap, 0
  br i1 %lcmp.mod65.not.not, label %.prol.loopexit63.unr-lcssa, label %.prol.loopexit63

.prol.loopexit63.unr-lcssa:                       ; preds = %.lr.ph.i
  %i.aq = getelementptr [16 x i8], ptr %i.x, i64 %.pre.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.aq, ptr noundef align 4 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ar = getelementptr i8, ptr %i.aj, i64 16
  %i.as = load i64, ptr %i.an, align 16
  %i.at = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.at, ptr %i.an, align 16
  br label %.prol.loopexit63

.prol.loopexit63:                                 ; preds = %.prol.loopexit63.unr-lcssa, %.lr.ph.i
  %.unr66 = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.at, %.prol.loopexit63.unr-lcssa ]
  %.010.i.unr = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ar, %.prol.loopexit63.unr-lcssa ]
  %i.au = icmp eq i64 %i.ao, 0
  br i1 %i.au, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit63, %.lr.ph.i.new
  %i.av = phi i64 [ %i.bd, %.lr.ph.i.new ], [ %.unr66, %.prol.loopexit63 ]
  %.010.i = phi ptr [ %i.bb, %.lr.ph.i.new ], [ %.010.i.unr, %.prol.loopexit63 ] ; 3 uses
  %i.aw = getelementptr [16 x i8], ptr %i.x, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.aw, ptr noundef align 4 dereferenceable(16) %.010.i, i64 16, i1 false)
  %i.ax = getelementptr i8, ptr %.010.i, i64 16
  %i.ay = load i64, ptr %i.an, align 16
  %i.az = add i64 %i.ay, 1                        ; 2 uses
  store i64 %i.az, ptr %i.an, align 16
  %i.ba = getelementptr [16 x i8], ptr %i.x, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.ba, ptr noundef align 4 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.bb = getelementptr i8, ptr %.010.i, i64 32   ; 2 uses
  %i.bc = load i64, ptr %i.an, align 16
  %i.bd = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bd, ptr %i.an, align 16
  %i.be = icmp ult ptr %i.bb, %i.ak
  br i1 %i.be, label %.lr.ph.i.new, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit, !llvm.loop !138

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31
  %i.bf = getelementptr i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8            ; 5 uses
  %.idx = shl i64 %spec.select, 4                 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 %.idx  ; 2 uses
  %i.bi = icmp ne i64 %.idx, 0
  %i.bj = icmp ult ptr %i.bg, %i.bh
  %or.cond59 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond59, label %.lr.ph.i32, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit

.lr.ph.i32:                                       ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %.pre.i33 = load i64, ptr %i.bk, align 16       ; 2 uses
  %i.bl = add i64 %.idx, -16                      ; 2 uses
  %i.bm = and i64 %i.bl, 16
  %lcmp.mod.not.not = icmp eq i64 %i.bm, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i32
  %i.bn = getelementptr [16 x i8], ptr %i.x, i64 %.pre.i33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.bn, ptr noundef align 4 dereferenceable(16) %i.bg, i64 16, i1 false)
  %i.bo = getelementptr i8, ptr %i.bg, i64 16
  %i.bp = load i64, ptr %i.bk, align 16
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  store i64 %i.bq, ptr %i.bk, align 16
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i32
  %.unr = phi i64 [ %.pre.i33, %.lr.ph.i32 ], [ %i.bq, %.prol.loopexit.unr-lcssa ]
  %.010.i34.unr = phi ptr [ %i.bg, %.lr.ph.i32 ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %i.br = icmp eq i64 %i.bl, 0
  br i1 %i.br, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit, label %.lr.ph.i32.new

.lr.ph.i32.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i32.new
  %i.bs = phi i64 [ %i.ca, %.lr.ph.i32.new ], [ %.unr, %.prol.loopexit ]
  %.010.i34 = phi ptr [ %i.by, %.lr.ph.i32.new ], [ %.010.i34.unr, %.prol.loopexit ] ; 3 uses
  %i.bt = getelementptr [16 x i8], ptr %i.x, i64 %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.bt, ptr noundef align 4 dereferenceable(16) %.010.i34, i64 16, i1 false)
  %i.bu = getelementptr i8, ptr %.010.i34, i64 16
  %i.bv = load i64, ptr %i.bk, align 16
  %i.bw = add i64 %i.bv, 1                        ; 2 uses
  store i64 %i.bw, ptr %i.bk, align 16
  %i.bx = getelementptr [16 x i8], ptr %i.x, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.bx, ptr noundef align 4 dereferenceable(16) %i.bu, i64 16, i1 false)
  %i.by = getelementptr i8, ptr %.010.i34, i64 32 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN17QArrayDataPointerI15BannerSlideTypeE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_:bb.a

_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit: ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = add i64 %i.p, 23
  %i.r = and i64 %i.q, -8
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.s, %i.r
  %i.u = ashr exact i64 %i.t, 2                   ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  %i.x = add i64 %i.w, %i.u
  %i.y = sub i64 %i.m, %i.x
  %.not17 = icmp slt i64 %i.y, %2
  br i1 %.not17, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit.i, label %bb.j

_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit
  %.not.i19 = icmp slt i64 %i.u, %2
  br i1 %.not.i19, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit.i
  %i.z = mul i64 %i.w, 3
  %i.aa = shl i64 %i.m, 1
  %i.ab = icmp slt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nsw i64 0, %i.u                     ; 2 uses
  %.idx.i.i = shl i64 %i.ac, 2                    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.o, i64 %.idx.i.i ; 3 uses
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %.idx.i.i, 0
  %i.ag = icmp eq ptr %i.o, null
  %or.cond.i.i.i = or i1 %i.af, %i.ag
  %i.ah = icmp eq ptr %i.ad, null
  %or.cond3.i.i.i = or i1 %i.ah, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = shl i64 %i.w, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ad, ptr noundef nonnull align 1 %i.o, i64 noundef %i.ai, i1 noundef false) #28
  br label %_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i.i

_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.not.i21.i = icmp eq ptr %3, null
  br i1 %.not.i21.i, label %_ZN17QArrayDataPointerI15BannerSlideTypeE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, label %bb.h

bb.h:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i.i
  %i.aj = load ptr, ptr %3, align 8               ; 3 uses
  %i.ak = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.al = load i64, ptr %i.v, align 8
  %i.am = getelementptr [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = icmp uge ptr %i.aj, %i.ak
  %i.ao = icmp ult ptr %i.aj, %i.am
  %spec.select.i.i.i = and i1 %i.an, %i.ao
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZN17QArrayDataPointerI15BannerSlideTypeE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr [4 x i8], ptr %i.aj, i64 %i.ac
  store ptr %i.ap, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI15BannerSlideTypeE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

_ZN17QArrayDataPointerI15BannerSlideTypeE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i.i, %bb.h, %bb.i
  store ptr %i.ad, ptr %i.n, align 8
  br label %bb.j

_ZN17QArrayDataPointerI15BannerSlideTypeE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit: ; preds = %bb.c, %_ZNK17QArrayDataPointerI15BannerSlideTypeE16freeSpaceAtBeginEv.exit
  %i.aq = tail call noundef zeroext i1 @_ZN17QArrayDataPointerI15BannerSlideTypeE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  br i1 %i.aq, label %bb.j, label %.critedge

.critedge:                                        ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit.i, %bb.d, %bb.a, %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit, %_ZN17QArrayDataPointerI15BannerSlideTypeE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit
  tail call void @_ZN17QArrayDataPointerI15BannerSlideTypeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI15BannerSlideTypeE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, %_ZN17QArrayDataPointerI15BannerSlideTypeE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit, %.critedge, %bb.b, %_ZNK17QArrayDataPointerI15BannerSlideTypeE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN17QArrayDataPointerI15BannerSlideTypeE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE16freeSpaceAtBeginEv.exit.i

_ZNK17QArrayDataPointerI15BannerSlideTypeE16freeSpaceAtBeginEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.k
  %i.o = sub i64 %i.c, %i.n
  br label %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI15BannerSlideTypeE16freeSpaceAtBeginEv.exit.i
  %.0.i24 = phi i64 [ %i.k, %_ZNK17QArrayDataPointerI15BannerSlideTypeE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.p = phi i64 [ %i.c, %_ZNK17QArrayDataPointerI15BannerSlideTypeE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i20 = phi i64 [ %i.o, %_ZNK17QArrayDataPointerI15BannerSlideTypeE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ]
  %i.q = icmp ne i32 %1, 0
  %.not = icmp slt i64 %.0.i24, %2
  %or.cond = or i1 %i.q, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = mul i64 %i.s, 3
  %i.u = shl i64 %i.p, 1
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %.thread

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit
  %i.w = icmp ne i32 %1, 1
  %.not18 = icmp slt i64 %.0.i20, %2
  %or.cond19 = or i1 %i.w, %.not18
  br i1 %or.cond19, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = mul i64 %i.y, 3
  %i.aa = icmp slt i64 %i.z, %i.p
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = add i64 %2, %i.y
  %i.ac = sub i64 %i.p, %i.ab
  %i.ad = sdiv i64 %i.ac, 2
  %i.ae = tail call noundef i64 @llvm.smax.i64(i64 %i.ad, i64 0)
  %i.af = add i64 %i.ae, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.ag = phi i64 [ %i.s, %bb.b ], [ %i.y, %bb.e ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %i.ah = sub i64 %.0, %.0.i24                    ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.idx.i = shl i64 %i.ah, 2                      ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = icmp eq i64 %i.ag, 0
  br i1 %i.am, label %_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp eq i64 %.idx.i, 0
  %i.ao = icmp eq ptr %i.aj, null
  %or.cond.i.i = or i1 %i.ao, %i.an
  %i.ap = icmp eq ptr %i.ak, null
  %or.cond3.i.i = or i1 %i.ap, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = shl i64 %i.ag, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.aj, i64 noundef %i.aq, i1 noundef false) #28
  br label %_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i

_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.not.i21 = icmp eq ptr %3, null
  br i1 %.not.i21, label %_ZN17QArrayDataPointerI15BannerSlideTypeE8relocateExPPKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i
  %i.ar = load ptr, ptr %3, align 8               ; 3 uses
  %i.as = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.at = load i64, ptr %i.al, align 8
  %i.au = getelementptr [4 x i8], ptr %i.as, i64 %i.at
  %i.av = icmp uge ptr %i.ar, %i.as
  %i.aw = icmp ult ptr %i.ar, %i.au
  %spec.select.i.i = and i1 %i.av, %i.aw
  br i1 %spec.select.i.i, label %bb.j, label %_ZN17QArrayDataPointerI15BannerSlideTypeE8relocateExPPKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr [4 x i8], ptr %i.ar, i64 %i.ah
  store ptr %i.ax, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI15BannerSlideTypeE8relocateExPPKS0_.exit

_ZN17QArrayDataPointerI15BannerSlideTypeE8relocateExPPKS0_.exit: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI15BannerSlideTypexEEvPT_T0_S3_.exit.i, %bb.i, %bb.j
  store ptr %i.ak, ptr %i.ai, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %_ZN17QArrayDataPointerI15BannerSlideTypeE8relocateExPPKS0_.exit
  %.015 = phi i1 [ true, %_ZN17QArrayDataPointerI15BannerSlideTypeE8relocateExPPKS0_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: mustprogress noinline null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI15BannerSlideTypeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.QArrayDataPointer.20, align 16 ; 13 uses
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %3, null                     ; 3 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit

_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit: ; preds = %bb.b
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = icmp sgt i32 %i.d, 1
  %i.f = icmp slt i64 %2, 1
  %or.cond3.not = or i1 %i.f, %i.e
  br i1 %or.cond3.not, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit: ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = add i64 %i.i, 23
  %i.k = and i64 %i.j, -8
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.l, %i.k
  %i.n = ashr exact i64 %i.m, 2
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %2
  %i.r = add i64 %i.q, %i.n
  %i.s = tail call { ptr, ptr } @_ZN10QArrayData19reallocateUnalignedEPS_PvxxNS_16AllocationOptionE(ptr noundef nonnull %i.c, ptr noundef %i.h, i64 noundef 4, i64 noundef %i.r, i32 noundef 0) #28 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  %.not.i28 = icmp eq ptr %i.t, null
  br i1 %.not.i28, label %bb.c, label %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10reallocateExN10QArrayData16AllocationOptionE.exit

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit
  tail call void @_Z9qBadAllocv() #34
  unreachable

_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10reallocateExN10QArrayData16AllocationOptionE.exit: ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE14freeSpaceAtEndEv.exit
  %i.u = extractvalue { ptr, ptr } %i.s, 0
  store ptr %i.u, ptr %0, align 8
  store ptr %i.t, ptr %i.g, align 8
  br label %bb.n

_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit.thread: ; preds = %bb.b, %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN17QArrayDataPointerI15BannerSlideTypeE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind nonnull writable sret(%struct.QArrayDataPointer.20) align 8 %4, ptr noundef align 8 dereferenceable(24) %0, i64 noundef %2, i32 noundef %1)
  %i.v = icmp sgt i64 %2, 0
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not = icmp eq ptr %i.x, null
  %or.cond39 = select i1 %i.v, i1 %.not, i1 false
  br i1 %or.cond39, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit.thread
  invoke void @_Z9qBadAllocv() #34
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %4, align 16               ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI15BannerSlideTypeED2Ev.exit, label %_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i

_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i: ; preds = %bb.f
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %.not.i29 = icmp eq i32 %i.aa, 1
  br i1 %.not.i29, label %bb.g, label %_ZN17QArrayDataPointerI15BannerSlideTypeED2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i
  %i.ab = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ab, i64 noundef 4, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI15BannerSlideTypeED2Ev.exit

_ZN17QArrayDataPointerI15BannerSlideTypeED2Ev.exit: ; preds = %bb.f, %_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit.thread
  %i.ac = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.not26 = icmp eq i64 %i.ad, 0
  br i1 %.not26, label %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = call i64 @llvm.smin.i64(i64 %2, i64 0)
  %spec.select = add i64 %i.ad, %i.ae             ; 2 uses
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i30 = icmp eq ptr %i.af, null
  br i1 %.not.i30, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit31.thread, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit31

_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit31: ; preds = %bb.i
  %i.ag = load atomic i32, ptr %i.af monotonic, align 4
  %i.ah = icmp sgt i32 %i.ag, 1
  %or.cond5 = or i1 %i.b, %i.ah
  br i1 %or.cond5, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit31.thread, label %bb.j

_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit31.thread: ; preds = %bb.i, %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit31
  %.idx40 = shl i64 %spec.select, 2               ; 2 uses
  %i.ai = icmp eq i64 %.idx40, 0
  br i1 %i.ai, label %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit, label %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit.sink.split

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit31
  %.idx = shl i64 %spec.select, 2                 ; 2 uses
  %i.aj = icmp eq i64 %.idx, 0
  br i1 %i.aj, label %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit, label %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit.sink.split

_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit.sink.split: ; preds = %bb.j, %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit31.thread
  %.idx.sink55 = phi i64 [ %.idx40, %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit31.thread ], [ %.idx, %bb.j ] ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.an = load i64, ptr %i.am, align 16
  %i.ao = getelementptr [4 x i8], ptr %i.x, i64 %i.an
  %i.ap = ashr exact i64 %.idx.sink55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ao, ptr noundef align 1 %i.al, i64 noundef %.idx.sink55, i1 noundef false) #28
  %i.aq = load i64, ptr %i.am, align 16
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.am, align 16
  br label %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit

_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit: ; preds = %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit.sink.split, %bb.j, %_ZNK17QArrayDataPointerI15BannerSlideTypeE11needsDetachEv.exit31.thread, %bb.h
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = load <2 x ptr>, ptr %4, align 16
  store ptr %i.as, ptr %4, align 16
  store <2 x ptr> %i.av, ptr %0, align 8
  store ptr %i.au, ptr %i.w, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ax = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 16
  store i64 %i.ay, ptr %i.ac, align 8
  store i64 %i.ax, ptr %i.aw, align 16
  br i1 %i.b, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit
  %i.az = getelementptr i8, ptr %3, i64 8
  %i.ba = load <2 x ptr>, ptr %3, align 8
  %i.bb = load ptr, ptr %3, align 8
  store ptr %i.as, ptr %3, align 8
  store ptr %i.au, ptr %i.az, align 8
  store <2 x ptr> %i.ba, ptr %4, align 16
  %i.bc = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.ax, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.aw, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit
  %i.be = phi ptr [ %i.bb, %bb.k ], [ %i.as, %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10copyAppendEPKS1_S4_.exit ] ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.be, null
  br i1 %.not.i.i32, label %_ZN17QArrayDataPointerI15BannerSlideTypeED2Ev.exit35, label %_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i33

_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i33: ; preds = %bb.l
  %i.bf = atomicrmw add ptr %i.be, i32 -1 acq_rel, align 4
  %.not.i34 = icmp eq i32 %i.bf, 1
  br i1 %.not.i34, label %bb.m, label %_ZN17QArrayDataPointerI15BannerSlideTypeED2Ev.exit35

bb.m:                                             ; preds = %_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i33
  %i.bg = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bg, i64 noundef 4, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI15BannerSlideTypeED2Ev.exit35

_ZN17QArrayDataPointerI15BannerSlideTypeED2Ev.exit35: ; preds = %bb.l, %_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i33, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.n

bb.n:                                             ; preds = %_ZN17QArrayDataPointerI15BannerSlideTypeED2Ev.exit35, %_ZN9QtPrivate12QPodArrayOpsI15BannerSlideTypeE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI15BannerSlideTypeE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.20) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerI15BannerSlideTypeE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerI15BannerSlideTypeE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerI15BannerSlideTypeE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI15BannerSlideTypeE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.g)
  %i.i = add i64 %.sroa.speculated45, %2
end_hunk_6
begin_hunk_7_@_ZN17QArrayDataPointerI7QStringE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_:bb.a
  %i.l = getelementptr i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = add i64 %i.p, 23
  %i.r = and i64 %i.q, -8                         ; 2 uses
  %i.s = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.t = sub i64 %i.s, %i.r                       ; 3 uses
  %.neg4.i = sdiv exact i64 %i.t, -24
  %i.u = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 4 uses
  %.neg3.i = sub i64 %i.m, %i.v
  %i.w = add i64 %.neg3.i, %.neg4.i
  %.not17 = icmp slt i64 %i.w, %2
  br i1 %.not17, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i, label %bb.j

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit
  %i.x = sdiv exact i64 %i.t, 24                  ; 2 uses
  %.not.i19 = icmp slt i64 %i.x, %2
  br i1 %.not.i19, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i
  %i.y = mul i64 %i.v, 3
  %i.z = shl i64 %i.m, 1
  %i.aa = icmp slt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nsw i64 0, %i.x
  %.idx.i.i = sub i64 0, %i.t
  %i.ac = getelementptr i8, ptr %i.o, i64 %.idx.i.i ; 3 uses
  %i.ad = icmp eq i64 %i.v, 0
  br i1 %i.ad, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i64 %i.r, %i.s
  %i.af = icmp eq ptr %i.o, null
  %or.cond.i.i.i = or i1 %i.ae, %i.af
  %i.ag = icmp eq ptr %i.ac, null
  %or.cond3.i.i.i = or i1 %i.ag, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = mul i64 %i.v, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ac, ptr noundef nonnull align 1 %i.o, i64 noundef %i.ah, i1 noundef false) #28
  br label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i

_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.not.i21.i = icmp eq ptr %3, null
  br i1 %.not.i21.i, label %_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, label %bb.h

bb.h:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %i.aj = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ak = load i64, ptr %i.u, align 8
  %i.al = getelementptr [24 x i8], ptr %i.aj, i64 %i.ak
  %i.am = icmp uge ptr %i.ai, %i.aj
  %i.an = icmp ult ptr %i.ai, %i.al
  %spec.select.i.i.i = and i1 %i.am, %i.an
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr [24 x i8], ptr %i.ai, i64 %i.ab
  store ptr %i.ao, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i, %bb.h, %bb.i
  store ptr %i.ac, ptr %i.n, align 8
  br label %bb.j

_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit: ; preds = %bb.c, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit
  %i.ap = tail call noundef zeroext i1 @_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  br i1 %i.ap, label %bb.j, label %.critedge

.critedge:                                        ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i, %bb.d, %bb.a, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit, %_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit
  tail call void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, %_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit, %.critedge, %bb.b, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit, label %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit.i

_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 24
  %.neg4.i = sdiv exact i64 %i.j, -24
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %.neg3.i = sub i64 %i.c, %i.m
  %i.n = add i64 %.neg3.i, %.neg4.i
  br label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit.i
  %.0.i24 = phi i64 [ %i.k, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = phi i64 [ %i.c, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i20 = phi i64 [ %i.n, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ]
  %i.p = icmp ne i32 %1, 0
  %.not = icmp slt i64 %.0.i24, %2
  %or.cond = or i1 %i.p, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit
  %i.q = getelementptr i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = mul i64 %i.r, 3
  %i.t = shl i64 %i.o, 1
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %.thread

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit
  %i.v = icmp ne i32 %1, 1
  %.not18 = icmp slt i64 %.0.i20, %2
  %or.cond19 = or i1 %i.v, %.not18
  br i1 %or.cond19, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = mul i64 %i.x, 3
  %i.z = icmp slt i64 %i.y, %i.o
  br i1 %i.z, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = add i64 %2, %i.x
  %i.ab = sub i64 %i.o, %i.aa
  %i.ac = sdiv i64 %i.ab, 2
  %i.ad = tail call noundef i64 @llvm.smax.i64(i64 %i.ac, i64 0)
  %i.ae = add i64 %i.ad, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.af = phi i64 [ %i.r, %bb.b ], [ %i.x, %bb.e ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %i.ag = sub i64 %.0, %.0.i24                    ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.idx.i = mul i64 %i.ag, 24                     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %.idx.i ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 16
  %i.al = icmp eq i64 %i.af, 0
  br i1 %i.al, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %.idx.i, 0
  %i.an = icmp eq ptr %i.ai, null
  %or.cond.i.i = or i1 %i.an, %i.am
  %i.ao = icmp eq ptr %i.aj, null
  %or.cond3.i.i = or i1 %i.ao, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = mul i64 %i.af, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.aj, ptr noundef nonnull align 1 %i.ai, i64 noundef %i.ap, i1 noundef false) #28
  br label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i

_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.not.i21 = icmp eq ptr %3, null
  br i1 %.not.i21, label %_ZN17QArrayDataPointerI7QStringE8relocateExPPKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i
  %i.aq = load ptr, ptr %3, align 8               ; 3 uses
  %i.ar = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.as = load i64, ptr %i.ak, align 8
  %i.at = getelementptr [24 x i8], ptr %i.ar, i64 %i.as
  %i.au = icmp uge ptr %i.aq, %i.ar
  %i.av = icmp ult ptr %i.aq, %i.at
  %spec.select.i.i = and i1 %i.au, %i.av
  br i1 %spec.select.i.i, label %bb.j, label %_ZN17QArrayDataPointerI7QStringE8relocateExPPKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr [24 x i8], ptr %i.aq, i64 %i.ag
  store ptr %i.aw, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI7QStringE8relocateExPPKS0_.exit

_ZN17QArrayDataPointerI7QStringE8relocateExPPKS0_.exit: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i, %bb.i, %bb.j
  store ptr %i.aj, ptr %i.ah, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %_ZN17QArrayDataPointerI7QStringE8relocateExPPKS0_.exit
  %.015 = phi i1 [ true, %_ZN17QArrayDataPointerI7QStringE8relocateExPPKS0_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: mustprogress noinline null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.QArrayDataPointer.32, align 16 ; 13 uses
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %3, null                     ; 3 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit: ; preds = %bb.b
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = icmp sgt i32 %i.d, 1
  %i.f = icmp slt i64 %2, 1
  %or.cond3.not = or i1 %i.f, %i.e
  br i1 %or.cond3.not, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = add i64 %i.i, 23
  %i.k = and i64 %i.j, -8
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.l, %i.k
  %.neg4.i.neg = sdiv exact i64 %i.m, 24
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, %2
  %i.q = add i64 %i.p, %.neg4.i.neg
  %i.r = tail call { ptr, ptr } @_ZN10QArrayData19reallocateUnalignedEPS_PvxxNS_16AllocationOptionE(ptr noundef nonnull %i.c, ptr noundef %i.h, i64 noundef 24, i64 noundef %i.q, i32 noundef 0) #28 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 1        ; 2 uses
  %.not.i28 = icmp eq ptr %i.s, null
  br i1 %.not.i28, label %bb.c, label %_ZN9QtPrivate16QMovableArrayOpsI7QStringE10reallocateExN10QArrayData16AllocationOptionE.exit

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit
  tail call void @_Z9qBadAllocv() #34
  unreachable

_ZN9QtPrivate16QMovableArrayOpsI7QStringE10reallocateExN10QArrayData16AllocationOptionE.exit: ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit
  %i.t = extractvalue { ptr, ptr } %i.r, 0
  store ptr %i.t, ptr %0, align 8
  store ptr %i.s, ptr %i.g, align 8
  br label %bb.q

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread: ; preds = %bb.b, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN17QArrayDataPointerI7QStringE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind nonnull writable sret(%struct.QArrayDataPointer.32) align 8 %4, ptr noundef align 8 dereferenceable(24) %0, i64 noundef %2, i32 noundef %1)
  %i.u = icmp sgt i64 %2, 0
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not = icmp eq ptr %i.w, null
  %or.cond38 = select i1 %i.u, i1 %.not, i1 false
  br i1 %or.cond38, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread
  invoke void @_Z9qBadAllocv() #34
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17QArrayDataPointerI7QStringED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread
  %i.y = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not26 = icmp eq i64 %i.z, 0
  br i1 %.not26, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10copyAppendEPKS1_S4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call i64 @llvm.smin.i64(i64 %2, i64 0)
  %spec.select = add i64 %i.z, %i.aa              ; 2 uses
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i29 = icmp eq ptr %i.ab, null
  br i1 %.not.i29, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit30.thread, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit30

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit30: ; preds = %bb.h
  %i.ac = load atomic i32, ptr %i.ab monotonic, align 4
  %i.ad = icmp sgt i32 %i.ac, 1
  %or.cond5 = or i1 %i.b, %i.ad
  br i1 %or.cond5, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit30.thread, label %bb.k

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit30.thread: ; preds = %bb.h, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit30
  %i.ae = getelementptr i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.idx39 = mul i64 %spec.select, 24              ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 %.idx39 ; 2 uses
  %i.ah = icmp ne i64 %.idx39, 0
  %i.ai = icmp ult ptr %i.af, %i.ag
  %or.cond57 = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond57, label %.lr.ph.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10copyAppendEPKS1_S4_.exit

.lr.ph.i:                                         ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit30.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre.i = load i64, ptr %i.aj, align 16
  br label %bb.i

bb.i:                                             ; preds = %_ZN7QStringC2ERKS_.exit.i, %.lr.ph.i
  %i.ak = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.aw, %_ZN7QStringC2ERKS_.exit.i ]
  %.010.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.au, %_ZN7QStringC2ERKS_.exit.i ] ; 4 uses
  %i.al = getelementptr [24 x i8], ptr %i.w, i64 %i.ak ; 3 uses
  %i.am = load ptr, ptr %.010.i, align 8          ; 3 uses
  store ptr %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  store ptr %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %i.aq, align 8
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringC2ERKS_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = atomicrmw add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit.i

_ZN7QStringC2ERKS_.exit.i:                        ; preds = %bb.j, %bb.i
  %i.au = getelementptr i8, ptr %.010.i, i64 24   ; 2 uses
  %i.av = load i64, ptr %i.aj, align 16
  %i.aw = add i64 %i.av, 1                        ; 2 uses
  store i64 %i.aw, ptr %i.aj, align 16
  %i.ax = icmp ult ptr %i.au, %i.ag
  br i1 %i.ax, label %bb.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10copyAppendEPKS1_S4_.exit, !llvm.loop !142

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit30
  %i.ay = getelementptr i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.idx = mul i64 %spec.select, 24                ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 %.idx  ; 2 uses
  %i.bb = icmp ne i64 %.idx, 0
  %i.bc = icmp ult ptr %i.az, %i.ba
  %or.cond58 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond58, label %.lr.ph.i31, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10copyAppendEPKS1_S4_.exit

.lr.ph.i31:                                       ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre.i32 = load i64, ptr %i.bd, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i31
  %i.be = phi i64 [ %.pre.i32, %.lr.ph.i31 ], [ %i.bp, %bb.l ]
  %.010.i33 = phi ptr [ %i.az, %.lr.ph.i31 ], [ %i.bn, %bb.l ] ; 5 uses
  %i.bf = getelementptr [24 x i8], ptr %i.w, i64 %i.be ; 3 uses
  %i.bg = load ptr, ptr %.010.i33, align 8
  store ptr %i.bg, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i33, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i33, i64 16
  %i.bm = load i64, ptr %i.bl, align 8
  store i64 %i.bm, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %.010.i33, i8 0, i64 24, i1 false)
  %i.bn = getelementptr i8, ptr %.010.i33, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bd, align 16
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  store i64 %i.bp, ptr %i.bd, align 16
  %i.bq = icmp ult ptr %i.bn, %i.ba
  br i1 %i.bq, label %bb.l, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10copyAppendEPKS1_S4_.exit, !llvm.loop !143

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10copyAppendEPKS1_S4_.exit: ; preds = %bb.l, %_ZN7QStringC2ERKS_.exit.i, %bb.k, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit30.thread, %bb.g
  %i.br = load ptr, ptr %0, align 8               ; 3 uses
  %i.bs = getelementptr i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = load <2 x ptr>, ptr %4, align 16
  store ptr %i.br, ptr %4, align 16
  store <2 x ptr> %i.bu, ptr %0, align 8
  store ptr %i.bt, ptr %i.v, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bw = load i64, ptr %i.y, align 8             ; 2 uses
  %i.bx = load i64, ptr %i.bv, align 16
  store i64 %i.bx, ptr %i.y, align 8
  store i64 %i.bw, ptr %i.bv, align 16
  br i1 %i.b, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10copyAppendEPKS1_S4_.exit
  %i.by = getelementptr i8, ptr %3, i64 8
  %i.bz = load <2 x ptr>, ptr %3, align 8
  %i.ca = load ptr, ptr %3, align 8
  store ptr %i.br, ptr %3, align 8
  store ptr %i.bt, ptr %i.by, align 8
  store <2 x ptr> %i.bz, ptr %4, align 16
  %i.cb = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8
  store i64 %i.bw, ptr %i.cb, align 8
  store i64 %i.cc, ptr %i.bv, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10copyAppendEPKS1_S4_.exit
end_hunk_7
begin_hunk_8_@_ZN17QArrayDataPointerI7QStringE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE:bb.a
_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33: ; preds = %bb.d
  %i.ao = getelementptr i8, ptr %i.aa, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.b, align 8
  %i.ar = add i64 %2, %i.aq
  %i.as = sub i64 %i.ap, %i.ar
  %i.at = sdiv i64 %i.as, 2
  %i.au = call noundef i64 @llvm.smax.i64(i64 %i.at, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.av = getelementptr [24 x i8], ptr %i.z, i64 %i.au
  %i.aw = getelementptr [24 x i8], ptr %i.av, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33
  %i.ax = phi ptr [ %i.an, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33.thread ], [ %i.aw, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ae, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33 ]
  %i.ay = getelementptr i8, ptr %.pr62, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  br label %_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit

_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit:   ; preds = %bb.e, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33, %bb.f
  %i.ba = phi ptr [ %i.ax, %bb.f ], [ %i.aw, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33 ], [ %i.z, %bb.e ]
  %.sroa.0.0.i = phi i32 [ %i.az, %bb.f ], [ 0, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.e ]
  %i.bb = getelementptr i8, ptr %i.aa, i64 4
  store i32 %.sroa.0.0.i, ptr %i.bb, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit
  %.sink = phi ptr [ %i.ba, %_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit ], [ %i.z, %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.aa, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bd, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1, ptr noundef align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit
  %i.d = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %1, %i.e
  br i1 %i.f, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit, label %bb.d

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit: ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = add i64 %i.k, 23
  %i.m = and i64 %i.l, -8
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.n, %i.m
  %.neg4.i.neg = sdiv exact i64 %i.o, 24
  %.neg3.i = sub i64 %i.h, %1
  %.not = icmp eq i64 %.neg3.i, %.neg4.i.neg
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit
  %i.p = getelementptr [24 x i8], ptr %i.j, i64 %1 ; 3 uses
  %i.q = load ptr, ptr %2, align 8
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8
  store i64 %i.w, ptr %i.u, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.x = load i64, ptr %i.d, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.d, align 8
  br label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit, %bb.b
  %i.z = icmp eq i64 %1, 0
  br i1 %i.z, label %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread

_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit: ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = ptrtoint ptr %i.a to i64
  %i.ad = add i64 %i.ac, 23
  %i.ae = and i64 %i.ad, -8
  %i.af = ptrtoint ptr %i.ab to i64
  %.not14 = icmp eq i64 %i.ae, %i.af
  br i1 %.not14, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit
  %i.ag = getelementptr i8, ptr %i.ab, i64 -24
  %i.ah = load ptr, ptr %2, align 8
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ab, i64 -16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr i8, ptr %i.ab, i64 -8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i64, ptr %i.am, align 8
  store i64 %i.an, ptr %i.al, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ao = load ptr, ptr %i.aa, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  store ptr %i.ap, ptr %i.aa, align 8
  %i.aq = load i64, ptr %i.d, align 8
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.d, align 8
  br label %_ZN7QStringD2Ev.exit

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread: ; preds = %bb.a, %bb.d, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit
  %i.as = load ptr, ptr %2, align 8               ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ax = getelementptr i8, ptr %0, i64 16        ; 6 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = icmp eq i64 %1, 0
  %i.bb = and i1 %i.ba, %i.az                     ; 2 uses
  %i.bc = zext i1 %i.bb to i32
  invoke void @_ZN17QArrayDataPointerI7QStringE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %i.bc, i64 noundef 1, ptr noundef null, ptr noundef null)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread
  %i.bd = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 4 uses
  br i1 %i.bb, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  store ptr %i.as, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -16
  store ptr %i.au, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.be, i64 -8
  store i64 %i.aw, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %i.bd, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  store ptr %i.bj, ptr %i.bd, align 8
  %i.bk = load i64, ptr %i.ax, align 8
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.ax, align 8
  br label %_ZN7QStringD2Ev.exit

bb.h:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i17 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i17, label %_ZN7QStringD2Ev.exit20, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18

bb.i:                                             ; preds = %bb.f
  %i.bn = getelementptr [24 x i8], ptr %i.be, i64 %1 ; 5 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %i.bp = load i64, ptr %i.ax, align 8
  %i.bq = sub i64 %i.bp, %1
  %i.br = mul i64 %i.bq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.bo, ptr noundef align 1 %i.bn, i64 noundef %i.br, i1 noundef false) #28
  store ptr %i.as, ptr %i.bn, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.au, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.aw, ptr %i.bt, align 8
  %i.bu = load i64, ptr %i.ax, align 8
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.ax, align 8
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c
  ret void

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18:    ; preds = %bb.h
  %i.bw = atomicrmw add ptr %i.as, i32 -1 acq_rel, align 4
  %.not.i.i19 = icmp eq i32 %i.bw, 1
  br i1 %.not.i.i19, label %bb.j, label %_ZN7QStringD2Ev.exit20

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.as, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit20

_ZN7QStringD2Ev.exit20:                           ; preds = %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18, %bb.j
  resume { ptr, i32 } %i.bm
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

attributes #0 = { mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind null_pointer_is_valid sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { noreturn nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { mustprogress noinline null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn nounwind }
attributes #32 = { cold }
attributes #33 = { noreturn }
attributes #34 = { cold noreturn }

!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{!3, !15}
!4 = distinct !{!4, !15}
!5 = distinct !{!5, !15}
!6 = distinct !{!6, !15}
!7 = distinct !{!7, !15}
!8 = distinct !{!8, !15}
!9 = !{i32 8, !"cf-protection-return", i32 1}
!10 = !{i32 8, !"cf-protection-branch", i32 1}
!11 = !{i32 4, !"probe-stack", !"inline-asm"}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = distinct !{!18, i1 true, !"_ZN7QObject7connectIM6QTimerFvNS1_14QPrivateSignalEEM16InfoBannerWidgetFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESC_PKNSB_IT0_E6ObjectESH_N2Qt14ConnectionTypeE"}
!19 = distinct !{!19, !18, !"_ZN7QObject7connectIM6QTimerFvNS1_14QPrivateSignalEEM16InfoBannerWidgetFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESC_PKNSB_IT0_E6ObjectESH_N2Qt14ConnectionTypeE: argument 0"}
!20 = distinct !{!20, i1 true, !"_ZN7QObject7connectIM12ThemeManagerFvvEZN16InfoBannerWidgetC1EP7QWidgetE3$_0EENSt9enable_ifIXaaeqsr9QtPrivate15FunctionPointerIT0_EE13ArgumentCountngLi1Entsr3stdE16is_convertible_vIS9_PKcEEN11QMetaObject10ConnectionEE4typeEPKN9QtPrivate15FunctionPointerIT_E6ObjectESI_PKS_S9_N2Qt14ConnectionTypeE"}
!21 = distinct !{!21, !20, !"_ZN7QObject7connectIM12ThemeManagerFvvEZN16InfoBannerWidgetC1EP7QWidgetE3$_0EENSt9enable_ifIXaaeqsr9QtPrivate15FunctionPointerIT0_EE13ArgumentCountngLi1Entsr3stdE16is_convertible_vIS9_PKcEEN11QMetaObject10ConnectionEE4typeEPKN9QtPrivate15FunctionPointerIT_E6ObjectESI_PKS_S9_N2Qt14ConnectionTypeE: argument 0"}
!22 = !{!19}
!23 = !{!21}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, i1 true, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE5valueERKS0_RKS3_"}
!28 = distinct !{!28, !27, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE5valueERKS0_RKS3_: argument 0"}
!29 = distinct !{!29, i1 true, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE5valueERKS0_RKS3_"}
!30 = distinct !{!30, !29, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE5valueERKS0_RKS3_: argument 0"}
!31 = distinct !{!31, i1 true, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE5valueERKS0_RKS3_"}
!32 = distinct !{!32, !31, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE5valueERKS0_RKS3_: argument 0"}
!33 = distinct !{!33, i1 true, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE5valueERKS0_RKS3_"}
!34 = distinct !{!34, !33, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE5valueERKS0_RKS3_: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZNK4QMapI15BannerSlideType15SlideTypeConfigE5valueERKS0_RKS1_"}
!36 = distinct !{!36, !35, !"_ZNK4QMapI15BannerSlideType15SlideTypeConfigE5valueERKS0_RKS1_: argument 0"}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = !{!28}
!40 = !{!30}
!41 = !{!32}
!42 = !{!34}
!43 = !{!36}
!44 = distinct !{!44, i1 true, !"_ZNK4QMapI15BannerSlideType15SlideTypeConfigE5valueERKS0_RKS1_"}
!45 = distinct !{!45, !44, !"_ZNK4QMapI15BannerSlideType15SlideTypeConfigE5valueERKS0_RKS1_: argument 0"}
!46 = distinct !{!46, !15}
!47 = !{!45}
!48 = distinct !{!48, i1 true, !"_ZplRK7QStringS1_"}
!49 = distinct !{!49, !48, !"_ZplRK7QStringS1_: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZNK7QString7sectionE5QCharxx6QFlagsINS_11SectionFlagEE"}
!51 = distinct !{!51, !50, !"_ZNK7QString7sectionE5QCharxx6QFlagsINS_11SectionFlagEE: argument 0"}
!52 = !{!49}
!53 = !{!51}
!54 = distinct !{!54, i1 true, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE4keysEv"}
!55 = distinct !{!55, !54, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE4keysEv: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE5valueERKS0_RKS3_"}
!57 = distinct !{!57, !56, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE5valueERKS0_RKS3_: argument 0"}
!58 = !{!55}
!59 = !{!57}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = distinct !{!72, i1 true, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE4keysEv"}
!73 = distinct !{!73, !72, !"_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE4keysEv: argument 0"}
!74 = !{!73}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, i1 true, !"_ZNK4QMapI15BannerSlideType15SlideTypeConfigE5valueERKS0_RKS1_"}
!77 = distinct !{!77, !76, !"_ZNK4QMapI15BannerSlideType15SlideTypeConfigE5valueERKS0_RKS1_: argument 0"}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = !{!77}
!81 = distinct !{!81, i1 true, !"_ZNK7QString3argIJRKS_S2_EEENSt9enable_ifIXaagesZT_Li2Esr3std7is_sameIN9QtPrivate8BoolListIJXspsr33is_convertible_to_view_or_qstringIT_EE5valueELb1EEEENS5_IJLb1EXspsr33is_convertible_to_view_or_qstringIS6_EE5valueEEEEEE5valueES_E4typeEDpOS6_"}
!82 = distinct !{!82, !81, !"_ZNK7QString3argIJRKS_S2_EEENSt9enable_ifIXaagesZT_Li2Esr3std7is_sameIN9QtPrivate8BoolListIJXspsr33is_convertible_to_view_or_qstringIT_EE5valueELb1EEEENS5_IJLb1EXspsr33is_convertible_to_view_or_qstringIS6_EE5valueEEEEEE5valueES_E4typeEDpOS6_: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZNK11QStringView3argIJRK7QStringS3_EEES1_DpOT_"}
!84 = distinct !{!84, !83, !"_ZNK11QStringView3argIJRK7QStringS3_EEES1_DpOT_: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZN9QtPrivate16qStringLikeToArgERK7QString"}
!86 = distinct !{!86, !85, !"_ZN9QtPrivate16qStringLikeToArgERK7QString: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZN9QtPrivate16qStringLikeToArgERK7QString"}
!88 = distinct !{!88, !87, !"_ZN9QtPrivate16qStringLikeToArgERK7QString: argument 0"}
!89 = distinct !{!89, i1 true, !"_ZN9QtPrivate20argToQStringDispatchI11QStringViewJNS_14QStringViewArgES2_EEE7QStringT_DpRKT0_"}
!90 = distinct !{!90, !89, !"_ZN9QtPrivate20argToQStringDispatchI11QStringViewJNS_14QStringViewArgES2_EEE7QStringT_DpRKT0_: argument 0"}
!91 = distinct !{!91, i1 true, !"_ZNK19QListSpecialMethodsI7QStringE4joinE5QChar"}
!92 = distinct !{!92, !91, !"_ZNK19QListSpecialMethodsI7QStringE4joinE5QChar: argument 0"}
!93 = !{!82}
!94 = !{!84, !82}
!95 = !{!86}
!96 = !{!86, !84, !82}
!97 = !{!88}
!98 = !{!88, !84, !82}
!99 = !{!90, !82}
!100 = !{!92}
!101 = distinct !{!101, !15}
!102 = distinct !{!102, i1 true, !"_ZplRK7QStringS1_"}
!103 = distinct !{!103, !102, !"_ZplRK7QStringS1_: argument 0"}
!104 = distinct !{null}
!105 = distinct !{!105, i1 true, !"_ZNK7QPixmap6scaledEiiN2Qt15AspectRatioModeENS0_18TransformationModeE"}
!106 = distinct !{!106, !105, !"_ZNK7QPixmap6scaledEiiN2Qt15AspectRatioModeENS0_18TransformationModeE: argument 0"}
!107 = distinct !{!107, !15}
!108 = !{!103}
!109 = !{!106}
!110 = distinct !{null, null}
!111 = distinct !{null}
!112 = distinct !{null}
!113 = distinct !{null, null}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !15}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = distinct !{null, null}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = distinct !{!132, !15}
!133 = distinct !{!133, !15, !135, !136}
!134 = distinct !{!134, !15, !135, !136}
!135 = !{!"llvm.loop.isvectorized", i32 1}
!136 = !{!"llvm.loop.unroll.runtime.disable"}
!137 = distinct !{!137, !15}
!138 = distinct !{!138, !15}
!139 = distinct !{!139, !15}
!140 = distinct !{!140, !15}
!141 = distinct !{!141, !15}
!142 = distinct !{!142, !15}
!143 = distinct !{!143, !15}
end_hunk_8
