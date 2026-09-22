Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN13QCPItemPixmap18updateScaledPixmapE5QRectbb:bb.a
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
  %i.bp = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %i.br = load i8, ptr %i.b, align 1, !range !175
  %i.bs = trunc nuw i8 %i.br to i1                ; 2 uses
  %or.cond = select i1 %i.bq, i1 true, i1 %i.bs
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  call void @_ZNK7QPixmap7toImageEv(ptr dead_on_unwind nonnull writable sret(%class.QImage) align 8 %12, ptr noundef align 8 dereferenceable_or_null(24) %i.bj)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  invoke void @_ZN6QImage16mirrored_inplaceEbb(ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, i1 noundef zeroext %i.bq, i1 noundef zeroext %i.bs)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %11, align 8, !alias.scope !1491
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !1491
  store ptr null, ptr %i.bu, align 8, !noalias !1491
  store ptr %i.bv, ptr %i.bt, align 8, !alias.scope !1491
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
  %i.f = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.e, 1
  %.sroa.0106.4.extract.shift = and i64 %i.d, -4294967296
  %i.i = add i64 %i.d, 4294967295
  %.sroa.0106.0.insert.ext = and i64 %i.h, 4294967295
  %.sroa.24.8.insert.ext = and i64 %i.i, 4294967295
  %.sroa.0106.4.insert.insert = or disjoint i64 %.sroa.0106.0.insert.ext, %.sroa.0106.4.extract.shift
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
  %i.m = and i64 %.sroa.0106.0, -4294967296
  %.sroa.0106.4.insert.shift136 = add i64 %i.l, 4294967296
  %.sroa.0106.4.insert.insert138 = or disjoint i64 %.sroa.0106.4.insert.shift136, %.sroa.0106.4.insert.mask137
  %i.n = or i64 %.sroa.24.0, -4294967296
  %.sroa.24.12.insert.insert179 = add i64 %i.m, %i.n
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
  %i.o = add i64 %.sroa.24.1, %.sroa.0106.1
  %sh.diff190 = lshr i64 %.sroa.0106.1, 31
  %.sroa.0102.0.extract.trunc = trunc i64 %i.o to i32
  %tr.sh.diff191 = trunc i64 %sh.diff190 to i32
  %i.p = insertelement <2 x i32> poison, i32 %.sroa.0102.0.extract.trunc, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %tr.sh.diff191, i64 1
  %i.r = and <2 x i32> %i.q, <i32 -1, i32 -2>
  %i.s = sitofp <2 x i32> %i.r to <2 x double>
  %i.t = fmul nnan <2 x double> %i.s, splat (double 5.000000e-01) ; 2 uses
  %i.u = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.t)
  %i.v = fadd <2 x double> %i.t, %i.u
  %i.w = fptosi <2 x double> %i.v to <2 x i32>
  %i.x = sitofp <2 x i32> %i.w to <2 x double>
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %.sroa.0106.4.extract.shift143 = lshr i64 %.sroa.0106.1, 32
  %.sroa.096.0.extract.trunc = trunc i64 %.sroa.24.1 to i32
  %.sroa.0106.4.extract.trunc144 = trunc nuw i64 %.sroa.0106.4.extract.shift143 to i32
  %6 = insertelement <2 x i32> poison, i32 %.sroa.096.0.extract.trunc, i64 0
  %7 = insertelement <2 x i32> %6, i32 %.sroa.0106.4.extract.trunc144, i64 1
  %i.y = sitofp <2 x i32> %7 to <2 x double>
  br label %bb.y

bb.h:                                             ; preds = %bb.e
  %.sroa.0106.4.extract.shift146 = lshr i64 %.sroa.0106.1, 32
  %.sroa.489.0.extract.shift = lshr i64 %.sroa.24.1, 32
  %.sroa.489.0.extract.trunc = trunc nuw i64 %.sroa.489.0.extract.shift to i32
  %.sroa.24.1.tr = trunc i64 %.sroa.24.1 to i32
  %.sroa.0106.4.extract.trunc147 = trunc nuw i64 %.sroa.0106.4.extract.shift146 to i32
  %.sroa.092.0.extract.trunc = shl i32 %.sroa.24.1.tr, 1
  %i.z = add i32 %.sroa.489.0.extract.trunc, %.sroa.0106.4.extract.trunc147
  %i.aa = insertelement <2 x i32> poison, i32 %.sroa.092.0.extract.trunc, i64 0
  %i.ab = insertelement <2 x i32> %i.aa, i32 %i.z, i64 1
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>
  %i.ad = fmul nnan <2 x double> %i.ac, splat (double 5.000000e-01) ; 2 uses
  %i.ae = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ad)
  %i.af = fadd <2 x double> %i.ad, %i.ae
  %i.ag = fptosi <2 x double> %i.af to <2 x i32>
  %i.ah = sitofp <2 x i32> %i.ag to <2 x double>
  br label %bb.y

bb.i:                                             ; preds = %bb.e
  %i.ai = add i64 %.sroa.24.1, %.sroa.0106.1
  %sh.diff = lshr i64 %.sroa.24.1, 31
  %.sroa.084.0.extract.trunc = trunc i64 %i.ai to i32
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.aj = insertelement <2 x i32> poison, i32 %.sroa.084.0.extract.trunc, i64 0
  %i.ak = insertelement <2 x i32> %i.aj, i32 %tr.sh.diff, i64 1
  %i.al = and <2 x i32> %i.ak, <i32 -1, i32 -2>
  %i.am = sitofp <2 x i32> %i.al to <2 x double>
  %i.an = fmul nnan <2 x double> %i.am, splat (double 5.000000e-01) ; 2 uses
  %i.ao = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.an)
  %i.ap = fadd <2 x double> %i.an, %i.ao
  %i.aq = fptosi <2 x double> %i.ap to <2 x i32>
  %i.ar = sitofp <2 x i32> %i.aq to <2 x double>
  br label %bb.y

bb.j:                                             ; preds = %bb.e
  %.sroa.24.12.extract.shift184 = lshr i64 %.sroa.24.1, 32
  %.sroa.078.0.extract.trunc = trunc i64 %.sroa.0106.1 to i32
  %.sroa.24.12.extract.trunc185 = trunc nuw i64 %.sroa.24.12.extract.shift184 to i32
  %i.as = insertelement <2 x i32> poison, i32 %.sroa.078.0.extract.trunc, i64 0
  %i.at = insertelement <2 x i32> %i.as, i32 %.sroa.24.12.extract.trunc185, i64 1
  %i.au = sitofp <2 x i32> %i.at to <2 x double>
  br label %bb.y

bb.k:                                             ; preds = %bb.e
  %.sroa.473.0.extract.shift = lshr i64 %.sroa.0106.1, 32
  %.sroa.24.12.extract.shift187 = lshr i64 %.sroa.24.1, 32
  %.sroa.24.12.extract.trunc188 = trunc nuw i64 %.sroa.24.12.extract.shift187 to i32
  %.sroa.0106.1.tr = trunc i64 %.sroa.0106.1 to i32
  %.sroa.473.0.extract.trunc = trunc nuw i64 %.sroa.473.0.extract.shift to i32
  %.sroa.074.0.extract.trunc = shl i32 %.sroa.0106.1.tr, 1
  %i.av = add i32 %.sroa.24.12.extract.trunc188, %.sroa.473.0.extract.trunc
  %i.aw = insertelement <2 x i32> poison, i32 %.sroa.074.0.extract.trunc, i64 0
  %i.ax = insertelement <2 x i32> %i.aw, i32 %i.av, i64 1
  %i.ay = sitofp <2 x i32> %i.ax to <2 x double>
  %i.az = fmul nnan <2 x double> %i.ay, splat (double 5.000000e-01) ; 2 uses
  %i.ba = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.az)
  %i.bb = fadd <2 x double> %i.az, %i.ba
  %i.bc = fptosi <2 x double> %i.bb to <2 x i32>
  %i.bd = sitofp <2 x i32> %i.bc to <2 x double>
  br label %bb.y

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  store i32 2, ptr %5, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.be, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.bf, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(32) %5)
  %i.bg = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 61, ptr nonnull @__PRETTY_FUNCTION__._ZNK13QCPItemPixmap19anchorPixelPositionEi)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.l
  %i.bh = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %.noexc
  %i.bi = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.m
  %i.bj = atomicrmw sub ptr %i.bi, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.bj, 1
  br i1 %.not.i.i.i, label %bb.n, label %_ZN7QStringD2Ev.exit.i

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.bk = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bk, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %i.bl = load ptr, ptr %4, align 8               ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 48
  %i.bn = load i8, ptr %i.bm, align 8, !range !175, !noundef !176
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.o, label %_ZN6QDebuglsEPKc.exit

bb.o:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.bp = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.bl, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.x ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.o
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.p:                                             ; preds = %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.p
  %i.bs = atomicrmw sub ptr %i.br, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.bs, 1
  br i1 %.not.i.i4.i, label %bb.q, label %_ZN7QStringD2Ev.exit5.i

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.bt = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bt, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.bu = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.bl, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 16, ptr nonnull @.str.208)
          to label %.noexc65 unwind label %bb.x

.noexc65:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.bv = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %.noexc65
  %i.bw = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i61, label %_ZN7QStringD2Ev.exit.i64, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62:  ; preds = %bb.r
  %i.bx = atomicrmw sub ptr %i.bw, i32 1 acq_rel, align 4
  %.not.i.i.i63 = icmp eq i32 %i.bx, 1
  br i1 %.not.i.i.i63, label %bb.s, label %_ZN7QStringD2Ev.exit.i64

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62
  %i.by = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.by, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i64

_ZN7QStringD2Ev.exit.i64:                         ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i62, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %i.bz = load ptr, ptr %4, align 8               ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 48
  %i.cb = load i8, ptr %i.ca, align 8, !range !175, !noundef !176
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.t, label %_ZN6QDebuglsEPKc.exit69

bb.t:                                             ; preds = %_ZN7QStringD2Ev.exit.i64
  %i.cd = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.bz, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit69_crit_edge unwind label %bb.x ; 0 uses

._ZN6QDebuglsEPKc.exit69_crit_edge:               ; preds = %bb.t
  %.pre193 = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit69

bb.u:                                             ; preds = %.noexc65
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i2.i57 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i2.i57, label %_ZN7QStringD2Ev.exit5.i60, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i58

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i58: ; preds = %bb.u
  %i.cg = atomicrmw sub ptr %i.cf, i32 1 acq_rel, align 4
  %.not.i.i4.i59 = icmp eq i32 %i.cg, 1
  br i1 %.not.i.i4.i59, label %bb.v, label %_ZN7QStringD2Ev.exit5.i60

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i58
  %i.ch = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ch, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i60

_ZN7QStringD2Ev.exit5.i60:                        ; preds = %bb.v, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i58, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  br label %.body

_ZN6QDebuglsEPKc.exit69:                          ; preds = %._ZN6QDebuglsEPKc.exit69_crit_edge, %_ZN7QStringD2Ev.exit.i64
  %i.ci = phi ptr [ %.pre193, %._ZN6QDebuglsEPKc.exit69_crit_edge ], [ %i.bz, %_ZN7QStringD2Ev.exit.i64 ]
  %i.cj = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.ci, i32 noundef %1)
          to label %.noexc70 unwind label %bb.x   ; 0 uses

end_hunk_0
