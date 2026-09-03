Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/utils_dcraw?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN6LibRaw18crop_masked_pixelsEv:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.av = load i16, ptr %i.au, align 2, !tbaa !75
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %i.ax = add nsw i32 %i.aj, %i.aw
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !83
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !88
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !83
  %i.be = add nsw i32 %i.bb, %i.bd
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !130
  %i.bh = zext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !83
  %i.bk = add nsw i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !83
  br label %bb.i

bb.i:                                             ; preds = %.tail.thread, %bb.g
  %i.bl = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw14nokia_load_rawEv to i64)
  %i.bm = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw17broadcom_load_rawEv to i64)
  %i.bn = or i1 %i.bl, %i.bm
  %or.cond113 = and i1 %i.bn, %i.h
  br i1 %or.cond113, label %.thread70.thread.sink.split, label %.thread70.thread

.thread70.thread.sink.split:                      ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !74
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !83
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !88
  %i.bu = zext i16 %i.bt to i32
  store i32 %i.bu, ptr %i.c, align 8, !tbaa !83
  br label %.thread70.thread

.thread70.thread:                                 ; preds = %bb.i, %.thread70.thread.sink.split, %sub_0, %bb.h, %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 153876 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bv, i8 0, i64 32, i1 false)
  %i.bw = load i16, ptr %i.a, align 8, !tbaa !131
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
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
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !83
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 0) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !83 ; 2 uses
  %.76 = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.bx)
  %i.cl = icmp slt i32 %spec.select, %.76
  br i1 %i.cl, label %.lr.ph80, label %._crit_edge81

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
  %1 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !83
  %2 = insertelement <4 x i32> poison, i32 %i.em, i64 0
  %3 = insertelement <4 x i32> %2, i32 %i.ep, i64 1
  %4 = insertelement <4 x i32> %3, i32 %i.er, i64 2
  %5 = insertelement <4 x i32> %4, i32 %i.et, i64 3
  %6 = udiv <4 x i32> %1, %5
  store <4 x i32> %6, ptr %i.eu, align 8, !tbaa !83
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 136696
  store i32 0, ptr %i.ev, align 8, !tbaa !83
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 136692
  store i32 0, ptr %i.ew, align 4, !tbaa !83
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 136688
  store i32 0, ptr %i.ex, align 8, !tbaa !83
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %.preheader
  %.sink = phi i32 [ 0, %.preheader ], [ %i.ek, %bb.o ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 %.sink, ptr %i.ey, align 8, !tbaa !82
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
  %i.e = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.d) ; 2 uses
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
  %i.q = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.p) ; 2 uses
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
  %i.al = insertelement <2 x double> poison, double %i.q, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.e, i64 1
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader74.us.preheader, %bb.a
  %.sroa.216.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.ak, %.preheader74.us.preheader ]
  %.sroa.200.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.ag, %.preheader74.us.preheader ]
  %.sroa.184.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.ac, %.preheader74.us.preheader ] ; 4 uses
  %.sroa.126.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.y, %.preheader74.us.preheader ]
  %.sroa.109.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.u, %.preheader74.us.preheader ]
  %.sroa.93.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.q, %.preheader74.us.preheader ] ; 3 uses
  %.sroa.35.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.m, %.preheader74.us.preheader ]
  %.sroa.19.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.i, %.preheader74.us.preheader ]
  %.sroa.0.0 = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.e, %.preheader74.us.preheader ] ; 2 uses
  %i.an = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.am, %.preheader74.us.preheader ] ; 2 uses
  %i.ao = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.sroa.0.0)
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.ao, f0x3EE4F8B580000000 ; 2 uses
  %i.aq = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.sroa.35.0, i64 0 ; 2 uses
  %i.ar = insertelement <2 x double> <double 1.000000e+00, double poison>, double %.sroa.19.0, i64 1 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %.sroa.0.0, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fdiv reassoc nsz arcp contract afn <2 x double> %i.ar, %i.at
  %i.av = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = fdiv reassoc nsz arcp contract afn <2 x double> %i.aq, %i.av
  %i.ax = select i1 %i.ap, <2 x double> %i.aw, <2 x double> %i.aq ; 3 uses
  %i.ay = select i1 %i.ap, <2 x double> %i.au, <2 x double> %i.ar ; 2 uses
  %i.az = extractelement <2 x double> %i.ay, i64 1 ; 6 uses
  %i.ba = extractelement <2 x double> %i.ax, i64 1 ; 4 uses
  %i.bb = fmul reassoc nsz arcp contract afn double %i.az, %.sroa.93.0
  %i.bc = fsub reassoc nsz arcp contract afn double %.sroa.109.0, %i.bb ; 4 uses
  %i.bd = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul reassoc nsz arcp contract afn <2 x double> %i.ax, %i.bd
  %i.bf = fneg reassoc nsz arcp contract afn double %.sroa.93.0
  %i.bg = extractelement <2 x double> %i.ay, i64 0 ; 3 uses
  %i.bh = fmul reassoc nsz arcp contract afn double %i.bg, %i.bf ; 2 uses
  %i.bi = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.sroa.126.0, i64 0
  %i.bj = fsub reassoc nsz arcp contract afn <2 x double> %i.bi, %i.be ; 2 uses
  %i.bk = fneg reassoc nsz arcp contract afn double %.sroa.93.0
  %i.bl = fmul reassoc nsz arcp contract afn double %i.ba, %i.bk ; 2 uses
  %i.bm = fmul reassoc nsz arcp contract afn double %i.az, %.sroa.184.0
  %i.bn = fsub reassoc nsz arcp contract afn double %.sroa.200.0, %i.bm ; 4 uses
  %i.bo = extractelement <2 x double> %i.ax, i64 0 ; 2 uses
  %i.bp = fmul reassoc nsz arcp contract afn double %i.bo, %.sroa.184.0
  %i.bq = fneg reassoc nsz arcp contract afn double %.sroa.184.0
  %i.br = fmul reassoc nsz arcp contract afn double %i.bg, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn double %i.ba, %.sroa.184.0 ; 2 uses
  %i.bt = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bc)
  %i.bu = fcmp reassoc nsz arcp contract afn ogt double %i.bt, f0x3EE4F8B580000000 ; 3 uses
  %i.bv = fdiv reassoc nsz arcp contract afn double %i.bh, %i.bc
  %i.bw = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fdiv reassoc nsz arcp contract afn <2 x double> %i.bj, %i.bx
  %i.bz = fdiv reassoc nsz arcp contract afn double %i.bl, %i.bc
  %.sroa.170.2 = select nsz i1 %i.bu, double %i.bz, double %i.bl ; 3 uses
  %.sroa.142.2 = select nsz i1 %i.bu, double %i.bv, double %i.bh ; 3 uses
  %i.ca = select i1 %i.bu, <2 x double> %i.by, <2 x double> %i.bj ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0 ; 5 uses
  %i.cc = fmul reassoc nsz arcp contract afn double %i.cb, %i.az
  %i.cd = fsub reassoc nsz arcp contract afn double %i.bo, %i.cc ; 3 uses
  %i.ce = fmul reassoc nsz arcp contract afn double %.sroa.142.2, %i.az
  %i.cf = extractelement <2 x double> %i.ca, i64 1 ; 3 uses
  %i.cg = fmul reassoc nsz arcp contract afn double %i.cf, %i.az
end_hunk_0
