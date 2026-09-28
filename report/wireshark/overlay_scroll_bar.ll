Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/overlay_scroll_bar?download=true
inline.NumInlined: 221
inline.NumDeleted: 133
begin_hunk_0_@_ZN16OverlayScrollBar11eventFilterEP7QObjectP6QEvent:bb.a
.noexc37:                                         ; preds = %.noexc
  %i.bj = sitofp i32 %i.bh to double
  %i.bk = sitofp i32 %i.bi to double
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store double %i.bj, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %i.bk, ptr %i.bm, align 8
  invoke void @_ZN8QPainter9drawImageERK6QRectFRK6QImageS2_6QFlagsIN2Qt19ImageConversionFlagEE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 0)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  invoke void @_ZN6QImage19setDevicePixelRatioEd(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, double noundef %i.am)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bn = icmp eq ptr %1, null
  %i.bo = getelementptr i8, ptr %0, i64 72
  %spec.select = select i1 %i.bn, ptr null, ptr %i.bo
  invoke void @_ZN8QPainterC1EP12QPaintDevice(ptr noundef nonnull align 8 dereferenceable_or_null(8) %11, ptr noundef %spec.select)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.bp = sitofp <2 x i32> %i.au to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store <2 x double> %i.bp, ptr %3, align 16
  invoke void @_ZN8QPainter9drawImageERK7QPointFRK6QImage(ptr noundef nonnull align 8 dereferenceable_or_null(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @_ZN8QPainterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @_ZN8QPainterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.ac

bb.o:                                             ; preds = %_ZN16OverlayScrollBar10grooveRectEv.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.p:                                             ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.q:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.r:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %.noexc37, %.noexc, %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %9) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.s ], [ %i.bt, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.y

bb.u:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QPainterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %11) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn19 = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.u, %bb.x, %bb.q
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.q ], [ %.pn19, %bb.x ], [ %i.bv, %bb.u ], [ %.pn, %bb.t ]
  call void @_ZN8QPainterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.p
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.y ], [ %i.br, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn, %bb.z ], [ %i.bq, %bb.o ]
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %common.resume

._crit_edge:                                      ; preds = %bb.a
  %i.by = icmp eq i16 %i.d, 38
  br i1 %i.by, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge
  tail call void @_ZN16OverlayScrollBar16updateChildStyleEv(ptr noundef align 8 dereferenceable_or_null(196) %0)
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.ab, %bb.b, %bb.n
  ret i1 %or.cond
}

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN10QScrollBar5eventEP6QEvent(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QImageC1EiiNS_6FormatE(ptr noundef align 8 dereferenceable_or_null(24), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16OverlayScrollBar17mouseReleaseEventEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(196) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QRect, align 4               ; 7 uses
  %3 = alloca %class.QPoint, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr i8, ptr %i.d, i64 24
  %i.h = load i32, ptr %i.g, align 4
  store i32 0, ptr %2, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = add i32 %i.b, -1
  store i32 %i.k, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = sub i32 %i.f, %i.h
  store i32 %i.m, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.n = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.o) ; 2 uses
  %i.q = extractvalue { double, double } %i.p, 0  ; 2 uses
  %i.r = extractvalue { double, double } %i.p, 1  ; 2 uses
  %i.s = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.q)
  %i.t = fadd double %i.q, %i.s
  %i.u = fptosi double %i.t to i32
  %i.v = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.r)
  %i.w = fadd double %i.r, %i.v
  %i.x = fptosi double %i.w to i32
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.x to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.u to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %3, align 8
  %i.y = call noundef zeroext i1 @_ZNK5QRect8containsERK6QPointb(ptr noundef nonnull align 4 dereferenceable_or_null(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i1 noundef zeroext false) #11
  br i1 %i.y, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr i8, ptr %i.z, i64 24
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ab, 1
  %i.af = sub i32 %i.ae, %i.ad
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ak = call noundef i32 @_ZNK15QAbstractSlider8pageStepEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %i.al = icmp sgt i32 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr i8, ptr %0, i64 160
  %4 = load i32, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %0, i64 156       ; 2 uses
  %5 = load i32, ptr %i.an, align 4
  %i.ao = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr i8, ptr %i.ao, i64 24
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add i32 %i.aq, 1
  %i.au = sub i32 %i.at, %i.as
  %i.av = load ptr, ptr %i.n, align 8
  %i.aw = call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.av)
  %i.ax = extractvalue { double, double } %i.aw, 1 ; 2 uses
  %i.ay = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ax)
  %i.az = fadd double %i.ax, %i.ay
  %i.ba = fptosi double %i.az to i32
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = load i32, ptr %i.an, align 4
  %i.bd = sitofp i32 %i.bc to double
  %i.be = call noundef i32 @_ZNK15QAbstractSlider7maximumEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %i.bf = call noundef i32 @_ZNK15QAbstractSlider8pageStepEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = call noundef i32 @_ZNK15QAbstractSlider7minimumEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %6 = load i32, ptr %i.ah, align 8
  %i.bi = sub i32 %4, %5
  %7 = sub i32 %i.bg, %i.bh
  %i.bj = insertelement <2 x i32> poison, i32 %i.bi, i64 0
  %8 = insertelement <2 x i32> %i.bj, i32 %7, i64 1
  %9 = sitofp <2 x i32> %8 to <2 x double>
  %i.bk = insertelement <2 x i32> poison, i32 %i.au, i64 0
  %i.bl = insertelement <2 x i32> %i.bk, i32 %6, i64 1
  %i.bm = sitofp <2 x i32> %i.bl to <2 x double>
  %i.bn = fdiv <2 x double> %9, %i.bm             ; 2 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0
  %i.bp = call double @llvm.fmuladd.f64(double %i.bb, double %i.bo, double %i.bd)
  %i.bq = fptosi double %i.bp to i32
  %i.br = call noundef i32 @_ZNK15QAbstractSlider8pageStepEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %i.bs = sdiv i32 %i.br, 4
  %i.bt = sitofp i32 %i.bq to double
  %i.bu = sitofp i32 %i.bs to double
  %i.bv = fneg double %i.bu
  %i.bw = extractelement <2 x double> %i.bn, i64 1
  %i.bx = call double @llvm.fmuladd.f64(double %i.bt, double %i.bw, double %i.bv)
  %i.by = fptosi double %i.bx to i32
  call void @_ZN15QAbstractSlider8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef %i.by)
  br label %bb.f

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare noundef zeroext i1 @_ZNK5QRect8containsERK6QPointb(ptr noundef align 4 dereferenceable_or_null(16), ptr noundef align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK15QAbstractSlider8pageStepEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK15QAbstractSlider7maximumEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK15QAbstractSlider7minimumEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QProxyStyle12setBaseStyleEP6QStyle(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN13QStyleFactory6createERK7QString(ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN12QApplication5styleEv() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK6QStyle4nameEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QProxyStyleC2EP6QStyle(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK11QProxyStyle10metaObjectEv(ptr noundef align 8 dereferenceable_or_null(16)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN11QProxyStyle11qt_metacastEPKc(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZN11QProxyStyle11qt_metacallEN11QMetaObject4CallEiPPv(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN11QProxyStyleD2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN13OsbProxyStyleD0Ev(ptr noundef align 8 dereferenceable_or_null(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN11QProxyStyleD2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16) %0) #11
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 16) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN11QProxyStyle5eventEP6QEvent(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN7QObject11eventFilterEPS_P6QEvent(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject10timerEventEP11QTimerEvent(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject10childEventEP11QChildEvent(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject11customEventEP6QEvent(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject13connectNotifyERK11QMetaMethod(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 1) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject16disconnectNotifyERK11QMetaMethod(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 1) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QProxyStyle6polishEP7QWidget(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QProxyStyle8unpolishEP7QWidget(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QProxyStyle6polishEP12QApplication(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QProxyStyle8unpolishEP12QApplication(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QProxyStyle6polishER8QPalette(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare { i64, i64 } @_ZNK11QProxyStyle12itemTextRectERK12QFontMetricsRK5QRectibRK7QString(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(8), ptr noundef align 4 dereferenceable(16), i32 noundef, i1 noundef zeroext, ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare { i64, i64 } @_ZNK11QProxyStyle14itemPixmapRectERK5QRectiRK7QPixmap(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 4 dereferenceable(16), i32 noundef, ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QProxyStyle12drawItemTextEP8QPainterRK5QRectiRK8QPalettebRK7QStringNS5_9ColorRoleE(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef align 4 dereferenceable(16), i32 noundef, ptr noundef align 8 dereferenceable(12), i1 noundef zeroext, ptr noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QProxyStyle14drawItemPixmapEP8QPainterRK5QRectiRK7QPixmap(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef align 4 dereferenceable(16), i32 noundef, ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QProxyStyle15standardPaletteEv(ptr dead_on_unwind writable sret(%class.QPalette) align 8, ptr noundef align 8 dereferenceable_or_null(16)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QProxyStyle13drawPrimitiveEN6QStyle16PrimitiveElementEPK12QStyleOptionP8QPainterPK7QWidget(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QProxyStyle11drawControlEN6QStyle14ControlElementEPK12QStyleOptionP8QPainterPK7QWidget(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare { i64, i64 } @_ZNK11QProxyStyle14subElementRectEN6QStyle10SubElementEPK12QStyleOptionPK7QWidget(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QProxyStyle18drawComplexControlEN6QStyle14ComplexControlEPK19QStyleOptionComplexP8QPainterPK7QWidget(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK11QProxyStyle21hitTestComplexControlEN6QStyle14ComplexControlEPK19QStyleOptionComplexRK6QPointPK7QWidget(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, ptr noundef align 4 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare { i64, i64 } @_ZNK11QProxyStyle14subControlRectEN6QStyle14ComplexControlEPK19QStyleOptionComplexNS0_10SubControlEPK7QWidget(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK11QProxyStyle11pixelMetricEN6QStyle11PixelMetricEPK12QStyleOptionPK7QWidget(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @_ZNK11QProxyStyle16sizeFromContentsEN6QStyle12ContentsTypeEPK12QStyleOptionRK5QSizePK7QWidget(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, ptr noundef align 4 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef i32 @_ZNK13OsbProxyStyle9styleHintEN6QStyle9StyleHintEPK12QStyleOptionPK7QWidgetP16QStyleHintReturn(ptr noundef align 8 dereferenceable_or_null(16) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 96
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK11QProxyStyle9styleHintEN6QStyle9StyleHintEPK12QStyleOptionPK7QWidgetP16QStyleHintReturn(ptr noundef align 8 dereferenceable_or_null(16) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QProxyStyle14standardPixmapEN6QStyle14StandardPixmapEPK12QStyleOptionPK7QWidget(ptr dead_on_unwind writable sret(%class.QPixmap) align 8, ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QProxyStyle12standardIconEN6QStyle14StandardPixmapEPK12QStyleOptionPK7QWidget(ptr dead_on_unwind writable sret(%class.QIcon) align 8, ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QProxyStyle19generatedIconPixmapEN5QIcon4ModeERK7QPixmapPK12QStyleOption(ptr dead_on_unwind writable sret(%class.QPixmap) align 8, ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK11QProxyStyle13layoutSpacingEN11QSizePolicy11ControlTypeES1_N2Qt11OrientationEPK12QStyleOptionPK7QWidget(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK11QProxyStyle9styleHintEN6QStyle9StyleHintEPK12QStyleOptionPK7QWidgetP16QStyleHintReturn(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractSlider8setRangeEii(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget4moveERK6QPoint(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 4 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget6resizeERK5QSize(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 4 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #10

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef align 8 dereferenceable_or_null(12), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter9drawImageERK6QRectFRK6QImageS2_6QFlagsIN2Qt19ImageConversionFlagEE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32), ptr noundef align 8 dereferenceable(24), ptr noundef align 8 dereferenceable(32), i32) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
end_hunk_0
