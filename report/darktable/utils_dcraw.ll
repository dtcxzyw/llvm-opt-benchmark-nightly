Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/utils_dcraw?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN6LibRaw18crop_masked_pixelsEv:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load i16, ptr %i.by, align 2
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = load i32, ptr %i.bz, align 8
  %i.cf = load ptr, ptr %i.ca, align 8
  %i.cg = load i32, ptr %i.cb, align 8
  br label %bb.j

bb.j:                                             ; preds = %.thread70.thread, %._crit_edge81
  %indvars.iv89 = phi i64 [ 0, %.thread70.thread ], [ %indvars.iv.next90, %._crit_edge81 ] ; 2 uses
  %.084 = phi i32 [ 0, %.thread70.thread ], [ %.1.lcssa, %._crit_edge81 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv89 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !81
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 0) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !81 ; 2 uses
  %.76 = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.bx)
  %i.cl = icmp slt i32 %spec.select, %.76
  br i1 %i.cl, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 2 uses
  %.pre = load i32, ptr %i.cn, align 8, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.co = phi i32 [ %i.ck, %.lr.ph80 ], [ %i.ds, %._crit_edge ]
  %i.cp = phi i32 [ %.pre, %.lr.ph80 ], [ %i.dt, %._crit_edge ] ; 2 uses
  %.178 = phi i32 [ %.084, %.lr.ph80 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.03277 = phi i32 [ %spec.select, %.lr.ph80 ], [ %i.du, %._crit_edge ] ; 3 uses
  %i.cq = load i32, ptr %i.cm, align 8, !tbaa !81
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
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !81
  %i.dj = add i32 %i.di, %i.df
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !81
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !81
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !81
  %.not59 = icmp eq i16 %i.de, 0
  %i.dn = zext i1 %.not59 to i32
  %i.do = add i32 %.275, %i.dn                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load i32, ptr %i.cn, align 8, !tbaa !81 ; 2 uses
  %.66 = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 %i.cd)
  %i.dq = trunc nuw i64 %indvars.iv.next to i32
  %i.dr = icmp sgt i32 %.66, %i.dq
  br i1 %i.dr, label %bb.l, label %._crit_edge.loopexit, !llvm.loop !125

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre96 = load i32, ptr %i.cj, align 4, !tbaa !81
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
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 153892 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !81
  %i.en = icmp ult i32 %.1.lcssa, %i.em
  br i1 %i.en, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 153896
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !81
  %i.eq = load <4 x i32>, ptr %i.el, align 4
  %.not56 = icmp eq i32 %i.ep, 0
  br i1 %.not56, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 153900
  %i.es = load i32, ptr %i.er, align 4, !tbaa !81 ; 2 uses
  %.not57 = icmp eq i32 %i.es, 0
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 153904
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !81 ; 2 uses
  %.not58 = icmp eq i32 %i.eu, 0
  br i1 %.not58, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.ew = load <4 x i32>, ptr %i.bv, align 4, !tbaa !81
  %i.ex = insertelement <4 x i32> %i.eq, i32 %i.es, i64 2
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eu, i64 3
  %i.ez = udiv <4 x i32> %i.ew, %i.ey
  store <4 x i32> %i.ez, ptr %i.ev, align 8, !tbaa !81
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 136696
  store i32 0, ptr %i.fa, align 8, !tbaa !81
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 136692
  store i32 0, ptr %i.fb, align 4, !tbaa !81
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 136688
  store i32 0, ptr %i.fc, align 8, !tbaa !81
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %.preheader
  %.sink = phi i32 [ 0, %.preheader ], [ %i.ek, %bb.o ]
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 %.sink, ptr %i.fd, align 8, !tbaa !80
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
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %3, i32 4) ; 2 uses
  %i.a = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.a, label %.preheader74.us.preheader, label %.preheader71

.preheader74.us.preheader:                        ; preds = %bb.a
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
  %i.al = insertelement <2 x double> poison, double %i.m, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.i, i64 1
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader74.us.preheader, %bb.a
  %.sroa.216.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.ak, %.preheader74.us.preheader ]
  %.sroa.200.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.ag, %.preheader74.us.preheader ]
  %.sroa.184.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.ac, %.preheader74.us.preheader ] ; 4 uses
  %.sroa.126.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.y, %.preheader74.us.preheader ]
  %.sroa.109.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.u, %.preheader74.us.preheader ]
  %.sroa.93.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.q, %.preheader74.us.preheader ] ; 4 uses
  %.sroa.0.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.e, %.preheader74.us.preheader ] ; 2 uses
  %i.an = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.am, %.preheader74.us.preheader ] ; 2 uses
  %i.ao = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.sroa.0.0)
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.ao, f0x3EE4F8B580000000 ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %.sroa.0.0, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = fdiv reassoc nsz arcp contract afn <2 x double> %i.an, %i.ar
  %i.at = fdiv reassoc nsz arcp contract afn <2 x double> <double 1.000000e+00, double 0.000000e+00>, %i.ar
  %i.au = select i1 %i.ap, <2 x double> %i.at, <2 x double> <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.av = select i1 %i.ap, <2 x double> %i.as, <2 x double> %i.an ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 1 ; 6 uses
  %i.ax = fmul reassoc nsz arcp contract afn double %i.aw, %.sroa.93.0
  %i.ay = fsub reassoc nsz arcp contract afn double %.sroa.109.0, %i.ax ; 2 uses
  %i.az = extractelement <2 x double> %i.av, i64 0 ; 3 uses
  %i.ba = fmul reassoc nsz arcp contract afn double %i.az, %.sroa.93.0
  %i.bb = fsub reassoc nsz arcp contract afn double %.sroa.126.0, %i.ba
  %i.bc = fneg reassoc nsz arcp contract afn double %.sroa.93.0
  %i.bd = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.be = fmul reassoc nsz arcp contract afn double %i.bd, %i.bc
  %i.bf = extractelement <2 x double> %i.au, i64 1 ; 4 uses
  %i.bg = fmul reassoc nsz arcp contract afn double %i.bf, %.sroa.93.0 ; 2 uses
  %i.bh = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.bg
  %i.bi = fneg reassoc nsz arcp contract afn double %i.bg
  %i.bj = fmul reassoc nsz arcp contract afn double %i.aw, %.sroa.184.0
  %i.bk = fsub reassoc nsz arcp contract afn double %.sroa.200.0, %i.bj ; 4 uses
  %i.bl = fmul reassoc nsz arcp contract afn double %i.az, %.sroa.184.0
  %i.bm = fneg reassoc nsz arcp contract afn double %.sroa.184.0
  %i.bn = fmul reassoc nsz arcp contract afn double %i.bd, %i.bm
  %i.bo = fmul reassoc nsz arcp contract afn double %i.bf, %.sroa.184.0 ; 2 uses
  %i.bp = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ay)
  %i.bq = fcmp reassoc nsz arcp contract afn ogt double %i.bp, f0x3EE4F8B580000000 ; 2 uses
  %i.br = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bh, i64 1 ; 2 uses
  %i.bt = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bb, i64 1 ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bx = fdiv reassoc nsz arcp contract afn <2 x double> %i.bu, %i.bw
  %i.by = fdiv reassoc nsz arcp contract afn <2 x double> %i.bs, %i.bw
  %i.bz = select i1 %i.bq, <2 x double> %i.by, <2 x double> %i.bs ; 2 uses
  %i.ca = select i1 %i.bq, <2 x double> %i.bx, <2 x double> %i.bu ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 1 ; 5 uses
  %i.cc = fmul reassoc nsz arcp contract afn double %i.cb, %i.aw
  %i.cd = fsub reassoc nsz arcp contract afn double %i.az, %i.cc ; 3 uses
  %i.ce = extractelement <2 x double> %i.ca, i64 0 ; 3 uses
  %i.cf = fmul reassoc nsz arcp contract afn double %i.ce, %i.aw
  %i.cg = extractelement <2 x double> %i.bz, i64 1 ; 3 uses
  %i.ch = fmul reassoc nsz arcp contract afn double %i.cg, %i.aw
  %i.ci = extractelement <2 x double> %i.bz, i64 0 ; 3 uses
  %i.cj = fmul reassoc nsz arcp contract afn double %i.ci, %i.aw
  %i.ck = fmul reassoc nsz arcp contract afn double %i.cb, %i.bk
  %i.cl = fadd reassoc nsz arcp contract afn double %i.bl, %i.ck
  %i.cm = fsub reassoc nsz arcp contract afn double %.sroa.216.0, %i.cl ; 4 uses
  %i.cn = fmul reassoc nsz arcp contract afn double %i.ce, %i.bk
  %i.co = fsub reassoc nsz arcp contract afn double %i.bn, %i.cn ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn double %i.cg, %i.bk
  %i.cq = fadd reassoc nsz arcp contract afn double %i.bo, %i.cp
  %i.cr = fneg reassoc nsz arcp contract afn double %i.cq ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn double %i.ci, %i.bk
  %i.ct = fadd reassoc nsz arcp contract afn double %i.bo, %i.cs
  %i.cu = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ct ; 2 uses
  %i.cv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cm)
  %i.cw = fcmp reassoc nsz arcp contract afn ogt double %i.cv, f0x3EE4F8B580000000 ; 3 uses
  %i.cx = fdiv reassoc nsz arcp contract afn double %i.co, %i.cm
  %i.cy = fdiv reassoc nsz arcp contract afn double %i.cr, %i.cm
  %i.cz = fdiv reassoc nsz arcp contract afn double %i.cu, %i.cm
  %.sroa.261.3 = select nsz i1 %i.cw, double %i.cz, double %i.cu ; 7 uses
  %.sroa.247.3 = select nsz i1 %i.cw, double %i.cy, double %i.cr ; 7 uses
  %.sroa.233.3 = select nsz i1 %i.cw, double %i.cx, double %i.co ; 7 uses
  %i.da = fmul reassoc nsz arcp contract afn double %.sroa.233.3, %i.cd
  %i.db = fadd reassoc nsz arcp contract afn double %i.cf, %i.da
  %i.dc = fsub reassoc nsz arcp contract afn double %i.bd, %i.db ; 5 uses
  %i.dd = fmul reassoc nsz arcp contract afn double %.sroa.247.3, %i.cd
  %i.de = fadd reassoc nsz arcp contract afn double %i.ch, %i.dd
  %i.df = fsub reassoc nsz arcp contract afn double %i.bf, %i.de ; 5 uses
  %i.dg = fmul reassoc nsz arcp contract afn double %.sroa.261.3, %i.cd
  %i.dh = fadd reassoc nsz arcp contract afn double %i.cj, %i.dg
  %i.di = fsub reassoc nsz arcp contract afn double %i.bf, %i.dh ; 5 uses
  %i.dj = fmul reassoc nsz arcp contract afn double %.sroa.233.3, %i.cb
  %i.dk = fsub reassoc nsz arcp contract afn double %i.ce, %i.dj ; 5 uses
  %i.dl = fmul reassoc nsz arcp contract afn double %.sroa.247.3, %i.cb
  %i.dm = fsub reassoc nsz arcp contract afn double %i.cg, %i.dl ; 5 uses
  %i.dn = fmul reassoc nsz arcp contract afn double %.sroa.261.3, %i.cb
  %i.do = fsub reassoc nsz arcp contract afn double %i.ci, %i.dn ; 5 uses
  br i1 %i.a, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.preheader71
  %wide.trip.count146 = zext nneg i32 %invariant.smin to i64 ; 2 uses
  %4 = mul nuw nsw i64 %wide.trip.count146, 24    ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = getelementptr i8, ptr %1, i64 %4
  %bound0 = icmp ult ptr %2, %6
  %bound1 = icmp ult ptr %1, %5
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader, label %vector.body454

vector.body454:                                   ; preds = %.preheader.preheader
  %broadcast.splatinsert452 = insertelement <4 x double> poison, double %.sroa.261.3, i64 0
  %broadcast.splat453 = shufflevector <4 x double> %broadcast.splatinsert452, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert450 = insertelement <4 x double> poison, double %.sroa.247.3, i64 0
  %broadcast.splat451 = shufflevector <4 x double> %broadcast.splatinsert450, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert448 = insertelement <4 x double> poison, double %.sroa.233.3, i64 0
  %broadcast.splat449 = shufflevector <4 x double> %broadcast.splatinsert448, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert446 = insertelement <4 x double> poison, double %i.do, i64 0
  %broadcast.splat447 = shufflevector <4 x double> %broadcast.splatinsert446, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert444 = insertelement <4 x double> poison, double %i.dm, i64 0
  %broadcast.splat445 = shufflevector <4 x double> %broadcast.splatinsert444, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert442 = insertelement <4 x double> poison, double %i.dk, i64 0
  %broadcast.splat443 = shufflevector <4 x double> %broadcast.splatinsert442, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert440 = insertelement <4 x double> poison, double %i.di, i64 0
  %broadcast.splat441 = shufflevector <4 x double> %broadcast.splatinsert440, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert438 = insertelement <4 x double> poison, double %i.df, i64 0
  %broadcast.splat439 = shufflevector <4 x double> %broadcast.splatinsert438, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert436 = insertelement <4 x double> poison, double %i.dc, i64 0
  %broadcast.splat437 = shufflevector <4 x double> %broadcast.splatinsert436, <4 x double> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1433 = add nsw i64 %wide.trip.count146, -1
  %broadcast.splatinsert434 = insertelement <4 x i64> poison, i64 %trip.count.minus.1433, i64 0
  %broadcast.splat435 = shufflevector <4 x i64> %broadcast.splatinsert434, <4 x i64> poison, <4 x i32> zeroinitializer
  %7 = icmp uge <4 x i64> %broadcast.splat435, <i64 0, i64 1, i64 2, i64 3> ; 21 uses
  %wide.gep457 = getelementptr inbounds nuw [24 x i8], ptr %2, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 6 uses
  %wide.gep458 = getelementptr inbounds nuw [24 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 5 uses
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep457, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.masked.gather459 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep458, <4 x i1> %7, <4 x double> poison), !tbaa !82, !alias.scope !136
  %8 = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather459, %broadcast.splat437 ; 2 uses
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %8, <4 x ptr> align 8 %wide.gep457, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.gep460 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep458, i64 8 ; 3 uses
  %wide.masked.gather461 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep460, <4 x i1> %7, <4 x double> poison), !tbaa !82, !alias.scope !136
  %9 = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather461, %broadcast.splat439
  %10 = fadd reassoc nsz arcp contract afn <4 x double> %8, %9 ; 2 uses
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %10, <4 x ptr> align 8 %wide.gep457, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.gep462 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep458, i64 16 ; 3 uses
  %wide.masked.gather463 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep462, <4 x i1> %7, <4 x double> poison), !tbaa !82, !alias.scope !136
  %11 = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather463, %broadcast.splat441
  %12 = fadd reassoc nsz arcp contract afn <4 x double> %10, %11
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %12, <4 x ptr> align 8 %wide.gep457, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.gep464 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep457, i64 8 ; 4 uses
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep464, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.masked.gather465 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep458, <4 x i1> %7, <4 x double> poison), !tbaa !82, !alias.scope !136
  %13 = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather465, %broadcast.splat443 ; 2 uses
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %13, <4 x ptr> align 8 %wide.gep464, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.masked.gather466 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep460, <4 x i1> %7, <4 x double> poison), !tbaa !82, !alias.scope !136
  %14 = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather466, %broadcast.splat445
  %15 = fadd reassoc nsz arcp contract afn <4 x double> %13, %14 ; 2 uses
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %15, <4 x ptr> align 8 %wide.gep464, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.masked.gather467 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep462, <4 x i1> %7, <4 x double> poison), !tbaa !82, !alias.scope !136
  %16 = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather467, %broadcast.splat447
  %17 = fadd reassoc nsz arcp contract afn <4 x double> %15, %16
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %17, <4 x ptr> align 8 %wide.gep464, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.gep468 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep457, i64 16 ; 4 uses
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep468, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.masked.gather469 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep458, <4 x i1> %7, <4 x double> poison), !tbaa !82, !alias.scope !136
  %18 = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather469, %broadcast.splat449 ; 2 uses
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %18, <4 x ptr> align 8 %wide.gep468, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.masked.gather470 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep460, <4 x i1> %7, <4 x double> poison), !tbaa !82, !alias.scope !136
  %19 = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather470, %broadcast.splat451
  %20 = fadd reassoc nsz arcp contract afn <4 x double> %18, %19 ; 2 uses
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %20, <4 x ptr> align 8 %wide.gep468, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  %wide.masked.gather471 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep462, <4 x i1> %7, <4 x double> poison), !tbaa !82, !alias.scope !136
  %21 = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather471, %broadcast.splat453
  %22 = fadd reassoc nsz arcp contract afn <4 x double> %20, %21
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %22, <4 x ptr> align 8 %wide.gep468, <4 x i1> %7), !tbaa !82, !alias.scope !135, !noalias !136
  br label %._crit_edge

.preheader:                                       ; preds = %.preheader.preheader
  store double 0.000000e+00, ptr %2, align 8, !tbaa !82
  %i.dp = load double, ptr %1, align 8, !tbaa !82
  %i.dq = fmul reassoc nsz arcp contract afn double %i.dp, %i.dc ; 2 uses
  store double %i.dq, ptr %2, align 8, !tbaa !82
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !82
  %i.dt = fmul reassoc nsz arcp contract afn double %i.ds, %i.df
  %i.du = fadd reassoc nsz arcp contract afn double %i.dq, %i.dt ; 2 uses
  store double %i.du, ptr %2, align 8, !tbaa !82
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !82
  %i.dx = fmul reassoc nsz arcp contract afn double %i.dw, %i.di
  %i.dy = fadd reassoc nsz arcp contract afn double %i.du, %i.dx
  store double %i.dy, ptr %2, align 8, !tbaa !82
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store double 0.000000e+00, ptr %i.dz, align 8, !tbaa !82
  %i.ea = load double, ptr %1, align 8, !tbaa !82
  %i.eb = fmul reassoc nsz arcp contract afn double %i.ea, %i.dk ; 2 uses
  store double %i.eb, ptr %i.dz, align 8, !tbaa !82
  %i.ec = load double, ptr %i.dr, align 8, !tbaa !82
  %i.ed = fmul reassoc nsz arcp contract afn double %i.ec, %i.dm
  %i.ee = fadd reassoc nsz arcp contract afn double %i.eb, %i.ed ; 2 uses
  store double %i.ee, ptr %i.dz, align 8, !tbaa !82
  %i.ef = load double, ptr %i.dv, align 8, !tbaa !82
  %i.eg = fmul reassoc nsz arcp contract afn double %i.ef, %i.do
  %i.eh = fadd reassoc nsz arcp contract afn double %i.ee, %i.eg
  store double %i.eh, ptr %i.dz, align 8, !tbaa !82
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store double 0.000000e+00, ptr %i.ei, align 8, !tbaa !82
  %i.ej = load double, ptr %1, align 8, !tbaa !82
  %i.ek = fmul reassoc nsz arcp contract afn double %i.ej, %.sroa.233.3 ; 2 uses
  store double %i.ek, ptr %i.ei, align 8, !tbaa !82
  %i.el = load double, ptr %i.dr, align 8, !tbaa !82
  %i.em = fmul reassoc nsz arcp contract afn double %i.el, %.sroa.247.3
  %i.en = fadd reassoc nsz arcp contract afn double %i.ek, %i.em ; 2 uses
  store double %i.en, ptr %i.ei, align 8, !tbaa !82
  %i.eo = load double, ptr %i.dv, align 8, !tbaa !82
  %i.ep = fmul reassoc nsz arcp contract afn double %i.eo, %.sroa.261.3
  %i.eq = fadd reassoc nsz arcp contract afn double %i.en, %i.ep
  store double %i.eq, ptr %i.ei, align 8, !tbaa !82
  %exitcond147.not = icmp eq i32 %3, 1
  br i1 %exitcond147.not, label %._crit_edge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store double 0.000000e+00, ptr %i.er, align 8, !tbaa !82
  %i.et = load double, ptr %i.es, align 8, !tbaa !82
  %i.eu = fmul reassoc nsz arcp contract afn double %i.et, %i.dc ; 2 uses
  store double %i.eu, ptr %i.er, align 8, !tbaa !82
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !82
  %i.ex = fmul reassoc nsz arcp contract afn double %i.ew, %i.df
  %i.ey = fadd reassoc nsz arcp contract afn double %i.eu, %i.ex ; 2 uses
  store double %i.ey, ptr %i.er, align 8, !tbaa !82
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !82
  %i.fb = fmul reassoc nsz arcp contract afn double %i.fa, %i.di
  %i.fc = fadd reassoc nsz arcp contract afn double %i.ey, %i.fb
  store double %i.fc, ptr %i.er, align 8, !tbaa !82
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store double 0.000000e+00, ptr %i.fd, align 8, !tbaa !82
  %i.fe = load double, ptr %i.es, align 8, !tbaa !82
  %i.ff = fmul reassoc nsz arcp contract afn double %i.fe, %i.dk ; 2 uses
  store double %i.ff, ptr %i.fd, align 8, !tbaa !82
  %i.fg = load double, ptr %i.ev, align 8, !tbaa !82
  %i.fh = fmul reassoc nsz arcp contract afn double %i.fg, %i.dm
  %i.fi = fadd reassoc nsz arcp contract afn double %i.ff, %i.fh ; 2 uses
  store double %i.fi, ptr %i.fd, align 8, !tbaa !82
  %i.fj = load double, ptr %i.ez, align 8, !tbaa !82
  %i.fk = fmul reassoc nsz arcp contract afn double %i.fj, %i.do
  %i.fl = fadd reassoc nsz arcp contract afn double %i.fi, %i.fk
  store double %i.fl, ptr %i.fd, align 8, !tbaa !82
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store double 0.000000e+00, ptr %i.fm, align 8, !tbaa !82
  %i.fn = load double, ptr %i.es, align 8, !tbaa !82
  %i.fo = fmul reassoc nsz arcp contract afn double %i.fn, %.sroa.233.3 ; 2 uses
  store double %i.fo, ptr %i.fm, align 8, !tbaa !82
  %i.fp = load double, ptr %i.ev, align 8, !tbaa !82
  %i.fq = fmul reassoc nsz arcp contract afn double %i.fp, %.sroa.247.3
  %i.fr = fadd reassoc nsz arcp contract afn double %i.fo, %i.fq ; 2 uses
  store double %i.fr, ptr %i.fm, align 8, !tbaa !82
  %i.fs = load double, ptr %i.ez, align 8, !tbaa !82
  %i.ft = fmul reassoc nsz arcp contract afn double %i.fs, %.sroa.261.3
  %i.fu = fadd reassoc nsz arcp contract afn double %i.fr, %i.ft
  store double %i.fu, ptr %i.fm, align 8, !tbaa !82
  %exitcond147.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond147.not.1, label %._crit_edge, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store double 0.000000e+00, ptr %i.fv, align 8, !tbaa !82
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !82
  %i.fy = fmul reassoc nsz arcp contract afn double %i.fx, %i.dc ; 2 uses
  store double %i.fy, ptr %i.fv, align 8, !tbaa !82
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !82
  %i.gb = fmul reassoc nsz arcp contract afn double %i.ga, %i.df
  %i.gc = fadd reassoc nsz arcp contract afn double %i.fy, %i.gb ; 2 uses
  store double %i.gc, ptr %i.fv, align 8, !tbaa !82
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !82
  %i.gf = fmul reassoc nsz arcp contract afn double %i.ge, %i.di
  %i.gg = fadd reassoc nsz arcp contract afn double %i.gc, %i.gf
  store double %i.gg, ptr %i.fv, align 8, !tbaa !82
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  store double 0.000000e+00, ptr %i.gh, align 8, !tbaa !82
  %i.gi = load double, ptr %i.fw, align 8, !tbaa !82
  %i.gj = fmul reassoc nsz arcp contract afn double %i.gi, %i.dk ; 2 uses
  store double %i.gj, ptr %i.gh, align 8, !tbaa !82
  %i.gk = load double, ptr %i.fz, align 8, !tbaa !82
  %i.gl = fmul reassoc nsz arcp contract afn double %i.gk, %i.dm
  %i.gm = fadd reassoc nsz arcp contract afn double %i.gj, %i.gl ; 2 uses
  store double %i.gm, ptr %i.gh, align 8, !tbaa !82
  %i.gn = load double, ptr %i.gd, align 8, !tbaa !82
  %i.go = fmul reassoc nsz arcp contract afn double %i.gn, %i.do
  %i.gp = fadd reassoc nsz arcp contract afn double %i.gm, %i.go
  store double %i.gp, ptr %i.gh, align 8, !tbaa !82
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !82
  %i.gr = load double, ptr %i.fw, align 8, !tbaa !82
  %i.gs = fmul reassoc nsz arcp contract afn double %i.gr, %.sroa.233.3 ; 2 uses
  store double %i.gs, ptr %i.gq, align 8, !tbaa !82
  %i.gt = load double, ptr %i.fz, align 8, !tbaa !82
  %i.gu = fmul reassoc nsz arcp contract afn double %i.gt, %.sroa.247.3
  %i.gv = fadd reassoc nsz arcp contract afn double %i.gs, %i.gu ; 2 uses
  store double %i.gv, ptr %i.gq, align 8, !tbaa !82
  %i.gw = load double, ptr %i.gd, align 8, !tbaa !82
  %i.gx = fmul reassoc nsz arcp contract afn double %i.gw, %.sroa.261.3
  %i.gy = fadd reassoc nsz arcp contract afn double %i.gv, %i.gx
  store double %i.gy, ptr %i.gq, align 8, !tbaa !82
  %exitcond147.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond147.not.2, label %._crit_edge, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store double 0.000000e+00, ptr %i.gz, align 8, !tbaa !82
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !82
  %i.hc = fmul reassoc nsz arcp contract afn double %i.hb, %i.dc ; 2 uses
  store double %i.hc, ptr %i.gz, align 8, !tbaa !82
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !82
  %i.hf = fmul reassoc nsz arcp contract afn double %i.he, %i.df
  %i.hg = fadd reassoc nsz arcp contract afn double %i.hc, %i.hf ; 2 uses
  store double %i.hg, ptr %i.gz, align 8, !tbaa !82
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !82
  %i.hj = fmul reassoc nsz arcp contract afn double %i.hi, %i.di
  %i.hk = fadd reassoc nsz arcp contract afn double %i.hg, %i.hj
  store double %i.hk, ptr %i.gz, align 8, !tbaa !82
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  store double 0.000000e+00, ptr %i.hl, align 8, !tbaa !82
  %i.hm = load double, ptr %i.ha, align 8, !tbaa !82
  %i.hn = fmul reassoc nsz arcp contract afn double %i.hm, %i.dk ; 2 uses
  store double %i.hn, ptr %i.hl, align 8, !tbaa !82
  %i.ho = load double, ptr %i.hd, align 8, !tbaa !82
  %i.hp = fmul reassoc nsz arcp contract afn double %i.ho, %i.dm
  %i.hq = fadd reassoc nsz arcp contract afn double %i.hn, %i.hp ; 2 uses
  store double %i.hq, ptr %i.hl, align 8, !tbaa !82
  %i.hr = load double, ptr %i.hh, align 8, !tbaa !82
  %i.hs = fmul reassoc nsz arcp contract afn double %i.hr, %i.do
  %i.ht = fadd reassoc nsz arcp contract afn double %i.hq, %i.hs
  store double %i.ht, ptr %i.hl, align 8, !tbaa !82
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  store double 0.000000e+00, ptr %i.hu, align 8, !tbaa !82
  %i.hv = load double, ptr %i.ha, align 8, !tbaa !82
  %i.hw = fmul reassoc nsz arcp contract afn double %i.hv, %.sroa.233.3 ; 2 uses
  store double %i.hw, ptr %i.hu, align 8, !tbaa !82
  %i.hx = load double, ptr %i.hd, align 8, !tbaa !82
  %i.hy = fmul reassoc nsz arcp contract afn double %i.hx, %.sroa.247.3
  %i.hz = fadd reassoc nsz arcp contract afn double %i.hw, %i.hy ; 2 uses
  store double %i.hz, ptr %i.hu, align 8, !tbaa !82
  %i.ia = load double, ptr %i.hh, align 8, !tbaa !82
  %i.ib = fmul reassoc nsz arcp contract afn double %i.ia, %.sroa.261.3
  %i.ic = fadd reassoc nsz arcp contract afn double %i.hz, %i.ib
  store double %i.ic, ptr %i.hu, align 8, !tbaa !82
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %vector.body454, %.preheader71
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137  ; 7 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader56.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  call void @_ZN6LibRaw13pseudoinverseEPA3_dS1_i(ptr nonnull align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.d)
  br label %.split75

.preheader56.preheader:                           ; preds = %bb.a
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.d, i32 4)
  %wide.trip.count = zext nneg i32 %invariant.smin to i64 ; 4 uses
  %.pre112 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 64), align 16, !tbaa !82
  %broadcast.splatinsert130 = insertelement <4 x double> poison, double %.pre112, i64 0
  %broadcast.splat131 = shufflevector <4 x double> %broadcast.splatinsert130, <4 x double> poison, <4 x i32> zeroinitializer
  %i.f = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 40), align 8
  %broadcast.splat129 = shufflevector <1 x double> %i.f, <1 x double> poison, <4 x i32> zeroinitializer
  %i.g = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 16), align 16
  %broadcast.splat127 = shufflevector <1 x double> %i.g, <1 x double> poison, <4 x i32> zeroinitializer
  %i.h = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 56), align 8
  %broadcast.splat125 = shufflevector <1 x double> %i.h, <1 x double> poison, <4 x i32> zeroinitializer
  %i.i = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 32), align 16
  %broadcast.splat123 = shufflevector <1 x double> %i.i, <1 x double> poison, <4 x i32> zeroinitializer
  %i.j = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 8), align 8
  %broadcast.splat121 = shufflevector <1 x double> %i.j, <1 x double> poison, <4 x i32> zeroinitializer
  %i.k = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 48), align 16
  %broadcast.splat119 = shufflevector <1 x double> %i.k, <1 x double> poison, <4 x i32> zeroinitializer
  %i.l = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 24), align 8
  %broadcast.splat117 = shufflevector <1 x double> %i.l, <1 x double> poison, <4 x i32> zeroinitializer
  %i.m = load <1 x double>, ptr @_ZN16LibRaw_constants7xyz_rgbE, align 16
  %broadcast.splat115 = shufflevector <1 x double> %i.m, <1 x double> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.n = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 6 uses
  %wide.gep = getelementptr inbounds nuw [24 x i8], ptr %i.a, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep132 = getelementptr inbounds nuw [24 x i8], ptr %2, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep132, <4 x i1> %i.n, <4 x double> poison), !tbaa !82 ; 3 uses
  %i.o = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat115, %wide.masked.gather
  %wide.gep133 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep132, i64 8
  %wide.masked.gather134 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep133, <4 x i1> %i.n, <4 x double> poison), !tbaa !82 ; 3 uses
  %i.p = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat117, %wide.masked.gather134
  %i.q = fadd reassoc nsz arcp contract afn <4 x double> %i.o, %i.p
  %wide.gep135 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep132, i64 16
  %wide.masked.gather136 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep135, <4 x i1> %i.n, <4 x double> poison), !tbaa !82 ; 3 uses
  %i.r = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat119, %wide.masked.gather136
  %i.s = fadd reassoc nsz arcp contract afn <4 x double> %i.q, %i.r
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.s, <4 x ptr> align 8 %wide.gep, <4 x i1> %i.n), !tbaa !82
  %wide.gep137 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %i.t = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat121, %wide.masked.gather
  %i.u = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat123, %wide.masked.gather134
  %i.v = fadd reassoc nsz arcp contract afn <4 x double> %i.t, %i.u
  %i.w = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat125, %wide.masked.gather136
  %i.x = fadd reassoc nsz arcp contract afn <4 x double> %i.v, %i.w
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.x, <4 x ptr> align 8 %wide.gep137, <4 x i1> %i.n), !tbaa !82
  %wide.gep138 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 16
  %i.y = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat127, %wide.masked.gather
  %i.z = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat129, %wide.masked.gather134
  %i.aa = fadd reassoc nsz arcp contract afn <4 x double> %i.y, %i.z
  %i.ab = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat131, %wide.masked.gather136
  %i.ac = fadd reassoc nsz arcp contract afn <4 x double> %i.aa, %i.ab
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ac, <4 x ptr> align 8 %wide.gep138, <4 x i1> %i.n), !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.ae = load <2 x double>, ptr %i.a, align 16, !tbaa !82 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ag = load double, ptr %i.af, align 16, !tbaa !82 ; 2 uses
  %i.ah = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v2f64(double %i.ag, <2 x double> %i.ae) ; 4 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt double %i.ah, 1.000000e-05
  br i1 %i.ai, label %.preheader52, label %.preheader53

.preheader53:                                     ; preds = %.preheader56.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !tbaa !82
  br label %bb.b

.preheader52:                                     ; preds = %.preheader56.preheader
  %i.aj = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fdiv reassoc nsz arcp contract afn <2 x double> %i.ae, %i.ak
  store <2 x double> %i.al, ptr %i.a, align 16, !tbaa !82
  %i.am = fdiv reassoc nsz arcp contract afn double %i.ag, %i.ah
  store double %i.am, ptr %i.af, align 16, !tbaa !82
  %i.an = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ah
  %i.ao = fptrunc reassoc nsz arcp contract afn double %i.an to float
  br label %bb.b

bb.b:                                             ; preds = %.preheader52, %.preheader53
  %.sink = phi float [ %i.ao, %.preheader52 ], [ 1.000000e+00, %.preheader53 ]
  store float %.sink, ptr %i.ad, align 4, !tbaa !79
  %exitcond95.not = icmp eq i32 %i.d, 1
  br i1 %exitcond95.not, label %._crit_edge, label %.preheader54.1

.preheader54.1:                                   ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.aq = load <2 x double>, ptr %i.ap, align 8, !tbaa !82 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !82 ; 2 uses
  %i.at = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v2f64(double %i.as, <2 x double> %i.aq) ; 4 uses
  %i.au = fcmp reassoc nsz arcp contract afn ogt double %i.at, 1.000000e-05
  br i1 %i.au, label %.preheader52.1, label %.preheader53.1

.preheader53.1:                                   ; preds = %.preheader54.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false), !tbaa !82
  br label %bb.c

.preheader52.1:                                   ; preds = %.preheader54.1
  %i.av = insertelement <2 x double> poison, double %i.at, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fdiv reassoc nsz arcp contract afn <2 x double> %i.aq, %i.aw
  store <2 x double> %i.ax, ptr %i.ap, align 8, !tbaa !82
  %i.ay = fdiv reassoc nsz arcp contract afn double %i.as, %i.at
  store double %i.ay, ptr %i.ar, align 8, !tbaa !82
  %i.az = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.at
  %i.ba = fptrunc reassoc nsz arcp contract afn double %i.az to float
  br label %bb.c

bb.c:                                             ; preds = %.preheader52.1, %.preheader53.1
  %.sink.1 = phi float [ %i.ba, %.preheader52.1 ], [ 1.000000e+00, %.preheader53.1 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 153272
  store float %.sink.1, ptr %i.bb, align 8, !tbaa !79
  %exitcond95.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond95.not.1, label %._crit_edge, label %.preheader54.2

.preheader54.2:                                   ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !82 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.bf = load double, ptr %i.be, align 16, !tbaa !82 ; 2 uses
  %i.bg = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v2f64(double %i.bf, <2 x double> %i.bd) ; 4 uses
  %i.bh = fcmp reassoc nsz arcp contract afn ogt double %i.bg, 1.000000e-05
  br i1 %i.bh, label %.preheader52.2, label %.preheader53.2

.preheader53.2:                                   ; preds = %.preheader54.2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false), !tbaa !82
  br label %bb.d

.preheader52.2:                                   ; preds = %.preheader54.2
  %i.bi = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fdiv reassoc nsz arcp contract afn <2 x double> %i.bd, %i.bj
  store <2 x double> %i.bk, ptr %i.bc, align 16, !tbaa !82
  %i.bl = fdiv reassoc nsz arcp contract afn double %i.bf, %i.bg
  store double %i.bl, ptr %i.be, align 16, !tbaa !82
  %i.bm = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bg
  %i.bn = fptrunc reassoc nsz arcp contract afn double %i.bm to float
  br label %bb.d

bb.d:                                             ; preds = %.preheader52.2, %.preheader53.2
  %.sink.2 = phi float [ %i.bn, %.preheader52.2 ], [ 1.000000e+00, %.preheader53.2 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 153276
  store float %.sink.2, ptr %i.bo, align 4, !tbaa !79
  %exitcond95.not.2 = icmp eq i32 %i.d, 3
  br i1 %exitcond95.not.2, label %._crit_edge, label %.preheader54.3

.preheader54.3:                                   ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %i.bq = load <2 x double>, ptr %i.bp, align 8, !tbaa !82 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !82 ; 2 uses
  %i.bt = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v2f64(double %i.bs, <2 x double> %i.bq) ; 4 uses
  %i.bu = fcmp reassoc nsz arcp contract afn ogt double %i.bt, 1.000000e-05
  br i1 %i.bu, label %.preheader52.3, label %.preheader53.3

.preheader53.3:                                   ; preds = %.preheader54.3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false), !tbaa !82
  br label %bb.e

.preheader52.3:                                   ; preds = %.preheader54.3
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv reassoc nsz arcp contract afn <2 x double> %i.bq, %i.bw
  store <2 x double> %i.bx, ptr %i.bp, align 8, !tbaa !82
  %i.by = fdiv reassoc nsz arcp contract afn double %i.bs, %i.bt
  store double %i.by, ptr %i.br, align 8, !tbaa !82
  %i.bz = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bt
  %i.ca = fptrunc reassoc nsz arcp contract afn double %i.bz to float
  br label %bb.e

bb.e:                                             ; preds = %.preheader52.3, %.preheader53.3
  %.sink.3 = phi float [ %i.ca, %.preheader52.3 ], [ 1.000000e+00, %.preheader53.3 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 153280
  store float %.sink.3, ptr %i.cb, align 8, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  call void @_ZN6LibRaw13pseudoinverseEPA3_dS1_i(ptr nonnull align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.d)
  %trip.count.minus.1142 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert143 = insertelement <4 x i64> poison, i64 %trip.count.minus.1142, i64 0
  %broadcast.splat144 = shufflevector <4 x i64> %broadcast.splatinsert143, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cc = icmp uge <4 x i64> %broadcast.splat144, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep148 = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather149 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep148, <4 x i1> %i.cc, <4 x double> poison), !tbaa !82
  %i.cd = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.masked.gather149 to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.cd, ptr align 4 %1, <4 x i1> %i.cc), !tbaa !79
  %trip.count.minus.1156 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert157 = insertelement <4 x i64> poison, i64 %trip.count.minus.1156, i64 0
  %broadcast.splat158 = shufflevector <4 x i64> %broadcast.splatinsert157, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %invariant.gep72.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cf = icmp uge <4 x i64> %broadcast.splat158, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep162 = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep72.1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather163 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep162, <4 x i1> %i.cf, <4 x double> poison), !tbaa !82
  %i.cg = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.masked.gather163 to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.cg, ptr align 4 %i.ce, <4 x i1> %i.cf), !tbaa !79
  %trip.count.minus.1170 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert171 = insertelement <4 x i64> poison, i64 %trip.count.minus.1170, i64 0
  %broadcast.splat172 = shufflevector <4 x i64> %broadcast.splatinsert171, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %invariant.gep72.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ci = icmp uge <4 x i64> %broadcast.splat172, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep176 = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep72.2, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather177 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep176, <4 x i1> %i.ci, <4 x double> poison), !tbaa !82
  %i.cj = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.masked.gather177 to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.cj, ptr align 4 %i.ch, <4 x i1> %i.ci), !tbaa !79
  br label %.split75

.split75:                                         ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw8tiff_getExPjS0_S0_Px(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !call_target !149
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !call_target !150 ; 2 uses
  %i.l = icmp slt i64 %i.k, 12
  %i.m = sub nsw i64 %i.k, %i.f
  %i.n = icmp slt i64 %i.m, 12
  %or.cond = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 4, ptr %i.o, align 16, !tbaa !84
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.q = zext i16 %i.p to i32
  store i32 %i.q, ptr %2, align 4, !tbaa !81
  %i.r = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.s = zext i16 %i.r to i32
  store i32 %i.s, ptr %3, align 4, !tbaa !81
  %i.t = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.t, ptr %4, align 4, !tbaa !81
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u), !call_target !149
  %i.z = add nsw i64 %i.y, 4
  store i64 %i.z, ptr %5, align 8, !tbaa !151
  %i.aa = load i32, ptr %4, align 4, !tbaa !81
  %i.ab = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 19
  %spec.select = select i1 %i.ac, i32 %i.ab, i32 0 ; 2 uses
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw22tagtype_dataunit_bytesE, i64 8), align 8, !tbaa !153 ; 2 uses
  %i.ae = icmp ult i32 %spec.select, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr @_ZN6LibRaw22tagtype_dataunit_bytesE, align 8, !tbaa !154
  %i.ag = zext i32 %spec.select to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !81
  br label %_ZNK21libraw_static_table_tixEj.exit

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr @_ZN6LibRaw22tagtype_dataunit_bytesE, align 8, !tbaa !154 ; 2 uses
  %.not6.i = icmp eq ptr %i.aj, null
  br i1 %.not6.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !81
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ai, %bb.d ], [ %i.ak, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.al = mul i32 %.0.i, %i.aa
  %i.am = icmp ugt i32 %i.al, 4
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %i.ao = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add nsw i64 %1, %i.ap
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !141
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %i.aq, i32 noundef 0), !call_target !158 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK21libraw_static_table_tixEj.exit
  ret void
}

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #13

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold noreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 short", !11, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = !{!"_ZTS20libraw_image_sizes_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !8, i64 16, !14, i64 24, !8, i64 32, !7, i64 36, !13, i64 164, !7, i64 166}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"_ZTS16libraw_iparams_t", !7, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !7, i64 196, !7, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !7, i64 348, !7, i64 384, !7, i64 420, !8, i64 428, !16, i64 432}
!18 = !{!"float", !7, i64 0}
!19 = !{!"_ZTS18libraw_nikonlens_t", !18, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!20 = !{!"_ZTS16libraw_dnglens_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!21 = !{!"long long", !7, i64 0}
!22 = !{!"_ZTS24libraw_makernotes_lens_t", !21, i64 0, !7, i64 8, !13, i64 136, !13, i64 138, !21, i64 144, !13, i64 152, !13, i64 154, !7, i64 156, !13, i64 220, !7, i64 222, !7, i64 238, !18, i64 256, !18, i64 260, !18, i64 264, !18, i64 268, !18, i64 272, !18, i64 276, !18, i64 280, !18, i64 284, !18, i64 288, !18, i64 292, !18, i64 296, !18, i64 300, !18, i64 304, !18, i64 308, !18, i64 312, !21, i64 320, !7, i64 328, !21, i64 456, !7, i64 464, !21, i64 592, !7, i64 600, !13, i64 728, !18, i64 732}
!23 = !{!"_ZTS17libraw_lensinfo_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !13, i64 532, !19, i64 536, !20, i64 544, !22, i64 560}
!24 = !{!"_ZTS13libraw_area_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!25 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !8, i64 32, !7, i64 36, !13, i64 52, !13, i64 54, !7, i64 56, !13, i64 58, !13, i64 60, !13, i64 62, !13, i64 64, !13, i64 66, !13, i64 68, !13, i64 70, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !8, i64 84, !18, i64 88, !13, i64 92, !13, i64 94, !13, i64 96, !13, i64 98, !8, i64 100, !13, i64 104, !8, i64 108, !8, i64 112, !13, i64 116, !8, i64 120, !24, i64 124, !24, i64 132, !24, i64 140, !24, i64 148, !24, i64 156, !7, i64 164}
!26 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!27 = !{!"_ZTS25libraw_nikon_makernotes_t", !14, i64 0, !13, i64 8, !13, i64 10, !7, i64 12, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 34, !7, i64 54, !7, i64 58, !7, i64 62, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 73, !7, i64 74, !7, i64 75, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 82, !7, i64 86, !13, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 112, !7, i64 144, !7, i64 145, !7, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !7, i64 160, !7, i64 162, !13, i64 170, !26, i64 172, !13, i64 180, !13, i64 182, !13, i64 184, !8, i64 188, !7, i64 192, !7, i64 212, !8, i64 232, !7, i64 236, !8, i64 248, !16, i64 256, !13, i64 264, !13, i64 266, !7, i64 268, !13, i64 270, !14, i64 272, !14, i64 280, !14, i64 288}
!28 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !14, i64 8, !7, i64 16, !7, i64 24, !7, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 200, !8, i64 264, !7, i64 268, !7, i64 276, !7, i64 288}
!29 = !{!"_ZTS18libraw_fuji_info_t", !18, i64 0, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !13, i64 16, !13, i64 18, !7, i64 20, !7, i64 53, !18, i64 88, !13, i64 92, !13, i64 94, !7, i64 96, !13, i64 100, !8, i64 104, !8, i64 108, !13, i64 112, !7, i64 114, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !13, i64 128, !8, i64 132, !13, i64 136, !7, i64 138, !7, i64 151, !7, i64 156, !8, i64 164, !13, i64 168, !8, i64 172, !13, i64 176, !7, i64 178, !7, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !7, i64 336, !8, i64 344}
!30 = !{!"_ZTS27libraw_olympus_makernotes_t", !7, i64 0, !13, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 72, !13, i64 82, !7, i64 84, !13, i64 88, !13, i64 90, !7, i64 92, !7, i64 352, !13, i64 392, !7, i64 394, !7, i64 396, !7, i64 404, !13, i64 416, !13, i64 418, !13, i64 420, !13, i64 422, !14, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !8, i64 452, !13, i64 456, !13, i64 458}
!31 = !{!"_ZTS18libraw_sony_info_t", !13, i64 0, !7, i64 2, !7, i64 3, !8, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 17, !13, i64 18, !7, i64 20, !7, i64 24, !7, i64 25, !13, i64 26, !7, i64 28, !7, i64 38, !7, i64 39, !7, i64 40, !13, i64 48, !7, i64 50, !7, i64 51, !7, i64 52, !13, i64 54, !8, i64 56, !13, i64 60, !7, i64 62, !13, i64 66, !13, i64 68, !13, i64 70, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !8, i64 80, !18, i64 84, !13, i64 88, !8, i64 92, !8, i64 96, !13, i64 100, !7, i64 102, !8, i64 124, !13, i64 128, !8, i64 132, !7, i64 136, !7, i64 137, !13, i64 138, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !8, i64 156, !13, i64 160, !7, i64 162, !18, i64 180}
!32 = !{!"_ZTS25libraw_kodak_makernotes_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !7, i64 12, !7, i64 48, !7, i64 84, !7, i64 120, !7, i64 156, !7, i64 192, !13, i64 228, !13, i64 230, !13, i64 232, !13, i64 234, !18, i64 236, !18, i64 240}
!33 = !{!"_ZTS29libraw_panasonic_makernotes_t", !13, i64 0, !13, i64 2, !7, i64 4, !8, i64 36, !18, i64 40, !7, i64 44, !13, i64 56, !13, i64 58, !8, i64 60, !8, i64 64}
!34 = !{!"_ZTS26libraw_pentax_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 12, !8, i64 16, !8, i64 20, !13, i64 24, !7, i64 26, !13, i64 30, !7, i64 32, !7, i64 33, !13, i64 34}
!35 = !{!"_ZTS22libraw_p1_makernotes_t", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 384}
!36 = !{!"_ZTS25libraw_ricoh_makernotes_t", !13, i64 0, !7, i64 4, !7, i64 12, !13, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !13, i64 48, !13, i64 50, !14, i64 56, !14, i64 64}
!37 = !{!"_ZTS27libraw_samsung_makernotes_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 40, !14, i64 88, !8, i64 96, !7, i64 100}
!38 = !{!"_ZTS24libraw_metadata_common_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !18, i64 56, !18, i64 60, !13, i64 64, !7, i64 66, !18, i64 196, !7, i64 200, !8, i64 296}
!39 = !{!"_ZTS19libraw_makernotes_t", !25, i64 0, !27, i64 168, !28, i64 464, !29, i64 848, !30, i64 1200, !31, i64 1664, !32, i64 1848, !33, i64 2092, !34, i64 2160, !35, i64 2196, !36, i64 2648, !37, i64 2720, !38, i64 2856}
!40 = !{!"_ZTS21libraw_shootinginfo_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !7, i64 14, !7, i64 78}
!41 = !{!"_ZTS22libraw_output_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 64, !7, i64 112, !18, i64 128, !18, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !7, i64 224, !8, i64 240, !8, i64 244, !18, i64 248, !18, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !18, i64 288, !18, i64 292, !8, i64 296, !8, i64 300}
!42 = !{!"any p2 pointer", !11, i64 0}
!43 = !{!"p2 omnipotent char", !42, i64 0}
!44 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !18, i64 28, !7, i64 32, !43, i64 40}
!45 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !18, i64 32}
!46 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !7, i64 4, !8, i64 16420, !7, i64 16424, !18, i64 32840, !7, i64 32844, !7, i64 32860, !7, i64 32868, !8, i64 32884, !7, i64 32888, !7, i64 32904, !18, i64 32920, !18, i64 32924, !7, i64 32928}
!47 = !{!"_ZTS18libraw_colordata_t", !7, i64 0, !7, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !7, i64 147500, !18, i64 147516, !18, i64 147520, !7, i64 147524, !7, i64 147652, !7, i64 147668, !7, i64 147684, !7, i64 147732, !7, i64 147780, !7, i64 147828, !45, i64 147876, !18, i64 147912, !18, i64 147916, !7, i64 147920, !7, i64 147984, !7, i64 148048, !7, i64 148112, !7, i64 148176, !7, i64 148193, !11, i64 148264, !8, i64 148272, !7, i64 148276, !7, i64 148308, !46, i64 148648, !7, i64 181624, !7, i64 185720, !8, i64 187000, !7, i64 187004, !8, i64 187076, !8, i64 187080}
!48 = !{!"long", !7, i64 0}
!49 = !{!"_ZTS17libraw_gps_info_t", !7, i64 0, !7, i64 12, !7, i64 24, !18, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44}
!50 = !{!"_ZTS17libraw_imgother_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !48, i64 16, !8, i64 24, !7, i64 28, !49, i64 156, !7, i64 204, !7, i64 716, !7, i64 780}
!51 = !{!"_ZTS24LibRaw_thumbnail_formats", !7, i64 0}
!52 = !{!"_ZTS18libraw_thumbnail_t", !51, i64 0, !13, i64 4, !13, i64 6, !8, i64 8, !8, i64 12, !16, i64 16}
!53 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !7, i64 8}
!54 = !{!"p1 float", !11, i64 0}
!55 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 12, !13, i64 14}
!56 = !{!"_ZTS16libraw_rawdata_t", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !12, i64 56, !12, i64 64, !17, i64 72, !15, i64 512, !55, i64 696, !47, i64 712}
!57 = !{!"_ZTS13libraw_data_t", !12, i64 0, !15, i64 8, !17, i64 192, !23, i64 632, !39, i64 1928, !40, i64 5088, !41, i64 5232, !44, i64 5536, !8, i64 5584, !8, i64 5588, !47, i64 5592, !50, i64 192680, !52, i64 193480, !53, i64 193504, !56, i64 193768, !11, i64 381568}
!58 = !{!"p1 _ZTS10LibRaw_TLS", !11, i64 0}
!59 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !11, i64 0}
!60 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!61 = !{!"_ZTS15internal_data_t", !59, i64 0, !60, i64 8, !8, i64 16, !16, i64 24, !21, i64 32, !21, i64 40, !7, i64 48}
!62 = !{!"p1 int", !11, i64 0}
!63 = !{!"_ZTS13output_data_t", !62, i64 0, !62, i64 8}
!64 = !{!"_ZTS15identify_data_t", !8, i64 0, !21, i64 8, !21, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!65 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !7, i64 0}
!66 = !{!"_ZTS12pana8_tags_t", !7, i64 0, !7, i64 24, !13, i64 36, !7, i64 38, !7, i64 46, !7, i64 80, !7, i64 114, !13, i64 148, !13, i64 150, !7, i64 152, !7, i64 192, !7, i64 204, !7, i64 224, !7, i64 234}
!67 = !{!"_ZTS15unpacker_data_t", !13, i64 0, !7, i64 2, !7, i64 10, !8, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !65, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !21, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !66, i64 192, !7, i64 440, !8, i64 2488, !8, i64 2492, !13, i64 2496, !13, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !7, i64 2528, !13, i64 2608}
!68 = !{!"_ZTS22libraw_internal_data_t", !61, i64 0, !55, i64 64, !63, i64 80, !64, i64 96, !67, i64 136}
!69 = !{!"p1 _ZTS6decode", !11, i64 0}
!70 = !{!"_ZTS13libraw_memmgr", !42, i64 0, !8, i64 8}
!71 = !{!"_ZTS18libraw_callbacks_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144}
!72 = !{!"_ZTS6LibRaw", !57, i64 8, !58, i64 381584, !68, i64 381592, !7, i64 384344, !69, i64 433496, !69, i64 433504, !7, i64 433512, !70, i64 768232, !71, i64 768248, !7, i64 768400, !7, i64 768416, !7, i64 768432, !11, i64 768448, !11, i64 768456, !11, i64 768464, !48, i64 768472, !11, i64 768480, !11, i64 768488, !11, i64 768496, !11, i64 768504}
!73 = !{!72, !8, i64 544}
!74 = !{!72, !13, i64 24}
!75 = !{!72, !13, i64 26}
!76 = !{!7, !7, i64 0}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!13, !13, i64 0}
!79 = !{!18, !18, i64 0}
!80 = !{!72, !8, i64 153088}
!81 = !{!8, !8, i64 0}
!82 = !{!14, !14, i64 0}
!83 = !{!"_ZTS17LibRaw_exceptions", !7, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!72, !13, i64 20}
!86 = !{!72, !13, i64 22}
!87 = distinct !{!87, !77}
!88 = distinct !{!88, !77, !98, !99}
!89 = !{!72, !8, i64 48}
!90 = !{!72, !8, i64 381716}
!91 = !{!72, !8, i64 381828}
!92 = !{!72, !13, i64 381670}
!93 = !{!72, !8, i64 153096}
!94 = !{!72, !21, i64 381696}
!95 = !{!72, !8, i64 381712}
!96 = !{!"_ZTS18libraw_dng_color_t", !8, i64 0, !13, i64 4, !7, i64 8, !7, i64 72, !7, i64 120}
!97 = !{!96, !13, i64 4}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!"llvm.loop.unroll.runtime.disable"}
!100 = !{!72, !21, i64 381632}
!101 = !{!72, !65, i64 381824}
!102 = !{!72, !8, i64 381840}
!103 = !{!72, !8, i64 381836}
!104 = !{!72, !8, i64 381808}
!105 = !{!72, !8, i64 381744}
!106 = !{!72, !8, i64 381832}
!107 = !{!72, !8, i64 192712}
!108 = !{!72, !48, i64 192704}
!109 = !{!72, !8, i64 381664}
!110 = !{!72, !8, i64 381864}
!111 = !{!72, !8, i64 153872}
!112 = !{!72, !8, i64 381656}
!113 = !{!72, !8, i64 381660}
!114 = !{!72, !14, i64 40}
!115 = !{!72, !8, i64 381720}
!116 = !{!72, !13, i64 2920}
!117 = distinct !{!117, !77}
!118 = distinct !{!118, !77}
!119 = distinct !{!119, !77}
!120 = !{!72, !11, i64 768264}
!121 = !{!72, !11, i64 768272}
!122 = !{!72, !12, i64 8}
!123 = !{!72, !13, i64 381668}
!124 = !{!72, !13, i64 30}
!125 = distinct !{!125, !77}
!126 = distinct !{!126, !77}
!127 = distinct !{!127, !77}
!128 = !{!72, !7, i64 768416}
!129 = !{!72, !8, i64 381860}
!130 = !{!72, !13, i64 18}
!131 = !{!72, !13, i64 16}
!132 = distinct !{!132, i1 false, !"LVerDomain"}
!133 = distinct !{!133, !132}
!134 = distinct !{!134, !132}
!135 = !{!133}
!136 = !{!134}
!137 = !{!72, !8, i64 540}
!138 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !142, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!139 = !{!72, !59, i64 381592}
!140 = !{!"vtable pointer", !6, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!143 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!144 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !143, line: 109, baseType: !144)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!147 = !{!145, !146}
!148 = !DISubroutineType(types: !147)
!149 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !138, file: !142, line: 103, type: !148, scopeLine: 103, containingType: !138, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!150 = !DISubprogram(name: "size", linkageName: "_ZN26LibRaw_abstract_datastream4sizeEv", scope: !138, file: !142, line: 104, type: !148, scopeLine: 104, containingType: !138, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!151 = !{!21, !21, i64 0}
!152 = !{!"_ZTS21libraw_static_table_t", !62, i64 0, !8, i64 8}
!153 = !{!152, !8, i64 8}
!154 = !{!152, !62, i64 0}
!155 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!156 = !{!155, !146, !145, !155}
!157 = !DISubroutineType(types: !156)
!158 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !138, file: !142, line: 102, type: !157, scopeLine: 102, containingType: !138, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
end_hunk_0
