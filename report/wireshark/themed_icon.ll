Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/themed_icon?download=true
inline.NumInlined: 125
inline.NumDeleted: 78
begin_hunk_0_@_ZN12_GLOBAL__N_116ThemedIconEngineD2Ev:bb.a

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.c, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN7QStringD2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.d = load ptr, ptr %i.a, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.d, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.a, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.b
  tail call void @_ZN11QIconEngineD2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) #11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define internal void @_ZN12_GLOBAL__N_116ThemedIconEngineD0Ev(ptr noundef align 8 dereferenceable_or_null(52) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN12_GLOBAL__N_116ThemedIconEngineE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_116ThemedIconEngineD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.c, 1
  br i1 %.not.i.i.i, label %bb.b, label %_ZN12_GLOBAL__N_116ThemedIconEngineD2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.d = load ptr, ptr %i.a, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.d, i64 noundef 2, i64 noundef 8) #11, !inline_history !7
  br label %_ZN12_GLOBAL__N_116ThemedIconEngineD2Ev.exit

_ZN12_GLOBAL__N_116ThemedIconEngineD2Ev.exit:     ; preds = %bb.a, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.b
  tail call void @_ZN11QIconEngineD2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(52) %0) #11, !inline_history !7
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 56) #10
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define internal void @_ZN12_GLOBAL__N_116ThemedIconEngine5paintEP8QPainterRK5QRectN5QIcon4ModeENS6_5StateE(ptr noundef align 8 dereferenceable_or_null(52) %0, ptr noundef %1, ptr nofree noundef readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.QRectF, align 16             ; 5 uses
  %6 = alloca %class.QRectF, align 8              ; 4 uses
  %7 = alloca %class.QPixmap, align 8             ; 7 uses
  %8 = alloca %class.QSize, align 8               ; 5 uses
  %i.a = tail call noundef ptr @_ZNK8QPainter6deviceEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZNK8QPainter6deviceEv(ptr noundef align 8 dereferenceable_or_null(8) %1) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef align 8 dereferenceable_or_null(10) %i.b, i32 noundef 12), !inline_history !8
  %i.g = sitofp i32 %i.f to double
  %i.h = fmul nnan double %i.g, f0x3EF0000000000000
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi double [ %i.h, %bb.b ], [ 1.000000e+00, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load <2 x i32>, ptr %i.j, align 4
  %i.l = load <2 x i32>, ptr %2, align 4
  %i.m = add <2 x i32> %i.k, splat (i32 1)
  %i.n = sub <2 x i32> %i.m, %i.l
  store <2 x i32> %i.n, ptr %8, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %7, ptr noundef align 8 dereferenceable_or_null(52) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %3, i32 noundef %4, double noundef %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.r = load <2 x i32>, ptr %2, align 4          ; 2 uses
  %i.s = sitofp <2 x i32> %i.r to <2 x double>
  store <2 x double> %i.s, ptr %5, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = load <2 x i32>, ptr %i.j, align 4
  %i.v = sub <2 x i32> %i.u, %i.r
  %i.w = add <2 x i32> %i.v, splat (i32 1)
  %i.x = sitofp <2 x i32> %i.w to <2 x double>
  store <2 x double> %i.x, ptr %i.t, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %6, i8 0, i64 32, i1 false)
  invoke void @_ZN8QPainter10drawPixmapERK6QRectFRK7QPixmapS2_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  resume { ptr, i32 } %i.y
}

; Function Attrs: null_pointer_is_valid
declare i64 @_ZN11QIconEngine10actualSizeERK5QSizeN5QIcon4ModeENS3_5StateE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 4 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define internal void @_ZN12_GLOBAL__N_116ThemedIconEngine6pixmapERK5QSizeN5QIcon4ModeENS4_5StateE(ptr dead_on_unwind noalias writable sret(%class.QPixmap) align 8 %0, ptr noundef align 8 dereferenceable_or_null(52) %1, ptr noundef align 4 dereferenceable(8) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%class.QPixmap) align 8 %0, ptr noundef align 8 dereferenceable_or_null(52) %1, ptr noundef align 4 dereferenceable(8) %2, i32 noundef %3, i32 noundef %4, double noundef 1.000000e+00)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QIconEngine9addPixmapERK7QPixmapN5QIcon4ModeENS3_5StateE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QIconEngine7addFileERK7QStringRK5QSizeN5QIcon4ModeENS6_5StateE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24), ptr noundef align 4 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QIconEngine3keyEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define internal noundef ptr @_ZNK12_GLOBAL__N_116ThemedIconEngine5cloneEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(52) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @_Znwm(i64 noundef 56) #9 ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load <2 x i32>, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 44
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 4
  invoke void @_ZN11QIconEngineC2Ev(ptr noundef align 8 dereferenceable_or_null(52) %i.a)
          to label %.noexc unwind label %bb.d, !inline_history !0

.noexc:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN12_GLOBAL__N_116ThemedIconEngineE, i64 16), ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load <2 x ptr>, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  store <2 x ptr> %i.i, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %i.k, align 8
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.n = atomicrmw add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x i32> %i.c, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.e, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i64 %.sroa.0.0.copyload, ptr %i.q, align 4
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef 56) #10
  resume { ptr, i32 } %i.r
}

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN11QIconEngine4readER11QDataStream(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK11QIconEngine5writeER11QDataStream(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN11QIconEngine14availableSizesEN5QIcon4ModeENS0_5StateE() unnamed_addr

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QIconEngine8iconNameEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN11QIconEngine6isNullEv(ptr noundef align 8 dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define internal void @_ZN12_GLOBAL__N_116ThemedIconEngine12scaledPixmapERK5QSizeN5QIcon4ModeENS4_5StateEd(ptr dead_on_unwind noalias writable sret(%class.QPixmap) align 8 %0, ptr noundef align 8 dereferenceable_or_null(52) %1, ptr nofree noundef readonly align 4 captures(none) dereferenceable(8) %2, i32 noundef %3, i32 %4, double noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.QPixmap, align 8             ; 6 uses
  %7 = alloca %class.QSize, align 8               ; 4 uses
  %8 = alloca %class.QColor, align 4              ; 5 uses
  %9 = alloca %class.QSvgRenderer, align 8        ; 8 uses
  %10 = alloca %class.QPainter, align 8           ; 10 uses
  %11 = alloca %class.QRectF, align 8             ; 8 uses
  %12 = alloca %class.QRectF, align 8             ; 6 uses
  %13 = alloca %class.QPalette, align 8           ; 7 uses
  %14 = alloca %class.QPalette, align 8           ; 7 uses
  %15 = alloca %class.QPalette, align 8           ; 7 uses
  %16 = alloca %class.QPalette, align 8           ; 7 uses
  %17 = alloca %class.QPalette, align 8           ; 7 uses
  %18 = alloca %class.QPalette, align 8           ; 7 uses
  %19 = alloca %class.QPalette, align 8           ; 7 uses
  %20 = alloca %class.QColor, align 8             ; 11 uses
  %21 = alloca %class.QColor, align 8             ; 5 uses
  %22 = alloca %class.QColor, align 8             ; 5 uses
  %23 = alloca %class.QColor, align 8             ; 7 uses
  %24 = alloca %class.QString, align 8            ; 10 uses
  %25 = alloca %class.QString, align 8            ; 9 uses
  %26 = alloca %class.QString, align 8            ; 9 uses
  %27 = alloca %class.QString, align 8            ; 9 uses
  %28 = alloca %class.QString, align 8            ; 9 uses
  %29 = alloca %class.QString, align 8            ; 9 uses
  %30 = alloca %class.QString, align 8            ; 11 uses
  %31 = alloca %class.QPixmap, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  switch i32 %3, label %bb.ac [
    i32 1, label %bb.b
    i32 2, label %bb.f
    i32 3, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN12ThemeManager8instanceEv()
  %i.d = tail call { i64, i64 } @_ZNK12ThemeManager5colorENS_10ThemeTokenE(ptr noundef align 8 dereferenceable_or_null(208) %i.c, i32 noundef %i.b) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { i64, i64 } %i.d, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.d, 1
  %i.e = and i64 %.fca.0.extract.i.i, 4294967295
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @_ZN15QGuiApplication7paletteEv(ptr dead_on_unwind nonnull writable sret(%class.QPalette) align 8 %19)
  %i.f = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %19, i32 noundef 4, i32 noundef 6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 16
  %.sroa.4.0.copyload.i.i = load i48, ptr %.sroa.4.0..sroa_idx.i.i, align 4
  %.sroa.4.0.insert.ext.i.i = zext i48 %.sroa.4.0.copyload.i.i to i64
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  br label %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit.i

common.resume:                                    ; preds = %bb.e, %bb.j, %bb.n, %bb.s, %bb.x, %bb.ab, %bb.af, %_ZN7QStringD2Ev.exit88
  %common.resume.op = phi { ptr, i32 } [ %.pn24.pn.pn, %_ZN7QStringD2Ev.exit88 ], [ %i.i, %bb.e ], [ %i.v, %bb.j ], [ %i.ae, %bb.n ], [ %i.ao, %bb.s ], [ %i.ax, %bb.x ], [ %i.bg, %bb.ab ], [ %i.bq, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  br label %common.resume

_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.0.sroa.4.0.in.in.i.i = phi i64 [ %.fca.0.extract.i.i, %bb.b ], [ %.sroa.0.0.copyload.i.i, %bb.d ]
  %.sroa.4.0.i.i = phi i64 [ %.fca.1.extract.i.i, %bb.b ], [ %.sroa.4.0.insert.ext.i.i, %bb.d ]
  store i64 %.sroa.0.sroa.4.0.in.in.i.i, ptr %20, align 8
  %.sroa.232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.232.0.extract.trunc.i = trunc i64 %.sroa.4.0.i.i to i48
  store i48 %.sroa.232.0.extract.trunc.i, ptr %.sroa.232.0..sroa_idx.i, align 8
  %i.j = call noundef float @_ZNK6QColor6alphaFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %20) #11
  %i.k = fpext float %i.j to double
  %i.l = fmul double %i.k, 4.000000e-01
  %i.m = fptrunc double %i.l to float
  call void @_ZN6QColor9setAlphaFEf(ptr noundef nonnull align 4 dereferenceable_or_null(14) %20, float noundef %i.m)
  %.fca.0.load.pre.i = load i64, ptr %20, align 8
  br label %_ZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeE.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %1, i64 36
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not34.i = icmp eq i32 %i.o, 77
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  br i1 %.not34.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call noundef ptr @_ZN12ThemeManager8instanceEv()
  %i.q = tail call { i64, i64 } @_ZNK12ThemeManager5colorENS_10ThemeTokenE(ptr noundef align 8 dereferenceable_or_null(208) %i.p, i32 noundef %i.o) ; 2 uses
  %.fca.0.extract.i35.i = extractvalue { i64, i64 } %i.q, 0 ; 2 uses
  %.fca.1.extract.i36.i = extractvalue { i64, i64 } %i.q, 1
  %i.r = and i64 %.fca.0.extract.i35.i, 4294967295
  %.not.i38.i = icmp eq i64 %i.r, 0
  br i1 %.not.i38.i, label %bb.h, label %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit47.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  call void @_ZN15QGuiApplication7paletteEv(ptr dead_on_unwind nonnull writable sret(%class.QPalette) align 8 %18)
  %i.s = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %18, i32 noundef 4, i32 noundef 6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i43.i = load i64, ptr %i.u, align 4
  %.sroa.4.0..sroa_idx.i44.i = getelementptr i8, ptr %i.t, i64 16
  %.sroa.4.0.copyload.i45.i = load i48, ptr %.sroa.4.0..sroa_idx.i44.i, align 4
  %.sroa.4.0.insert.ext.i46.i = zext i48 %.sroa.4.0.copyload.i45.i to i64
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit47.i

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %common.resume

bb.k:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %1, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = tail call noundef ptr @_ZN12ThemeManager8instanceEv()
  %i.z = tail call { i64, i64 } @_ZNK12ThemeManager5colorENS_10ThemeTokenE(ptr noundef align 8 dereferenceable_or_null(208) %i.y, i32 noundef %i.x) ; 2 uses
  %.fca.0.extract.i48.i = extractvalue { i64, i64 } %i.z, 0 ; 2 uses
  %.fca.1.extract.i49.i = extractvalue { i64, i64 } %i.z, 1
  %i.aa = and i64 %.fca.0.extract.i48.i, 4294967295
  %.not.i51.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i51.i, label %bb.l, label %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit60.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  call void @_ZN15QGuiApplication7paletteEv(ptr dead_on_unwind nonnull writable sret(%class.QPalette) align 8 %17)
  %i.ab = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %17, i32 noundef 4, i32 noundef 6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i56.i = load i64, ptr %i.ad, align 4
  %.sroa.4.0..sroa_idx.i57.i = getelementptr i8, ptr %i.ac, i64 16
  %.sroa.4.0.copyload.i58.i = load i48, ptr %.sroa.4.0..sroa_idx.i57.i, align 4
  %.sroa.4.0.insert.ext.i59.i = zext i48 %.sroa.4.0.copyload.i58.i to i64
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit60.i

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %common.resume

_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit60.i: ; preds = %bb.m, %bb.k
  %.sroa.0.sroa.4.0.in.in.i52.i = phi i64 [ %.fca.0.extract.i48.i, %bb.k ], [ %.sroa.0.0.copyload.i56.i, %bb.m ]
  %.sroa.4.0.i53.i = phi i64 [ %.fca.1.extract.i49.i, %bb.k ], [ %.sroa.4.0.insert.ext.i59.i, %bb.m ]
  store i64 %.sroa.0.sroa.4.0.in.in.i52.i, ptr %21, align 8
  %.sroa.224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.sroa.224.0.extract.trunc.i = trunc i64 %.sroa.4.0.i53.i to i48
  store i48 %.sroa.224.0.extract.trunc.i, ptr %.sroa.224.0..sroa_idx.i, align 8
  %i.af = call { i64, i64 } @_ZNK6QColor7lighterEi(ptr noundef nonnull align 4 dereferenceable_or_null(14) %21, i32 noundef 115) #11 ; 2 uses
  %.fca.0.extract17.i = extractvalue { i64, i64 } %i.af, 0
  %.fca.1.extract18.i = extractvalue { i64, i64 } %i.af, 1
  br label %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit47.i

_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit47.i: ; preds = %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit60.i, %bb.i, %bb.g
  %.fca.1.extract18.sink.i = phi i64 [ %.fca.1.extract18.i, %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit60.i ], [ %.fca.1.extract.i36.i, %bb.g ], [ %.sroa.4.0.insert.ext.i46.i, %bb.i ]
  %.fca.0.load114.i = phi i64 [ %.fca.0.extract17.i, %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit60.i ], [ %.fca.0.extract.i35.i, %bb.g ], [ %.sroa.0.0.copyload.i43.i, %bb.i ]
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.220.0.extract.trunc.i = trunc i64 %.fca.1.extract18.sink.i to i48
  store i48 %.sroa.220.0.extract.trunc.i, ptr %.sroa.220.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  br label %_ZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeE.exit

bb.o:                                             ; preds = %bb.a
  %i.ag = getelementptr i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.ah, 77
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  br i1 %.not.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call noundef ptr @_ZN12ThemeManager8instanceEv()
  %i.aj = tail call { i64, i64 } @_ZNK12ThemeManager5colorENS_10ThemeTokenE(ptr noundef align 8 dereferenceable_or_null(208) %i.ai, i32 noundef %i.ah) ; 2 uses
  %.fca.0.extract.i61.i = extractvalue { i64, i64 } %i.aj, 0 ; 2 uses
  %.fca.1.extract.i62.i = extractvalue { i64, i64 } %i.aj, 1
  %i.ak = and i64 %.fca.0.extract.i61.i, 4294967295
  %.not.i64.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i64.i, label %bb.q, label %_ZZNK12_GLOBAL__N_116ThemedIconEngine9modeColorEN5QIcon4ModeEENKUlN12ThemeManager10ThemeTokenEE_clES4_.exit73.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  call void @_ZN15QGuiApplication7paletteEv(ptr dead_on_unwind nonnull writable sret(%class.QPalette) align 8 %16)
  %i.al = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %16, i32 noundef 4, i32 noundef 6)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116ThemedIconEngine12scaledPixmapERK5QSizeN5QIcon4ModeENS4_5StateEd:bb.a
  %i.cs = atomicrmw sub ptr %i.cr, i32 1 acq_rel, align 4
  %.not.i.i41 = icmp eq i32 %i.cs, 1
  br i1 %.not.i.i41, label %bb.am, label %_ZN7QStringD2Ev.exit42

bb.am:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40
  %i.ct = load ptr, ptr %28, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ct, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit42

_ZN7QStringD2Ev.exit42:                           ; preds = %_ZN7QStringD2Ev.exit38, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40, %bb.am
  %i.cu = load ptr, ptr %29, align 8              ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i43, label %_ZN7QStringD2Ev.exit46, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44:    ; preds = %_ZN7QStringD2Ev.exit42
  %i.cv = atomicrmw sub ptr %i.cu, i32 1 acq_rel, align 4
  %.not.i.i45 = icmp eq i32 %i.cv, 1
  br i1 %.not.i.i45, label %bb.an, label %_ZN7QStringD2Ev.exit46

bb.an:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44
  %i.cw = load ptr, ptr %29, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cw, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit46

_ZN7QStringD2Ev.exit46:                           ; preds = %_ZN7QStringD2Ev.exit42, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44, %bb.an
  %i.cx = load ptr, ptr %30, align 8              ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i47, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i48

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i48:    ; preds = %_ZN7QStringD2Ev.exit46
  %i.cy = atomicrmw sub ptr %i.cx, i32 1 acq_rel, align 4
  %.not.i.i49 = icmp eq i32 %i.cy, 1
  br i1 %.not.i.i49, label %bb.ao, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.ao:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i48
  %i.cz = load ptr, ptr %30, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cz, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.ao, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i48, %_ZN7QStringD2Ev.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  invoke void @_ZN7QPixmapC1Ev(ptr noundef align 8 dereferenceable_or_null(24) %0)
          to label %bb.ap unwind label %bb.bd

bb.ap:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit
  %i.da = invoke noundef zeroext i1 @_ZN12QPixmapCache4findERK7QStringP7QPixmap(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef %0)
          to label %bb.aq unwind label %bb.be

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.da, label %bb.cb, label %bb.bf

bb.ar:                                            ; preds = %bb.ag
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit72

bb.as:                                            ; preds = %bb.ah
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit68

bb.at:                                            ; preds = %_ZNK7QString3argEiii5QChar.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit64

bb.au:                                            ; preds = %_ZNK7QString3argEjii5QChar.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit60

bb.av:                                            ; preds = %_ZNK7QString3argEiii5QChar.exit28
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit56

bb.aw:                                            ; preds = %_ZNK7QString3argEiii5QChar.exit29
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dh = load ptr, ptr %25, align 8              ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i53, label %_ZN7QStringD2Ev.exit56, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54:    ; preds = %bb.aw
  %i.di = atomicrmw sub ptr %i.dh, i32 1 acq_rel, align 4
  %.not.i.i55 = icmp eq i32 %i.di, 1
  br i1 %.not.i.i55, label %bb.ax, label %_ZN7QStringD2Ev.exit56

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54
  %i.dj = load ptr, ptr %25, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dj, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit56

_ZN7QStringD2Ev.exit56:                           ; preds = %bb.ax, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54, %bb.aw, %bb.av
  %.pn = phi { ptr, i32 } [ %i.df, %bb.av ], [ %i.dg, %bb.aw ], [ %i.dg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54 ], [ %i.dg, %bb.ax ] ; 3 uses
  %i.dk = load ptr, ptr %26, align 8              ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i57, label %_ZN7QStringD2Ev.exit60, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58:    ; preds = %_ZN7QStringD2Ev.exit56
  %i.dl = atomicrmw sub ptr %i.dk, i32 1 acq_rel, align 4
  %.not.i.i59 = icmp eq i32 %i.dl, 1
  br i1 %.not.i.i59, label %bb.ay, label %_ZN7QStringD2Ev.exit60

bb.ay:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58
  %i.dm = load ptr, ptr %26, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dm, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit60

_ZN7QStringD2Ev.exit60:                           ; preds = %bb.ay, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58, %_ZN7QStringD2Ev.exit56, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %i.de, %bb.au ], [ %.pn, %_ZN7QStringD2Ev.exit56 ], [ %.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58 ], [ %.pn, %bb.ay ] ; 3 uses
  %i.dn = load ptr, ptr %27, align 8              ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i61, label %_ZN7QStringD2Ev.exit64, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62:    ; preds = %_ZN7QStringD2Ev.exit60
  %i.do = atomicrmw sub ptr %i.dn, i32 1 acq_rel, align 4
  %.not.i.i63 = icmp eq i32 %i.do, 1
  br i1 %.not.i.i63, label %bb.az, label %_ZN7QStringD2Ev.exit64

bb.az:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62
  %i.dp = load ptr, ptr %27, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dp, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit64

_ZN7QStringD2Ev.exit64:                           ; preds = %bb.az, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62, %_ZN7QStringD2Ev.exit60, %bb.at
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.at ], [ %.pn.pn, %_ZN7QStringD2Ev.exit60 ], [ %.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62 ], [ %.pn.pn, %bb.az ] ; 3 uses
  %i.dq = load ptr, ptr %28, align 8              ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i65, label %_ZN7QStringD2Ev.exit68, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i66

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i66:    ; preds = %_ZN7QStringD2Ev.exit64
  %i.dr = atomicrmw sub ptr %i.dq, i32 1 acq_rel, align 4
  %.not.i.i67 = icmp eq i32 %i.dr, 1
  br i1 %.not.i.i67, label %bb.ba, label %_ZN7QStringD2Ev.exit68

bb.ba:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i66
  %i.ds = load ptr, ptr %28, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ds, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit68

_ZN7QStringD2Ev.exit68:                           ; preds = %bb.ba, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i66, %_ZN7QStringD2Ev.exit64, %bb.as
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.as ], [ %.pn.pn.pn, %_ZN7QStringD2Ev.exit64 ], [ %.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i66 ], [ %.pn.pn.pn, %bb.ba ] ; 3 uses
  %i.dt = load ptr, ptr %29, align 8              ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i69, label %_ZN7QStringD2Ev.exit72, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i70

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i70:    ; preds = %_ZN7QStringD2Ev.exit68
  %i.du = atomicrmw sub ptr %i.dt, i32 1 acq_rel, align 4
  %.not.i.i71 = icmp eq i32 %i.du, 1
  br i1 %.not.i.i71, label %bb.bb, label %_ZN7QStringD2Ev.exit72

bb.bb:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i70
  %i.dv = load ptr, ptr %29, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dv, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit72

_ZN7QStringD2Ev.exit72:                           ; preds = %bb.bb, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i70, %_ZN7QStringD2Ev.exit68, %bb.ar
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.db, %bb.ar ], [ %.pn.pn.pn.pn, %_ZN7QStringD2Ev.exit68 ], [ %.pn.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i70 ], [ %.pn.pn.pn.pn, %bb.bb ]
  %i.dw = load ptr, ptr %30, align 8              ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i73, label %_ZN17QArrayDataPointerIDsED2Ev.exit80, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i74

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i74:    ; preds = %_ZN7QStringD2Ev.exit72
  %i.dx = atomicrmw sub ptr %i.dw, i32 1 acq_rel, align 4
  %.not.i.i75 = icmp eq i32 %i.dx, 1
  br i1 %.not.i.i75, label %bb.bc, label %_ZN17QArrayDataPointerIDsED2Ev.exit80

bb.bc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i74
  %i.dy = load ptr, ptr %30, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dy, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit80

_ZN17QArrayDataPointerIDsED2Ev.exit80:            ; preds = %bb.bc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i74, %_ZN7QStringD2Ev.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  br label %_ZN7QStringD2Ev.exit88

bb.bd:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.be:                                            ; preds = %bb.bz, %bb.ap
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bf:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11, !noalias !13
  %i.eb = sitofp i32 %.sroa.099.0.extract.trunc to double ; 3 uses
  %i.ec = fmul double %5, %i.eb                   ; 2 uses
  %i.ed = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ec)
  %i.ee = fadd double %i.ec, %i.ed
  %i.ef = fptosi double %i.ee to i32
  %i.eg = sitofp i32 %.sroa.7.0.extract.trunc to double ; 3 uses
  %i.eh = fmul double %5, %i.eg                   ; 2 uses
  %i.ei = call double @llvm.copysign.f64(double 5.000000e-01, double %i.eh)
  %i.ej = fadd double %i.eh, %i.ei
  %i.ek = fptosi double %i.ej to i32
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ek to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ef to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %7, align 8, !noalias !13
  invoke void @_ZN7QPixmapC1ERK5QSize(ptr noundef nonnull align 8 dereferenceable_or_null(24) %31, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.ca

.noexc:                                           ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11, !noalias !13
  invoke void @_ZN7QPixmap19setDevicePixelRatioEd(ptr noundef nonnull align 8 dereferenceable_or_null(24) %31, double noundef %5)
          to label %bb.bg unwind label %bb.bp

bb.bg:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11, !noalias !13
  call void @_ZN6QColorC1EN2Qt11GlobalColorE(ptr noundef nonnull align 4 dereferenceable_or_null(14) %8, i32 noundef 19) #11
  invoke void @_ZN7QPixmap4fillERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(24) %31, ptr noundef nonnull align 4 dereferenceable(14) %8)
          to label %bb.bh unwind label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11, !noalias !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11, !noalias !13
  invoke void @_ZN12QSvgRendererC1ERK7QStringP7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9, ptr noundef align 8 dereferenceable(24) %i.cc, ptr noundef null)
          to label %bb.bi unwind label %bb.br

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11, !noalias !13
  invoke void @_ZN8QPainterC1EP12QPaintDevice(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, ptr noundef nonnull align 8 %31)
          to label %bb.bj unwind label %bb.bs

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11, !noalias !13
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !13
  store double %i.eb, ptr %i.el, align 8, !noalias !13
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 24
  store double %i.eg, ptr %i.em, align 8, !noalias !13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11, !noalias !13
  %i.en = invoke i64 @_ZNK12QSvgRenderer11defaultSizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9)
          to label %bb.bk unwind label %bb.bt     ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %.sroa.5.0.extract.shift.i = lshr i64 %i.en, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.en to i32 ; 2 uses
  %i.eo = icmp slt i32 %.sroa.0.0.extract.trunc.i, 1
  %i.ep = icmp slt i32 %.sroa.5.0.extract.trunc.i, 1
  %or.cond.i.i = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond.i.i, label %_ZNK6QSizeF7isEmptyEv.exit.thread.i.i, label %bb.bl

_ZNK6QSizeF7isEmptyEv.exit.thread.i.i:            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull readonly align 8 dereferenceable(32) %11, i64 32, i1 false), !noalias !13
  br label %_ZN12_GLOBAL__N_19aspectFitE6QSizeFRK6QRectF.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.eq = uitofp nneg i32 %.sroa.5.0.extract.trunc.i to double
  %i.er = uitofp nneg i32 %.sroa.0.0.extract.trunc.i to double
  %i.es = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.eg, i64 1 ; 2 uses
  %i.eu = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.eq, i64 1 ; 2 uses
  %i.ew = fdiv <2 x double> %i.et, %i.ev          ; 2 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 0 ; 2 uses
  %i.ey = extractelement <2 x double> %i.ew, i64 1 ; 2 uses
  %i.ez = fcmp olt double %i.ex, %i.ey
  %.sroa.speculated.i.i = select i1 %i.ez, double %i.ex, double %i.ey
  %32 = fmul nnan <2 x double> %i.et, splat (double 5.000000e-01)
  %33 = insertelement <2 x double> poison, double %.sroa.speculated.i.i, i64 0
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = fmul <2 x double> %34, %i.ev              ; 2 uses
  %36 = fadd <2 x double> %32, zeroinitializer
  %37 = fmul <2 x double> %35, splat (double 5.000000e-01)
  %38 = fsub <2 x double> %36, %37
  %39 = shufflevector <2 x double> %35, <2 x double> %38, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x double> %39, ptr %12, align 8, !alias.scope !14, !noalias !13
  br label %_ZN12_GLOBAL__N_19aspectFitE6QSizeFRK6QRectF.exit.i

_ZN12_GLOBAL__N_19aspectFitE6QSizeFRK6QRectF.exit.i: ; preds = %bb.bl, %_ZNK6QSizeF7isEmptyEv.exit.thread.i.i
  invoke void @_ZN12QSvgRenderer6renderEP8QPainterRK6QRectF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bm unwind label %bb.bt

bb.bm:                                            ; preds = %_ZN12_GLOBAL__N_19aspectFitE6QSizeFRK6QRectF.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11, !noalias !13
  invoke void @_ZN8QPainter18setCompositionModeENS_15CompositionModeE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, i32 noundef 5)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN8QPainter8fillRectERK6QRectFRK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(14) %23)
          to label %bb.bo unwind label %bb.bu

bb.bo:                                            ; preds = %bb.bn
  %i.fa = invoke noundef zeroext i1 @_ZN8QPainter3endEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10)
          to label %bb.bz unwind label %bb.bu     ; 0 uses

bb.bp:                                            ; preds = %.noexc
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bq:                                            ; preds = %bb.bg
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11, !noalias !13
  br label %bb.by

bb.br:                                            ; preds = %bb.bh
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bi
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bt:                                            ; preds = %_ZN12_GLOBAL__N_19aspectFitE6QSizeFRK6QRectF.exit.i, %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11, !noalias !13
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn.i = phi { ptr, i32 } [ %i.fg, %bb.bu ], [ %i.ff, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !13
  call void @_ZN8QPainterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #11
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bv ], [ %i.fe, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !13
  call void @_ZN12QSvgRendererD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %9) #11
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.br
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.bw ], [ %i.fd, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11, !noalias !13
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bq, %bb.bp
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.bx ], [ %i.fc, %bb.bq ], [ %i.fb, %bb.bp ]
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %31) #11
  br label %.body

bb.bz:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !13
  call void @_ZN8QPainterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !13
  call void @_ZN12QSvgRendererD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11, !noalias !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6) #11
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %6, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  store ptr null, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  store ptr %i.fj, ptr %i.fk, align 8
  store ptr %i.fl, ptr %i.fh, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %31) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #11
  %i.fm = invoke noundef zeroext i1 @_ZN12QPixmapCache6insertERK7QStringRK7QPixmap(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef align 8 dereferenceable(24) %0)
          to label %bb.cb unwind label %bb.be     ; 0 uses

bb.ca:                                            ; preds = %bb.bf
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.by, %bb.ca
  %eh.lpad-body = phi { ptr, i32 } [ %i.fn, %bb.ca ], [ %.pn.pn.pn.pn.i, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #11
  br label %bb.cd

bb.cb:                                            ; preds = %bb.aq, %bb.bz
  %i.fo = load ptr, ptr %24, align 8              ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i81, label %_ZN7QStringD2Ev.exit84, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i82

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i82:    ; preds = %bb.cb
  %i.fp = atomicrmw sub ptr %i.fo, i32 1 acq_rel, align 4
  %.not.i.i83 = icmp eq i32 %i.fp, 1
  br i1 %.not.i.i83, label %bb.cc, label %_ZN7QStringD2Ev.exit84

bb.cc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i82
  %i.fq = load ptr, ptr %24, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fq, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit84

_ZN7QStringD2Ev.exit84:                           ; preds = %bb.cb, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i82, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  ret void

bb.cd:                                            ; preds = %.body, %bb.be
  %.pn24 = phi { ptr, i32 } [ %i.ea, %bb.be ], [ %eh.lpad-body, %.body ]
  call void @_ZN7QPixmapD1Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #11
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bd
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.cd ], [ %i.dz, %bb.bd ] ; 3 uses
  %i.fr = load ptr, ptr %24, align 8              ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i85, label %_ZN7QStringD2Ev.exit88, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86:    ; preds = %bb.ce
  %i.fs = atomicrmw sub ptr %i.fr, i32 1 acq_rel, align 4
  %.not.i.i87 = icmp eq i32 %i.fs, 1
  br i1 %.not.i.i87, label %bb.cf, label %_ZN7QStringD2Ev.exit88

bb.cf:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86
  %i.ft = load ptr, ptr %24, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ft, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit88

_ZN7QStringD2Ev.exit88:                           ; preds = %bb.cf, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86, %bb.ce, %_ZN17QArrayDataPointerIDsED2Ev.exit80
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZN17QArrayDataPointerIDsED2Ev.exit80 ], [ %.pn24.pn, %bb.ce ], [ %.pn24.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86 ], [ %.pn24.pn, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  br label %common.resume
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QIconEngine12virtual_hookEiPv(ptr noundef align 8 dereferenceable_or_null(8), i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN11QIconEngineD2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK8QPainter6deviceEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN7QPixmapD1Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter10drawPixmapERK6QRectFRK7QPixmapS2_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32), ptr noundef align 8 dereferenceable(24), ptr noundef align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24), i32 noundef, i16) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare noundef i32 @_ZNK6QColor4rgbaEv(ptr noundef align 4 dereferenceable_or_null(14)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString3argEdici5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), double noundef, i32 noundef, i8 noundef signext, i32 noundef, i16) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QPixmapC1Ev(ptr noundef align 8 dereferenceable_or_null(24)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN12QPixmapCache4findERK7QStringP7QPixmap(ptr noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN12QPixmapCache6insertERK7QStringRK7QPixmap(ptr noundef align 8 dereferenceable(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QColor9setAlphaFEf(ptr noundef align 4 dereferenceable_or_null(14), float noundef) local_unnamed_addr #4

end_hunk_1
