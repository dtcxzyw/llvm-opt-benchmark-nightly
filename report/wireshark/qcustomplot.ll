Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN13QCPItemPixmap4drawEP10QCPPainter:bb.a
  %.sroa.5.8.insert.shift.i = shl nuw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.aa to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  store i64 %.sroa.06.0.insert.insert.i, ptr %6, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.3.8.insert.insert.i, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call { i64, i64 } %i.af(ptr noundef align 8 dereferenceable_or_null(130) %0) ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  store i64 %i.ah, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = extractvalue { i64, i64 } %i.ag, 1
  store i64 %i.aj, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br i1 %i.ak, label %bb.e, label %bb.n

bb.e:                                             ; preds = %.critedge
  %i.al = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = load i8, ptr %i.b, align 1, !range !175, !noundef !176
  %i.ao = trunc nuw i8 %i.an to i1
  call void @_ZN13QCPItemPixmap18updateScaledPixmapE5QRectbb(ptr noundef align 8 dereferenceable_or_null(280) %0, i64 %i.d, i64 %i.f, i1 noundef zeroext %i.am, i1 noundef zeroext %i.ao)
  %i.ap = getelementptr i8, ptr %0, i64 248
  %i.aq = load i8, ptr %i.ap, align 8, !range !175, !noundef !176
  %i.ar = trunc nuw i8 %i.aq to i1
  %.v = select i1 %i.ar, i64 224, i64 200
  %i.as = getelementptr i8, ptr %0, i64 %.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  %i.at = bitcast i64 %i.d to <2 x i32>
  %i.au = sitofp <2 x i32> %i.at to <2 x double>
  store <2 x double> %i.au, ptr %2, align 16
  call void @_ZN8QPainter10drawPixmapERK7QPointFRK7QPixmap(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef align 8 dereferenceable(24) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  %i.av = load i8, ptr %i.g, align 1, !range !175, !noalias !1488, !noundef !176
  %i.aw = trunc nuw i8 %i.av to i1
  %.v.i23 = select i1 %i.aw, i64 272, i64 264
  %i.ax = getelementptr i8, ptr %0, i64 %.v.i23
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef align 8 dereferenceable(8) %i.ax) #51
  %i.ay = invoke noundef i32 @_ZNK4QPen5styleEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %.not19 = icmp eq i32 %i.ay, 0
  br i1 %.not19, label %_ZN8QPainter8drawRectERK5QRect.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.g
  %i.az = getelementptr i8, ptr %1, i64 8
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 4
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.h

bb.h:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.m

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.h
  invoke void @_ZN8QPainter8setBrushEN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  invoke void @_ZN8QPainter9drawRectsEPK5QRecti(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
          to label %_ZN8QPainter8drawRectERK5QRect.exit unwind label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.bc, %bb.j ]
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.o

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.g, %_ZN10QCPPainter6setPenERK4QPen.exit, %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.o

_ZN8QPainter8drawRectERK5QRect.exit:              ; preds = %bb.i, %bb.f
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %bb.n

bb.n:                                             ; preds = %_ZN8QPainter8drawRectERK5QRect.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l
  %.pn20 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZNK13QCPItemPixmap7mainPenEv(ptr dead_on_unwind noalias writable sret(%class.QPen) align 8 %0, ptr noundef align 8 dereferenceable_or_null(280) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 129
  %i.b = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 272, i64 264
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN4QPenC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %i.d) #51
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13QCPItemPixmap18updateScaledPixmapE5QRectbb(ptr noundef align 8 dereferenceable_or_null(280) %0, i64 %1, i64 %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.QPixmap, align 8             ; 6 uses
  %6 = alloca %class.QPixmap, align 8             ; 6 uses
  %7 = alloca %class.QPixmap, align 8             ; 6 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %8 = alloca %class.QPixmap, align 8             ; 5 uses
  %9 = alloca %class.QSize, align 8               ; 4 uses
  %10 = alloca %class.QPixmap, align 8            ; 6 uses
  %11 = alloca %class.QImage, align 8             ; 9 uses
  %12 = alloca %class.QImage, align 8             ; 8 uses
  %13 = alloca %class.QPixmap, align 8            ; 5 uses
  %.sroa.026.0.extract.trunc29 = trunc i64 %1 to i32 ; 2 uses
  %.sroa.530.0.extract.shift31 = lshr i64 %1, 32
  %.sroa.530.0.extract.trunc32 = trunc nuw i64 %.sroa.530.0.extract.shift31 to i32 ; 2 uses
  %.sroa.8.8.extract.trunc37 = trunc i64 %2 to i32 ; 2 uses
  %.sroa.13.8.extract.shift38 = lshr i64 %2, 32
  %.sroa.13.8.extract.trunc39 = trunc nuw i64 %.sroa.13.8.extract.shift38 to i32 ; 2 uses
  %i.c = zext i1 %3 to i8
  store i8 %i.c, ptr %i.a, align 1
  %i.d = zext i1 %4 to i8
  store i8 %i.d, ptr %i.b, align 1
  %i.e = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %i.f = tail call noundef zeroext i1 @_ZNK7QPixmap6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.e)
  br i1 %i.f, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 248
  %i.h = load i8, ptr %i.g, align 8, !range !175, !noundef !176
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7QPixmap16devicePixelRatioEv(ptr noundef align 8 dereferenceable_or_null(24) %i.e) ; 3 uses
  %i.k = add i32 %.sroa.026.0.extract.trunc29, -1
  %i.l = icmp eq i32 %i.k, %.sroa.8.8.extract.trunc37
  %i.m = add i32 %.sroa.530.0.extract.trunc32, -1
  %i.n = icmp eq i32 %i.m, %.sroa.13.8.extract.trunc39
  %or.cond43 = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond43, label %bb.d, label %_ZNK5QRect6isNullEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = call { i64, i64 } @_ZNK13QCPItemPixmap12getFinalRectEPbS0_(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0        ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.o, 1        ; 2 uses
  %.sroa.026.0.extract.trunc = trunc i64 %i.p to i32
  %.sroa.530.0.extract.shift = lshr i64 %i.p, 32
  %.sroa.530.0.extract.trunc = trunc nuw i64 %.sroa.530.0.extract.shift to i32
  %.sroa.8.8.extract.trunc = trunc i64 %i.q to i32
  %.sroa.13.8.extract.shift = lshr i64 %i.q, 32
  %.sroa.13.8.extract.trunc = trunc nuw i64 %.sroa.13.8.extract.shift to i32
  br label %_ZNK5QRect6isNullEv.exit.thread

_ZNK5QRect6isNullEv.exit.thread:                  ; preds = %bb.c, %bb.d
  %.sroa.026.0 = phi i32 [ %.sroa.026.0.extract.trunc, %bb.d ], [ %.sroa.026.0.extract.trunc29, %bb.c ] ; 2 uses
  %.sroa.530.0 = phi i32 [ %.sroa.530.0.extract.trunc, %bb.d ], [ %.sroa.530.0.extract.trunc32, %bb.c ] ; 2 uses
  %.sroa.8.0 = phi i32 [ %.sroa.8.8.extract.trunc, %bb.d ], [ %.sroa.8.8.extract.trunc37, %bb.c ] ; 2 uses
  %.sroa.13.0 = phi i32 [ %.sroa.13.8.extract.trunc, %bb.d ], [ %.sroa.13.8.extract.trunc39, %bb.c ] ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 249
  %i.s = load i8, ptr %i.r, align 1, !range !175, !noundef !176
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK5QRect6isNullEv.exit.thread
  %reass.sub = sub i32 %.sroa.8.0, %.sroa.026.0
  %reass.sub44 = sub i32 %.sroa.13.0, %.sroa.530.0
  %i.u = getelementptr i8, ptr %0, i64 224
  %i.v = call i64 @_ZNK7QPixmap4sizeEv(ptr noundef align 8 dereferenceable_or_null(24) %i.u) ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.v, 32
  %i.w = insertelement <2 x i32> poison, i32 %reass.sub44, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %reass.sub, i64 1
  %i.y = add <2 x i32> %i.x, splat (i32 1)
  %14 = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %15 = insertelement <2 x i32> poison, i32 %14, i64 0
  %16 = trunc i64 %i.v to i32
  %17 = insertelement <2 x i32> %15, i32 %16, i64 1
  %i.z = sitofp <2 x i32> %17 to <2 x double>
  %i.aa = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %i.z, %i.ab           ; 2 uses
  %i.ad = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ac)
  %i.ae = fadd <2 x double> %i.ac, %i.ad
  %i.af = fptosi <2 x double> %i.ae to <2 x i32>
  %i.ag = icmp ne <2 x i32> %i.y, %i.af           ; 2 uses
  %i.ah = extractelement <2 x i1> %i.ag, i64 0
  %i.ai = extractelement <2 x i1> %i.ag, i64 1
  %i.aj = select i1 %i.ai, i1 true, i1 %i.ah
  br i1 %i.aj, label %.critedge, label %bb.n

.critedge:                                        ; preds = %_ZNK5QRect6isNullEv.exit.thread, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.ak = add i32 %.sroa.8.0, 1
  %i.al = add i32 %.sroa.13.0, 1
  %i.am = sub i32 %i.ak, %.sroa.026.0
  %i.an = sub i32 %i.al, %.sroa.530.0
  %i.ao = insertelement <2 x i32> poison, i32 %i.an, i64 0
  %i.ap = insertelement <2 x i32> %i.ao, i32 %i.am, i64 1
  %i.aq = sitofp <2 x i32> %i.ap to <2 x double>
  %i.ar = insertelement <2 x double> poison, double %i.j, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.as, %i.aq          ; 2 uses
  %i.au = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.at)
  %i.av = fadd <2 x double> %i.at, %i.au
  %i.aw = fptosi <2 x double> %i.av to <2 x i32>  ; 2 uses
  %i.ax = extractelement <2 x i32> %i.aw, i64 0
  %i.ay = zext i32 %i.ax to i64
  %.sroa.2.0.insert.shift.i17 = shl nuw i64 %i.ay, 32
  %i.az = extractelement <2 x i32> %i.aw, i64 1
  %i.ba = zext i32 %i.az to i64
  %.sroa.0.0.insert.insert.i19 = or disjoint i64 %.sroa.2.0.insert.shift.i17, %i.ba
  store i64 %.sroa.0.0.insert.insert.i19, ptr %9, align 8
  %i.bb = getelementptr i8, ptr %0, i64 252
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr i8, ptr %0, i64 256
  %i.be = load i32, ptr %i.bd, align 8
  call void @_ZNK7QPixmap6scaledERK5QSizeN2Qt15AspectRatioModeENS3_18TransformationModeE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %8, ptr noundef align 8 dereferenceable_or_null(24) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef %i.bc, i32 noundef %i.be)
  %i.bf = getelementptr i8, ptr %0, i64 224       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %7, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  store ptr null, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %0, i64 240       ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  store ptr %i.bi, ptr %i.bj, align 8
  store ptr %i.bk, ptr %i.bg, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  %i.bl = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  %i.bn = load i8, ptr %i.b, align 1, !range !175
  %i.bo = trunc nuw i8 %i.bn to i1                ; 2 uses
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  call void @_ZNK7QPixmap7toImageEv(ptr dead_on_unwind nonnull writable sret(%class.QImage) align 8 %12, ptr noundef align 8 dereferenceable_or_null(24) %i.bf)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  invoke void @_ZN6QImage16mirrored_inplaceEbb(ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, i1 noundef zeroext %i.bm, i1 noundef zeroext %i.bo)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %11, align 8, !alias.scope !1491
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !1491
  store ptr null, ptr %i.bq, align 8, !noalias !1491
  store ptr %i.br, ptr %i.bp, align 8, !alias.scope !1491
  invoke void @_ZN7QPixmap16fromImageInPlaceER6QImage6QFlagsIN2Qt19ImageConversionFlagEE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 0)
          to label %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit unwind label %bb.i

_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %6, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  store ptr null, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.bj, align 8
  store ptr %i.bu, ptr %i.bj, align 8
  store ptr %i.bv, ptr %i.bs, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %10) #51
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %11) #51
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %11) #51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.i ], [ %i.bw, %bb.h ]
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %.critedge, %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit
  call void @_ZN7QPixmap19setDevicePixelRatioEd(ptr noundef align 8 dereferenceable_or_null(24) %i.bf, double noundef %i.j)
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.by = getelementptr i8, ptr %0, i64 224
  %i.bz = tail call noundef zeroext i1 @_ZNK7QPixmap6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.by)
  br i1 %i.bz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  call void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %5, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  store ptr null, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  store ptr %i.cc, ptr %i.cd, align 8
  store ptr %i.ce, ptr %i.ca, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %13) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.k, %bb.l, %bb.m
  %i.cf = getelementptr i8, ptr %0, i64 249
  store i8 0, ptr %i.cf, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { double, double } @_ZNK13QCPItemPixmap19anchorPixelPositionEi(ptr noundef align 8 dereferenceable_or_null(280) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %4 = alloca %class.QDebug, align 8              ; 12 uses
  %5 = alloca %class.QMessageLogger, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  store i8 0, ptr %i.b, align 1
  %i.c = call { i64, i64 } @_ZNK13QCPItemPixmap12getFinalRectEPbS0_(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 3 uses
  %i.f = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.e, 1
  %.sroa.0106.4.extract.shift = and i64 %i.d, -4294967296
  %i.i = add i64 %i.d, 4294967295
  %.sroa.0106.0.insert.ext = and i64 %i.h, 4294967295
  %.sroa.0106.4.insert.insert = or disjoint i64 %.sroa.0106.0.insert.ext, %.sroa.0106.4.extract.shift
  %.sroa.24.8.insert.ext = and i64 %i.i, 4294967295
  %.sroa.24.12.extract.shift = and i64 %i.e, -4294967296
  %.sroa.24.12.insert.insert = or disjoint i64 %.sroa.24.8.insert.ext, %.sroa.24.12.extract.shift
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0106.0 = phi i64 [ %.sroa.0106.4.insert.insert, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.24.0 = phi i64 [ %.sroa.24.12.insert.insert, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.j = load i8, ptr %i.b, align 1, !range !175, !noundef !176
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

end_hunk_0
