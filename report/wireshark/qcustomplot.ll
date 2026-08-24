Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26891
inline.NumDeleted: 6475
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN11QCPItemTextC2EP11QCustomPlot:_Z7qstrlenPKc.exit.i.i
  %.pn46 = phi { ptr, i32 } [ %i.hs, %bb.ca ], [ %i.hr, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #51
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by, %bb.bv, %bb.bu
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %bb.cb ], [ %.pn44, %bb.by ], [ %i.ho, %bb.bv ], [ %i.hn, %bb.bu ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.fd) #51
  br label %.body158

.body158:                                         ; preds = %bb.ay, %bb.cc
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %bb.cc ], [ %i.fn, %bb.ay ]
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %i.fc) #51
  br label %bb.cd

bb.cd:                                            ; preds = %.body158, %bb.bt
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %.body158 ], [ %i.hm, %bb.bt ]
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %i.fb) #51
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bs
  %.pn46.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn, %bb.cd ], [ %i.hl, %bb.bs ]
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.fa) #51
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.br
  %.pn46.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn, %bb.ce ], [ %i.hk, %bb.br ]
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.ez) #51
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bq
  %.pn46.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn.pn, %bb.cf ], [ %i.hj, %bb.bq ]
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.ey) #51
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.bp
  %.pn46.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn.pn.pn, %bb.cg ], [ %i.hi, %bb.bp ]
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.ex) #51
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bo, %.body146, %.body134, %.body122, %.body110, %.body98, %.body86, %.body74, %.body62, %.body
  %.pn46.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn.pn.pn.pn, %bb.ch ], [ %i.hh, %bb.bo ], [ %.pn42, %.body146 ], [ %.pn40, %.body134 ], [ %.pn38, %.body122 ], [ %.pn36, %.body110 ], [ %.pn34, %.body98 ], [ %.pn32, %.body86 ], [ %.pn30, %.body74 ], [ %.pn28, %.body62 ], [ %.pn, %.body ]
  call void @_ZN15QCPAbstractItemD2Ev(ptr noundef align 8 dead_on_return(130) dereferenceable_or_null(130) %0) #51
  resume { ptr, i32 } %.pn46.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemText6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(360) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 240
  %i.b = tail call noundef align 8 dereferenceable(8) ptr @_ZN4QPenaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.a, ptr noundef align 8 dereferenceable(8) %1) #51 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemText14setSelectedPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(360) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248
  %i.b = tail call noundef align 8 dereferenceable(8) ptr @_ZN4QPenaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.a, ptr noundef align 8 dereferenceable(8) %1) #51 ; 0 uses
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemText8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(360) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 256
  %i.b = tail call noundef align 8 dereferenceable(8) ptr @_ZN6QBrushaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.a, ptr noundef align 8 dereferenceable(8) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemText16setSelectedBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(360) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 264
  %i.b = tail call noundef align 8 dereferenceable(8) ptr @_ZN6QBrushaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.a, ptr noundef align 8 dereferenceable(8) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define void @_ZN11QCPItemText8setColorERK6QColor(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(360) initializes((208, 222)) %0, ptr nofree noundef readonly align 4 captures(none) dereferenceable(14) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(14) %i.a, ptr noundef align 4 dereferenceable(14) %1, i64 14, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define void @_ZN11QCPItemText16setSelectedColorERK6QColor(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(360) initializes((224, 238)) %0, ptr nofree noundef readonly align 4 captures(none) dereferenceable(14) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(14) %i.a, ptr noundef align 4 dereferenceable(14) %1, i64 14, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemTextD2Ev(ptr noundef align 8 dead_on_return(360) dereferenceable_or_null(360) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV11QCPItemText, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.c, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN7QStringD2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.d = load ptr, ptr %i.a, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.d, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.a, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %i.e) #51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %i.f) #51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.g) #51
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.h) #51
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.i) #51
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.j) #51
  tail call void @_ZN15QCPAbstractItemD2Ev(ptr noundef align 8 dead_on_return(130) dereferenceable_or_null(130) %0) #51
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemTextD0Ev(ptr noundef align 8 dereferenceable_or_null(360) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN11QCPItemTextD1Ev(ptr noundef align 8 dead_on_return(360) dereferenceable_or_null(360) %0) #51
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 360) #53
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemText7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(360) %0, ptr noundef align 8 dereferenceable(12) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 272
  %i.b = tail call noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.a, ptr noundef align 8 dereferenceable(12) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemText15setSelectedFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(360) %0, ptr noundef align 8 dereferenceable(12) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %i.b = tail call noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.a, ptr noundef align 8 dereferenceable(12) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemText7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(360) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = tail call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, ptr noundef align 8 dereferenceable(24) %1) #51 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN11QCPItemText20setPositionAlignmentE6QFlagsIN2Qt13AlignmentFlagEE(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(360) initializes((328, 332)) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 328
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN11QCPItemText16setTextAlignmentE6QFlagsIN2Qt13AlignmentFlagEE(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(360) initializes((332, 336)) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 332
  store i32 %1, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN11QCPItemText11setRotationEd(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(360) initializes((336, 344)) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 336
  store double %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define void @_ZN11QCPItemText10setPaddingERK8QMargins(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(360) initializes((344, 360)) %0, ptr nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.a, ptr noundef align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef double @_ZNK11QCPItemText10selectTestERK7QPointFbP8QVariant(ptr noundef align 8 dereferenceable_or_null(360) %0, ptr noundef align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr nofree readnone captures(none) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QRect, align 16              ; 4 uses
  %5 = alloca %class.QTransform, align 8          ; 9 uses
  %6 = alloca %class.QPointF, align 8             ; 6 uses
  %7 = alloca %class.QFontMetrics, align 8        ; 7 uses
  %8 = alloca %class.QRectF, align 16             ; 7 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call { double, double } %i.h(ptr noundef align 8 dereferenceable_or_null(160) %i.e) ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0  ; 7 uses
  %i.k = extractvalue { double, double } %i.i, 1  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %5, ptr noundef nonnull align 8 dereferenceable(72) @constinit, i64 72, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -1024
  store i16 %i.n, ptr %i.l, align 8
  %i.o = call noundef align 8 dereferenceable(74) ptr @_ZN10QTransform9translateEdd(ptr noundef nonnull align 8 dereferenceable_or_null(74) %5, double noundef %i.j, double noundef %i.k) ; 0 uses
  %i.p = getelementptr i8, ptr %0, i64 336
  %i.q = load double, ptr %i.p, align 8
  %i.r = fneg double %i.q
  %i.s = call noundef align 8 dereferenceable(74) ptr @_ZN10QTransform6rotateEdN2Qt4AxisE(ptr noundef nonnull align 8 dereferenceable_or_null(74) %5, double noundef %i.r, i32 noundef 2) ; 0 uses
  %i.t = fneg double %i.j
  %i.u = fneg double %i.k
  %i.v = call noundef align 8 dereferenceable(74) ptr @_ZN10QTransform9translateEdd(ptr noundef nonnull align 8 dereferenceable_or_null(74) %5, double noundef %i.t, double noundef %i.u) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.w = call { double, double } @_ZNK10QTransform3mapERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(74) %5, ptr noundef align 8 dereferenceable(16) %1) ; 2 uses
  %i.x = extractvalue { double, double } %i.w, 0
  store double %i.x, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = extractvalue { double, double } %i.w, 1
  store double %i.z, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.aa = getelementptr i8, ptr %0, i64 272
  call void @_ZN12QFontMetricsC1ERK5QFont(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef align 8 dereferenceable(12) %i.aa)
  %i.ab = getelementptr i8, ptr %0, i64 332
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = or i32 %i.ac, 512
  %i.ae = getelementptr i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %4, align 16
  %i.af = invoke { i64, i64 } @_ZNK12QFontMetrics12boundingRectERK5QRectiRK7QStringiPi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.ad, ptr noundef align 8 dereferenceable(24) %i.ae, i32 noundef 0, ptr noundef null)
          to label %bb.d unwind label %bb.n       ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 344
  %9 = load i32, ptr %i.ai, align 8
  %10 = getelementptr i8, ptr %0, i64 348
  %11 = load i32, ptr %10, align 4
  %i.aj = getelementptr i8, ptr %0, i64 352
  %12 = load i32, ptr %i.aj, align 8
  %13 = getelementptr i8, ptr %0, i64 356
  %14 = load i32, ptr %13, align 4
  %.sroa.048.0.extract.trunc = trunc i64 %i.ag to i32
  %.neg56 = sub i32 %9, %.sroa.048.0.extract.trunc
  %.sroa.048.4.extract.shift = lshr i64 %i.ag, 32
  %.sroa.048.4.extract.trunc = trunc nuw i64 %.sroa.048.4.extract.shift to i32
  %.neg = sub i32 %11, %.sroa.048.4.extract.trunc
  %.sroa.6.8.extract.trunc = trunc i64 %i.ah to i32
  %15 = add i32 %12, %.sroa.6.8.extract.trunc
  %.sroa.6.12.extract.shift = lshr i64 %i.ah, 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32
  %16 = add i32 %14, %.sroa.6.12.extract.trunc
  %17 = add i32 %15, 1
  %18 = add i32 %17, %.neg56
  %19 = sitofp i32 %18 to double                  ; 3 uses
  %20 = add i32 %16, 1
  %21 = add i32 %20, %.neg
  %22 = sitofp i32 %21 to double                  ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 328
  %.sroa.0.0.copyload = load i32, ptr %i.ak, align 8 ; 5 uses
  switch i32 %.sroa.0.0.copyload, label %bb.e [
    i32 0, label %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit
    i32 33, label %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.al = and i32 %.sroa.0.0.copyload, 4
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = fmul nnan double %19, 5.000000e-01
  %i.an = fsub double %i.j, %i.am
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ao = and i32 %.sroa.0.0.copyload, 2
  %.not18.i = icmp eq i32 %i.ao, 0
  br i1 %.not18.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = fsub double %i.j, %19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.012.0.i = phi double [ %i.an, %bb.f ], [ %i.ap, %bb.h ], [ %i.j, %bb.g ] ; 3 uses
  %i.aq = and i32 %.sroa.0.0.copyload, 128
  %.not19.i = icmp eq i32 %i.aq, 0
  br i1 %.not19.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = fmul nnan double %22, 5.000000e-01
  %i.as = fsub double %i.k, %i.ar
  br label %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit

bb.k:                                             ; preds = %bb.i
  %i.at = and i32 %.sroa.0.0.copyload, 64
  %.not20.i = icmp eq i32 %i.at, 0
  br i1 %.not20.i, label %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = fsub double %i.k, %22
  br label %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit

_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit: ; preds = %bb.d, %bb.d, %bb.j, %bb.k, %bb.l
  %.sroa.012.1.i = phi double [ %.sroa.012.0.i, %bb.k ], [ %.sroa.012.0.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ], [ %i.j, %bb.d ], [ %i.j, %bb.d ]
  %.sroa.7.0.i = phi double [ %i.k, %bb.k ], [ %i.as, %bb.j ], [ %i.au, %bb.l ], [ %i.k, %bb.d ], [ %i.k, %bb.d ]
  %i.av = insertelement <2 x double> poison, double %.sroa.012.1.i, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %.sroa.7.0.i, i64 1 ; 2 uses
  %i.ax = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  %i.ay = fadd <2 x double> %i.aw, %i.ax
  %i.az = fptosi <2 x double> %i.ay to <2 x i32>
  %i.ba = sitofp <2 x i32> %i.az to <2 x double>
  store <2 x double> %i.ba, ptr %8, align 16
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %19, ptr %23, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 24
  store double %22, ptr %i.bb, align 8
  %i.bc = invoke noundef double @_ZNK15QCPAbstractItem12rectDistanceERK6QRectFRK7QPointFb(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.bd, %bb.n ]
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %bb.b, %bb.m
  %.0 = phi double [ %i.bc, %bb.m ], [ -1.000000e+00, %bb.b ]
  ret double %.0
}

; Function Attrs: null_pointer_is_valid
declare { double, double } @_ZNK10QTransform3mapERK7QPointF(ptr noundef align 8 dereferenceable_or_null(74), ptr noundef align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define { double, double } @_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(360) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %2, i32 %3) local_unnamed_addr #15 align 2 {
bb.a:
  %.sroa.012.0.copyload14 = load double, ptr %1, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload16 = load double, ptr %.sroa.7.0..sroa_idx15, align 8 ; 5 uses
  switch i32 %3, label %bb.b [
    i32 0, label %bb.j
    i32 33, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %3, 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load double, ptr %i.b, align 8
  %i.d = fmul double %i.c, 5.000000e-01
  %i.e = fsub double %.sroa.012.0.copyload14, %i.d
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = and i32 %3, 2
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8
  %i.i = fsub double %.sroa.012.0.copyload14, %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.012.0 = phi double [ %i.e, %bb.c ], [ %i.i, %bb.e ], [ %.sroa.012.0.copyload14, %bb.d ] ; 3 uses
  %i.j = and i32 %3, 128
  %.not19 = icmp eq i32 %i.j, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load double, ptr %i.k, align 8
  %i.m = fmul double %i.l, 5.000000e-01
  %i.n = fsub double %.sroa.7.0.copyload16, %i.m
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.o = and i32 %3, 64
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load double, ptr %i.p, align 8
  %i.r = fsub double %.sroa.7.0.copyload16, %i.q
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.g, %bb.i, %bb.h
  %.sroa.012.1 = phi double [ %.sroa.012.0, %bb.h ], [ %.sroa.012.0, %bb.g ], [ %.sroa.012.0, %bb.i ], [ %.sroa.012.0.copyload14, %bb.a ], [ %.sroa.012.0.copyload14, %bb.a ]
  %.sroa.7.0 = phi double [ %.sroa.7.0.copyload16, %bb.h ], [ %i.n, %bb.g ], [ %i.r, %bb.i ], [ %.sroa.7.0.copyload16, %bb.a ], [ %.sroa.7.0.copyload16, %bb.a ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.012.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.7.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemText4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(360) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QRect, align 16              ; 4 uses
  %3 = alloca %class.QTransform, align 8          ; 8 uses
  %4 = alloca %class.QFont, align 8               ; 7 uses
  %5 = alloca %class.QRect, align 4               ; 8 uses
  %6 = alloca %class.QFontMetrics, align 8        ; 7 uses
  %7 = alloca %class.QRect, align 4               ; 8 uses
  %8 = alloca %class.QPen, align 8                ; 7 uses
  %9 = alloca %class.QRect, align 8               ; 6 uses
  %10 = alloca %class.QRect, align 8              ; 5 uses
  %11 = alloca %class.QRect, align 8              ; 5 uses
  %12 = alloca %class.QRect, align 8              ; 5 uses
  %13 = alloca %class.QBrush, align 8             ; 11 uses
  %14 = alloca %class.QBrush, align 8             ; 9 uses
  %15 = alloca %class.QPen, align 8               ; 7 uses
  %16 = alloca %class.QColor, align 8             ; 7 uses
  %17 = alloca %class.QPen, align 8               ; 7 uses
  %18 = alloca %class.QPen, align 8               ; 7 uses
  %19 = alloca %class.QBrush, align 8             ; 7 uses
  %20 = alloca %class.QPen, align 8               ; 7 uses
  %21 = alloca %class.QColor, align 8             ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { double, double } %i.e(ptr noundef align 8 dereferenceable_or_null(160) %i.b) ; 2 uses
  %i.g = extractvalue { double, double } %i.f, 0
  %i.h = extractvalue { double, double } %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.i = tail call noundef align 8 dereferenceable(74) ptr @_ZNK8QPainter9transformEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  %i.j = call noundef align 8 dereferenceable(74) ptr @_ZN10QTransform9translateEdd(ptr noundef nonnull align 8 dereferenceable_or_null(74) %3, double noundef %i.g, double noundef %i.h) ; 0 uses
  %i.k = getelementptr i8, ptr %0, i64 336
  %i.l = load double, ptr %i.k, align 8           ; 2 uses
  %i.m = call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ugt double %i.m, f0x3D719799812DEA11
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = call noundef align 8 dereferenceable(74) ptr @_ZN10QTransform6rotateEdN2Qt4AxisE(ptr noundef nonnull align 8 dereferenceable_or_null(74) %3, double noundef %i.l, i32 noundef 2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  %i.p = getelementptr i8, ptr %0, i64 129        ; 9 uses
  %i.q = load i8, ptr %i.p, align 1, !range !6, !noalias !1366, !noundef !7
  %i.r = trunc nuw i8 %i.q to i1
  %.v.i = select i1 %i.r, i64 288, i64 272
  %i.s = getelementptr i8, ptr %0, i64 %.v.i
  call void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %4, ptr noundef align 8 dereferenceable(12) %i.s)
  invoke void @_ZN8QPainter7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %bb.d unwind label %bb.w

bb.d:                                             ; preds = %bb.c
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @_ZNK8QPainter11fontMetricsEv(ptr dead_on_unwind nonnull writable sret(%class.QFontMetrics) align 8 %6, ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.t = getelementptr i8, ptr %0, i64 332        ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = or i32 %i.u, 512
  %i.w = getelementptr i8, ptr %0, i64 304        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %2, align 16
  %i.x = invoke { i64, i64 } @_ZNK12QFontMetrics12boundingRectERK5QRectiRK7QStringiPi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %6, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.v, ptr noundef align 8 dereferenceable(24) %i.w, i32 noundef 0, ptr noundef null)
          to label %bb.e unwind label %bb.x       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %i.y = extractvalue { i64, i64 } %i.x, 0        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = extractvalue { i64, i64 } %i.x, 1       ; 2 uses
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.ab = getelementptr i8, ptr %0, i64 344
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 348
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 352
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %0, i64 356
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = trunc i64 %i.y to i32                   ; 2 uses
  %.neg = sub i32 %i.ac, %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.al = lshr i64 %i.y, 32
  %i.am = trunc nuw i64 %i.al to i32              ; 2 uses
  %.neg140 = sub i32 %i.ae, %i.am
  %i.an = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ao = add i32 %i.ag, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 12
end_hunk_0
begin_hunk_1_@_ZN11QCPItemText4drawEP10QCPPainter:bb.a
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.ao

bb.y:                                             ; preds = %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %bb.an

bb.z:                                             ; preds = %bb.p
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.aa:                                            ; preds = %bb.q
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.s
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %17) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #51
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.em, %bb.ab ], [ %i.el, %bb.aa ] ; 2 uses
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %15) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  br i1 %.not.not, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %14) #51
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ek, %bb.z ], [ %.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %.pn.pn134 = phi { ptr, i32 } [ %.pn.pn.ph, %bb.ae ], [ %.pn, %bb.ac ]
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  br label %bb.am

bb.ag:                                            ; preds = %bb.u, %bb.t
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %18) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #51
  br label %bb.am

bb.ah:                                            ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %19) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #51
  br label %bb.am

bb.ai:                                            ; preds = %.split, %bb.v, %.critedge61
  call void @_ZN8QPainter8setBrushEN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #51
  %i.ep = load i8, ptr %i.p, align 1, !range !6, !noundef !7
  %i.eq = trunc nuw i8 %i.ep to i1
  %.v.i93 = select i1 %i.eq, i64 224, i64 208
  %i.er = getelementptr i8, ptr %0, i64 %.v.i93   ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.er, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %21, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN4QPenC1ERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %20, ptr noundef nonnull align 4 dereferenceable(14) %21)
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc97 unwind label %bb.ak

.noexc97:                                         ; preds = %bb.ai
  %i.es = getelementptr i8, ptr %1, i64 8
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = and i32 %i.et, 4
  %.not.i96 = icmp eq i32 %i.eu, 0
  br i1 %.not.i96, label %_ZN10QCPPainter6setPenERK4QPen.exit99, label %bb.aj

bb.aj:                                            ; preds = %.noexc97
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit99 unwind label %bb.ak

_ZN10QCPPainter6setPenERK4QPen.exit99:            ; preds = %.noexc97, %bb.aj
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %20) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #51
  %i.ev = load i32, ptr %i.t, align 4
  %i.ew = or i32 %i.ev, 512
  call void @_ZN8QPainter8drawTextERK5QRectiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.ew, ptr noundef align 8 dereferenceable(24) %i.w, ptr noundef null)
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %20) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #51
  br label %bb.am

bb.al:                                            ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit99, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  ret void

bb.am:                                            ; preds = %bb.ak, %bb.ah, %bb.ag, %bb.af
  %.pn53 = phi { ptr, i32 } [ %i.ex, %bb.ak ], [ %i.eo, %bb.ah ], [ %i.en, %bb.ag ], [ %.pn.pn134, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.y
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %bb.am ], [ %i.ej, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.x
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn53.pn, %bb.an ], [ %i.ei, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.w
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn, %bb.ao ], [ %i.eh, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  resume { ptr, i32 } %.pn53.pn.pn.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK11QCPItemText8mainFontEv(ptr dead_on_unwind noalias writable sret(%class.QFont) align 8 %0, ptr noundef align 8 dereferenceable_or_null(360) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 129
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 288, i64 272
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN5QFontC1ERKS_(ptr noundef align 8 dereferenceable_or_null(12) %0, ptr noundef align 8 dereferenceable(12) %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZNK11QCPItemText7mainPenEv(ptr dead_on_unwind noalias writable sret(%class.QPen) align 8 %0, ptr noundef align 8 dereferenceable_or_null(360) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 129
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 248, i64 240
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN4QPenC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %i.d) #51
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK11QCPItemText9mainBrushEv(ptr dead_on_unwind noalias writable sret(%class.QBrush) align 8 %0, ptr noundef align 8 dereferenceable_or_null(360) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 129
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 264, i64 256
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN6QBrushC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK11QCPItemText9mainColorEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(360) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 129
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 224, i64 208
  %i.d = getelementptr i8, ptr %0, i64 %.v        ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { double, double } @_ZNK11QCPItemText19anchorPixelPositionEi(ptr noundef align 8 dereferenceable_or_null(360) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QRect, align 16              ; 4 uses
  %5 = alloca %class.QTransform, align 8          ; 8 uses
  %6 = alloca %class.QFontMetrics, align 8        ; 7 uses
  %7 = alloca %class.QFont, align 8               ; 7 uses
  %8 = alloca %class.QRectF, align 16             ; 7 uses
  %9 = alloca %class.QPolygonF, align 8           ; 16 uses
  %10 = alloca %class.QPolygonF, align 8          ; 9 uses
  %11 = alloca %class.QDebug, align 8             ; 12 uses
  %12 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { double, double } %i.e(ptr noundef align 8 dereferenceable_or_null(160) %i.b) ; 2 uses
  %i.g = extractvalue { double, double } %i.f, 0
  %i.h = extractvalue { double, double } %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %5, ptr noundef nonnull align 8 dereferenceable(72) @constinit, i64 72, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, -1024
  store i16 %i.k, ptr %i.i, align 8
  %i.l = call noundef align 8 dereferenceable(74) ptr @_ZN10QTransform9translateEdd(ptr noundef nonnull align 8 dereferenceable_or_null(74) %5, double noundef %i.g, double noundef %i.h) ; 0 uses
  %i.m = getelementptr i8, ptr %0, i64 336
  %i.n = load double, ptr %i.m, align 8           ; 2 uses
  %i.o = call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp ugt double %i.o, f0x3D719799812DEA11
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = call noundef align 8 dereferenceable(74) ptr @_ZN10QTransform6rotateEdN2Qt4AxisE(ptr noundef nonnull align 8 dereferenceable_or_null(74) %5, double noundef %i.n, i32 noundef 2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.r = getelementptr i8, ptr %0, i64 129
  %i.s = load i8, ptr %i.r, align 1, !range !6, !noalias !1390, !noundef !7
  %i.t = trunc nuw i8 %i.s to i1
  %.v.i = select i1 %i.t, i64 288, i64 272
  %i.u = getelementptr i8, ptr %0, i64 %.v.i
  call void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %7, ptr noundef align 8 dereferenceable(12) %i.u)
  invoke void @_ZN12QFontMetricsC1ERK5QFont(ptr noundef nonnull align 8 dereferenceable_or_null(8) %6, ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  %i.v = getelementptr i8, ptr %0, i64 332
  %i.w = load i32, ptr %i.v, align 4
  %i.x = or i32 %i.w, 512
  %i.y = getelementptr i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %4, align 16
  %i.z = invoke { i64, i64 } @_ZNK12QFontMetrics12boundingRectERK5QRectiRK7QStringiPi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %6, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.x, ptr noundef align 8 dereferenceable(24) %i.y, i32 noundef 0, ptr noundef null)
          to label %bb.e unwind label %bb.r       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  %i.ac = getelementptr i8, ptr %0, i64 344
  %i.ad = getelementptr i8, ptr %0, i64 352
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.af = load <2 x i32>, ptr %i.ac, align 8
  %i.ag = load <2 x i32>, ptr %i.ad, align 8
  %i.ah = bitcast i64 %i.aa to <2 x i32>
  %i.ai = sub <2 x i32> %i.af, %i.ah
  %i.aj = bitcast i64 %i.ab to <2 x i32>
  %i.ak = add <2 x i32> %i.aj, splat (i32 1)
  %i.al = add <2 x i32> %i.ai, %i.ak
  %i.am = add <2 x i32> %i.al, %i.ag
  %i.an = sitofp <2 x i32> %i.am to <2 x double>  ; 2 uses
  %14 = extractelement <2 x double> %i.an, i64 0  ; 3 uses
  store double %14, ptr %13, align 16
  %15 = extractelement <2 x double> %i.an, i64 1  ; 3 uses
  store double %15, ptr %i.ae, align 8
  %i.ao = getelementptr i8, ptr %0, i64 328
  %.sroa.0.0.copyload = load i32, ptr %i.ao, align 8 ; 5 uses
  switch i32 %.sroa.0.0.copyload, label %bb.f [
    i32 0, label %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit
    i32 33, label %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.ap = and i32 %.sroa.0.0.copyload, 4
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = fmul nnan double %14, 5.000000e-01
  %i.ar = fsub double 0.000000e+00, %i.aq
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.as = and i32 %.sroa.0.0.copyload, 2
  %.not18.i = icmp eq i32 %i.as, 0
  br i1 %.not18.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = fsub double 0.000000e+00, %14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.012.0.i = phi double [ %i.ar, %bb.g ], [ %i.at, %bb.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %i.au = and i32 %.sroa.0.0.copyload, 128
  %.not19.i = icmp eq i32 %i.au, 0
  br i1 %.not19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = fmul nnan double %15, 5.000000e-01
  %i.aw = fsub double 0.000000e+00, %i.av
  br label %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = and i32 %.sroa.0.0.copyload, 64
  %.not20.i = icmp eq i32 %i.ax, 0
  br i1 %.not20.i, label %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = fsub double 0.000000e+00, %15
  br label %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit

_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit: ; preds = %bb.e, %bb.e, %bb.k, %bb.l, %bb.m
  %.sroa.012.1.i = phi double [ %.sroa.012.0.i, %bb.l ], [ %.sroa.012.0.i, %bb.k ], [ %.sroa.012.0.i, %bb.m ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.e ]
  %.sroa.7.0.i = phi double [ 0.000000e+00, %bb.l ], [ %i.aw, %bb.k ], [ %i.ay, %bb.m ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.e ]
  %i.az = insertelement <2 x double> poison, double %.sroa.012.1.i, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %.sroa.7.0.i, i64 1 ; 2 uses
  %i.bb = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ba)
  %i.bc = fadd <2 x double> %i.ba, %i.bb
  %i.bd = fptosi <2 x double> %i.bc to <2 x i32>
  %i.be = sitofp <2 x i32> %i.bd to <2 x double>
  store <2 x double> %i.be, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  invoke void @_ZN9QPolygonFC1ERK6QRectF(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit
  invoke void @_ZNK10QTransform3mapERK9QPolygonF(ptr dead_on_unwind nonnull writable sret(%class.QPolygonF) align 8 %9, ptr noundef nonnull align 8 dereferenceable_or_null(74) %5, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QPointFED2Ev.exit, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i: ; preds = %bb.o
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bg, 1
  br i1 %.not.i.i, label %bb.p, label %_ZN5QListI7QPointFED2Ev.exit

bb.p:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i
  %i.bh = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bh, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI7QPointFED2Ev.exit

_ZN5QListI7QPointFED2Ev.exit:                     ; preds = %bb.o, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  switch i32 %1, label %bb.ad [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
    i32 4, label %bb.z
    i32 5, label %bb.aa
    i32 6, label %bb.ab
    i32 7, label %bb.ac
  ]

bb.q:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.ax

bb.r:                                             ; preds = %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.s:                                             ; preds = %_ZNK11QCPItemText16getTextDrawPointERK7QPointFRK6QRectF6QFlagsIN2Qt13AlignmentFlagEE.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI7QPointFED2Ev.exit22

bb.t:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bm = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i19, label %_ZN5QListI7QPointFED2Ev.exit22, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i20

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i20: ; preds = %bb.t
  %i.bn = atomicrmw sub ptr %i.bm, i32 1 acq_rel, align 4
  %.not.i.i21 = icmp eq i32 %i.bn, 1
  br i1 %.not.i.i21, label %bb.u, label %_ZN5QListI7QPointFED2Ev.exit22

bb.u:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i20
  %i.bo = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bo, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI7QPointFED2Ev.exit22

_ZN5QListI7QPointFED2Ev.exit22:                   ; preds = %bb.u, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i20, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.s ], [ %i.bl, %bb.t ], [ %i.bl, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i20 ], [ %i.bl, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %_ZN5QListI7QPointFED2Ev.exit59

bb.v:                                             ; preds = %_ZN5QListI7QPointFED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load <2 x double>, ptr %i.bq, align 8
  br label %bb.au

bb.w:                                             ; preds = %_ZN5QListI7QPointFED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %i.bv = load <2 x double>, ptr %i.bt, align 8
  %i.bw = load <2 x double>, ptr %i.bu, align 8
  %i.bx = fadd <2 x double> %i.bv, %i.bw
  %i.by = fmul <2 x double> %i.bx, splat (double 5.000000e-01)
  br label %bb.au

bb.x:                                             ; preds = %_ZN5QListI7QPointFED2Ev.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load <2 x double>, ptr %i.cb, align 8
  br label %bb.au

bb.y:                                             ; preds = %_ZN5QListI7QPointFED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %i.cg = getelementptr i8, ptr %i.ce, i64 32
  %i.ch = load <2 x double>, ptr %i.cf, align 8
  %i.ci = load <2 x double>, ptr %i.cg, align 8
  %i.cj = fadd <2 x double> %i.ch, %i.ci
  %i.ck = fmul <2 x double> %i.cj, splat (double 5.000000e-01)
  br label %bb.au

bb.z:                                             ; preds = %_ZN5QListI7QPointFED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 32
  %i.co = load <2 x double>, ptr %i.cn, align 8
  br label %bb.au

bb.aa:                                            ; preds = %_ZN5QListI7QPointFED2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 32
  %i.cs = getelementptr i8, ptr %i.cq, i64 48
  %i.ct = load <2 x double>, ptr %i.cr, align 8
  %i.cu = load <2 x double>, ptr %i.cs, align 8
  %i.cv = fadd <2 x double> %i.ct, %i.cu
  %i.cw = fmul <2 x double> %i.cv, splat (double 5.000000e-01)
  br label %bb.au

bb.ab:                                            ; preds = %_ZN5QListI7QPointFED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 48
  %i.da = load <2 x double>, ptr %i.cz, align 8
  br label %bb.au

bb.ac:                                            ; preds = %_ZN5QListI7QPointFED2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 48
  %i.de = load <2 x double>, ptr %i.dd, align 8
  %i.df = load <2 x double>, ptr %i.dc, align 8
  %i.dg = fadd <2 x double> %i.de, %i.df
  %i.dh = fmul <2 x double> %i.dg, splat (double 5.000000e-01)
  br label %bb.au

bb.ad:                                            ; preds = %_ZN5QListI7QPointFED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  store i32 2, ptr %12, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.di, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.dj, align 8
  invoke void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %11, ptr noundef nonnull align 8 dereferenceable_or_null(32) %12)
          to label %bb.ae unwind label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  %i.dk = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 59, ptr nonnull @__PRETTY_FUNCTION__._ZNK11QCPItemText19anchorPixelPositionEi)
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %bb.ae
  %i.dl = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.af unwind label %bb.ai     ; 0 uses

bb.af:                                            ; preds = %.noexc
  %i.dm = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.af
  %i.dn = atomicrmw sub ptr %i.dm, i32 1 acq_rel, align 4
  %.not.i.i.i39 = icmp eq i32 %i.dn, 1
  br i1 %.not.i.i.i39, label %bb.ag, label %_ZN7QStringD2Ev.exit.i

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.do = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.do, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.ag, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %i.dp = load ptr, ptr %11, align 8              ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 48
  %i.dr = load i8, ptr %i.dq, align 8, !range !6, !noundef !7
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.ah, label %_ZN6QDebuglsEPKc.exit
end_hunk_1
