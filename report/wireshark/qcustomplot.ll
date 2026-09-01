Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN13QCPItemPixmap18updateScaledPixmapE5QRectbb:bb.a
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
  %i.z = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.aa = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ab = trunc i64 %i.v to i32
  %i.ac = insertelement <2 x i32> %i.aa, i32 %i.ab, i64 1
  %i.ad = sitofp <2 x i32> %i.ac to <2 x double>
  %i.ae = insertelement <2 x double> poison, double %i.j, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fdiv <2 x double> %i.ad, %i.af          ; 2 uses
  %i.ah = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ag)
  %i.ai = fadd <2 x double> %i.ag, %i.ah
  %i.aj = fptosi <2 x double> %i.ai to <2 x i32>
  %i.ak = icmp ne <2 x i32> %i.y, %i.aj           ; 2 uses
  %i.al = extractelement <2 x i1> %i.ak, i64 0
  %i.am = extractelement <2 x i1> %i.ak, i64 1
  %i.an = select i1 %i.am, i1 true, i1 %i.al
  br i1 %i.an, label %.critedge, label %bb.n

.critedge:                                        ; preds = %_ZNK5QRect6isNullEv.exit.thread, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.ao = add i32 %.sroa.8.0, 1
  %i.ap = add i32 %.sroa.13.0, 1
  %i.aq = sub i32 %i.ao, %.sroa.026.0
  %i.ar = sub i32 %i.ap, %.sroa.530.0
  %i.as = insertelement <2 x i32> poison, i32 %i.ar, i64 0
  %i.at = insertelement <2 x i32> %i.as, i32 %i.aq, i64 1
  %i.au = sitofp <2 x i32> %i.at to <2 x double>
  %i.av = insertelement <2 x double> poison, double %i.j, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x double> %i.aw, %i.au          ; 2 uses
  %i.ay = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ax)
  %i.az = fadd <2 x double> %i.ax, %i.ay
  %i.ba = fptosi <2 x double> %i.az to <2 x i32>  ; 2 uses
  %i.bb = extractelement <2 x i32> %i.ba, i64 0
  %i.bc = zext i32 %i.bb to i64
  %.sroa.2.0.insert.shift.i17 = shl nuw i64 %i.bc, 32
  %i.bd = extractelement <2 x i32> %i.ba, i64 1
  %i.be = zext i32 %i.bd to i64
  %.sroa.0.0.insert.insert.i19 = or disjoint i64 %.sroa.2.0.insert.shift.i17, %i.be
  store i64 %.sroa.0.0.insert.insert.i19, ptr %9, align 8
  %i.bf = getelementptr i8, ptr %0, i64 252
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = getelementptr i8, ptr %0, i64 256
  %i.bi = load i32, ptr %i.bh, align 8
  call void @_ZNK7QPixmap6scaledERK5QSizeN2Qt15AspectRatioModeENS3_18TransformationModeE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %8, ptr noundef align 8 dereferenceable_or_null(24) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef %i.bg, i32 noundef %i.bi)
  %i.bj = getelementptr i8, ptr %0, i64 224       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %7, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  store ptr null, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %0, i64 240       ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  store ptr %i.bm, ptr %i.bn, align 8
  store ptr %i.bo, ptr %i.bk, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  %i.bp = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %i.br = load i8, ptr %i.b, align 1, !range !6
  %i.bs = trunc nuw i8 %i.br to i1                ; 2 uses
  %or.cond = select i1 %i.bq, i1 true, i1 %i.bs
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  call void @_ZNK7QPixmap7toImageEv(ptr dead_on_unwind nonnull writable sret(%class.QImage) align 8 %12, ptr noundef align 8 dereferenceable_or_null(24) %i.bj)
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  invoke void @_ZN6QImage16mirrored_inplaceEbb(ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, i1 noundef zeroext %i.bq, i1 noundef zeroext %i.bs)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %11, align 8, !alias.scope !1411
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !1411
  store ptr null, ptr %i.bu, align 8, !noalias !1411
  store ptr %i.bv, ptr %i.bt, align 8, !alias.scope !1411
  invoke void @_ZN7QPixmap16fromImageInPlaceER6QImage6QFlagsIN2Qt19ImageConversionFlagEE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 0)
          to label %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit unwind label %bb.i

_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %6, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr null, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.bn, align 8
  store ptr %i.by, ptr %i.bn, align 8
  store ptr %i.bz, ptr %i.bw, align 8
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
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %11) #51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.i ], [ %i.ca, %bb.h ]
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %.critedge, %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit
  call void @_ZN7QPixmap19setDevicePixelRatioEd(ptr noundef align 8 dereferenceable_or_null(24) %i.bj, double noundef %i.j)
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.cc = getelementptr i8, ptr %0, i64 224
  %i.cd = tail call noundef zeroext i1 @_ZNK7QPixmap6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.cc)
  br i1 %i.cd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  call void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %5, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  store ptr null, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  store ptr %i.cg, ptr %i.ch, align 8
  store ptr %i.ci, ptr %i.ce, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %13) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.k, %bb.l, %bb.m
  %i.cj = getelementptr i8, ptr %0, i64 249
  store i8 0, ptr %i.cj, align 1
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
  %i.f = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.e, 1
  %.sroa.0106.0.insert.ext.a = and i64 %i.h, 4294967295
  %.sroa.0106.4.extract.shift = and i64 %i.d, -4294967296
  %.sroa.0106.4.insert.insert = or disjoint i64 %.sroa.0106.0.insert.ext.a, %.sroa.0106.4.extract.shift
  %6 = add i64 %i.d, 4294967295
  %.sroa.24.8.insert.ext = and i64 %6, 4294967295
  %.sroa.24.12.extract.shift = and i64 %i.e, -4294967296
  %.sroa.24.12.insert.insert = or disjoint i64 %.sroa.24.8.insert.ext, %.sroa.24.12.extract.shift
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0106.0 = phi i64 [ %.sroa.0106.4.insert.insert, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.24.0 = phi i64 [ %.sroa.24.12.insert.insert, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.i = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %.sroa.24.0, -4294967296
  %.sroa.0106.4.insert.shift136 = add i64 %i.k, 4294967296
  %.sroa.0106.4.insert.mask137.a = and i64 %.sroa.0106.0, 4294967295
  %.sroa.0106.4.insert.insert138 = or disjoint i64 %.sroa.0106.4.insert.shift136, %.sroa.0106.4.insert.mask137.a
  %7 = and i64 %.sroa.0106.0, -4294967296
  %i.l = or i64 %.sroa.24.0, -4294967296
  %.sroa.24.12.insert.insert179 = add i64 %7, %i.l
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
  %i.m = add i64 %.sroa.24.1, %.sroa.0106.1
  %sh.diff190 = lshr i64 %.sroa.0106.1, 31
  %.sroa.0102.0.extract.trunc = trunc i64 %i.m to i32
  %tr.sh.diff191 = trunc i64 %sh.diff190 to i32
  %i.n = insertelement <2 x i32> poison, i32 %tr.sh.diff191, i64 0
  %i.o = insertelement <2 x i32> %i.n, i32 %.sroa.0102.0.extract.trunc, i64 1
  %i.p = and <2 x i32> %i.o, <i32 -2, i32 -1>
  %i.q = sitofp <2 x i32> %i.p to <2 x double>
  %i.r = fmul nnan <2 x double> %i.q, splat (double 5.000000e-01) ; 2 uses
  %i.s = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.r)
  %i.t = fadd <2 x double> %i.r, %i.s
  %i.u = fptosi <2 x double> %i.t to <2 x i32>
  %i.v = sitofp <2 x i32> %i.u to <2 x double>
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %.sroa.0106.4.extract.shift143 = lshr i64 %.sroa.0106.1, 32
  %.sroa.096.0.extract.trunc = trunc i64 %.sroa.24.1 to i32
  %.sroa.0106.4.extract.trunc144 = trunc nuw i64 %.sroa.0106.4.extract.shift143 to i32
  %8 = insertelement <2 x i32> poison, i32 %.sroa.0106.4.extract.trunc144, i64 0
  %9 = insertelement <2 x i32> %8, i32 %.sroa.096.0.extract.trunc, i64 1
  %i.w = sitofp <2 x i32> %9 to <2 x double>
  br label %bb.y

bb.h:                                             ; preds = %bb.e
  %.sroa.0106.4.extract.shift146 = lshr i64 %.sroa.0106.1, 32
  %.sroa.489.0.extract.shift = lshr i64 %.sroa.24.1, 32
  %.sroa.489.0.extract.trunc = trunc nuw i64 %.sroa.489.0.extract.shift to i32
  %.sroa.24.1.tr = trunc i64 %.sroa.24.1 to i32
  %.sroa.0106.4.extract.trunc147 = trunc nuw i64 %.sroa.0106.4.extract.shift146 to i32
  %.sroa.092.0.extract.trunc = shl i32 %.sroa.24.1.tr, 1
  %i.x = add i32 %.sroa.489.0.extract.trunc, %.sroa.0106.4.extract.trunc147
  %i.y = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %.sroa.092.0.extract.trunc, i64 1
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>
  %i.ab = fmul nnan <2 x double> %i.aa, splat (double 5.000000e-01) ; 2 uses
  %i.ac = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ab)
  %i.ad = fadd <2 x double> %i.ab, %i.ac
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  br label %bb.y

bb.i:                                             ; preds = %bb.e
  %i.ag = add i64 %.sroa.24.1, %.sroa.0106.1
  %sh.diff = lshr i64 %.sroa.24.1, 31
  %.sroa.084.0.extract.trunc = trunc i64 %i.ag to i32
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.ah = insertelement <2 x i32> poison, i32 %tr.sh.diff, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %.sroa.084.0.extract.trunc, i64 1
  %i.aj = and <2 x i32> %i.ai, <i32 -2, i32 -1>
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = fmul nnan <2 x double> %i.ak, splat (double 5.000000e-01) ; 2 uses
  %i.am = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.al)
  %i.an = fadd <2 x double> %i.al, %i.am
  %i.ao = fptosi <2 x double> %i.an to <2 x i32>
  %i.ap = sitofp <2 x i32> %i.ao to <2 x double>
  br label %bb.y

bb.j:                                             ; preds = %bb.e
  %.sroa.24.12.extract.shift184 = lshr i64 %.sroa.24.1, 32
  %.sroa.078.0.extract.trunc = trunc i64 %.sroa.0106.1 to i32
  %.sroa.24.12.extract.trunc185 = trunc nuw i64 %.sroa.24.12.extract.shift184 to i32
  %i.aq = insertelement <2 x i32> poison, i32 %.sroa.24.12.extract.trunc185, i64 0
  %i.ar = insertelement <2 x i32> %i.aq, i32 %.sroa.078.0.extract.trunc, i64 1
  %i.as = sitofp <2 x i32> %i.ar to <2 x double>
  br label %bb.y

bb.k:                                             ; preds = %bb.e
  %.sroa.473.0.extract.shift = lshr i64 %.sroa.0106.1, 32
  %.sroa.24.12.extract.shift187 = lshr i64 %.sroa.24.1, 32
  %.sroa.24.12.extract.trunc188 = trunc nuw i64 %.sroa.24.12.extract.shift187 to i32
  %.sroa.0106.1.tr = trunc i64 %.sroa.0106.1 to i32
  %.sroa.473.0.extract.trunc = trunc nuw i64 %.sroa.473.0.extract.shift to i32
  %.sroa.074.0.extract.trunc = shl i32 %.sroa.0106.1.tr, 1
  %i.at = add i32 %.sroa.24.12.extract.trunc188, %.sroa.473.0.extract.trunc
  %i.au = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %i.av = insertelement <2 x i32> %i.au, i32 %.sroa.074.0.extract.trunc, i64 1
  %i.aw = sitofp <2 x i32> %i.av to <2 x double>
  %i.ax = fmul nnan <2 x double> %i.aw, splat (double 5.000000e-01) ; 2 uses
  %i.ay = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ax)
  %i.az = fadd <2 x double> %i.ax, %i.ay
  %i.ba = fptosi <2 x double> %i.az to <2 x i32>
  %i.bb = sitofp <2 x i32> %i.ba to <2 x double>
  br label %bb.y

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  store i32 2, ptr %5, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bc, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.bd, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(32) %5)
  %i.be = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 61, ptr nonnull @__PRETTY_FUNCTION__._ZNK13QCPItemPixmap19anchorPixelPositionEi)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.l
  %i.bf = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %.noexc
  %i.bg = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.m
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.bh, 1
  br i1 %.not.i.i.i, label %bb.n, label %_ZN7QStringD2Ev.exit.i

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.bi = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bi, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %i.bj = load ptr, ptr %4, align 8               ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 48
  %i.bl = load i8, ptr %i.bk, align 8, !range !6, !noundef !7
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.o, label %_ZN6QDebuglsEPKc.exit

bb.o:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.bn = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.bj, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.x ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.o
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.p:                                             ; preds = %.noexc
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.p
  %i.bq = atomicrmw sub ptr %i.bp, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i4.i, label %bb.q, label %_ZN7QStringD2Ev.exit5.i

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.br = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.bs = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.bj, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 16, ptr nonnull @.str.208)
          to label %.noexc65 unwind label %bb.x

.noexc65:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.bt = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %.noexc65
  %i.bu = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i61, label %_ZN7QStringD2Ev.exit.i64, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62:  ; preds = %bb.r
  %i.bv = atomicrmw sub ptr %i.bu, i32 1 acq_rel, align 4
  %.not.i.i.i63 = icmp eq i32 %i.bv, 1
  br i1 %.not.i.i.i63, label %bb.s, label %_ZN7QStringD2Ev.exit.i64

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62
  %i.bw = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bw, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i64

_ZN7QStringD2Ev.exit.i64:                         ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %i.bx = load ptr, ptr %4, align 8               ; 3 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 48
  %i.bz = load i8, ptr %i.by, align 8, !range !6, !noundef !7
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.t, label %_ZN6QDebuglsEPKc.exit69

bb.t:                                             ; preds = %_ZN7QStringD2Ev.exit.i64
  %i.cb = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.bx, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit69_crit_edge unwind label %bb.x ; 0 uses

._ZN6QDebuglsEPKc.exit69_crit_edge:               ; preds = %bb.t
  %.pre193 = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit69

bb.u:                                             ; preds = %.noexc65
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i2.i57 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i2.i57, label %_ZN7QStringD2Ev.exit5.i60, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i58

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i58: ; preds = %bb.u
  %i.ce = atomicrmw sub ptr %i.cd, i32 1 acq_rel, align 4
  %.not.i.i4.i59 = icmp eq i32 %i.ce, 1
  br i1 %.not.i.i4.i59, label %bb.v, label %_ZN7QStringD2Ev.exit5.i60

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i58
  %i.cf = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cf, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i60

_ZN7QStringD2Ev.exit5.i60:                        ; preds = %bb.v, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i58, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  br label %.body

_ZN6QDebuglsEPKc.exit69:                          ; preds = %._ZN6QDebuglsEPKc.exit69_crit_edge, %_ZN7QStringD2Ev.exit.i64
  %i.cg = phi ptr [ %.pre193, %._ZN6QDebuglsEPKc.exit69_crit_edge ], [ %i.bx, %_ZN7QStringD2Ev.exit.i64 ]
  %i.ch = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.cg, i32 noundef %1)
          to label %.noexc70 unwind label %bb.x   ; 0 uses

.noexc70:                                         ; preds = %_ZN6QDebuglsEPKc.exit69
  %i.ci = load ptr, ptr %4, align 8               ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 48
  %i.ck = load i8, ptr %i.cj, align 8, !range !6, !noundef !7
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.w, label %_ZN6QDebuglsEi.exit

bb.w:                                             ; preds = %.noexc70
  %i.cm = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ci, i8 noundef signext 32)
          to label %_ZN6QDebuglsEi.exit unwind label %bb.x ; 0 uses

_ZN6QDebuglsEi.exit:                              ; preds = %.noexc70, %bb.w
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %_ZN6QDebuglsEPKc.exit69, %bb.t, %_ZN6QDebuglsEPKc.exit, %bb.o, %bb.l
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %_ZN7QStringD2Ev.exit5.i60, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %_ZN7QStringD2Ev.exit5.i ], [ %i.cn, %bb.x ], [ %i.cc, %_ZN7QStringD2Ev.exit5.i60 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  resume { ptr, i32 } %eh.lpad-body

bb.y:                                             ; preds = %_ZN6QDebuglsEi.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.co = phi <2 x double> [ zeroinitializer, %_ZN6QDebuglsEi.exit ], [ %i.v, %bb.f ], [ %i.w, %bb.g ], [ %i.af, %bb.h ], [ %i.ap, %bb.i ], [ %i.as, %bb.j ], [ %i.bb, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  %i.cp = extractelement <2 x double> %i.co, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.cp, 0
  %i.cq = extractelement <2 x double> %i.co, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.cq, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare noundef double @_ZNK7QPixmap16devicePixelRatioEv(ptr noundef align 8 dereferenceable_or_null(24)) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13QCPItemTracerC2EP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(209) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_Z7qstrlenPKc.exit.i.i:
  %2 = alloca %class.QString, align 16            ; 8 uses
  %3 = alloca %class.QString, align 16            ; 10 uses
  %4 = alloca %class.QBrush, align 8              ; 7 uses
  %5 = alloca %class.QBrush, align 8              ; 7 uses
  %6 = alloca %class.QPen, align 8                ; 6 uses
  %7 = alloca %class.QColor, align 4              ; 5 uses
  %8 = alloca %class.QPen, align 8                ; 6 uses
  %9 = alloca %class.QBrush, align 8              ; 7 uses
  tail call void @_ZN15QCPAbstractItemC2EP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV13QCPItemTracer, i64 16), ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 136        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  invoke void @_ZN7QString10fromLatin1E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 8, ptr nonnull @.str.209)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %_Z7qstrlenPKc.exit.i.i
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  br label %.body

bb.b:                                             ; preds = %_Z7qstrlenPKc.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x ptr>, ptr %2, align 16
  store ptr null, ptr %2, align 16
  store <2 x ptr> %i.d, ptr %3, align 16
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 16
  store i64 %i.g, ptr %i.e, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %i.h = invoke noundef ptr @_ZN15QCPAbstractItem14createPositionERK7QString(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 16               ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i24, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.j, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.k = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.k, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  store ptr %i.h, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  invoke void @_ZN4QPenC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.l)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke void @_ZN4QPenC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.m)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke void @_ZN6QBrushC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.n)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  invoke void @_ZN6QBrushC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.o)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double 6.000000e+00, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.r, i8 0, i64 17, i1 false)
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 128
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  invoke void @_ZN6QBrushC1EN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %4, i32 noundef 0)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.u = invoke noundef align 8 dereferenceable(8) ptr @_ZN6QBrushaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN13QCPItemTracer8setBrushERK6QBrush.exit unwind label %bb.u ; 0 uses

_ZN13QCPItemTracer8setBrushERK6QBrush.exit:       ; preds = %bb.i
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  invoke void @_ZN6QBrushC1EN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, i32 noundef 0)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %_ZN13QCPItemTracer8setBrushERK6QBrush.exit
  %i.v = invoke noundef align 8 dereferenceable(8) ptr @_ZN6QBrushaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN13QCPItemTracer16setSelectedBrushERK6QBrush.exit unwind label %bb.x ; 0 uses

_ZN13QCPItemTracer16setSelectedBrushERK6QBrush.exit: ; preds = %bb.j
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  call void @_ZN6QColorC1EN2Qt11GlobalColorE(ptr noundef nonnull align 4 dereferenceable_or_null(14) %7, i32 noundef 2) #51
  invoke void @_ZN4QPenC1ERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %6, ptr noundef nonnull align 4 dereferenceable(14) %7)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %_ZN13QCPItemTracer16setSelectedBrushERK6QBrush.exit
  %i.w = call noundef align 8 dereferenceable(8) ptr @_ZN4QPenaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %6) #51 ; 0 uses
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  invoke void @_ZN6QBrushC1EN2Qt11GlobalColorENS0_10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %9, i32 noundef 9, i32 noundef 1)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4QPenC1ERK6QBrushdN2Qt8PenStyleENS3_11PenCapStyleENS3_12PenJoinStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, double noundef 2.000000e+00, i32 noundef 1, i32 noundef 16, i32 noundef 64)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.x = call noundef align 8 dereferenceable(8) ptr @_ZN4QPenaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %8) #51 ; 0 uses
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  ret void

bb.n:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.z = load ptr, ptr %3, align 16               ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i25, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26:    ; preds = %bb.n
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %.not.i.i27 = icmp eq i32 %i.aa, 1
  br i1 %.not.i.i27, label %bb.o, label %.body

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26
  %i.ab = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ab, i64 noundef 2, i64 noundef 8) #51
  br label %.body

.body:                                            ; preds = %bb.a, %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26, %bb.n
  %.pn = phi { ptr, i32 } [ %i.y, %bb.n ], [ %i.y, %bb.o ], [ %i.b, %bb.a ], [ %i.y, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %bb.ah

bb.p:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.q:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.r:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.t:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn13 = phi { ptr, i32 } [ %i.ah, %bb.u ], [ %i.ag, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.ad
end_hunk_0
begin_hunk_1_@_ZN18QCPPolarAxisRadial15mousePressEventEP11QMouseEventRK8QVariant:bb.a
  store i8 0, ptr %i.e, align 4
  br label %bb.h

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
  %i.j = load i8, ptr %i.i, align 8, !range !6, !noundef !7
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
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 232
  %i.g = load i8, ptr %i.f, align 8, !range !6, !noundef !7
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
  %i.o = load i8, ptr %i.n, align 1, !range !6, !noundef !7
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
  %i.e = load i8, ptr %i.d, align 8, !range !6, !noundef !7
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
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
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
  %11 = alloca %class.QLineF, align 8             ; 6 uses
  %12 = alloca %class.QFont, align 8              ; 8 uses
  %13 = alloca %class.QPen, align 8               ; 7 uses
  %14 = alloca %class.QLineF, align 8             ; 7 uses
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
  %i.w = load i32, ptr %i.v, align 8, !noalias !1450
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
  %i.ao = load i8, ptr %i.an, align 4, !range !6, !noundef !7
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
  %i.bi = load i32, ptr %i.v, align 8, !noalias !1453
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
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.br = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %bb.ak

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %bb.ak

bb.l:                                             ; preds = %.lr.ph, %_ZN10QCPPainter8drawLineERK6QLineF.exit71
  %i.bv = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZN10QCPPainter8drawLineERK6QLineF.exit71 ]
  %.024165 = phi i32 [ 0, %.lr.ph ], [ %i.dg, %_ZN10QCPPainter8drawLineERK6QLineF.exit71 ]
  %i.bw = load ptr, ptr %i.bp, align 8
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load double, ptr %i.bx, align 8
  %i.bz = call noundef double @_ZNK18QCPPolarAxisRadial13coordToRadiusEd(ptr noundef align 8 dereferenceable_or_null(776) %0, double noundef %i.by)
  %i.ca = load <2 x double>, ptr %6, align 16
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x double> %i.cc, %i.ca
  %i.ce = load <2 x double>, ptr %i.ac, align 8
  %i.cf = fadd <2 x double> %i.cd, %i.ce          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %16 = load <2 x i32>, ptr %i.bq, align 4
  %i.cg = sitofp <2 x i32> %16 to <2 x double>    ; 2 uses
  %i.ch = fmul <2 x double> %i.bs, %i.cg          ; 2 uses
  %i.ci = fmul <2 x double> %i.br, %i.cg          ; 2 uses
  %i.cj = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fsub <2 x double> %i.cj, %i.ch          ; 2 uses
  %i.cl = fadd <2 x double> %i.cj, %i.ch          ; 2 uses
  %i.cm = shufflevector <2 x double> %i.ck, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cn = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.co = fsub <2 x double> %i.cn, %i.ci          ; 2 uses
  %i.cp = fadd <2 x double> %i.cn, %i.ci          ; 2 uses
  %i.cq = shufflevector <2 x double> %i.co, <2 x double> %i.cp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %17 = extractelement <2 x double> %i.ck, i64 0
  store double %17, ptr %11, align 8
  %18 = shufflevector <2 x double> %i.co, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3>
  store <2 x double> %18, ptr %.sroa.4143.0..sroa_idx, align 8
  %i.cr = extractelement <2 x double> %i.cp, i64 1
  store double %i.cr, ptr %.sroa.4139.0..sroa_idx, align 8
  %i.cs = load i8, ptr %i.an, align 4, !range !6, !noundef !7
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = load i32, ptr %i.z, align 4
  %i.cv = and i32 %i.cu, 1
  %.not.i62 = icmp eq i32 %i.cv, 0
  br i1 %.not.i62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit71

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.cw = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.cm)
  %i.cx = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.cq)
  %i.cy = fadd <2 x double> %i.cm, %i.cw
  %i.cz = fptosi <2 x double> %i.cy to <2 x i32>
  %i.da = fadd <2 x double> %i.cq, %i.cx
  %i.db = fptosi <2 x double> %i.da to <2 x i32>
  %i.dc = zext <2 x i32> %i.db to <2 x i64>
  %i.dd = shl nuw <2 x i64> %i.dc, splat (i64 32)
  %i.de = zext <2 x i32> %i.cz to <2 x i64>
  %i.df = or disjoint <2 x i64> %i.dd, %i.de
  store <2 x i64> %i.df, ptr %3, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit71

_ZN10QCPPainter8drawLineERK6QLineF.exit71:        ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  %i.dg = add i32 %.024165, 1                     ; 2 uses
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = load i64, ptr %i.bf, align 8
  %i.dj = icmp sgt i64 %i.di, %i.dh
  br i1 %i.dj, label %bb.l, label %.loopexit, !llvm.loop !1456

.loopexit:                                        ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit71, %_ZN10QCPPainter6setPenERK4QPen.exit49, %_ZN10QCPPainter8drawLineERK6QLineF.exit
  %i.dk = getelementptr i8, ptr %0, i64 432       ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.aj, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.dn = getelementptr i8, ptr %0, i64 520       ; 2 uses
  %i.do = getelementptr i8, ptr %0, i64 536
  %i.dp = load <2 x double>, ptr %i.ac, align 8
  %i.dq = load <2 x double>, ptr %6, align 16
  %i.dr = fsub <2 x double> %i.dp, %i.dq
  store <2 x double> %i.dr, ptr %i.do, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %i.ds = load i32, ptr %i.v, align 8, !noalias !1457
  %i.dt = and i32 %i.ds, 2
  %.not.i74 = icmp eq i32 %i.dt, 0
  %.v.i75 = select i1 %.not.i74, i64 224, i64 240
  %i.du = getelementptr i8, ptr %0, i64 %.v.i75
  call void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %12, ptr noundef align 8 dereferenceable(12) %i.du)
  %i.dv = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %i.dw = invoke noundef zeroext i1 @_ZNK5QFontneERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.dv, ptr noundef nonnull align 8 dereferenceable(12) %12)
          to label %.noexc76 unwind label %bb.s

.noexc76:                                         ; preds = %bb.p
  br i1 %i.dw, label %bb.q, label %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit

bb.q:                                             ; preds = %.noexc76
  %i.dx = invoke noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.dv, ptr noundef nonnull align 8 dereferenceable(12) %12)
          to label %.noexc77 unwind label %bb.s   ; 0 uses

.noexc77:                                         ; preds = %bb.q
  invoke void @_ZN22QCPLabelPainterPrivate18analyzeFontMetricsEv(ptr noundef align 8 dereferenceable_or_null(256) %i.dn)
          to label %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit unwind label %bb.s

_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit: ; preds = %.noexc76, %.noexc77
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  %i.dy = load i32, ptr %i.v, align 8             ; 2 uses
  %i.dz = and i32 %i.dy, 2
  %.not.i79 = icmp eq i32 %i.dz, 0
  %.v.i80 = select i1 %.not.i79, i64 256, i64 272
  %i.ea = getelementptr i8, ptr %0, i64 %.v.i80   ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ea, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i48
  %i.eb = getelementptr i8, ptr %0, i64 576
  store i64 %.sroa.0.0.copyload.i, ptr %i.eb, align 8
  %.sroa.4132.0..sroa_idx = getelementptr i8, ptr %0, i64 584
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.4132.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  %i.ec = and i32 %i.dy, 1
  %.not.i83 = icmp eq i32 %i.ec, 0
  %.v.i84 = select i1 %.not.i83, i64 320, i64 328
  %i.ed = getelementptr i8, ptr %0, i64 %.v.i84
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13, ptr noundef align 8 dereferenceable(8) %i.ed) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc86 unwind label %bb.t

.noexc86:                                         ; preds = %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit
  %i.ee = load i32, ptr %i.z, align 4
  %i.ef = and i32 %i.ee, 4
  %.not.i85 = icmp eq i32 %i.ef, 0
  br i1 %.not.i85, label %_ZN10QCPPainter6setPenERK4QPen.exit88, label %bb.r

bb.r:                                             ; preds = %.noexc86
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit88 unwind label %bb.t

_ZN10QCPPainter6setPenERK4QPen.exit88:            ; preds = %bb.r, %.noexc86
  %i.eg = load i64, ptr %i.dk, align 8
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %.lr.ph168, label %._crit_edge

.lr.ph168:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit88
  %i.ei = getelementptr i8, ptr %0, i64 424
  %i.ej = getelementptr i8, ptr %0, i64 300
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ek = getelementptr i8, ptr %0, i64 456
  %i.el = getelementptr i8, ptr %0, i64 368
  %i.em = getelementptr i8, ptr %0, i64 312
  %i.en = getelementptr i8, ptr %0, i64 448
  %i.eo = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.u

._crit_edge:                                      ; preds = %bb.ah, %_ZN10QCPPainter6setPenERK4QPen.exit88
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  br label %bb.aj

bb.s:                                             ; preds = %.noexc77, %bb.q, %bb.p
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %bb.ak

bb.t:                                             ; preds = %bb.r, %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.u:                                             ; preds = %.lr.ph168, %bb.ah
  %i.es = phi i64 [ 0, %.lr.ph168 ], [ %i.he, %bb.ah ] ; 3 uses
  %.0166 = phi i32 [ 0, %.lr.ph168 ], [ %i.hd, %bb.ah ] ; 2 uses
  %i.et = load ptr, ptr %i.ei, align 8
  %i.eu = getelementptr [8 x i8], ptr %i.et, i64 %i.es
  %i.ev = load double, ptr %i.eu, align 8
  %i.ew = call noundef double @_ZNK18QCPPolarAxisRadial13coordToRadiusEd(ptr noundef align 8 dereferenceable_or_null(776) %0, double noundef %i.ev) ; 3 uses
  %i.ex = load <2 x double>, ptr %6, align 16
  %i.ey = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x double> %i.ez, %i.ex
  %i.fb = load <2 x double>, ptr %i.ac, align 8
  %i.fc = fadd <2 x double> %i.fa, %i.fb          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #51
  %i.fd = load <2 x i32>, ptr %i.ej, align 4
  %i.fe = sitofp <2 x i32> %i.fd to <2 x double>  ; 2 uses
  %i.ff = fmul <2 x double> %i.ep, %i.fe          ; 2 uses
  %i.fg = fmul <2 x double> %i.eo, %i.fe          ; 2 uses
  %i.fh = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fi = fsub <2 x double> %i.fh, %i.ff          ; 2 uses
  %i.fj = fadd <2 x double> %i.fh, %i.ff          ; 2 uses
  %i.fk = shufflevector <2 x double> %i.fi, <2 x double> %i.fj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fl = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fm = fsub <2 x double> %i.fl, %i.fg          ; 2 uses
  %i.fn = fadd <2 x double> %i.fl, %i.fg          ; 2 uses
  %i.fo = shufflevector <2 x double> %i.fm, <2 x double> %i.fn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fp = extractelement <2 x double> %i.fi, i64 0
  store double %i.fp, ptr %14, align 8
  %i.fq = shufflevector <2 x double> %i.fm, <2 x double> %i.fj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fq, ptr %.sroa.5124.0..sroa_idx, align 8
  %i.fr = extractelement <2 x double> %i.fn, i64 1
  store double %i.fr, ptr %.sroa.5120.0..sroa_idx, align 8
  %i.fs = load i8, ptr %i.an, align 4, !range !6, !noundef !7
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fu = load i32, ptr %i.z, align 4
  %i.fv = and i32 %i.fu, 1
  %.not.i101 = icmp eq i32 %i.fv, 0
  br i1 %.not.i101, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  invoke void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 1)
          to label %_ZN10QCPPainter8drawLineERK6QLineF.exit112 unwind label %bb.af

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  %i.fw = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.fk)
  %i.fx = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.fo)
  %i.fy = fadd <2 x double> %i.fk, %i.fw
  %i.fz = fptosi <2 x double> %i.fy to <2 x i32>
  %i.ga = fadd <2 x double> %i.fo, %i.fx
  %i.gb = fptosi <2 x double> %i.ga to <2 x i32>
  %i.gc = zext <2 x i32> %i.gb to <2 x i64>
  %i.gd = shl nuw <2 x i64> %i.gc, splat (i64 32)
  %i.ge = zext <2 x i32> %i.fz to <2 x i64>
  %i.gf = or disjoint <2 x i64> %i.gd, %i.ge
  store <2 x i64> %i.gf, ptr %2, align 16
  invoke void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef 1)
          to label %.noexc111 unwind label %bb.af

.noexc111:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit112

_ZN10QCPPainter8drawLineERK6QLineF.exit112:       ; preds = %.noexc111, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  %i.gg = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit112
  %i.gi = load i8, ptr %i.el, align 8, !range !6, !noundef !7
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gk = add i64 %i.gg, -1
  %i.gl = icmp sgt i64 %i.gk, %i.es
  br i1 %i.gl, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
end_hunk_1
begin_hunk_2_@_ZN19QCPPolarAxisAngular11removeGraphEP13QCPPolarGraph:bb.a
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
  br i1 %i.cd, label %bb.u, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1485

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
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
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
  %5 = alloca %class.QLineF, align 8              ; 6 uses
  %6 = alloca %class.QRectF, align 16             ; 6 uses
  %7 = alloca %class.QPen, align 8                ; 7 uses
  %8 = alloca %class.QPen, align 8                ; 7 uses
  %9 = alloca %class.QFont, align 8               ; 8 uses
  %10 = alloca %class.QPen, align 8               ; 7 uses
  %11 = alloca %class.QPointF, align 16           ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 552        ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 568        ; 4 uses
  %i.c = load double, ptr %i.b, align 8
  tail call void @_ZN19QCPPolarAxisAngular14drawBackgroundEP10QCPPainterRK7QPointFd(ptr noundef align 8 dereferenceable_or_null(1080) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(16) %i.a, double noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.d = getelementptr i8, ptr %0, i64 276        ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !1486
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
  %12 = getelementptr i8, ptr %0, i64 560
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
  %i.v = load i32, ptr %i.d, align 4, !noalias !1489
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
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
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
  %i.ah = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit ]
  %.02598 = phi i32 [ 0, %.lr.ph ], [ %i.bm, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit ]
  %i.ai = load ptr, ptr %i.ac, align 8
  %i.aj = getelementptr [16 x i8], ptr %i.ai, i64 %i.ah ; 2 uses
  %13 = load double, ptr %i.b, align 8
  %14 = load double, ptr %i.aj, align 8
  %15 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %16 = load double, ptr %15, align 8
  %17 = load double, ptr %i.a, align 8
  %18 = load double, ptr %12, align 8
  %i.ak = load <2 x i32>, ptr %i.ad, align 4
  %i.al = sitofp <2 x i32> %i.ak to <2 x double>  ; 2 uses
  %19 = insertelement <2 x double> poison, double %13, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = fsub <2 x double> %20, %i.al
  %i.an = fadd <2 x double> %20, %i.al
  %i.ao = shufflevector <2 x double> %i.am, <2 x double> %i.an, <2 x i32> <i32 0, i32 3> ; 2 uses
  %21 = insertelement <2 x double> poison, double %14, i64 0
  %i.ap = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ap, %i.ao
  %22 = insertelement <2 x double> poison, double %16, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %23
  %24 = insertelement <2 x double> poison, double %17, i64 0
  %i.as = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fadd <2 x double> %i.as, %i.aq          ; 4 uses
  %25 = insertelement <2 x double> poison, double %18, i64 0
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fadd <2 x double> %i.ar, %26            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.av = extractelement <2 x double> %i.at, i64 0
  store double %i.av, ptr %5, align 8
  %i.aw = shufflevector <2 x double> %i.au, <2 x double> %i.at, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.aw, ptr %.sroa.497.0..sroa_idx, align 8
  %i.ax = extractelement <2 x double> %i.au, i64 1
  store double %i.ax, ptr %.sroa.493.0..sroa_idx, align 8
  %i.ay = load i8, ptr %i.ae, align 4, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load i32, ptr %i.h, align 4
  %i.bb = and i32 %i.ba, 1
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  %i.bc = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.at)
  %i.bd = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.au)
  %i.be = fadd <2 x double> %i.at, %i.bc
  %i.bf = fptosi <2 x double> %i.be to <2 x i32>
  %i.bg = fadd <2 x double> %i.au, %i.bd
  %i.bh = fptosi <2 x double> %i.bg to <2 x i32>
  %i.bi = zext <2 x i32> %i.bh to <2 x i64>
  %i.bj = shl nuw <2 x i64> %i.bi, splat (i64 32)
  %i.bk = zext <2 x i32> %i.bf to <2 x i64>
  %i.bl = or disjoint <2 x i64> %i.bj, %i.bk
  store <2 x i64> %i.bl, ptr %4, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

_ZN10QCPPainter8drawLineERK7QPointFS2_.exit:      ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  %i.bm = add i32 %.02598, 1                      ; 2 uses
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = load i64, ptr %i.s, align 8
  %i.bp = icmp sgt i64 %i.bo, %i.bn
  br i1 %i.bp, label %bb.g, label %.loopexit, !llvm.loop !1492

.loopexit:                                        ; preds = %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit, %_ZN10QCPPainter6setPenERK4QPen.exit38, %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.bq = getelementptr i8, ptr %0, i64 664       ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.ad, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bt = getelementptr i8, ptr %0, i64 824       ; 2 uses
  %i.bu = getelementptr i8, ptr %0, i64 840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bu, ptr noundef readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.bv = load i32, ptr %i.d, align 4, !noalias !1493
  %i.bw = and i32 %i.bv, 2
  %.not.i45 = icmp eq i32 %i.bw, 0
  %.v.i46 = select i1 %.not.i45, i64 400, i64 416
  %i.bx = getelementptr i8, ptr %0, i64 %.v.i46
  call void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %9, ptr noundef align 8 dereferenceable(12) %i.bx)
  %i.by = getelementptr i8, ptr %0, i64 864       ; 2 uses
  %i.bz = invoke noundef zeroext i1 @_ZNK5QFontneERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.by, ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %.noexc47 unwind label %bb.n

.noexc47:                                         ; preds = %bb.k
  br i1 %i.bz, label %bb.l, label %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit

bb.l:                                             ; preds = %.noexc47
  %i.ca = invoke noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.by, ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %.noexc48 unwind label %bb.n   ; 0 uses

.noexc48:                                         ; preds = %bb.l
  invoke void @_ZN22QCPLabelPainterPrivate18analyzeFontMetricsEv(ptr noundef align 8 dereferenceable_or_null(256) %i.bt)
          to label %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit unwind label %bb.n

_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit: ; preds = %.noexc47, %.noexc48
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  %i.cb = load i32, ptr %i.d, align 4             ; 2 uses
  %i.cc = and i32 %i.cb, 2
  %.not.i50 = icmp eq i32 %i.cc, 0
  %.v.i51 = select i1 %.not.i50, i64 432, i64 448
  %i.cd = getelementptr i8, ptr %0, i64 %.v.i51   ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.cd, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i48
  %i.ce = getelementptr i8, ptr %0, i64 880
  store i64 %.sroa.0.0.copyload.i, ptr %i.ce, align 8
  %.sroa.488.0..sroa_idx = getelementptr i8, ptr %0, i64 888
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.488.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  %i.cf = and i32 %i.cb, 1
  %.not.i54 = icmp eq i32 %i.cf, 0
  %.v.i55 = select i1 %.not.i54, i64 496, i64 504
  %i.cg = getelementptr i8, ptr %0, i64 %.v.i55
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, ptr noundef align 8 dereferenceable(8) %i.cg) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc57 unwind label %bb.o

.noexc57:                                         ; preds = %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit
  %i.ch = load i32, ptr %i.h, align 4
  %i.ci = and i32 %i.ch, 4
  %.not.i56 = icmp eq i32 %i.ci, 0
  br i1 %.not.i56, label %_ZN10QCPPainter6setPenERK4QPen.exit59, label %bb.m

bb.m:                                             ; preds = %.noexc57
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit59 unwind label %bb.o

_ZN10QCPPainter6setPenERK4QPen.exit59:            ; preds = %bb.m, %.noexc57
  %i.cj = load i64, ptr %i.bq, align 8
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %.lr.ph100, label %._crit_edge

.lr.ph100:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit59
  %i.cl = getelementptr i8, ptr %0, i64 696       ; 2 uses
  %i.cm = getelementptr i8, ptr %0, i64 704       ; 3 uses
  %i.cn = getelementptr i8, ptr %0, i64 476
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cp = getelementptr i8, ptr %1, i64 12
  %i.cq = getelementptr i8, ptr %0, i64 688
  %i.cr = getelementptr i8, ptr %0, i64 680
  br label %bb.p

._crit_edge:                                      ; preds = %bb.aa, %_ZN10QCPPainter6setPenERK4QPen.exit59
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %bb.ad

bb.n:                                             ; preds = %.noexc48, %bb.l, %bb.k
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %bb.ae

bb.o:                                             ; preds = %bb.m, %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %.lr.ph100, %bb.aa
  %i.cu = phi i64 [ 0, %.lr.ph100 ], [ %i.fd, %bb.aa ] ; 4 uses
  %.099 = phi i32 [ 0, %.lr.ph100 ], [ %i.fc, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.cv = load ptr, ptr %i.cm, align 8
  %i.cw = getelementptr [16 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load double, ptr %i.b, align 8          ; 2 uses
  %i.cy = load <2 x double>, ptr %i.cw, align 8   ; 2 uses
  %i.cz = load <2 x double>, ptr %i.a, align 8    ; 2 uses
  %i.da = load <2 x i32>, ptr %i.cn, align 4
  %i.db = sitofp <2 x i32> %i.da to <2 x double>  ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 1
  %i.dd = fadd double %i.cx, %i.dc
  %i.de = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x double> %i.cy, %i.df
  %i.dh = fadd <2 x double> %i.cz, %i.dg
  store <2 x double> %i.dh, ptr %11, align 16
  %i.di = extractelement <2 x double> %i.db, i64 0
  %i.dj = fsub double %i.cx, %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.dk = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.cy, %i.dl
  %i.dn = fadd <2 x double> %i.cz, %i.dm          ; 3 uses
  store <2 x double> %i.dn, ptr %3, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.co, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false)
  %i.do = load i8, ptr %i.cp, align 4, !range !6, !noundef !7
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = load i32, ptr %i.h, align 4
  %i.dr = and i32 %i.dq, 1
  %.not.i.i68 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i68, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %bb.t unwind label %bb.x

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  %i.ds = load <2 x double>, ptr %i.co, align 16  ; 2 uses
  %i.dt = shufflevector <2 x double> %i.dn, <2 x double> %i.ds, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.du = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.dt)
  %i.dv = fadd <2 x double> %i.dt, %i.du
  %i.dw = fptosi <2 x double> %i.dv to <2 x i32>
  %i.dx = shufflevector <2 x double> %i.ds, <2 x double> %i.dn, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.dy = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.dx)
  %i.dz = fadd <2 x double> %i.dx, %i.dy
  %i.ea = fptosi <2 x double> %i.dz to <2 x i32>
  %i.eb = zext <2 x i32> %i.ea to <2 x i64>
  %i.ec = shl nuw <2 x i64> %i.eb, splat (i64 32)
  %i.ed = zext <2 x i32> %i.dw to <2 x i64>
end_hunk_2
