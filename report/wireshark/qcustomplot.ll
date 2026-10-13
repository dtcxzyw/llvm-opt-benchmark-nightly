Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN13QCPItemPixmap18updateScaledPixmapE5QRectbb:bb.a
  %i.af = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ae)
  %i.ag = fadd <2 x double> %i.ae, %i.af
  %i.ah = fptosi <2 x double> %i.ag to <2 x i32>
  %i.ai = icmp ne <2 x i32> %i.y, %i.ah           ; 2 uses
  %i.aj = extractelement <2 x i1> %i.ai, i64 0
  %i.ak = extractelement <2 x i1> %i.ai, i64 1
  %i.al = select i1 %i.ak, i1 true, i1 %i.aj
  br i1 %i.al, label %.critedge, label %bb.n

.critedge:                                        ; preds = %_ZNK5QRect6isNullEv.exit.thread, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  %i.am = add i32 %.sroa.8.0, 1
  %i.an = add i32 %.sroa.13.0, 1
  %i.ao = sub i32 %i.am, %.sroa.026.0
  %i.ap = sub i32 %i.an, %.sroa.530.0
  %i.aq = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %i.ar = insertelement <2 x i32> %i.aq, i32 %i.ao, i64 1
  %i.as = sitofp <2 x i32> %i.ar to <2 x double>
  %i.at = insertelement <2 x double> poison, double %i.j, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x double> %i.au, %i.as          ; 2 uses
  %i.aw = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.av)
  %i.ax = fadd <2 x double> %i.av, %i.aw
  %i.ay = fptosi <2 x double> %i.ax to <2 x i32>  ; 2 uses
  %i.az = extractelement <2 x i32> %i.ay, i64 0
  %i.ba = zext i32 %i.az to i64
  %.sroa.2.0.insert.shift.i17 = shl nuw i64 %i.ba, 32
  %i.bb = extractelement <2 x i32> %i.ay, i64 1
  %i.bc = zext i32 %i.bb to i64
  %.sroa.0.0.insert.insert.i19 = or disjoint i64 %.sroa.2.0.insert.shift.i17, %i.bc
  store i64 %.sroa.0.0.insert.insert.i19, ptr %9, align 8
  %i.bd = getelementptr i8, ptr %0, i64 252
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr i8, ptr %0, i64 256
  %i.bg = load i32, ptr %i.bf, align 8
  call void @_ZNK7QPixmap6scaledERK5QSizeN2Qt15AspectRatioModeENS3_18TransformationModeE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %8, ptr noundef align 8 dereferenceable_or_null(24) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef %i.be, i32 noundef %i.bg)
  %i.bh = getelementptr i8, ptr %0, i64 224       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %7, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  store ptr null, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %0, i64 240       ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  store ptr %i.bk, ptr %i.bl, align 8
  store ptr %i.bm, ptr %i.bi, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  %i.bn = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.bo = trunc nuw i8 %i.bn to i1                ; 2 uses
  %i.bp = load i8, ptr %i.b, align 1, !range !175
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %or.cond = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  call void @_ZNK7QPixmap7toImageEv(ptr dead_on_unwind nonnull writable sret(%class.QImage) align 8 %12, ptr noundef align 8 dereferenceable_or_null(24) %i.bh)
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  invoke void @_ZN6QImage16mirrored_inplaceEbb(ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, i1 noundef zeroext %i.bo, i1 noundef zeroext %i.bq)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %11, align 8, !alias.scope !1490
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !1490
  store ptr null, ptr %i.bs, align 8, !noalias !1490
  store ptr %i.bt, ptr %i.br, align 8, !alias.scope !1490
  invoke void @_ZN7QPixmap16fromImageInPlaceER6QImage6QFlagsIN2Qt19ImageConversionFlagEE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 0)
          to label %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit unwind label %bb.i

_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %6, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  store ptr null, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.bl, align 8
  store ptr %i.bw, ptr %i.bl, align 8
  store ptr %i.bx, ptr %i.bu, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %10) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %11) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %11) #49
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.i ], [ %i.by, %bb.h ]
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %.critedge, %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit
  call void @_ZN7QPixmap19setDevicePixelRatioEd(ptr noundef align 8 dereferenceable_or_null(24) %i.bh, double noundef %i.j)
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.ca = getelementptr i8, ptr %0, i64 224
  %i.cb = tail call noundef zeroext i1 @_ZNK7QPixmap6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.ca)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  call void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %5, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  store ptr null, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  store ptr %i.ce, ptr %i.cf, align 8
  store ptr %i.cg, ptr %i.cc, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %13) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.k, %bb.l, %bb.m
  %i.ch = getelementptr i8, ptr %0, i64 249
  store i8 0, ptr %i.ch, align 1
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
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

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %.sroa.24.0, -4294967296
  %.sroa.0106.4.insert.mask137 = and i64 %.sroa.0106.0, 4294967295
  %6 = and i64 %.sroa.0106.0, -4294967296
  %.sroa.0106.4.insert.shift136 = add i64 %i.l, 4294967296
  %.sroa.0106.4.insert.insert138 = or disjoint i64 %.sroa.0106.4.insert.shift136, %.sroa.0106.4.insert.mask137
  %i.m = or i64 %.sroa.24.0, -4294967296
  %.sroa.24.12.insert.insert179 = add i64 %6, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0106.1 = phi i64 [ %.sroa.0106.4.insert.insert138, %bb.d ], [ %.sroa.0106.0, %bb.c ] ; 8 uses
  %.sroa.24.1 = phi i64 [ %.sroa.24.12.insert.insert179, %bb.d ], [ %.sroa.24.0, %bb.c ] ; 8 uses
  switch i32 %1, label %bb.l [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = add i64 %.sroa.24.1, %.sroa.0106.1
  %sh.diff190 = lshr i64 %.sroa.0106.1, 31
  %tr.sh.diff191 = trunc i64 %sh.diff190 to i32
  %.sroa.0102.0.extract.trunc = trunc i64 %i.n to i32
  %i.o = insertelement <2 x i32> poison, i32 %.sroa.0102.0.extract.trunc, i64 0
  %i.p = insertelement <2 x i32> %i.o, i32 %tr.sh.diff191, i64 1
  %i.q = and <2 x i32> %i.p, <i32 -1, i32 -2>
  %i.r = sitofp <2 x i32> %i.q to <2 x double>
  %i.s = fmul nnan <2 x double> %i.r, splat (double 5.000000e-01) ; 2 uses
  %i.t = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.s)
  %i.u = fadd <2 x double> %i.s, %i.t
  %i.v = fptosi <2 x double> %i.u to <2 x i32>
  %i.w = sitofp <2 x i32> %i.v to <2 x double>
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %.sroa.0106.4.extract.shift143 = lshr i64 %.sroa.0106.1, 32
  %.sroa.0106.4.extract.trunc144 = trunc nuw i64 %.sroa.0106.4.extract.shift143 to i32
  %.sroa.096.0.extract.trunc = trunc i64 %.sroa.24.1 to i32
  %i.x = insertelement <2 x i32> poison, i32 %.sroa.096.0.extract.trunc, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %.sroa.0106.4.extract.trunc144, i64 1
  %i.z = sitofp <2 x i32> %i.y to <2 x double>
  br label %bb.y

bb.h:                                             ; preds = %bb.e
  %.sroa.0106.4.extract.shift146 = lshr i64 %.sroa.0106.1, 32
  %.sroa.489.0.extract.shift = lshr i64 %.sroa.24.1, 32
  %.sroa.0106.4.extract.trunc147 = trunc nuw i64 %.sroa.0106.4.extract.shift146 to i32
  %.sroa.489.0.extract.trunc = trunc nuw i64 %.sroa.489.0.extract.shift to i32
  %i.aa = add i32 %.sroa.489.0.extract.trunc, %.sroa.0106.4.extract.trunc147
  %.sroa.24.1.tr = trunc i64 %.sroa.24.1 to i32
  %.sroa.092.0.extract.trunc = shl i32 %.sroa.24.1.tr, 1
  %i.ab = insertelement <2 x i32> poison, i32 %.sroa.092.0.extract.trunc, i64 0
  %i.ac = insertelement <2 x i32> %i.ab, i32 %i.aa, i64 1
  %i.ad = sitofp <2 x i32> %i.ac to <2 x double>
  %i.ae = fmul nnan <2 x double> %i.ad, splat (double 5.000000e-01) ; 2 uses
  %i.af = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ae)
  %i.ag = fadd <2 x double> %i.ae, %i.af
  %i.ah = fptosi <2 x double> %i.ag to <2 x i32>
  %i.ai = sitofp <2 x i32> %i.ah to <2 x double>
  br label %bb.y

bb.i:                                             ; preds = %bb.e
  %i.aj = add i64 %.sroa.24.1, %.sroa.0106.1
  %sh.diff = lshr i64 %.sroa.24.1, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %.sroa.084.0.extract.trunc = trunc i64 %i.aj to i32
  %i.ak = insertelement <2 x i32> poison, i32 %.sroa.084.0.extract.trunc, i64 0
  %i.al = insertelement <2 x i32> %i.ak, i32 %tr.sh.diff, i64 1
  %i.am = and <2 x i32> %i.al, <i32 -1, i32 -2>
  %i.an = sitofp <2 x i32> %i.am to <2 x double>
  %i.ao = fmul nnan <2 x double> %i.an, splat (double 5.000000e-01) ; 2 uses
  %i.ap = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ao)
  %i.aq = fadd <2 x double> %i.ao, %i.ap
  %i.ar = fptosi <2 x double> %i.aq to <2 x i32>
  %i.as = sitofp <2 x i32> %i.ar to <2 x double>
  br label %bb.y

bb.j:                                             ; preds = %bb.e
  %.sroa.24.12.extract.shift184 = lshr i64 %.sroa.24.1, 32
  %.sroa.24.12.extract.trunc185 = trunc nuw i64 %.sroa.24.12.extract.shift184 to i32
  %.sroa.078.0.extract.trunc = trunc i64 %.sroa.0106.1 to i32
  %i.at = insertelement <2 x i32> poison, i32 %.sroa.078.0.extract.trunc, i64 0
  %i.au = insertelement <2 x i32> %i.at, i32 %.sroa.24.12.extract.trunc185, i64 1
  %i.av = sitofp <2 x i32> %i.au to <2 x double>
  br label %bb.y

bb.k:                                             ; preds = %bb.e
  %.sroa.473.0.extract.shift = lshr i64 %.sroa.0106.1, 32
  %.sroa.24.12.extract.shift187 = lshr i64 %.sroa.24.1, 32
  %.sroa.473.0.extract.trunc = trunc nuw i64 %.sroa.473.0.extract.shift to i32
  %.sroa.24.12.extract.trunc188 = trunc nuw i64 %.sroa.24.12.extract.shift187 to i32
  %i.aw = add i32 %.sroa.24.12.extract.trunc188, %.sroa.473.0.extract.trunc
  %.sroa.0106.1.tr = trunc i64 %.sroa.0106.1 to i32
  %.sroa.074.0.extract.trunc = shl i32 %.sroa.0106.1.tr, 1
  %i.ax = insertelement <2 x i32> poison, i32 %.sroa.074.0.extract.trunc, i64 0
  %i.ay = insertelement <2 x i32> %i.ax, i32 %i.aw, i64 1
  %i.az = sitofp <2 x i32> %i.ay to <2 x double>
  %i.ba = fmul nnan <2 x double> %i.az, splat (double 5.000000e-01) ; 2 uses
  %i.bb = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ba)
  %i.bc = fadd <2 x double> %i.ba, %i.bb
  %i.bd = fptosi <2 x double> %i.bc to <2 x i32>
  %i.be = sitofp <2 x i32> %i.bd to <2 x double>
  br label %bb.y

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  store i32 2, ptr %5, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bf, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.bg, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(32) %5)
  %i.bh = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 61, ptr nonnull @__PRETTY_FUNCTION__._ZNK13QCPItemPixmap19anchorPixelPositionEi)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.l
  %i.bi = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %.noexc
  %i.bj = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.m
  %i.bk = atomicrmw sub ptr %i.bj, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i.i, label %bb.n, label %_ZN7QStringD2Ev.exit.i

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.bl = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bl, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.bm = load ptr, ptr %4, align 8               ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 48
  %i.bo = load i8, ptr %i.bn, align 8, !range !175, !noundef !176
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.o, label %_ZN6QDebuglsEPKc.exit

bb.o:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.bq = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.bm, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.x ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.o
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.p:                                             ; preds = %.noexc
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.p
  %i.bt = atomicrmw sub ptr %i.bs, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.bt, 1
  br i1 %.not.i.i4.i, label %bb.q, label %_ZN7QStringD2Ev.exit5.i

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.bu = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bu, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.bv = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.bm, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 16, ptr nonnull @.str.208)
          to label %.noexc65 unwind label %bb.x

.noexc65:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.bw = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %.noexc65
  %i.bx = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i61, label %_ZN7QStringD2Ev.exit.i64, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62:  ; preds = %bb.r
  %i.by = atomicrmw sub ptr %i.bx, i32 1 acq_rel, align 4
  %.not.i.i.i63 = icmp eq i32 %i.by, 1
  br i1 %.not.i.i.i63, label %bb.s, label %_ZN7QStringD2Ev.exit.i64

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62
  %i.bz = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bz, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit.i64

_ZN7QStringD2Ev.exit.i64:                         ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %i.ca = load ptr, ptr %4, align 8               ; 3 uses
end_hunk_0
