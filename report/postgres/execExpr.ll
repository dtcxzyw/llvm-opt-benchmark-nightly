Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/execExpr?download=true
inline.NumInlined: 185
inline.NumDeleted: 17
begin_hunk_0_@ExecBuildAggTrans:bb.a

bb.cs:                                            ; preds = %bb.cp
  br i1 %i.qi, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.ql = load i8, ptr %i.ng, align 8, !range !5, !noundef !6
  %i.qm = trunc nuw i8 %i.ql to i1
  %.53.i252 = select i1 %i.qm, i64 113, i64 114
  br label %bb.cv

bb.cu:                                            ; preds = %bb.co
  %i.qn = load i32, ptr %i.nh, align 4
  %i.qo = icmp eq i32 %i.qn, 1
  %.54.i254 = select i1 %i.qo, i64 118, i64 119
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.sink.i246 = phi i64 [ %.54.i254, %bb.cu ], [ 115, %bb.cs ], [ %.53.i252, %bb.ct ], [ 112, %bb.cq ], [ %..i253, %bb.cr ]
  %i.qp = load i32, ptr %i.p, align 4             ; 3 uses
  %i.qq = icmp eq i32 %i.qp, 0
  br i1 %i.qq, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 16, ptr %i.p, align 4
  %i.qr = call ptr @palloc_mul(i64 noundef 64, i64 noundef 16) #8 ; 2 uses
  store ptr %i.qr, ptr %.phi.trans.insert.i229, align 8
  br label %ExprEvalPushStep.exit49.i250

bb.cx:                                            ; preds = %bb.cv
  %i.qs = load i32, ptr %i.q, align 8
  %i.qt = icmp eq i32 %i.qp, %i.qs
  br i1 %i.qt, label %bb.cy, label %._crit_edge.i46.i247

._crit_edge.i46.i247:                             ; preds = %bb.cx
  %.pre.i48.i249 = load ptr, ptr %.phi.trans.insert.i229, align 8
  br label %ExprEvalPushStep.exit49.i250

bb.cy:                                            ; preds = %bb.cx
  %i.qu = shl i32 %i.qp, 1                        ; 2 uses
  store i32 %i.qu, ptr %i.p, align 4
  %i.qv = load ptr, ptr %.phi.trans.insert.i229, align 8
  %i.qw = sext i32 %i.qu to i64
  %i.qx = shl nsw i64 %i.qw, 6
  %i.qy = call ptr @repalloc(ptr noundef %i.qv, i64 noundef %i.qx) #8 ; 2 uses
  store ptr %i.qy, ptr %.phi.trans.insert.i229, align 8
  br label %ExprEvalPushStep.exit49.i250

ExprEvalPushStep.exit49.i250:                     ; preds = %bb.cy, %._crit_edge.i46.i247, %bb.cw
  %i.qz = phi ptr [ %.pre.i48.i249, %._crit_edge.i46.i247 ], [ %i.qy, %bb.cy ], [ %i.qr, %bb.cw ]
  %i.ra = load i32, ptr %i.q, align 8             ; 2 uses
  %i.rb = add i32 %i.ra, 1
  store i32 %i.rb, ptr %i.q, align 8
  %i.rc = sext i32 %i.ra to i64
  %i.rd = getelementptr inbounds [64 x i8], ptr %i.qz, i64 %i.rc ; 9 uses
  store i64 %.sink.i246, ptr %i.rd, align 8
  %.sroa.23.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store ptr %i.g, ptr %.sroa.23.0..sroa_idx280, align 8
  %.sroa.27.0..sroa_idx296 = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store ptr %i.h, ptr %.sroa.27.0..sroa_idx296, align 8
  %.sroa.31.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  store ptr %i.bs, ptr %.sroa.31.0..sroa_idx312, align 8
  %.sroa.41.0..sroa_idx329 = getelementptr inbounds nuw i8, ptr %i.rd, i64 32
  store ptr %.0.i244, ptr %.sroa.41.0..sroa_idx329, align 8
  %.sroa.45.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.rd, i64 40
  store i32 %.0464, ptr %.sroa.45.0..sroa_idx345, align 8
  %.sroa.49.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %i.rd, i64 44
  store i32 %i.pd, ptr %.sroa.49.0..sroa_idx361, align 4
  %.sroa.52.0..sroa_idx377 = getelementptr inbounds nuw i8, ptr %i.rd, i64 48
  store i32 %.1463, ptr %.sroa.52.0..sroa_idx377, align 8
  %.sroa.54.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %i.rd, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.54.0..sroa_idx387, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.54, i64 12, i1 false)
  %.not.i251 = icmp eq i32 %.045.i245, -1
  br i1 %.not.i251, label %ExecBuildAggTransCall.exit259, label %bb.cz

bb.cz:                                            ; preds = %ExprEvalPushStep.exit49.i250
  %i.re = load ptr, ptr %.phi.trans.insert.i229, align 8
  %i.rf = sext i32 %.045.i245 to i64
  %i.rg = getelementptr inbounds [64 x i8], ptr %i.re, i64 %i.rf
  %i.rh = load i32, ptr %i.q, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 28
  store i32 %i.rh, ptr %i.ri, align 4
  br label %ExecBuildAggTransCall.exit259

ExecBuildAggTransCall.exit259:                    ; preds = %ExprEvalPushStep.exit49.i250, %bb.cz
  %i.rj = add nuw nsw i32 %.0464, 1               ; 2 uses
  %exitcond509.not = icmp eq i32 %i.rj, %i.na
  br i1 %exitcond509.not, label %.loopexit, label %.peel.next511, !llvm.loop !24

.loopexit:                                        ; preds = %ExecBuildAggTransCall.exit259, %ExecBuildAggTransCall.exit259.peel, %bb.bt, %.loopexit433
  %.sroa.31.8 = phi ptr [ %.sroa.31.6, %.loopexit433 ], [ %.sroa.31.6, %bb.bt ], [ %i.bs, %ExecBuildAggTransCall.exit259.peel ], [ %i.bs, %ExecBuildAggTransCall.exit259 ] ; 2 uses
  %.sroa.41.6 = phi ptr [ %.sroa.41.4, %.loopexit433 ], [ %.sroa.41.4, %bb.bt ], [ %.0.i244.peel, %ExecBuildAggTransCall.exit259.peel ], [ %.0.i244, %ExecBuildAggTransCall.exit259 ] ; 2 uses
  %.sroa.45.6 = phi i32 [ %.sroa.45.4, %.loopexit433 ], [ %.sroa.45.4, %bb.bt ], [ 0, %ExecBuildAggTransCall.exit259.peel ], [ %.0464, %ExecBuildAggTransCall.exit259 ] ; 2 uses
  %.sroa.49.5 = phi i32 [ %.sroa.49.3, %.loopexit433 ], [ %.sroa.49.3, %bb.bt ], [ %i.pd, %ExecBuildAggTransCall.exit259.peel ], [ %i.pd, %ExecBuildAggTransCall.exit259 ] ; 2 uses
  %.sroa.52.4 = phi i32 [ %.sroa.52.2, %.loopexit433 ], [ %.sroa.52.2, %bb.bt ], [ %.0186, %ExecBuildAggTransCall.exit259.peel ], [ %.1463, %ExecBuildAggTransCall.exit259 ] ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.5, i64 4 ; 2 uses
  %.not219 = icmp eq ptr %.5, null
  br i1 %.not219, label %.critedge226, label %.lr.ph473

.lr.ph473:                                        ; preds = %.loopexit
  %i.rl = getelementptr inbounds nuw i8, ptr %.5, i64 16
  %i.rm = load i32, ptr %i.rk, align 4
  %i.rn = icmp sgt i32 %i.rm, 0
  br i1 %i.rn, label %.lr.ph476, label %.critedge226

.lr.ph476:                                        ; preds = %.lr.ph473, %bb.de
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %bb.de ], [ 0, %.lr.ph473 ] ; 2 uses
  %i.ro = load ptr, ptr %i.rl, align 8
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %indvars.iv513
  %i.rq = load ptr, ptr %.phi.trans.insert.i229, align 8
  %i.rr = load i32, ptr %i.rp, align 8
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds [64 x i8], ptr %i.rq, i64 %i.rs ; 5 uses
  %i.ru = load i64, ptr %i.rt, align 8
  switch i64 %i.ru, label %bb.de [
    i64 43, label %bb.da
    i64 106, label %bb.db
    i64 107, label %bb.db
    i64 108, label %bb.db
    i64 104, label %bb.dc
    i64 116, label %bb.dd
    i64 117, label %bb.dd
  ]

.critedge226:                                     ; preds = %bb.de, %.lr.ph473, %.loopexit
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %i.rv = load i32, ptr %i.i, align 4
  %i.rw = sext i32 %i.rv to i64
  %i.rx = icmp slt i64 %indvars.iv.next517, %i.rw
  br i1 %i.rx, label %bb.g, label %._crit_edge486, !llvm.loop !25

bb.da:                                            ; preds = %.lr.ph476
  %i.ry = load i32, ptr %i.q, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  store i32 %i.ry, ptr %i.rz, align 8
  br label %bb.de

bb.db:                                            ; preds = %.lr.ph476, %.lr.ph476, %.lr.ph476
  %i.sa = load i32, ptr %i.q, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rt, i64 44
  store i32 %i.sa, ptr %i.sb, align 4
  br label %bb.de

bb.dc:                                            ; preds = %.lr.ph476
  %i.sc = load i32, ptr %i.q, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  store i32 %i.sc, ptr %i.sd, align 8
  br label %bb.de

bb.dd:                                            ; preds = %.lr.ph476, %.lr.ph476
  %i.se = load i32, ptr %i.q, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rt, i64 40
  store i32 %i.se, ptr %i.sf, align 8
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph476, %bb.db, %bb.dd, %bb.dc, %bb.da
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %i.sg = load i32, ptr %i.rk, align 4
  %i.sh = sext i32 %i.sg to i64
  %i.si = icmp slt i64 %indvars.iv.next514, %i.sh
  br i1 %i.si, label %.lr.ph476, label %.critedge226
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ExecBuildHash32FromAttrs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ExprEvalStep, align 8       ; 28 uses
  %i.a = tail call noundef ptr @palloc0(i64 noundef 120) #8 ; 30 uses
  store i32 400, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store ptr %6, ptr %i.c, align 8
  %i.d = sext i32 %4 to i64
  %i.e = icmp ne i32 %7, 0
  %i.f = zext i1 %i.e to i64
  %i.g = add nsw i64 %i.f, %i.d
  %i.h = icmp sgt i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @palloc(i64 noundef 16) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.067 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.j = icmp sgt i32 %4, 0                       ; 4 uses
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader116, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %vec.phi114 = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %10, %vector.body ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load = load <4 x i16>, ptr %i.k, align 2
  %wide.load115 = load <4 x i16>, ptr %i.l, align 2
  %9 = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi, <4 x i16> %wide.load) ; 2 uses
  %10 = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi114, <4 x i16> %wide.load115) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %9, <4 x i16> %10)
  %11 = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %rdx.minmax)
  %12 = sext i16 %11 to i32                       ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader116

.lr.ph.preheader116:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.06588.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %12, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.065.lcssa = phi i32 [ 0, %bb.c ], [ %12, %middle.block ], [ %.065., %.lr.ph ]
  store i64 2, ptr %8, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 6 uses
  store i32 %.065.lcssa, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 3 uses
  store i8 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  store ptr %0, ptr %i.q, align 8
  %.val = load ptr, ptr %i.c, align 8
  %i.r = call fastcc zeroext i1 @ExecComputeSlotInfo(ptr %.val, ptr noundef %8)
  br i1 %i.r, label %bb.d, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader116, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader116 ] ; 2 uses
  %.06588 = phi i32 [ %.065., %.lr.ph ], [ %.06588.ph, %.lr.ph.preheader116 ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 2
  %i.u = sext i16 %i.t to i32
  %.065. = tail call i32 @llvm.smax.i32(i32 %.06588, i32 %i.u) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

bb.d:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 16, ptr %i.v, align 4
  %i.y = tail call ptr @palloc_mul(i64 noundef 64, i64 noundef 16) #8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.y, ptr %i.z, align 8
  br label %ExprEvalPushStep.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.w, %i.ab
  br i1 %i.ac, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %ExprEvalPushStep.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = shl i32 %i.w, 1                         ; 2 uses
  store i32 %i.ad, ptr %i.v, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = sext i32 %i.ad to i64
  %i.ah = shl nsw i64 %i.ag, 6
  %i.ai = tail call ptr @repalloc(ptr noundef %i.af, i64 noundef %i.ah) #8 ; 2 uses
  store ptr %i.ai, ptr %i.ae, align 8
  br label %ExprEvalPushStep.exit

ExprEvalPushStep.exit:                            ; preds = %bb.e, %._crit_edge.i, %bb.g
  %i.aj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ai, %bb.g ], [ %i.y, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [64 x i8], ptr %i.aj, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(64) %8, i64 64, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %ExprEvalPushStep.exit, %._crit_edge
  %i.ap = icmp eq i32 %7, 0
  br i1 %i.ap, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 85, ptr %8, align 8
  %i.aq = zext i32 %7 to i64
  store i64 %i.aq, ptr %i.n, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = select i1 %i.j, ptr %.067, ptr %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.aw = select i1 %i.j, ptr %i.au, ptr %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 3 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 16, ptr %i.ay, align 4
  %i.bb = tail call ptr @palloc_mul(i64 noundef 64, i64 noundef 16) #8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bb, ptr %i.bc, align 8
  br label %ExprEvalPushStep.exit75

bb.k:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = icmp eq i32 %i.az, %i.be
  br i1 %i.bf, label %bb.l, label %._crit_edge.i72

._crit_edge.i72:                                  ; preds = %bb.k
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre.i74 = load ptr, ptr %.phi.trans.insert.i73, align 8
  br label %ExprEvalPushStep.exit75

bb.l:                                             ; preds = %bb.k
  %i.bg = shl i32 %i.az, 1                        ; 2 uses
  store i32 %i.bg, ptr %i.ay, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = sext i32 %i.bg to i64
  %i.bk = shl nsw i64 %i.bj, 6
  %i.bl = tail call ptr @repalloc(ptr noundef %i.bi, i64 noundef %i.bk) #8 ; 2 uses
  store ptr %i.bl, ptr %i.bh, align 8
  br label %ExprEvalPushStep.exit75

ExprEvalPushStep.exit75:                          ; preds = %bb.j, %._crit_edge.i72, %bb.l
  %i.bm = phi ptr [ %.pre.i74, %._crit_edge.i72 ], [ %i.bl, %bb.l ], [ %i.bb, %bb.j ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 8
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [64 x i8], ptr %i.bm, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(64) %8, i64 64, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %ExprEvalPushStep.exit75
  %.066 = phi i64 [ 88, %ExprEvalPushStep.exit75 ], [ 86, %bb.h ]
  br i1 %i.j, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 12 uses
  %.phi.trans.insert.i81 = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 16 uses
  %i.bw = add nsw i32 %4, -1                      ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.067, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.cc = zext nneg i32 %i.bw to i64
  %wide.trip.count100 = zext nneg i32 %4 to i64
  %i.cd = load i32, ptr %3, align 4
  %i.ce = load i16, ptr %5, align 2
  %i.cf = add i16 %i.ce, -1                       ; 2 uses
  %i.cg = tail call ptr @palloc0(i64 noundef 48) #8 ; 8 uses
  store ptr %2, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  store i32 %i.cd, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  store i8 0, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 30
  store i16 1, ptr %i.ck, align 2
  store i64 7, ptr %8, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store ptr %i.cl, ptr %i.bs, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr %i.cm, ptr %i.bt, align 8
  %i.cn = sext i16 %i.cf to i32
  store i32 %i.cn, ptr %i.n, align 8
  %i.co = load i32, ptr %0, align 8
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 3
  %i.cr = getelementptr i8, ptr %0, i64 %i.cq
  %i.cs = sext i16 %i.cf to i64
  %i.ct = getelementptr [100 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 100
  %i.cv = load i32, ptr %i.cu, align 4
  store i32 %i.cv, ptr %i.o, align 4
  store i32 0, ptr %i.q, align 8
  %i.cw = load i32, ptr %i.bu, align 4            ; 3 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph93
  %i.cy = load i32, ptr %i.bv, align 8
  %i.cz = icmp eq i32 %i.cw, %i.cy
  br i1 %i.cz, label %bb.o, label %._crit_edge.i80.peel

._crit_edge.i80.peel:                             ; preds = %bb.n
  %.pre.i82.peel = load ptr, ptr %.phi.trans.insert.i81, align 8
  br label %ExprEvalPushStep.exit83.peel

bb.o:                                             ; preds = %bb.n
  %i.da = shl i32 %i.cw, 1                        ; 2 uses
  store i32 %i.da, ptr %i.bu, align 4
  %i.db = load ptr, ptr %.phi.trans.insert.i81, align 8
  %i.dc = sext i32 %i.da to i64
  %i.dd = shl nsw i64 %i.dc, 6
  %i.de = tail call ptr @repalloc(ptr noundef %i.db, i64 noundef %i.dd) #8 ; 2 uses
end_hunk_0
begin_hunk_1_@ExecBuildHash32Expr:bb.a
  call fastcc void @ExecInitExprRec(ptr noundef %i.dg, ptr noundef nonnull %i.a, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do)
  %i.dp = icmp eq i32 %.sroa.10.0, %i.at          ; 2 uses
  %.sroa.9.0 = select i1 %i.dp, ptr %i.au, ptr %.081
  %.sroa.13.0 = select i1 %i.dp, ptr %i.av, ptr %i.aw
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  store i32 %i.dh, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  store i8 0, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 30
  store i16 1, ptr %i.dt, align 2
  %i.du = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 %i.di
  %i.dw = load i8, ptr %i.dv, align 1, !range !5, !noundef !6
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = select i1 %i.dx, i64 89, i64 88
  %i.dz = load i32, ptr %i.ax, align 4            ; 3 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 16, ptr %i.ax, align 4
  %i.eb = call ptr @palloc_mul(i64 noundef 64, i64 noundef 16) #8 ; 2 uses
  store ptr %i.eb, ptr %.phi.trans.insert.i91, align 8
  br label %ExprEvalPushStep.exit93

bb.x:                                             ; preds = %bb.v
  %i.ec = load i32, ptr %i.ay, align 8
  %i.ed = icmp eq i32 %i.dz, %i.ec
  br i1 %i.ed, label %bb.y, label %._crit_edge.i90

._crit_edge.i90:                                  ; preds = %bb.x
  %.pre.i92 = load ptr, ptr %.phi.trans.insert.i91, align 8
  br label %ExprEvalPushStep.exit93

bb.y:                                             ; preds = %bb.x
  %i.ee = shl i32 %i.dz, 1                        ; 2 uses
  store i32 %i.ee, ptr %i.ax, align 4
  %i.ef = load ptr, ptr %.phi.trans.insert.i91, align 8
  %i.eg = sext i32 %i.ee to i64
  %i.eh = shl nsw i64 %i.eg, 6
  %i.ei = call ptr @repalloc(ptr noundef %i.ef, i64 noundef %i.eh) #8 ; 2 uses
  store ptr %i.ei, ptr %.phi.trans.insert.i91, align 8
  br label %ExprEvalPushStep.exit93

ExprEvalPushStep.exit93:                          ; preds = %bb.w, %._crit_edge.i90, %bb.y
  %i.ej = phi ptr [ %.pre.i92, %._crit_edge.i90 ], [ %i.ei, %bb.y ], [ %i.eb, %bb.w ]
  %i.ek = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.ay, align 8
  %i.em = sext i32 %i.ek to i64
  %i.en = getelementptr inbounds [64 x i8], ptr %i.ej, i64 %i.em ; 9 uses
  store i64 %i.dy, ptr %i.en, align 8
  %.sroa.9.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx100, align 8
  %.sroa.13.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx104, align 8
  %.sroa.17.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store ptr %i.dl, ptr %.sroa.17.0..sroa_idx108, align 8
  %.sroa.19.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store ptr %i.dm, ptr %.sroa.19.0..sroa_idx112, align 8
  %.sroa.20.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store ptr %i.du, ptr %.sroa.20.0..sroa_idx116, align 8
  %.sroa.21.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  store i32 -1, ptr %.sroa.21.0..sroa_idx120, align 8
  %.sroa.22.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.en, i64 52
  store i32 0, ptr %.sroa.22.0..sroa_idx124, align 4
  %.sroa.22128.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  store ptr %.081, ptr %.sroa.22128.0..sroa_idx129, align 8
  %i.eo = load i32, ptr %i.ay, align 8
  %i.ep = add i32 %i.eo, -1
  %i.eq = call ptr @lappend_int(ptr noundef %.080, i32 noundef %i.ep) #8
  %i.er = add nuw nsw i32 %.sroa.10.0, 1
  br label %bb.r, !llvm.loop !29

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %.lr.ph142
  %indvars.iv = phi i64 [ 0, %.lr.ph142.preheader ], [ %indvars.iv.next, %.lr.ph142 ] ; 2 uses
  %i.es = load ptr, ptr %i.da, align 8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = load ptr, ptr %.phi.trans.insert.i91, align 8
  %i.ev = load i32, ptr %i.et, align 8
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [64 x i8], ptr %i.eu, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  store i32 %.pre, ptr %i.ey, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ez = load i32, ptr %i.cz, align 4
  %i.fa = sext i32 %i.ez to i64
  %i.fb = icmp slt i64 %indvars.iv.next, %i.fa
  br i1 %i.fb, label %.lr.ph142, label %.critedge

.critedge:                                        ; preds = %.lr.ph142, %bb.k, %bb.l, %bb.m, %.lr.ph, %.preheader
  %.sroa.22128.0.lcssa168 = phi ptr [ null, %bb.k ], [ %.081, %.preheader ], [ %.081, %.lr.ph ], [ null, %bb.m ], [ null, %bb.l ], [ %.081, %.lr.ph142 ]
  %.sroa.21.0.lcssa167 = phi i32 [ 0, %bb.k ], [ -1, %.preheader ], [ -1, %.lr.ph ], [ 0, %bb.m ], [ 0, %bb.l ], [ -1, %.lr.ph142 ]
  %.sroa.20.0.lcssa166 = phi ptr [ null, %bb.k ], [ %.sroa.20.0, %.preheader ], [ %.sroa.20.0, %.lr.ph ], [ null, %bb.m ], [ null, %bb.l ], [ %.sroa.20.0, %.lr.ph142 ]
  %.sroa.19.0.lcssa165 = phi ptr [ null, %bb.k ], [ %.sroa.19.0, %.preheader ], [ %.sroa.19.0, %.lr.ph ], [ null, %bb.m ], [ null, %bb.l ], [ %.sroa.19.0, %.lr.ph142 ]
  %.sroa.17.1.lcssa164 = phi ptr [ %.sroa.17.0, %bb.k ], [ %.sroa.17.1, %.preheader ], [ %.sroa.17.1, %.lr.ph ], [ %.sroa.17.0, %bb.m ], [ %.sroa.17.0, %bb.l ], [ %.sroa.17.1, %.lr.ph142 ]
  %i.fc = load i32, ptr %i.ax, align 4            ; 3 uses
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge
  store i32 16, ptr %i.ax, align 4
  %i.fe = call ptr @palloc_mul(i64 noundef 64, i64 noundef 16) #8 ; 2 uses
  store ptr %i.fe, ptr %.phi.trans.insert.i91, align 8
  br label %ExprEvalPushStep.exit97

bb.aa:                                            ; preds = %.critedge
  %i.ff = load i32, ptr %i.ay, align 8
  %i.fg = icmp eq i32 %i.fc, %i.ff
  br i1 %i.fg, label %bb.ab, label %._crit_edge.i94

._crit_edge.i94:                                  ; preds = %bb.aa
  %.pre.i96 = load ptr, ptr %.phi.trans.insert.i91, align 8
  br label %ExprEvalPushStep.exit97

bb.ab:                                            ; preds = %bb.aa
  %i.fh = shl i32 %i.fc, 1                        ; 2 uses
  store i32 %i.fh, ptr %i.ax, align 4
  %i.fi = load ptr, ptr %.phi.trans.insert.i91, align 8
  %i.fj = sext i32 %i.fh to i64
  %i.fk = shl nsw i64 %i.fj, 6
  %i.fl = call ptr @repalloc(ptr noundef %i.fi, i64 noundef %i.fk) #8 ; 2 uses
  store ptr %i.fl, ptr %.phi.trans.insert.i91, align 8
  br label %ExprEvalPushStep.exit97

ExprEvalPushStep.exit97:                          ; preds = %bb.z, %._crit_edge.i94, %bb.ab
  %i.fm = phi ptr [ %.pre.i96, %._crit_edge.i94 ], [ %i.fl, %bb.ab ], [ %i.fe, %bb.z ]
  %i.fn = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.ay, align 8
  %i.fp = sext i32 %i.fn to i64
  %i.fq = getelementptr inbounds [64 x i8], ptr %i.fm, i64 %i.fp ; 7 uses
  %.sroa.17.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i8 0, i64 24, i1 false)
  store ptr %.sroa.17.1.lcssa164, ptr %.sroa.17.0..sroa_idx110, align 8
  %.sroa.19.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  store ptr %.sroa.19.0.lcssa165, ptr %.sroa.19.0..sroa_idx114, align 8
  %.sroa.20.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  store ptr %.sroa.20.0.lcssa166, ptr %.sroa.20.0..sroa_idx118, align 8
  %.sroa.21.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  store i32 %.sroa.21.0.lcssa167, ptr %.sroa.21.0..sroa_idx122, align 8
  %.sroa.22.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.fq, i64 52
  store i32 0, ptr %.sroa.22.0..sroa_idx126, align 4
  %.sroa.22128.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  store ptr %.sroa.22128.0.lcssa168, ptr %.sroa.22128.0..sroa_idx131, align 8
  %i.fr = call zeroext i1 @jit_compile_expr(ptr noundef nonnull %i.a) #8
  br i1 %i.fr, label %ExecReadyExpr.exit, label %bb.ac

bb.ac:                                            ; preds = %ExprEvalPushStep.exit97
  call void @ExecReadyInterpretedExpr(ptr noundef nonnull %i.a) #8
  br label %ExecReadyExpr.exit

ExecReadyExpr.exit:                               ; preds = %ExprEvalPushStep.exit97, %bb.ac
  ret ptr %i.a
}

declare void @fmgr_info(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ExecBuildGroupingEqual(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.ExprEvalStep, align 8       ; 26 uses
  %i.a = tail call noundef ptr @palloc0(i64 noundef 120) #8 ; 33 uses
  store i32 400, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = icmp eq i32 %4, 0
  br i1 %i.c, label %ExecReadyExpr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store ptr %8, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = icmp sgt i32 %4, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader155, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i16> [ splat (i16 -1), %vector.ph ], [ %10, %vector.body ]
  %vec.phi153 = phi <4 x i16> [ splat (i16 -1), %vector.ph ], [ %11, %vector.body ]
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.load = load <4 x i16>, ptr %i.l, align 2
  %wide.load154 = load <4 x i16>, ptr %i.m, align 2
  %10 = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi, <4 x i16> %wide.load) ; 2 uses
  %11 = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi153, <4 x i16> %wide.load154) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %10, <4 x i16> %11)
  %12 = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %rdx.minmax)
  %13 = sext i16 %12 to i32                       ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader155

.lr.ph.preheader155:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.090123.ph = phi i32 [ -1, %.lr.ph.preheader ], [ %13, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.090.lcssa = phi i32 [ -1, %bb.b ], [ %13, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  store i64 2, ptr %9, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  store i32 %.090.lcssa, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store ptr %2, ptr %i.r, align 8
  %i.s = call fastcc zeroext i1 @ExecComputeSlotInfo(ptr %8, ptr noundef %9)
  br i1 %i.s, label %bb.c, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader155, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader155 ] ; 2 uses
  %.090123 = phi i32 [ %spec.select, %.lr.ph ], [ %.090123.ph, %.lr.ph.preheader155 ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2
  %i.v = sext i16 %i.u to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.090123, i32 %i.v) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

bb.c:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 16, ptr %i.w, align 4
  %i.z = tail call ptr @palloc_mul(i64 noundef 64, i64 noundef 16) #8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.z, ptr %i.aa, align 8
  br label %ExprEvalPushStep.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp eq i32 %i.x, %i.ac
  br i1 %i.ad, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %ExprEvalPushStep.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = shl i32 %i.x, 1                         ; 2 uses
  store i32 %i.ae, ptr %i.w, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = sext i32 %i.ae to i64
  %i.ai = shl nsw i64 %i.ah, 6
  %i.aj = tail call ptr @repalloc(ptr noundef %i.ag, i64 noundef %i.ai) #8 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8
  br label %ExprEvalPushStep.exit

ExprEvalPushStep.exit:                            ; preds = %bb.d, %._crit_edge.i, %bb.f
  %i.ak = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.aj, %bb.f ], [ %i.z, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8            ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds [64 x i8], ptr %i.ak, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(64) %9, i64 64, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %ExprEvalPushStep.exit, %._crit_edge
  store i64 3, ptr %9, align 8
  store i32 %.090.lcssa, ptr %i.o, align 8
  store i8 0, ptr %i.p, align 4
  store ptr %1, ptr %i.q, align 8
  store ptr %3, ptr %i.r, align 8
  %.val = load ptr, ptr %i.f, align 8
  %i.aq = call fastcc zeroext i1 @ExecComputeSlotInfo(ptr %.val, ptr noundef %9)
  br i1 %i.aq, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 16, ptr %i.ar, align 4
  %i.au = tail call ptr @palloc_mul(i64 noundef 64, i64 noundef 16) #8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.au, ptr %i.av, align 8
  br label %ExprEvalPushStep.exit102

bb.j:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp eq i32 %i.as, %i.ax
  br i1 %i.ay, label %bb.k, label %._crit_edge.i99

._crit_edge.i99:                                  ; preds = %bb.j
  %.phi.trans.insert.i100 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre.i101 = load ptr, ptr %.phi.trans.insert.i100, align 8
  br label %ExprEvalPushStep.exit102

bb.k:                                             ; preds = %bb.j
  %i.az = shl i32 %i.as, 1                        ; 2 uses
  store i32 %i.az, ptr %i.ar, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = sext i32 %i.az to i64
  %i.bd = shl nsw i64 %i.bc, 6
  %i.be = tail call ptr @repalloc(ptr noundef %i.bb, i64 noundef %i.bd) #8 ; 2 uses
  store ptr %i.be, ptr %i.ba, align 8
  br label %ExprEvalPushStep.exit102

ExprEvalPushStep.exit102:                         ; preds = %bb.i, %._crit_edge.i99, %bb.k
  %i.bf = phi ptr [ %.pre.i101, %._crit_edge.i99 ], [ %i.be, %bb.k ], [ %i.au, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds [64 x i8], ptr %i.bf, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(64) %9, i64 64, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %ExprEvalPushStep.exit102, %bb.g
  %i.bl = add i32 %4, -1                          ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, -1
  br i1 %i.bm, label %.lr.ph127, label %.critedge

.lr.ph127:                                        ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 13 uses
  %.phi.trans.insert.i104 = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 16 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bq = zext nneg i32 %i.bl to i64
  br label %bb.m

.preheader:                                       ; preds = %ExprEvalPushStep.exit118
  %i.br = getelementptr inbounds nuw i8, ptr %i.fu, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.fu, null
  br i1 %.not, label %.critedge, label %.lr.ph130

.lr.ph130:                                        ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bu = load i32, ptr %i.br, align 4
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph133.preheader, label %.critedge

.lr.ph133.preheader:                              ; preds = %.lr.ph130
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.pre = load i32, ptr %i.bw, align 8
  br label %.lr.ph133

bb.m:                                             ; preds = %.lr.ph127, %ExprEvalPushStep.exit118
  %indvars.iv135 = phi i64 [ %i.bq, %.lr.ph127 ], [ %indvars.iv.next136, %ExprEvalPushStep.exit118 ] ; 5 uses
  %.089125 = phi ptr [ null, %.lr.ph127 ], [ %i.fu, %ExprEvalPushStep.exit118 ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv135
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = sext i16 %i.by to i32
  %i.ca = add nsw i32 %i.bz, -1                   ; 3 uses
  %i.cb = load i32, ptr %0, align 8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = shl nsw i64 %i.cc, 3
  %i.ce = getelementptr i8, ptr %0, i64 %i.cd
  %i.cf = sext i32 %i.ca to i64                   ; 2 uses
  %i.cg = getelementptr [100 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %1, align 8
  %i.ci = sext i32 %i.ch to i64
  %i.cj = shl nsw i64 %i.ci, 3
  %i.ck = getelementptr i8, ptr %1, i64 %i.cj
  %i.cl = getelementptr [100 x i8], ptr %i.ck, i64 %i.cf
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv135
  %i.cn = load i32, ptr %i.cm, align 4            ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv135
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = tail call i32 @GetUserId() #8
  %i.cr = tail call i32 @object_aclcheck(i32 noundef 1255, i32 noundef %i.cn, i32 noundef %i.cq, i64 noundef 128) #8 ; 2 uses
  %.not96 = icmp eq i32 %i.cr, 0
  br i1 %.not96, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = tail call ptr @get_func_name(i32 noundef %i.cn) #8
  tail call void @aclcheck_error(i32 noundef %i.cr, i32 noundef 19, ptr noundef %i.cs) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ct = load ptr, ptr @object_access_hook, align 8
  %.not97 = icmp eq ptr %i.ct, null
  br i1 %.not97, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @RunFunctionExecuteHook(i32 noundef %i.cn) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cu = tail call ptr @palloc0(i64 noundef 48) #8 ; 5 uses
  %i.cv = tail call ptr @palloc0(i64 noundef 64) #8 ; 10 uses
  tail call void @fmgr_info(i32 noundef %i.cn, ptr noundef %i.cu) #8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
end_hunk_1
begin_hunk_2_@ExecInitJsonExpr:bb.a
  %.sroa.15.0..sroa_idx.i310 = getelementptr inbounds nuw i8, ptr %i.op, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.0..sroa_idx.i305, i8 0, i64 15, i1 false)
  store ptr %i.ez, ptr %.sroa.15.0..sroa_idx.i310, align 8
  %.sroa.16.0..sroa_idx.i311 = getelementptr inbounds nuw i8, ptr %i.op, i64 56
  store ptr null, ptr %.sroa.16.0..sroa_idx.i311, align 8
  %.pre339 = load ptr, ptr %i.mf, align 8         ; 2 uses
  %.phi.trans.insert340 = getelementptr inbounds nuw i8, ptr %.pre339, i64 16
  %.pre341 = load i8, ptr %.phi.trans.insert340, align 8, !range !5
  %i.oq = trunc nuw i8 %.pre341 to i1
  br i1 %i.oq, label %bb.bk, label %.thread360

.thread360:                                       ; preds = %ExprEvalPushStep.exit296, %bb.bj
  %i.or = phi ptr [ %.pre339, %bb.bj ], [ %i.nq, %ExprEvalPushStep.exit296 ]
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = load i32, ptr %i.ot, align 4
  switch i32 %i.ou, label %bb.bo [
    i32 28, label %bb.bk
    i32 55, label %bb.bk
  ]

bb.bk:                                            ; preds = %.thread360, %.thread360, %bb.bj
  store i64 98, ptr %4, align 8
  store ptr %2, ptr %i.cd, align 8
  store ptr %3, ptr %i.q, align 8
  store ptr %i.c, ptr %i.r, align 8
  %i.ov = load i32, ptr %i.s, align 4             ; 3 uses
  %i.ow = icmp eq i32 %i.ov, 0
  br i1 %i.ow, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 16, ptr %i.s, align 4
  %i.ox = call ptr @palloc_mul(i64 noundef 64, i64 noundef 16) #8 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ox, ptr %i.oy, align 8
  br label %ExprEvalPushStep.exit316

bb.bm:                                            ; preds = %bb.bk
  %i.oz = load i32, ptr %i.n, align 8
  %i.pa = icmp eq i32 %i.ov, %i.oz
  br i1 %i.pa, label %bb.bn, label %._crit_edge.i313

._crit_edge.i313:                                 ; preds = %bb.bm
  %.phi.trans.insert.i314 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i315 = load ptr, ptr %.phi.trans.insert.i314, align 8
  br label %ExprEvalPushStep.exit316

bb.bn:                                            ; preds = %bb.bm
  %i.pb = shl i32 %i.ov, 1                        ; 2 uses
  store i32 %i.pb, ptr %i.s, align 4
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = sext i32 %i.pb to i64
  %i.pf = shl nsw i64 %i.pe, 6
  %i.pg = call ptr @repalloc(ptr noundef %i.pd, i64 noundef %i.pf) #8 ; 2 uses
  store ptr %i.pg, ptr %i.pc, align 8
  br label %ExprEvalPushStep.exit316

ExprEvalPushStep.exit316:                         ; preds = %bb.bl, %._crit_edge.i313, %bb.bn
  %i.ph = phi ptr [ %.pre.i315, %._crit_edge.i313 ], [ %i.pg, %bb.bn ], [ %i.ox, %bb.bl ]
  %i.pi = load i32, ptr %i.n, align 8             ; 2 uses
  %i.pj = add i32 %i.pi, 1
  store i32 %i.pj, ptr %i.n, align 8
  %i.pk = sext i32 %i.pi to i64
  %i.pl = getelementptr inbounds [64 x i8], ptr %i.ph, i64 %i.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.pl, ptr noundef nonnull readonly align 8 dereferenceable(64) %4, i64 64, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %ExprEvalPushStep.exit316, %.thread360, %bb.ba, %bb.ay, %bb.ax
  %.1 = phi ptr [ %.0, %bb.ax ], [ %.0, %bb.ba ], [ %.0, %bb.ay ], [ %i.mr, %.thread360 ], [ %i.mr, %ExprEvalPushStep.exit316 ] ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  %.not261 = icmp eq ptr %.1, null
  br i1 %.not261, label %.critedge264, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.bo
  %i.pn = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pp = load i32, ptr %i.pm, align 4
  %i.pq = icmp sgt i32 %i.pp, 0
  br i1 %i.pq, label %.lr.ph329.preheader, label %.critedge264

.lr.ph329.preheader:                              ; preds = %.lr.ph326
  %.pre342 = load i32, ptr %i.n, align 8
  br label %.lr.ph329

.lr.ph329:                                        ; preds = %.lr.ph329.preheader, %.lr.ph329
  %indvars.iv334 = phi i64 [ 0, %.lr.ph329.preheader ], [ %indvars.iv.next335, %.lr.ph329 ] ; 2 uses
  %i.pr = load ptr, ptr %i.pn, align 8
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %indvars.iv334
  %i.pt = load ptr, ptr %i.po, align 8
  %i.pu = load i32, ptr %i.ps, align 8
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [64 x i8], ptr %i.pt, i64 %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  store i32 %.pre342, ptr %i.px, align 8
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %i.py = load i32, ptr %i.pm, align 4
  %i.pz = sext i32 %i.py to i64
  %i.qa = icmp slt i64 %indvars.iv.next335, %i.pz
  br i1 %i.qa, label %.lr.ph329, label %.critedge264

.critedge264:                                     ; preds = %.lr.ph329, %.lr.ph326, %bb.bo
  %i.qb = load i32, ptr %i.n, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 %i.qb, ptr %i.qc, align 4
  ret void
}

declare ptr @ExecInitJunkFilter(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ExecInitExtraTupleSlot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @getSubscriptingRoutines(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @executor_errposition(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @exprLocation(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @isAssignmentIndirectionExpr(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %.tr28 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i32, ptr %.tr28, align 4
  switch i32 %i.b, label %.loopexit [
    i32 26, label %bb.b
    i32 14, label %bb.d
    i32 55, label %tailrecurse.backedge
    i32 27, label %tailrecurse.backedge
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.tr28, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 34
  br i1 %i.f, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.b, %bb.c
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.tr28, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 34
  br i1 %i.j, label %.loopexit, label %.thread

tailrecurse.backedge:                             ; preds = %.lr.ph, %.lr.ph
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr28, i64 8
  %.tr.be = load ptr, ptr %.tr.be.in, align 8     ; 2 uses
  %i.k = icmp eq ptr %.tr.be, null
  br i1 %i.k, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %tailrecurse.backedge, %.lr.ph, %bb.a, %.thread, %bb.e, %bb.c
  %.2 = phi i1 [ false, %.thread ], [ true, %bb.e ], [ false, %bb.a ], [ true, %bb.c ], [ false, %.lr.ph ], [ false, %tailrecurse.backedge ]
  ret i1 %.2
}

declare i32 @errmsg_plural(ptr noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #3

declare ptr @ExecInitSubPlan(ptr noundef, ptr noundef) local_unnamed_addr #3

declare signext i8 @get_typtype(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @exprTypmod(ptr noundef) local_unnamed_addr #3

declare i32 @getBaseType(i32 noundef) local_unnamed_addr #3

declare zeroext i1 @DomainHasConstraints(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @InitDomainConstraintRef(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @expression_tree_walker_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ExecGetResultType(ptr noundef) local_unnamed_addr #3

declare ptr @ExecGetResultSlotOps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v4i16(<4 x i16>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{null}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{null}
!16 = !{ptr @ExecInitExprList}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{null}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7, !8}
!24 = distinct !{!24, !7, !8}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7, !9, !10}
!27 = distinct !{!27, !7, !10, !9}
!28 = distinct !{!28, !7, !8}
!29 = distinct !{!29, !7, !8}
!30 = distinct !{!30, !7, !9, !10}
!31 = distinct !{!31, !7, !10, !9}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
end_hunk_2
