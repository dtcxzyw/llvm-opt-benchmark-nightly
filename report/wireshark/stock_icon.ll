Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/stock_icon?download=true
inline.NumInlined: 896
inline.NumDeleted: 436
begin_hunk_0_@_ZN5QListI7QStringED2Ev:bb.a

_ZN17QArrayDataPointerI7QStringED2Ev.exit:        ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN5QFile6existsERK7QString(ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN5QIconC1Ev(ptr noundef align 8 dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QIcon7addFileERK7QStringRK5QSizeNS_4ModeENS_5StateE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24), ptr noundef align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZNK5QIcon14availableSizesENS_4ModeENS_5StateE(ptr dead_on_unwind writable sret(%class.QList.6) align 8, ptr noundef align 8 dereferenceable_or_null(8), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZNK5QIcon6pixmapERK5QSizeNS_4ModeENS_5StateE(ptr dead_on_unwind writable sret(%class.QPixmap) align 8, ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QImageC1ERK5QSizeNS_6FormatE(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 4 dereferenceable(8), i32 noundef) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainterC1EP12QPaintDevice(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QGuiApplication7paletteEv(ptr dead_on_unwind writable sret(%class.QPalette) align 8) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 4 dereferenceable(14), i32 noundef) unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN8QPaletteD1Ev(ptr noundef align 8 dead_on_return(12) dereferenceable_or_null(12)) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter18setCompositionModeENS_15CompositionModeE(ptr noundef align 8 dereferenceable_or_null(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QPixmap9fromImageERK6QImage6QFlagsIN2Qt19ImageConversionFlagEE(ptr dead_on_unwind writable sret(%class.QPixmap) align 8, ptr noundef align 8 dereferenceable(24), i32) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QIcon9addPixmapERK7QPixmapNS_4ModeENS_5StateE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QStyleOptionC1Eii(ptr noundef align 8 dereferenceable_or_null(64), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN7QPixmapD1Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24)) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN12QStyleOptionD1Ev(ptr noundef align 8 dead_on_return(64) dereferenceable_or_null(64)) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN6QBrushD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN8QPainterD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN6QImageD1Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev(ptr noundef align 8 dead_on_return(44) dereferenceable_or_null(44) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i: ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN5QListI7QStringED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i.i = mul i64 %i.f, 24                  ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i, align 8  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #19
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i:     ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #19
  br label %_ZN5QListI7QStringED2Ev.exit

_ZN5QListI7QStringED2Ev.exit:                     ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN5QIconD2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN9StockIcon9colorIconEjj7QString(ptr dead_on_unwind noalias writable sret(%class.QIcon) align 8 %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QColor, align 8              ; 3 uses
  %5 = alloca %class.QString, align 16            ; 7 uses
  call void @_ZN6QColorC1Ej(ptr noundef nonnull align 4 dereferenceable_or_null(14) %4, i32 noundef %1) #19
  %i.a = load <2 x ptr>, ptr %3, align 8
  %i.b = load ptr, ptr %3, align 8                ; 2 uses
  store <2 x ptr> %i.a, ptr %5, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.c, align 16
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7QStringC2ERKS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit

_ZN7QStringC2ERKS_.exit:                          ; preds = %bb.a, %bb.b
  %i.g = load i64, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8
  invoke void @_ZN9StockIcon9colorIconE6QColorj7QString(ptr dead_on_unwind writable sret(%class.QIcon) align 8 %0, i64 %i.g, i64 %i.i, i32 noundef %2, ptr noundef nonnull align 8 %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN7QStringC2ERKS_.exit
  %i.j = load ptr, ptr %5, align 16               ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i3, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.k = atomicrmw sub ptr %i.j, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.k, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.l = load ptr, ptr %5, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  ret void

bb.e:                                             ; preds = %_ZN7QStringC2ERKS_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 16               ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i4, label %_ZN7QStringD2Ev.exit7, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i5

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i5:     ; preds = %bb.e
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %.not.i.i6 = icmp eq i32 %i.o, 1
  br i1 %.not.i.i6, label %bb.f, label %_ZN7QStringD2Ev.exit7

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i5
  %i.p = load ptr, ptr %5, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.p, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit7

_ZN7QStringD2Ev.exit7:                            ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i5, %bb.f
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN9StockIcon9colorIconE6QColorj7QString(ptr dead_on_unwind noalias writable sret(%class.QIcon) align 8 %0, i64 %1, i64 %2, i32 noundef %3, ptr noundef align 8 %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %5 = alloca %class.QList.29, align 8            ; 28 uses
  %6 = alloca %class.QPixmap, align 8             ; 9 uses
  %7 = alloca %class.QPainter, align 8            ; 12 uses
  %8 = alloca %class.QRect, align 4               ; 8 uses
  %9 = alloca %class.QColor, align 4              ; 5 uses
  %10 = alloca %class.QBrush, align 8             ; 7 uses
  %11 = alloca %class.QColor, align 8             ; 6 uses
  %12 = alloca %class.QFont, align 8              ; 8 uses
  %13 = alloca %class.QRectF, align 8             ; 5 uses
  %14 = alloca %class.QRectF, align 8             ; 8 uses
  %15 = alloca %class.QTextOption, align 8        ; 7 uses
  %16 = alloca %class.QTextOption, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 48, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %bb.b

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 32, ptr %i.d, align 4
  %i.j = load i64, ptr %i.f, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i64 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc41 unwind label %bb.k

.noexc41:                                         ; preds = %bb.b
  %i.k = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i.i.i.i.i38 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i38, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i40, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i39

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i39: ; preds = %.noexc41
  %i.l = load atomic i32, ptr %i.k monotonic, align 4
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i40, label %bb.c

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i40: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i39, %.noexc41
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i39, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 24, ptr %i.c, align 4
  %i.n = load i64, ptr %i.f, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc47 unwind label %bb.k

.noexc47:                                         ; preds = %bb.c
  %i.o = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i.i.i.i.i44 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i44, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i46, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i45

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i45: ; preds = %.noexc47
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i46, label %bb.d

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i46: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i45, %.noexc47
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i45, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 16, ptr %i.b, align 4
  %i.r = load i64, ptr %i.f, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc53 unwind label %bb.k

.noexc53:                                         ; preds = %bb.d
  %i.s = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i.i.i.i.i50 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i50, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i52, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i51

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i51: ; preds = %.noexc53
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i52, label %bb.e

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i52: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i51, %.noexc53
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i51, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 12, ptr %i.a, align 4
  %i.v = load i64, ptr %i.f, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i64 noundef %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc59 unwind label %bb.k

.noexc59:                                         ; preds = %bb.e
  %i.w = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i.i.i.i.i.i.i56 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i56, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i58, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i57

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i57: ; preds = %.noexc59
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i58, label %.thread

.thread:                                          ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i64, ptr %i.f, align 8
  br label %_ZN5QListIiEC2ERKS0_.exit

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i58: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i57, %.noexc59
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i58
  %.pre = load ptr, ptr %5, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load i64, ptr %i.f, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZN5QListIiED2Ev.exit, label %_ZN5QListIiEC2ERKS0_.exit

_ZN5QListIiEC2ERKS0_.exit:                        ; preds = %.thread, %bb.f
  %i.af = phi i64 [ %i.ab, %.thread ], [ %i.ae, %bb.f ]
  %i.ag = phi ptr [ %i.aa, %.thread ], [ %i.ad, %bb.f ]
  %i.ah = phi ptr [ %i.w, %.thread ], [ %.pre, %bb.f ] ; 3 uses
  %i.ai = atomicrmw add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  %.pr = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i62, label %bb.h, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i:       ; preds = %_ZN5QListIiEC2ERKS0_.exit
  %i.aj = atomicrmw sub ptr %.pr, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.aj, 1
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i
  %i.ak = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ak, i64 noundef 4, i64 noundef 8) #19
  br label %bb.h

_ZN5QListIiED2Ev.exit:                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN5QIconC1Ev(ptr noundef align 8 dereferenceable_or_null(8) %0) #19
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit

bb.h:                                             ; preds = %_ZN5QListIiEC2ERKS0_.exit, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN5QIconC1Ev(ptr noundef align 8 dereferenceable_or_null(8) %0) #19
  %i.al = atomicrmw add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !120 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit: ; preds = %_ZN5QListIiED2Ev.exit, %bb.h
  %.not.i.i.i115 = phi i1 [ true, %_ZN5QListIiED2Ev.exit ], [ false, %bb.h ] ; 2 uses
  %i.am = phi i64 [ %i.ae, %_ZN5QListIiED2Ev.exit ], [ %i.af, %bb.h ]
  %i.an = phi ptr [ %i.ad, %_ZN5QListIiED2Ev.exit ], [ %i.ag, %bb.h ] ; 2 uses
  %i.ao = phi ptr [ null, %_ZN5QListIiED2Ev.exit ], [ %i.ah, %bb.h ] ; 8 uses
  %.idx = shl i64 %i.am, 2                        ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 %.idx
  %.not105 = icmp eq i64 %.idx, 0
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.2.0.extract.trunc = trunc i64 %2 to i48
  %i.at = getelementptr i8, ptr %4, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 24
  br label %bb.m

._crit_edge:                                      ; preds = %bb.aw, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit
  br i1 %.not.i.i.i115, label %_ZN5QListIiED2Ev.exit67, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i:     ; preds = %._crit_edge
  %i.aw = atomicrmw sub ptr %i.ao, i32 1 acq_rel, align 4
  %.not.i.i.i63 = icmp eq i32 %i.aw, 1
  br i1 %.not.i.i.i63, label %bb.i, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i65

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ao, i64 noundef 4, i64 noundef 8) #19
  br label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i65

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i65:     ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i, %bb.i
  %i.ax = atomicrmw sub ptr %i.ao, i32 1 acq_rel, align 4
  %.not.i.i66 = icmp eq i32 %i.ax, 1
  br i1 %.not.i.i66, label %bb.j, label %_ZN5QListIiED2Ev.exit67

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i65
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ao, i64 noundef 4, i64 noundef 8) #19
  br label %_ZN5QListIiED2Ev.exit67

_ZN5QListIiED2Ev.exit67:                          ; preds = %._crit_edge, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i65, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i58, %bb.e, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i52, %bb.d, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i46, %bb.c, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i40, %bb.b, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i, %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i68, label %_ZN5QListIiED2Ev.exit71, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i69

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i69:     ; preds = %bb.k
  %i.ba = atomicrmw sub ptr %i.az, i32 1 acq_rel, align 4
  %.not.i.i70 = icmp eq i32 %i.ba, 1
  br i1 %.not.i.i70, label %bb.l, label %_ZN5QListIiED2Ev.exit71

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i69
  %i.bb = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bb, i64 noundef 4, i64 noundef 8) #19
  br label %_ZN5QListIiED2Ev.exit71

_ZN5QListIiED2Ev.exit71:                          ; preds = %bb.k, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i69, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZN5QListIiED2Ev.exit80

bb.m:                                             ; preds = %.lr.ph, %bb.aw
  %.sroa.10.0106 = phi ptr [ %i.an, %.lr.ph ], [ %i.ce, %bb.aw ] ; 2 uses
  %i.bc = load i32, ptr %.sroa.10.0106, align 4   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN7QPixmapC1Eii(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i32 noundef %i.bc, i32 noundef %i.bc)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN8QPainterC1EP12QPaintDevice(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull %6)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 0, ptr %8, align 4
  store i32 0, ptr %i.aq, align 4
  %i.bd = add i32 %i.bc, -2                       ; 2 uses
  store i32 %i.bd, ptr %i.ar, align 4
  store i32 %i.bd, ptr %i.as, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZN6QColorC1Ej(ptr noundef nonnull align 4 dereferenceable_or_null(14) %9, i32 noundef %3) #19
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 4 dereferenceable(14) %9)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i64 %1, ptr %11, align 8
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, ptr noundef nonnull align 4 dereferenceable(14) %11, i32 noundef 1)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.af

bb.r:                                             ; preds = %bb.q
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  invoke void @_ZN8QPainter9drawRectsEPK5QRecti(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef 1)
          to label %_ZN8QPainter8drawRectERK5QRect.exit unwind label %bb.ah

_ZN8QPainter8drawRectERK5QRect.exit:              ; preds = %bb.r
  %i.be = load i64, ptr %i.at, align 8
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.av, label %bb.s

bb.s:                                             ; preds = %_ZN8QPainter8drawRectERK5QRect.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN12QApplication4fontEv(ptr dead_on_unwind nonnull writable sret(%class.QFont) align 8 %12)
          to label %bb.t unwind label %bb.ai

bb.t:                                             ; preds = %bb.s
  %i.bg = sitofp i32 %i.bc to double
  %i.bh = fmul nnan double %i.bg, 5.000000e-01
  invoke void @_ZN5QFont13setPointSizeFEd(ptr noundef nonnull align 8 dereferenceable_or_null(12) %12, double noundef %i.bh)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8QPainter7setFontERK5QFont(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 8 dereferenceable(12) %12)
          to label %bb.v unwind label %bb.aj

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.bi = invoke { i64, i64 } @_ZNK7QPixmap4rectEv(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6)
          to label %bb.w unwind label %bb.ak      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bj = extractvalue { i64, i64 } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { i64, i64 } %i.bi, 1      ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.bj to i32 ; 2 uses
  %18 = sitofp i32 %.sroa.0.0.extract.trunc to double
  store double %18, ptr %14, align 8
  %.sroa.0.4.extract.shift = lshr i64 %i.bj, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32 ; 2 uses
  %19 = sitofp i32 %.sroa.0.4.extract.trunc to double
  store double %19, ptr %17, align 8
  %.sroa.8.8.extract.trunc = trunc i64 %i.bk to i32
  %i.bl = add i32 %.sroa.8.8.extract.trunc, 1
  %i.bm = sub i32 %i.bl, %.sroa.0.0.extract.trunc
  %i.bn = sitofp i32 %i.bm to double
  store double %i.bn, ptr %i.au, align 8
  %.sroa.8.12.extract.shift = lshr i64 %i.bk, 32
  %.sroa.8.12.extract.trunc = trunc nuw i64 %.sroa.8.12.extract.shift to i32
  %i.bo = add i32 %.sroa.8.12.extract.trunc, 1
  %i.bp = sub i32 %i.bo, %.sroa.0.4.extract.trunc
  %i.bq = sitofp i32 %i.bp to double
  store double %i.bq, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZN11QTextOptionC1E6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %15, i32 132)
          to label %bb.x unwind label %bb.al

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN8QPainter12boundingRectERK6QRectFRK7QStringRK11QTextOption(ptr dead_on_unwind nonnull writable sret(%class.QRectF) align 8 %13, ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.y unwind label %bb.am

bb.y:                                             ; preds = %bb.x
  call void @_ZN11QTextOptionD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN11QTextOptionC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %16)
          to label %bb.z unwind label %bb.ap

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN8QPainter8drawTextERK6QRectFRK7QStringRK11QTextOption(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.aa unwind label %bb.aq

bb.aa:                                            ; preds = %bb.z
  call void @_ZN11QTextOptionD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.av

bb.ab:                                            ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ac:                                            ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ad:                                            ; preds = %bb.o
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ax

bb.ae:                                            ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.af ], [ %i.bu, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.ax

bb.ah:                                            ; preds = %bb.r, %bb.av
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ai:                                            ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aj:                                            ; preds = %bb.u, %bb.t
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ak:                                            ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11QTextOptionD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %15) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn23 = phi { ptr, i32 } [ %i.cb, %bb.am ], [ %i.ca, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %bb.an ], [ %i.bz, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.as

bb.ap:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11QTextOptionD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %16) #19
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn26 = phi { ptr, i32 } [ %i.cd, %bb.aq ], [ %i.cc, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.ar ], [ %.pn23.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aj
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.as ], [ %i.by, %bb.aj ]
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %12) #19
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ai
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.at ], [ %i.bx, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ax

bb.av:                                            ; preds = %bb.aa, %_ZN8QPainter8drawRectERK5QRect.exit
  invoke void @_ZN5QIcon9addPixmapERK7QPixmapNS_4ModeENS_5StateE(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0, i32 noundef 1)
          to label %bb.aw unwind label %bb.ah

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN8QPainterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ce = getelementptr i8, ptr %.sroa.10.0106, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.ap
  br i1 %.not, label %._crit_edge, label %bb.m, !llvm.loop !119

bb.ax:                                            ; preds = %bb.au, %bb.ah, %bb.ag, %bb.ad
  %.pn31 = phi { ptr, i32 } [ %i.bw, %bb.ah ], [ %.pn26.pn.pn.pn, %bb.au ], [ %.pn, %bb.ag ], [ %i.bt, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN8QPainterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #19
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ac
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.ax ], [ %i.bs, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %6) #19
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ab
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.ay ], [ %i.br, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %.not.i.i.i115, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit76.thread103, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i74

_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit76.thread103: ; preds = %bb.az
  call void @_ZN5QIconD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) #19
  br label %_ZN5QListIiED2Ev.exit80

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i74:   ; preds = %bb.az
  %i.cf = atomicrmw sub ptr %i.ao, i32 1 acq_rel, align 4
  %.not.i.i.i75 = icmp eq i32 %i.cf, 1
  br i1 %.not.i.i.i75, label %bb.ba, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit76.thread

bb.ba:                                            ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i74
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ao, i64 noundef 4, i64 noundef 8) #19
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit76.thread

_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit76.thread: ; preds = %bb.ba, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i74
  call void @_ZN5QIconD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) #19
  %i.cg = atomicrmw sub ptr %i.ao, i32 1 acq_rel, align 4
  %.not.i.i79 = icmp eq i32 %i.cg, 1
  br i1 %.not.i.i79, label %bb.bb, label %_ZN5QListIiED2Ev.exit80

bb.bb:                                            ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit76.thread
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ao, i64 noundef 4, i64 noundef 8) #19
  br label %_ZN5QListIiED2Ev.exit80

_ZN5QListIiED2Ev.exit80:                          ; preds = %bb.bb, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit76.thread, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit76.thread103, %_ZN5QListIiED2Ev.exit71
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %_ZN5QListIiED2Ev.exit71 ], [ %.pn31.pn.pn, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit76.thread103 ], [ %.pn31.pn.pn, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit76.thread ], [ %.pn31.pn.pn, %bb.bb ]
  resume { ptr, i32 } %.pn31.pn.pn.pn.pn
}

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN6QColorC1Ej(ptr noundef align 4 dereferenceable_or_null(14), i32 noundef) unnamed_addr #3
end_hunk_0
