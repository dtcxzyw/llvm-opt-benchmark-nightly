Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/utils_dcraw?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN6LibRaw18crop_masked_pixelsEv:bb.a

.lr.ph80:                                         ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 2 uses
  %.pre = load i32, ptr %i.cn, align 8, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.co = phi i32 [ %i.ck, %.lr.ph80 ], [ %i.ds, %._crit_edge ]
  %i.cp = phi i32 [ %.pre, %.lr.ph80 ], [ %i.dt, %._crit_edge ] ; 2 uses
  %.178 = phi i32 [ %.084, %.lr.ph80 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.03277 = phi i32 [ %spec.select, %.lr.ph80 ], [ %i.du, %._crit_edge ] ; 3 uses
  %i.cq = load i32, ptr %i.cm, align 8, !tbaa !83
  %spec.select65 = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 0) ; 2 uses
  %.6673 = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cd)
  %i.cr = icmp slt i32 %spec.select65, %.6673
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.cs = shl nuw nsw i32 %.03277, 1
  %i.ct = and i32 %i.cs, 14
  %i.cu = mul i32 %i.cg, %.03277
  %i.cv = lshr i32 %i.cu, 1
  %i.cw = zext nneg i32 %spec.select65 to i64
  %i.cx = zext nneg i32 %i.cv to i64
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cx
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.cw, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.275 = phi i32 [ %.178, %.lr.ph ], [ %i.do, %bb.l ]
  %i.cy = trunc nuw nsw i64 %indvars.iv to i32
  %i.cz = and i32 %i.cy, 1
  %i.da = or disjoint i32 %i.cz, %i.ct
  %i.db = shl nuw nsw i32 %i.da, 1
  %i.dc = lshr i32 %i.ce, %i.db
  %i.dd = and i32 %i.dc, 3
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.de = load i16, ptr %gep, align 2, !tbaa !78  ; 2 uses
  %i.df = zext i16 %i.de to i32
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dg ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !83
  %i.dj = add i32 %i.di, %i.df
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !83
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !83
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !83
  %.not59 = icmp eq i16 %i.de, 0
  %i.dn = zext i1 %.not59 to i32
  %i.do = add i32 %.275, %i.dn                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load i32, ptr %i.cn, align 8, !tbaa !83 ; 2 uses
  %.66 = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 %i.cd)
  %i.dq = trunc nuw i64 %indvars.iv.next to i32
  %i.dr = icmp sgt i32 %.66, %i.dq
  br i1 %i.dr, label %bb.l, label %._crit_edge.loopexit, !llvm.loop !125

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre96 = load i32, ptr %i.cj, align 4, !tbaa !83
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %i.ds = phi i32 [ %i.co, %bb.k ], [ %.pre96, %._crit_edge.loopexit ] ; 2 uses
  %i.dt = phi i32 [ %i.cp, %bb.k ], [ %i.dp, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.178, %bb.k ], [ %i.do, %._crit_edge.loopexit ] ; 2 uses
  %i.du = add nuw nsw i32 %.03277, 1              ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.ds, i32 %i.bx)
  %i.dv = icmp slt i32 %i.du, %.
  br i1 %i.dv, label %bb.k, label %._crit_edge81, !llvm.loop !126

._crit_edge81:                                    ; preds = %._crit_edge, %bb.j
  %.1.lcssa = phi i32 [ %.084, %bb.j ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next90, 8
  br i1 %exitcond.not, label %bb.m, label %bb.j, !llvm.loop !127

bb.m:                                             ; preds = %._crit_edge81
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %.unpack53 = load i64, ptr %i.dw, align 8, !tbaa !128
  %.elt54 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  %.unpack55 = load i64, ptr %.elt54, align 8, !tbaa !128
  %i.dx = icmp eq i64 %.unpack53, ptrtoint (ptr @_ZN6LibRaw18canon_600_load_rawEv to i64)
  %i.dy = icmp eq i64 %.unpack55, 0
  %i.dz = and i1 %i.dx, %i.dy
  br i1 %i.dz, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !88
  %i.ec = load i16, ptr %i.by, align 2, !tbaa !130
  %i.ed = icmp ult i16 %i.eb, %i.ec
  br i1 %i.ed, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ee = load <4 x i32>, ptr %i.bv, align 4, !tbaa !83
  %i.ef = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ee)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 153892
  %i.eh = load <4 x i32>, ptr %i.eg, align 4, !tbaa !83
  %i.ei = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eh)
  %spec.select67 = tail call i32 @llvm.umax.i32(i32 %i.ei, i32 1)
  %i.ej = udiv i32 %i.ef, %spec.select67
  %i.ek = add i32 %i.ej, -4
  br label %.sink.split

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 153892
  %i.em = load i32, ptr %i.el, align 4, !tbaa !83 ; 2 uses
  %i.en = icmp ult i32 %.1.lcssa, %i.em
  br i1 %i.en, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 153896
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !83 ; 2 uses
  %.not56 = icmp eq i32 %i.ep, 0
  br i1 %.not56, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 153900
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !83 ; 2 uses
  %.not57 = icmp eq i32 %i.er, 0
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 153904
  %i.et = load i32, ptr %i.es, align 8, !tbaa !83 ; 2 uses
  %.not58 = icmp eq i32 %i.et, 0
  br i1 %.not58, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.ev = load i32, ptr %i.bv, align 4, !tbaa !83
  %i.ew = udiv i32 %i.ev, %i.em
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !83
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 153880
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !83
  %i.ez = udiv i32 %i.ey, %i.ep
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 136676
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !83
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 153884
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !83
  %i.fd = udiv i32 %i.fc, %i.er
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 136680
  store i32 %i.fd, ptr %i.fe, align 8, !tbaa !83
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 153888
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !83
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.fi = udiv i32 %i.fg, %i.et
  %i.fj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fi, i64 0
  store <4 x i32> %i.fj, ptr %i.fh, align 4, !tbaa !83
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %.preheader
  %.sink = phi i32 [ 0, %.preheader ], [ %i.ek, %bb.o ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 %.sink, ptr %i.fk, align 8, !tbaa !82
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
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> %i.b, <4 x double> poison), !tbaa !84 ; 2 uses
  %i.c = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather, %wide.masked.gather
  %i.d = select reassoc nsz arcp contract afn <4 x i1> %i.b, <4 x double> %i.c, <4 x double> zeroinitializer
  %i.e = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.d)
  %trip.count.minus.1296 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert297 = insertelement <4 x i64> poison, i64 %trip.count.minus.1296, i64 0
  %broadcast.splat298 = shufflevector <4 x i64> %broadcast.splatinsert297, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.f = icmp uge <4 x i64> %broadcast.splat298, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep303 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.gather304 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep303, <4 x i1> %i.f, <4 x double> poison), !tbaa !84
  %wide.gep305 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep303, i64 8
  %wide.masked.gather306 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep305, <4 x i1> %i.f, <4 x double> poison), !tbaa !84
  %i.g = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather306, %wide.masked.gather304
  %i.h = select reassoc nsz arcp contract afn <4 x i1> %i.f, <4 x double> %i.g, <4 x double> zeroinitializer
  %i.i = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.h)
  %trip.count.minus.1313 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert314 = insertelement <4 x i64> poison, i64 %trip.count.minus.1313, i64 0
  %broadcast.splat315 = shufflevector <4 x i64> %broadcast.splatinsert314, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.j = icmp uge <4 x i64> %broadcast.splat315, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep320 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.gather321 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep320, <4 x i1> %i.j, <4 x double> poison), !tbaa !84
  %wide.gep322 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep320, i64 16
  %wide.masked.gather323 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep322, <4 x i1> %i.j, <4 x double> poison), !tbaa !84
  %i.k = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather323, %wide.masked.gather321
  %i.l = select reassoc nsz arcp contract afn <4 x i1> %i.j, <4 x double> %i.k, <4 x double> zeroinitializer
  %i.m = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.l)
  %trip.count.minus.1330 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert331 = insertelement <4 x i64> poison, i64 %trip.count.minus.1330, i64 0
  %broadcast.splat332 = shufflevector <4 x i64> %broadcast.splatinsert331, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.n = icmp uge <4 x i64> %broadcast.splat332, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep337 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep338 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep337, i64 8
  %wide.masked.gather339 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep338, <4 x i1> %i.n, <4 x double> poison), !tbaa !84
  %wide.masked.gather340 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep337, <4 x i1> %i.n, <4 x double> poison), !tbaa !84
  %i.o = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather340, %wide.masked.gather339
  %i.p = select reassoc nsz arcp contract afn <4 x i1> %i.n, <4 x double> %i.o, <4 x double> zeroinitializer
  %i.q = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.p)
  %trip.count.minus.1347 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert348 = insertelement <4 x i64> poison, i64 %trip.count.minus.1347, i64 0
  %broadcast.splat349 = shufflevector <4 x i64> %broadcast.splatinsert348, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.r = icmp uge <4 x i64> %broadcast.splat349, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep354 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.gep355 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep354, i64 8
  %wide.masked.gather356 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep355, <4 x i1> %i.r, <4 x double> poison), !tbaa !84 ; 2 uses
  %i.s = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather356, %wide.masked.gather356
  %i.t = select reassoc nsz arcp contract afn <4 x i1> %i.r, <4 x double> %i.s, <4 x double> zeroinitializer
  %i.u = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.t)
  %trip.count.minus.1363 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert364 = insertelement <4 x i64> poison, i64 %trip.count.minus.1363, i64 0
  %broadcast.splat365 = shufflevector <4 x i64> %broadcast.splatinsert364, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.v = icmp uge <4 x i64> %broadcast.splat365, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep370 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep371 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep370, i64 8
  %wide.masked.gather372 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep371, <4 x i1> %i.v, <4 x double> poison), !tbaa !84
  %wide.gep373 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep370, i64 16
  %wide.masked.gather374 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep373, <4 x i1> %i.v, <4 x double> poison), !tbaa !84
  %i.w = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather374, %wide.masked.gather372
  %i.x = select reassoc nsz arcp contract afn <4 x i1> %i.v, <4 x double> %i.w, <4 x double> zeroinitializer
  %i.y = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.x)
  %trip.count.minus.1381 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert382 = insertelement <4 x i64> poison, i64 %trip.count.minus.1381, i64 0
  %broadcast.splat383 = shufflevector <4 x i64> %broadcast.splatinsert382, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.z = icmp uge <4 x i64> %broadcast.splat383, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep388 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep389 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep388, i64 16
  %wide.masked.gather390 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep389, <4 x i1> %i.z, <4 x double> poison), !tbaa !84
  %wide.masked.gather391 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep388, <4 x i1> %i.z, <4 x double> poison), !tbaa !84
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
  %wide.masked.gather409 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep408, <4 x i1> %i.ad, <4 x double> poison), !tbaa !84
  %wide.gep406 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep405, i64 16
  %wide.masked.gather407 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep406, <4 x i1> %i.ad, <4 x double> poison), !tbaa !84
  %i.ae = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather409, %wide.masked.gather407
  %i.af = select reassoc nsz arcp contract afn <4 x i1> %i.ad, <4 x double> %i.ae, <4 x double> zeroinitializer
  %i.ag = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.af)
  %i.ah = icmp uge <4 x i64> %broadcast.splat418, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep423 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.gep424 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep423, i64 16
  %wide.masked.gather425 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep424, <4 x i1> %i.ah, <4 x double> poison), !tbaa !84 ; 2 uses
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
  %i.an = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.sroa.35.0, i64 0 ; 2 uses
  %i.ao = insertelement <2 x double> <double 1.000000e+00, double poison>, double %.sroa.19.0, i64 1 ; 2 uses
  %i.ap = insertelement <2 x double> poison, double %.sroa.0.0, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = fdiv reassoc nsz arcp contract afn <2 x double> %i.ao, %i.aq
  %i.as = fdiv reassoc nsz arcp contract afn <2 x double> %i.an, %i.aq
  %i.at = select i1 %i.am, <2 x double> %i.as, <2 x double> %i.an ; 3 uses
  %i.au = select i1 %i.am, <2 x double> %i.ar, <2 x double> %i.ao ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 1 ; 6 uses
  %i.aw = extractelement <2 x double> %i.at, i64 1 ; 4 uses
  %i.ax = fmul reassoc nsz arcp contract afn double %i.av, %.sroa.93.0
  %i.ay = fsub reassoc nsz arcp contract afn double %.sroa.109.0, %i.ax ; 4 uses
  %4 = insertelement <2 x double> poison, double %.sroa.93.0, i64 0
  %i.az = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul reassoc nsz arcp contract afn <2 x double> %i.at, %i.az
  %i.bb = fneg reassoc nsz arcp contract afn double %.sroa.93.0
  %i.bc = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.bd = fmul reassoc nsz arcp contract afn double %i.bc, %i.bb ; 2 uses
  %i.be = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.sroa.126.0, i64 0
  %i.bf = fsub reassoc nsz arcp contract afn <2 x double> %i.be, %i.ba ; 2 uses
  %i.bg = fneg reassoc nsz arcp contract afn double %.sroa.93.0
  %i.bh = fmul reassoc nsz arcp contract afn double %i.aw, %i.bg ; 2 uses
  %i.bi = fmul reassoc nsz arcp contract afn double %i.av, %.sroa.184.0
  %i.bj = fsub reassoc nsz arcp contract afn double %.sroa.200.0, %i.bi ; 4 uses
  %i.bk = extractelement <2 x double> %i.at, i64 0 ; 2 uses
  %i.bl = fmul reassoc nsz arcp contract afn double %i.bk, %.sroa.184.0
  %i.bm = fneg reassoc nsz arcp contract afn double %.sroa.184.0
  %i.bn = fmul reassoc nsz arcp contract afn double %i.bc, %i.bm
  %i.bo = fmul reassoc nsz arcp contract afn double %i.aw, %.sroa.184.0 ; 2 uses
  %i.bp = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ay)
  %i.bq = fcmp reassoc nsz arcp contract afn ogt double %i.bp, f0x3EE4F8B580000000 ; 3 uses
  %i.br = fdiv reassoc nsz arcp contract afn double %i.bd, %i.ay
  %i.bs = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fdiv reassoc nsz arcp contract afn <2 x double> %i.bf, %i.bt
  %i.bv = fdiv reassoc nsz arcp contract afn double %i.bh, %i.ay
  %.sroa.170.2 = select nsz i1 %i.bq, double %i.bv, double %i.bh ; 3 uses
  %.sroa.142.2 = select nsz i1 %i.bq, double %i.br, double %i.bd ; 3 uses
  %i.bw = select i1 %i.bq, <2 x double> %i.bu, <2 x double> %i.bf ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0 ; 5 uses
  %i.by = fmul reassoc nsz arcp contract afn double %i.bx, %i.av
  %i.bz = fsub reassoc nsz arcp contract afn double %i.bk, %i.by ; 3 uses
  %i.ca = fmul reassoc nsz arcp contract afn double %.sroa.142.2, %i.av
  %i.cb = extractelement <2 x double> %i.bw, i64 1 ; 3 uses
  %i.cc = fmul reassoc nsz arcp contract afn double %i.cb, %i.av
  %i.cd = fmul reassoc nsz arcp contract afn double %.sroa.170.2, %i.av
  %i.ce = fmul reassoc nsz arcp contract afn double %i.bx, %i.bj
  %i.cf = fadd reassoc nsz arcp contract afn double %i.bl, %i.ce
  %i.cg = fsub reassoc nsz arcp contract afn double %.sroa.216.0, %i.cf ; 4 uses
  %i.ch = fmul reassoc nsz arcp contract afn double %.sroa.142.2, %i.bj
  %i.ci = fsub reassoc nsz arcp contract afn double %i.bn, %i.ch ; 2 uses
  %i.cj = fmul reassoc nsz arcp contract afn double %i.cb, %i.bj
  %i.ck = fadd reassoc nsz arcp contract afn double %i.bo, %i.cj
  %i.cl = fneg reassoc nsz arcp contract afn double %i.ck ; 2 uses
  %i.cm = fmul reassoc nsz arcp contract afn double %.sroa.170.2, %i.bj
  %i.cn = fadd reassoc nsz arcp contract afn double %i.bo, %i.cm
  %i.co = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.cn ; 2 uses
  %i.cp = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cg)
  %i.cq = fcmp reassoc nsz arcp contract afn ogt double %i.cp, f0x3EE4F8B580000000 ; 3 uses
  %i.cr = fdiv reassoc nsz arcp contract afn double %i.ci, %i.cg
  %i.cs = fdiv reassoc nsz arcp contract afn double %i.cl, %i.cg
  %i.ct = fdiv reassoc nsz arcp contract afn double %i.co, %i.cg
  %.sroa.261.3 = select nsz i1 %i.cq, double %i.ct, double %i.co ; 6 uses
  %.sroa.247.3 = select nsz i1 %i.cq, double %i.cs, double %i.cl ; 6 uses
  %.sroa.233.3 = select nsz i1 %i.cq, double %i.cr, double %i.ci ; 6 uses
  %i.cu = fmul reassoc nsz arcp contract afn double %.sroa.233.3, %i.bz
  %i.cv = fadd reassoc nsz arcp contract afn double %i.ca, %i.cu
  %i.cw = fsub reassoc nsz arcp contract afn double %i.bc, %i.cv ; 4 uses
  %i.cx = fmul reassoc nsz arcp contract afn double %.sroa.247.3, %i.bz
  %i.cy = fadd reassoc nsz arcp contract afn double %i.cc, %i.cx
  %i.cz = fsub reassoc nsz arcp contract afn double %i.aw, %i.cy ; 4 uses
  %i.da = fmul reassoc nsz arcp contract afn double %.sroa.261.3, %i.bz
  %i.db = fadd reassoc nsz arcp contract afn double %i.cd, %i.da
  %i.dc = fsub reassoc nsz arcp contract afn double %i.aw, %i.db ; 4 uses
  %i.dd = fmul reassoc nsz arcp contract afn double %.sroa.233.3, %i.bx
  %i.de = fsub reassoc nsz arcp contract afn double %.sroa.142.2, %i.dd ; 4 uses
  %i.df = fmul reassoc nsz arcp contract afn double %.sroa.247.3, %i.bx
  %i.dg = fsub reassoc nsz arcp contract afn double %i.cb, %i.df ; 4 uses
  %i.dh = fmul reassoc nsz arcp contract afn double %.sroa.261.3, %i.bx
  %i.di = fsub reassoc nsz arcp contract afn double %.sroa.170.2, %i.dh ; 4 uses
  br i1 %i.a, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %.preheader71
  store double 0.000000e+00, ptr %2, align 8, !tbaa !84
  %i.dj = load double, ptr %1, align 8, !tbaa !84
  %i.dk = fmul reassoc nsz arcp contract afn double %i.dj, %i.cw ; 2 uses
  store double %i.dk, ptr %2, align 8, !tbaa !84
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !84
  %i.dn = fmul reassoc nsz arcp contract afn double %i.dm, %i.cz
  %i.do = fadd reassoc nsz arcp contract afn double %i.dk, %i.dn ; 2 uses
  store double %i.do, ptr %2, align 8, !tbaa !84
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !84
  %i.dr = fmul reassoc nsz arcp contract afn double %i.dq, %i.dc
  %i.ds = fadd reassoc nsz arcp contract afn double %i.do, %i.dr
  store double %i.ds, ptr %2, align 8, !tbaa !84
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store double 0.000000e+00, ptr %i.dt, align 8, !tbaa !84
  %i.du = load double, ptr %1, align 8, !tbaa !84
  %i.dv = fmul reassoc nsz arcp contract afn double %i.du, %i.de ; 2 uses
  store double %i.dv, ptr %i.dt, align 8, !tbaa !84
  %i.dw = load double, ptr %i.dl, align 8, !tbaa !84
  %i.dx = fmul reassoc nsz arcp contract afn double %i.dw, %i.dg
  %i.dy = fadd reassoc nsz arcp contract afn double %i.dv, %i.dx ; 2 uses
  store double %i.dy, ptr %i.dt, align 8, !tbaa !84
  %i.dz = load double, ptr %i.dp, align 8, !tbaa !84
  %i.ea = fmul reassoc nsz arcp contract afn double %i.dz, %i.di
  %i.eb = fadd reassoc nsz arcp contract afn double %i.dy, %i.ea
  store double %i.eb, ptr %i.dt, align 8, !tbaa !84
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store double 0.000000e+00, ptr %i.ec, align 8, !tbaa !84
  %i.ed = load double, ptr %1, align 8, !tbaa !84
  %i.ee = fmul reassoc nsz arcp contract afn double %i.ed, %.sroa.233.3 ; 2 uses
  store double %i.ee, ptr %i.ec, align 8, !tbaa !84
  %i.ef = load double, ptr %i.dl, align 8, !tbaa !84
  %i.eg = fmul reassoc nsz arcp contract afn double %i.ef, %.sroa.247.3
  %i.eh = fadd reassoc nsz arcp contract afn double %i.ee, %i.eg ; 2 uses
  store double %i.eh, ptr %i.ec, align 8, !tbaa !84
  %i.ei = load double, ptr %i.dp, align 8, !tbaa !84
  %i.ej = fmul reassoc nsz arcp contract afn double %i.ei, %.sroa.261.3
  %i.ek = fadd reassoc nsz arcp contract afn double %i.eh, %i.ej
  store double %i.ek, ptr %i.ec, align 8, !tbaa !84
  %exitcond147.not = icmp eq i32 %3, 1
  br i1 %exitcond147.not, label %._crit_edge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !84
  %i.en = load double, ptr %i.em, align 8, !tbaa !84
  %i.eo = fmul reassoc nsz arcp contract afn double %i.en, %i.cw ; 2 uses
  store double %i.eo, ptr %i.el, align 8, !tbaa !84
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !84
  %i.er = fmul reassoc nsz arcp contract afn double %i.eq, %i.cz
  %i.es = fadd reassoc nsz arcp contract afn double %i.eo, %i.er ; 2 uses
  store double %i.es, ptr %i.el, align 8, !tbaa !84
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !84
  %i.ev = fmul reassoc nsz arcp contract afn double %i.eu, %i.dc
  %i.ew = fadd reassoc nsz arcp contract afn double %i.es, %i.ev
  store double %i.ew, ptr %i.el, align 8, !tbaa !84
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store double 0.000000e+00, ptr %i.ex, align 8, !tbaa !84
  %i.ey = load double, ptr %i.em, align 8, !tbaa !84
  %i.ez = fmul reassoc nsz arcp contract afn double %i.ey, %i.de ; 2 uses
  store double %i.ez, ptr %i.ex, align 8, !tbaa !84
  %i.fa = load double, ptr %i.ep, align 8, !tbaa !84
  %i.fb = fmul reassoc nsz arcp contract afn double %i.fa, %i.dg
  %i.fc = fadd reassoc nsz arcp contract afn double %i.ez, %i.fb ; 2 uses
  store double %i.fc, ptr %i.ex, align 8, !tbaa !84
  %i.fd = load double, ptr %i.et, align 8, !tbaa !84
  %i.fe = fmul reassoc nsz arcp contract afn double %i.fd, %i.di
  %i.ff = fadd reassoc nsz arcp contract afn double %i.fc, %i.fe
  store double %i.ff, ptr %i.ex, align 8, !tbaa !84
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store double 0.000000e+00, ptr %i.fg, align 8, !tbaa !84
  %i.fh = load double, ptr %i.em, align 8, !tbaa !84
  %i.fi = fmul reassoc nsz arcp contract afn double %i.fh, %.sroa.233.3 ; 2 uses
  store double %i.fi, ptr %i.fg, align 8, !tbaa !84
  %i.fj = load double, ptr %i.ep, align 8, !tbaa !84
  %i.fk = fmul reassoc nsz arcp contract afn double %i.fj, %.sroa.247.3
  %i.fl = fadd reassoc nsz arcp contract afn double %i.fi, %i.fk ; 2 uses
  store double %i.fl, ptr %i.fg, align 8, !tbaa !84
  %i.fm = load double, ptr %i.et, align 8, !tbaa !84
  %i.fn = fmul reassoc nsz arcp contract afn double %i.fm, %.sroa.261.3
  %i.fo = fadd reassoc nsz arcp contract afn double %i.fl, %i.fn
  store double %i.fo, ptr %i.fg, align 8, !tbaa !84
  %exitcond147.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond147.not.1, label %._crit_edge, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store double 0.000000e+00, ptr %i.fp, align 8, !tbaa !84
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !84
  %i.fs = fmul reassoc nsz arcp contract afn double %i.fr, %i.cw ; 2 uses
  store double %i.fs, ptr %i.fp, align 8, !tbaa !84
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !84
  %i.fv = fmul reassoc nsz arcp contract afn double %i.fu, %i.cz
  %i.fw = fadd reassoc nsz arcp contract afn double %i.fs, %i.fv ; 2 uses
  store double %i.fw, ptr %i.fp, align 8, !tbaa !84
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !84
  %i.fz = fmul reassoc nsz arcp contract afn double %i.fy, %i.dc
  %i.ga = fadd reassoc nsz arcp contract afn double %i.fw, %i.fz
  store double %i.ga, ptr %i.fp, align 8, !tbaa !84
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  store double 0.000000e+00, ptr %i.gb, align 8, !tbaa !84
  %i.gc = load double, ptr %i.fq, align 8, !tbaa !84
  %i.gd = fmul reassoc nsz arcp contract afn double %i.gc, %i.de ; 2 uses
  store double %i.gd, ptr %i.gb, align 8, !tbaa !84
  %i.ge = load double, ptr %i.ft, align 8, !tbaa !84
  %i.gf = fmul reassoc nsz arcp contract afn double %i.ge, %i.dg
  %i.gg = fadd reassoc nsz arcp contract afn double %i.gd, %i.gf ; 2 uses
  store double %i.gg, ptr %i.gb, align 8, !tbaa !84
  %i.gh = load double, ptr %i.fx, align 8, !tbaa !84
  %i.gi = fmul reassoc nsz arcp contract afn double %i.gh, %i.di
  %i.gj = fadd reassoc nsz arcp contract afn double %i.gg, %i.gi
  store double %i.gj, ptr %i.gb, align 8, !tbaa !84
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  store double 0.000000e+00, ptr %i.gk, align 8, !tbaa !84
  %i.gl = load double, ptr %i.fq, align 8, !tbaa !84
  %i.gm = fmul reassoc nsz arcp contract afn double %i.gl, %.sroa.233.3 ; 2 uses
  store double %i.gm, ptr %i.gk, align 8, !tbaa !84
  %i.gn = load double, ptr %i.ft, align 8, !tbaa !84
  %i.go = fmul reassoc nsz arcp contract afn double %i.gn, %.sroa.247.3
  %i.gp = fadd reassoc nsz arcp contract afn double %i.gm, %i.go ; 2 uses
  store double %i.gp, ptr %i.gk, align 8, !tbaa !84
  %i.gq = load double, ptr %i.fx, align 8, !tbaa !84
  %i.gr = fmul reassoc nsz arcp contract afn double %i.gq, %.sroa.261.3
  %i.gs = fadd reassoc nsz arcp contract afn double %i.gp, %i.gr
end_hunk_0
