Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/utils_dcraw?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN6LibRaw18crop_masked_pixelsEv:bb.a
  %i.dx = icmp eq i64 %.unpack53, ptrtoint (ptr @_ZN6LibRaw18canon_600_load_rawEv to i64)
  %i.dy = icmp eq i64 %.unpack55, 0
  %i.dz = and i1 %i.dx, %i.dy
  br i1 %i.dz, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !86
  %i.ec = load i16, ptr %i.by, align 2, !tbaa !130
  %i.ed = icmp ult i16 %i.eb, %i.ec
  br i1 %i.ed, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ee = load <4 x i32>, ptr %i.bv, align 4, !tbaa !81
  %i.ef = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ee)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 153892
  %i.eh = load <4 x i32>, ptr %i.eg, align 4, !tbaa !81
  %i.ei = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eh)
  %spec.select67 = tail call i32 @llvm.umax.i32(i32 %i.ei, i32 1)
  %i.ej = udiv i32 %i.ef, %spec.select67
  %i.ek = add i32 %i.ej, -4
  br label %.sink.split

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 153892
  %i.em = load i32, ptr %i.el, align 4, !tbaa !81 ; 2 uses
  %i.en = icmp ult i32 %.1.lcssa, %i.em
  br i1 %i.en, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 153896
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !81 ; 2 uses
  %.not56 = icmp eq i32 %i.ep, 0
  br i1 %.not56, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 153900
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !81 ; 2 uses
  %.not57 = icmp eq i32 %i.er, 0
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 153904
  %i.et = load i32, ptr %i.es, align 8, !tbaa !81 ; 2 uses
  %.not58 = icmp eq i32 %i.et, 0
  br i1 %.not58, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.ev = load <4 x i32>, ptr %i.bv, align 4, !tbaa !81
  %i.ew = insertelement <4 x i32> poison, i32 %i.em, i64 0
  %i.ex = insertelement <4 x i32> %i.ew, i32 %i.ep, i64 1
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.er, i64 2
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.et, i64 3
  %i.fa = udiv <4 x i32> %i.ev, %i.ez
  store <4 x i32> %i.fa, ptr %i.eu, align 8, !tbaa !81
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 136696
  store i32 0, ptr %i.fb, align 8, !tbaa !81
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 136692
  store i32 0, ptr %i.fc, align 4, !tbaa !81
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 136688
  store i32 0, ptr %i.fd, align 8, !tbaa !81
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %.preheader
  %.sink = phi i32 [ 0, %.preheader ], [ %i.ek, %bb.o ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 %.sink, ptr %i.fe, align 8, !tbaa !80
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.p, %bb.q, %bb.r, %bb.s
  ret void
}

declare void @_ZN6LibRaw14canon_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw22lossless_jpeg_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw10crxLoadRawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw18canon_600_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw13sony_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw18eight_bit_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw18kodak_262_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw15packed_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw14nokia_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw17broadcom_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw13pseudoinverseEPA3_dS1_i(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.a, label %.preheader74.us.preheader, label %.preheader71

.preheader74.us.preheader:                        ; preds = %bb.a
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %3, i32 4)
  %wide.trip.count = zext nneg i32 %invariant.smin to i64 ; 9 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.b = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> %i.b, <4 x double> poison), !tbaa !82 ; 2 uses
  %i.c = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather, %wide.masked.gather
  %i.d = select reassoc nsz arcp contract afn <4 x i1> %i.b, <4 x double> %i.c, <4 x double> zeroinitializer
  %i.e = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.d)
  %trip.count.minus.1296 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert297 = insertelement <4 x i64> poison, i64 %trip.count.minus.1296, i64 0
  %broadcast.splat298 = shufflevector <4 x i64> %broadcast.splatinsert297, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.f = icmp uge <4 x i64> %broadcast.splat298, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep303 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.gather304 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep303, <4 x i1> %i.f, <4 x double> poison), !tbaa !82
  %wide.gep305 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep303, i64 8
  %wide.masked.gather306 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep305, <4 x i1> %i.f, <4 x double> poison), !tbaa !82
  %i.g = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather306, %wide.masked.gather304
  %i.h = select reassoc nsz arcp contract afn <4 x i1> %i.f, <4 x double> %i.g, <4 x double> zeroinitializer
  %i.i = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.h)
  %trip.count.minus.1313 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert314 = insertelement <4 x i64> poison, i64 %trip.count.minus.1313, i64 0
  %broadcast.splat315 = shufflevector <4 x i64> %broadcast.splatinsert314, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.j = icmp uge <4 x i64> %broadcast.splat315, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep320 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.gather321 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep320, <4 x i1> %i.j, <4 x double> poison), !tbaa !82
  %wide.gep322 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep320, i64 16
  %wide.masked.gather323 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep322, <4 x i1> %i.j, <4 x double> poison), !tbaa !82
  %i.k = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather323, %wide.masked.gather321
  %i.l = select reassoc nsz arcp contract afn <4 x i1> %i.j, <4 x double> %i.k, <4 x double> zeroinitializer
  %i.m = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.l)
  %trip.count.minus.1330 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert331 = insertelement <4 x i64> poison, i64 %trip.count.minus.1330, i64 0
  %broadcast.splat332 = shufflevector <4 x i64> %broadcast.splatinsert331, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.n = icmp uge <4 x i64> %broadcast.splat332, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep337 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep338 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep337, i64 8
  %wide.masked.gather339 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep338, <4 x i1> %i.n, <4 x double> poison), !tbaa !82
  %wide.masked.gather340 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep337, <4 x i1> %i.n, <4 x double> poison), !tbaa !82
  %i.o = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather340, %wide.masked.gather339
  %i.p = select reassoc nsz arcp contract afn <4 x i1> %i.n, <4 x double> %i.o, <4 x double> zeroinitializer
  %i.q = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.p)
  %trip.count.minus.1347 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert348 = insertelement <4 x i64> poison, i64 %trip.count.minus.1347, i64 0
  %broadcast.splat349 = shufflevector <4 x i64> %broadcast.splatinsert348, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.r = icmp uge <4 x i64> %broadcast.splat349, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep354 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.gep355 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep354, i64 8
  %wide.masked.gather356 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep355, <4 x i1> %i.r, <4 x double> poison), !tbaa !82 ; 2 uses
  %i.s = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather356, %wide.masked.gather356
  %i.t = select reassoc nsz arcp contract afn <4 x i1> %i.r, <4 x double> %i.s, <4 x double> zeroinitializer
  %i.u = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.t)
  %trip.count.minus.1363 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert364 = insertelement <4 x i64> poison, i64 %trip.count.minus.1363, i64 0
  %broadcast.splat365 = shufflevector <4 x i64> %broadcast.splatinsert364, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.v = icmp uge <4 x i64> %broadcast.splat365, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep370 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep371 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep370, i64 8
  %wide.masked.gather372 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep371, <4 x i1> %i.v, <4 x double> poison), !tbaa !82
  %wide.gep373 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep370, i64 16
  %wide.masked.gather374 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep373, <4 x i1> %i.v, <4 x double> poison), !tbaa !82
  %i.w = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather374, %wide.masked.gather372
  %i.x = select reassoc nsz arcp contract afn <4 x i1> %i.v, <4 x double> %i.w, <4 x double> zeroinitializer
  %i.y = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.x)
  %trip.count.minus.1381 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert382 = insertelement <4 x i64> poison, i64 %trip.count.minus.1381, i64 0
  %broadcast.splat383 = shufflevector <4 x i64> %broadcast.splatinsert382, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.z = icmp uge <4 x i64> %broadcast.splat383, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep388 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep389 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep388, i64 16
  %wide.masked.gather390 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep389, <4 x i1> %i.z, <4 x double> poison), !tbaa !82
  %wide.masked.gather391 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep388, <4 x i1> %i.z, <4 x double> poison), !tbaa !82
  %i.aa = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather391, %wide.masked.gather390
  %i.ab = select reassoc nsz arcp contract afn <4 x i1> %i.z, <4 x double> %i.aa, <4 x double> zeroinitializer
  %i.ac = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ab)
  %trip.count.minus.1416 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert417 = insertelement <4 x i64> poison, i64 %trip.count.minus.1416, i64 0
  %broadcast.splat418 = shufflevector <4 x i64> %broadcast.splatinsert417, <4 x i64> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1398 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert399 = insertelement <4 x i64> poison, i64 %trip.count.minus.1398, i64 0
  %broadcast.splat400 = shufflevector <4 x i64> %broadcast.splatinsert399, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ad = icmp uge <4 x i64> %broadcast.splat400, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep405 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep408 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep405, i64 8
  %wide.masked.gather409 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep408, <4 x i1> %i.ad, <4 x double> poison), !tbaa !82
  %wide.gep406 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep405, i64 16
  %wide.masked.gather407 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep406, <4 x i1> %i.ad, <4 x double> poison), !tbaa !82
  %i.ae = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather409, %wide.masked.gather407
  %i.af = select reassoc nsz arcp contract afn <4 x i1> %i.ad, <4 x double> %i.ae, <4 x double> zeroinitializer
  %i.ag = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.af)
  %i.ah = icmp uge <4 x i64> %broadcast.splat418, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep423 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.gep424 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep423, i64 16
  %wide.masked.gather425 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep424, <4 x i1> %i.ah, <4 x double> poison), !tbaa !82 ; 2 uses
  %i.ai = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather425, %wide.masked.gather425
  %i.aj = select reassoc nsz arcp contract afn <4 x i1> %i.ah, <4 x double> %i.ai, <4 x double> zeroinitializer
  %i.ak = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.aj)
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader74.us.preheader, %bb.a
  %.sroa.216.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.ak, %.preheader74.us.preheader ]
  %.sroa.200.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.ag, %.preheader74.us.preheader ]
  %.sroa.184.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.ac, %.preheader74.us.preheader ] ; 4 uses
  %.sroa.126.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.y, %.preheader74.us.preheader ]
  %.sroa.109.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.u, %.preheader74.us.preheader ]
  %.sroa.93.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.q, %.preheader74.us.preheader ] ; 4 uses
  %.sroa.35.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.m, %.preheader74.us.preheader ]
  %.sroa.19.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.i, %.preheader74.us.preheader ]
  %.sroa.0.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.e, %.preheader74.us.preheader ] ; 2 uses
  %i.al = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.sroa.0.0)
  %i.am = fcmp reassoc nsz arcp contract afn ogt double %i.al, f0x3EE4F8B580000000 ; 2 uses
  %4 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.sroa.35.0, i64 0 ; 2 uses
  %5 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %.sroa.19.0, i64 1 ; 2 uses
  %i.an = insertelement <2 x double> poison, double %.sroa.0.0, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = fdiv reassoc nsz arcp contract afn <2 x double> %5, %i.ao
  %i.aq = fdiv reassoc nsz arcp contract afn <2 x double> %4, %i.ao
  %i.ar = select i1 %i.am, <2 x double> %i.aq, <2 x double> %4 ; 3 uses
  %i.as = select i1 %i.am, <2 x double> %i.ap, <2 x double> %5 ; 2 uses
  %6 = extractelement <2 x double> %i.as, i64 1   ; 6 uses
  %i.at = extractelement <2 x double> %i.ar, i64 1 ; 4 uses
  %i.au = fmul reassoc nsz arcp contract afn double %6, %.sroa.93.0
  %i.av = fsub reassoc nsz arcp contract afn double %.sroa.109.0, %i.au ; 4 uses
  %7 = insertelement <2 x double> poison, double %.sroa.93.0, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = fmul reassoc nsz arcp contract afn <2 x double> %i.ar, %8
  %i.aw = fneg reassoc nsz arcp contract afn double %.sroa.93.0
  %i.ax = extractelement <2 x double> %i.as, i64 0 ; 3 uses
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, %i.aw ; 2 uses
  %10 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.sroa.126.0, i64 0
  %11 = fsub reassoc nsz arcp contract afn <2 x double> %10, %9 ; 2 uses
  %12 = fneg reassoc nsz arcp contract afn double %.sroa.93.0
  %13 = fmul reassoc nsz arcp contract afn double %i.at, %12 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn double %6, %.sroa.184.0
  %i.ba = fsub reassoc nsz arcp contract afn double %.sroa.200.0, %i.az ; 4 uses
  %14 = extractelement <2 x double> %i.ar, i64 0  ; 2 uses
  %i.bb = fmul reassoc nsz arcp contract afn double %14, %.sroa.184.0
  %i.bc = fneg reassoc nsz arcp contract afn double %.sroa.184.0
  %i.bd = fmul reassoc nsz arcp contract afn double %i.ax, %i.bc
  %i.be = fmul reassoc nsz arcp contract afn double %i.at, %.sroa.184.0 ; 2 uses
  %i.bf = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.av)
  %i.bg = fcmp reassoc nsz arcp contract afn ogt double %i.bf, f0x3EE4F8B580000000 ; 3 uses
  %15 = fdiv reassoc nsz arcp contract afn double %i.ay, %i.av
  %i.bh = insertelement <2 x double> poison, double %i.av, i64 0
  %16 = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fdiv reassoc nsz arcp contract afn <2 x double> %11, %16
  %18 = fdiv reassoc nsz arcp contract afn double %13, %i.av
  %.sroa.170.2 = select nsz i1 %i.bg, double %18, double %13 ; 3 uses
  %.sroa.142.2 = select nsz i1 %i.bg, double %15, double %i.ay ; 3 uses
  %i.bi = select i1 %i.bg, <2 x double> %17, <2 x double> %11 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0 ; 5 uses
  %i.bk = fmul reassoc nsz arcp contract afn double %i.bj, %6
  %i.bl = fsub reassoc nsz arcp contract afn double %14, %i.bk ; 3 uses
  %i.bm = fmul reassoc nsz arcp contract afn double %.sroa.142.2, %6
  %i.bn = extractelement <2 x double> %i.bi, i64 1 ; 3 uses
  %i.bo = fmul reassoc nsz arcp contract afn double %i.bn, %6
  %i.bp = fmul reassoc nsz arcp contract afn double %.sroa.170.2, %6
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bj, %i.ba
  %i.br = fadd reassoc nsz arcp contract afn double %i.bb, %i.bq
  %i.bs = fsub reassoc nsz arcp contract afn double %.sroa.216.0, %i.br ; 4 uses
  %i.bt = fmul reassoc nsz arcp contract afn double %.sroa.142.2, %i.ba
  %i.bu = fsub reassoc nsz arcp contract afn double %i.bd, %i.bt ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn double %i.bn, %i.ba
  %i.bw = fadd reassoc nsz arcp contract afn double %i.be, %i.bv
  %i.bx = fneg reassoc nsz arcp contract afn double %i.bw ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn double %.sroa.170.2, %i.ba
  %i.bz = fadd reassoc nsz arcp contract afn double %i.be, %i.by
  %i.ca = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.bz ; 2 uses
  %i.cb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bs)
  %i.cc = fcmp reassoc nsz arcp contract afn ogt double %i.cb, f0x3EE4F8B580000000 ; 3 uses
  %i.cd = fdiv reassoc nsz arcp contract afn double %i.bu, %i.bs
  %i.ce = fdiv reassoc nsz arcp contract afn double %i.bx, %i.bs
  %i.cf = fdiv reassoc nsz arcp contract afn double %i.ca, %i.bs
  %.sroa.261.3 = select nsz i1 %i.cc, double %i.cf, double %i.ca ; 6 uses
  %.sroa.247.3 = select nsz i1 %i.cc, double %i.ce, double %i.bx ; 6 uses
  %.sroa.233.3 = select nsz i1 %i.cc, double %i.cd, double %i.bu ; 6 uses
  %i.cg = fmul reassoc nsz arcp contract afn double %.sroa.233.3, %i.bl
  %i.ch = fadd reassoc nsz arcp contract afn double %i.bm, %i.cg
  %i.ci = fsub reassoc nsz arcp contract afn double %i.ax, %i.ch ; 4 uses
  %i.cj = fmul reassoc nsz arcp contract afn double %.sroa.247.3, %i.bl
  %i.ck = fadd reassoc nsz arcp contract afn double %i.bo, %i.cj
  %i.cl = fsub reassoc nsz arcp contract afn double %i.at, %i.ck ; 4 uses
  %i.cm = fmul reassoc nsz arcp contract afn double %.sroa.261.3, %i.bl
  %i.cn = fadd reassoc nsz arcp contract afn double %i.bp, %i.cm
  %i.co = fsub reassoc nsz arcp contract afn double %i.at, %i.cn ; 4 uses
  %i.cp = fmul reassoc nsz arcp contract afn double %.sroa.233.3, %i.bj
  %i.cq = fsub reassoc nsz arcp contract afn double %.sroa.142.2, %i.cp ; 4 uses
  %i.cr = fmul reassoc nsz arcp contract afn double %.sroa.247.3, %i.bj
  %i.cs = fsub reassoc nsz arcp contract afn double %i.bn, %i.cr ; 4 uses
  %i.ct = fmul reassoc nsz arcp contract afn double %.sroa.261.3, %i.bj
  %i.cu = fsub reassoc nsz arcp contract afn double %.sroa.170.2, %i.ct ; 4 uses
  br i1 %i.a, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %.preheader71
  store double 0.000000e+00, ptr %2, align 8, !tbaa !82
  %i.cv = load double, ptr %1, align 8, !tbaa !82
  %i.cw = fmul reassoc nsz arcp contract afn double %i.cv, %i.ci ; 2 uses
  store double %i.cw, ptr %2, align 8, !tbaa !82
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !82
  %i.cz = fmul reassoc nsz arcp contract afn double %i.cy, %i.cl
  %i.da = fadd reassoc nsz arcp contract afn double %i.cw, %i.cz ; 2 uses
  store double %i.da, ptr %2, align 8, !tbaa !82
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !82
  %i.dd = fmul reassoc nsz arcp contract afn double %i.dc, %i.co
  %i.de = fadd reassoc nsz arcp contract afn double %i.da, %i.dd
  store double %i.de, ptr %2, align 8, !tbaa !82
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store double 0.000000e+00, ptr %i.df, align 8, !tbaa !82
  %i.dg = load double, ptr %1, align 8, !tbaa !82
  %i.dh = fmul reassoc nsz arcp contract afn double %i.dg, %i.cq ; 2 uses
  store double %i.dh, ptr %i.df, align 8, !tbaa !82
  %i.di = load double, ptr %i.cx, align 8, !tbaa !82
  %i.dj = fmul reassoc nsz arcp contract afn double %i.di, %i.cs
  %i.dk = fadd reassoc nsz arcp contract afn double %i.dh, %i.dj ; 2 uses
  store double %i.dk, ptr %i.df, align 8, !tbaa !82
  %i.dl = load double, ptr %i.db, align 8, !tbaa !82
  %i.dm = fmul reassoc nsz arcp contract afn double %i.dl, %i.cu
  %i.dn = fadd reassoc nsz arcp contract afn double %i.dk, %i.dm
  store double %i.dn, ptr %i.df, align 8, !tbaa !82
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store double 0.000000e+00, ptr %i.do, align 8, !tbaa !82
  %i.dp = load double, ptr %1, align 8, !tbaa !82
  %i.dq = fmul reassoc nsz arcp contract afn double %i.dp, %.sroa.233.3 ; 2 uses
  store double %i.dq, ptr %i.do, align 8, !tbaa !82
  %i.dr = load double, ptr %i.cx, align 8, !tbaa !82
  %i.ds = fmul reassoc nsz arcp contract afn double %i.dr, %.sroa.247.3
  %i.dt = fadd reassoc nsz arcp contract afn double %i.dq, %i.ds ; 2 uses
  store double %i.dt, ptr %i.do, align 8, !tbaa !82
  %i.du = load double, ptr %i.db, align 8, !tbaa !82
  %i.dv = fmul reassoc nsz arcp contract afn double %i.du, %.sroa.261.3
  %i.dw = fadd reassoc nsz arcp contract afn double %i.dt, %i.dv
  store double %i.dw, ptr %i.do, align 8, !tbaa !82
  %exitcond147.not = icmp eq i32 %3, 1
  br i1 %exitcond147.not, label %._crit_edge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store double 0.000000e+00, ptr %i.dx, align 8, !tbaa !82
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !82
  %i.ea = fmul reassoc nsz arcp contract afn double %i.dz, %i.ci ; 2 uses
  store double %i.ea, ptr %i.dx, align 8, !tbaa !82
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !82
  %i.ed = fmul reassoc nsz arcp contract afn double %i.ec, %i.cl
  %i.ee = fadd reassoc nsz arcp contract afn double %i.ea, %i.ed ; 2 uses
  store double %i.ee, ptr %i.dx, align 8, !tbaa !82
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !82
  %i.eh = fmul reassoc nsz arcp contract afn double %i.eg, %i.co
  %i.ei = fadd reassoc nsz arcp contract afn double %i.ee, %i.eh
  store double %i.ei, ptr %i.dx, align 8, !tbaa !82
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store double 0.000000e+00, ptr %i.ej, align 8, !tbaa !82
  %i.ek = load double, ptr %i.dy, align 8, !tbaa !82
  %i.el = fmul reassoc nsz arcp contract afn double %i.ek, %i.cq ; 2 uses
  store double %i.el, ptr %i.ej, align 8, !tbaa !82
  %i.em = load double, ptr %i.eb, align 8, !tbaa !82
  %i.en = fmul reassoc nsz arcp contract afn double %i.em, %i.cs
  %i.eo = fadd reassoc nsz arcp contract afn double %i.el, %i.en ; 2 uses
  store double %i.eo, ptr %i.ej, align 8, !tbaa !82
  %i.ep = load double, ptr %i.ef, align 8, !tbaa !82
  %i.eq = fmul reassoc nsz arcp contract afn double %i.ep, %i.cu
  %i.er = fadd reassoc nsz arcp contract afn double %i.eo, %i.eq
  store double %i.er, ptr %i.ej, align 8, !tbaa !82
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store double 0.000000e+00, ptr %i.es, align 8, !tbaa !82
  %i.et = load double, ptr %i.dy, align 8, !tbaa !82
  %i.eu = fmul reassoc nsz arcp contract afn double %i.et, %.sroa.233.3 ; 2 uses
  store double %i.eu, ptr %i.es, align 8, !tbaa !82
  %i.ev = load double, ptr %i.eb, align 8, !tbaa !82
  %i.ew = fmul reassoc nsz arcp contract afn double %i.ev, %.sroa.247.3
  %i.ex = fadd reassoc nsz arcp contract afn double %i.eu, %i.ew ; 2 uses
  store double %i.ex, ptr %i.es, align 8, !tbaa !82
  %i.ey = load double, ptr %i.ef, align 8, !tbaa !82
  %i.ez = fmul reassoc nsz arcp contract afn double %i.ey, %.sroa.261.3
  %i.fa = fadd reassoc nsz arcp contract afn double %i.ex, %i.ez
  store double %i.fa, ptr %i.es, align 8, !tbaa !82
  %exitcond147.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond147.not.1, label %._crit_edge, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store double 0.000000e+00, ptr %i.fb, align 8, !tbaa !82
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !82
  %i.fe = fmul reassoc nsz arcp contract afn double %i.fd, %i.ci ; 2 uses
  store double %i.fe, ptr %i.fb, align 8, !tbaa !82
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !82
  %i.fh = fmul reassoc nsz arcp contract afn double %i.fg, %i.cl
  %i.fi = fadd reassoc nsz arcp contract afn double %i.fe, %i.fh ; 2 uses
  store double %i.fi, ptr %i.fb, align 8, !tbaa !82
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !82
  %i.fl = fmul reassoc nsz arcp contract afn double %i.fk, %i.co
  %i.fm = fadd reassoc nsz arcp contract afn double %i.fi, %i.fl
  store double %i.fm, ptr %i.fb, align 8, !tbaa !82
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  store double 0.000000e+00, ptr %i.fn, align 8, !tbaa !82
  %i.fo = load double, ptr %i.fc, align 8, !tbaa !82
  %i.fp = fmul reassoc nsz arcp contract afn double %i.fo, %i.cq ; 2 uses
  store double %i.fp, ptr %i.fn, align 8, !tbaa !82
  %i.fq = load double, ptr %i.ff, align 8, !tbaa !82
  %i.fr = fmul reassoc nsz arcp contract afn double %i.fq, %i.cs
  %i.fs = fadd reassoc nsz arcp contract afn double %i.fp, %i.fr ; 2 uses
  store double %i.fs, ptr %i.fn, align 8, !tbaa !82
  %i.ft = load double, ptr %i.fj, align 8, !tbaa !82
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, %i.cu
  %i.fv = fadd reassoc nsz arcp contract afn double %i.fs, %i.fu
  store double %i.fv, ptr %i.fn, align 8, !tbaa !82
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  store double 0.000000e+00, ptr %i.fw, align 8, !tbaa !82
  %i.fx = load double, ptr %i.fc, align 8, !tbaa !82
  %i.fy = fmul reassoc nsz arcp contract afn double %i.fx, %.sroa.233.3 ; 2 uses
  store double %i.fy, ptr %i.fw, align 8, !tbaa !82
  %i.fz = load double, ptr %i.ff, align 8, !tbaa !82
  %i.ga = fmul reassoc nsz arcp contract afn double %i.fz, %.sroa.247.3
  %i.gb = fadd reassoc nsz arcp contract afn double %i.fy, %i.ga ; 2 uses
  store double %i.gb, ptr %i.fw, align 8, !tbaa !82
  %i.gc = load double, ptr %i.fj, align 8, !tbaa !82
  %i.gd = fmul reassoc nsz arcp contract afn double %i.gc, %.sroa.261.3
  %i.ge = fadd reassoc nsz arcp contract afn double %i.gb, %i.gd
  store double %i.ge, ptr %i.fw, align 8, !tbaa !82
  %exitcond147.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond147.not.2, label %._crit_edge, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store double 0.000000e+00, ptr %i.gf, align 8, !tbaa !82
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !82
  %i.gi = fmul reassoc nsz arcp contract afn double %i.gh, %i.ci ; 2 uses
  store double %i.gi, ptr %i.gf, align 8, !tbaa !82
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !82
  %i.gl = fmul reassoc nsz arcp contract afn double %i.gk, %i.cl
  %i.gm = fadd reassoc nsz arcp contract afn double %i.gi, %i.gl ; 2 uses
  store double %i.gm, ptr %i.gf, align 8, !tbaa !82
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !82
  %i.gp = fmul reassoc nsz arcp contract afn double %i.go, %i.co
  %i.gq = fadd reassoc nsz arcp contract afn double %i.gm, %i.gp
  store double %i.gq, ptr %i.gf, align 8, !tbaa !82
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  store double 0.000000e+00, ptr %i.gr, align 8, !tbaa !82
  %i.gs = load double, ptr %i.gg, align 8, !tbaa !82
  %i.gt = fmul reassoc nsz arcp contract afn double %i.gs, %i.cq ; 2 uses
  store double %i.gt, ptr %i.gr, align 8, !tbaa !82
  %i.gu = load double, ptr %i.gj, align 8, !tbaa !82
  %i.gv = fmul reassoc nsz arcp contract afn double %i.gu, %i.cs
  %i.gw = fadd reassoc nsz arcp contract afn double %i.gt, %i.gv ; 2 uses
  store double %i.gw, ptr %i.gr, align 8, !tbaa !82
  %i.gx = load double, ptr %i.gn, align 8, !tbaa !82
  %i.gy = fmul reassoc nsz arcp contract afn double %i.gx, %i.cu
  %i.gz = fadd reassoc nsz arcp contract afn double %i.gw, %i.gy
  store double %i.gz, ptr %i.gr, align 8, !tbaa !82
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  store double 0.000000e+00, ptr %i.ha, align 8, !tbaa !82
  %i.hb = load double, ptr %i.gg, align 8, !tbaa !82
  %i.hc = fmul reassoc nsz arcp contract afn double %i.hb, %.sroa.233.3 ; 2 uses
  store double %i.hc, ptr %i.ha, align 8, !tbaa !82
  %i.hd = load double, ptr %i.gj, align 8, !tbaa !82
  %i.he = fmul reassoc nsz arcp contract afn double %i.hd, %.sroa.247.3
  %i.hf = fadd reassoc nsz arcp contract afn double %i.hc, %i.he ; 2 uses
  store double %i.hf, ptr %i.ha, align 8, !tbaa !82
  %i.hg = load double, ptr %i.gn, align 8, !tbaa !82
  %i.hh = fmul reassoc nsz arcp contract afn double %i.hg, %.sroa.261.3
  %i.hi = fadd reassoc nsz arcp contract afn double %i.hf, %i.hh
  store double %i.hi, ptr %i.ha, align 8, !tbaa !82
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader71
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw13cam_xyz_coeffEPA4_fPA3_d(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = alloca [4 x [3 x double]], align 16      ; 15 uses
  %i.b = alloca [4 x [3 x double]], align 16      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.d = load i32, ptr %i.c, align 4, !tbaa !132  ; 7 uses
  %i.e = icmp sgt i32 %i.d, 0
end_hunk_0
