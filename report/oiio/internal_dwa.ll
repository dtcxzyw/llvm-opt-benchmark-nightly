Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/internal_dwa?download=true
inline.NumInlined: 251
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@LossyDctDecoder_execute:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !132  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !135  ; 5 uses
  %i.h = add nsw i32 %i.g, 7
  %i.i = sdiv i32 %i.h, 8                         ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !136  ; 3 uses
  %i.l = add nsw i32 %i.k, 7
  %i.m = sdiv i32 %i.l, 8                         ; 4 uses
  %i.n = add nsw i32 %i.i, -1                     ; 2 uses
  %i.o = shl nsw i32 %i.n, 3
  %i.p = sub nsw i32 %i.g, %i.o
  %i.q = add nsw i32 %i.m, -1                     ; 2 uses
  %i.r = shl nsw i32 %i.q, 3
  %i.s = sub nsw i32 %i.k, %i.r
  %i.t = sdiv i32 %i.g, 8                         ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !130
  %i.aa = sext i32 %i.e to i64
  %i.ab = sext i32 %i.i to i64
  %i.ac = mul nsw i64 %i.ab, %i.aa                ; 2 uses
  %i.ad = sext i32 %i.m to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.z, %i.ae
  br i1 %i.af, label %bb.bh, label %.preheader355

.preheader355:                                    ; preds = %bb.a
  %i.ag = icmp sgt i32 %i.e, 0                    ; 4 uses
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader355
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ai = zext nneg i32 %i.e to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %i.ah, i64 %i.aj, i1 false), !tbaa !116
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader355
  %i.ak = shl i64 %i.ac, 7
  %i.al = or disjoint i64 %i.ak, 32
  %i.am = tail call ptr %0(i64 noundef %i.al) #21 ; 4 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.bh, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 0, %i.an
  %i.ap = and i64 %i.ao, 15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  store ptr %i.aq, ptr %i.c, align 16, !tbaa !361
  %i.ar = icmp sgt i32 %i.e, 1
  br i1 %i.ar, label %.lr.ph366, label %._crit_edge367

.lr.ph366:                                        ; preds = %bb.b
  %i.as = shl nsw i32 %i.i, 6
  %i.at = sext i32 %i.as to i64                   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %load_initial558 = load ptr, ptr %i.c, align 16 ; 2 uses
  %i.au = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.av = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %xtraiter = and i64 %i.au, 7                    ; 3 uses
  %i.aw = icmp ult i64 %i.av, 7
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph366.new

.lr.ph366.new:                                    ; preds = %.lr.ph366
  %unroll_iter = and i64 %i.au, -8
  br label %bb.d

._crit_edge367:                                   ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !129
  store ptr %i.ay, ptr %i.b, align 16, !tbaa !361
  br label %.preheader354

.lr.ph370.unr-lcssa:                              ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph370, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph370.unr-lcssa, %.lr.ph366
  %store_forwarded559.epil.init = phi ptr [ %load_initial558, %.lr.ph366 ], [ %i.cc, %.lr.ph370.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph366 ], [ %indvars.iv.next.7, %.lr.ph370.unr-lcssa ]
  %lcmp.mod565 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod565)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %store_forwarded559.epil = phi ptr [ %store_forwarded559.epil.init, %.epil.preheader ], [ %i.ba, %bb.c ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.az = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.epil
  %i.ba = getelementptr inbounds [2 x i8], ptr %store_forwarded559.epil, i64 %i.at ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !361
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph370, label %bb.c, !llvm.loop !339

.lr.ph370:                                        ; preds = %bb.c, %.lr.ph370.unr-lcssa
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !129 ; 3 uses
  store ptr %i.bc, ptr %i.b, align 16, !tbaa !361
  %i.bd = mul nsw i32 %i.m, %i.i
  %i.be = sext i32 %i.bd to i64                   ; 9 uses
  %xtraiter567 = and i64 %i.au, 7                 ; 3 uses
  %i.bf = icmp ult i64 %i.av, 7
  br i1 %i.bf, label %.epil.preheader566, label %.lr.ph370.new

.lr.ph370.new:                                    ; preds = %.lr.ph370
  %unroll_iter571 = and i64 %i.au, -8
  br label %bb.f

bb.d:                                             ; preds = %bb.d, %.lr.ph366.new
  %store_forwarded559 = phi ptr [ %load_initial558, %.lr.ph366.new ], [ %i.cc, %bb.d ]
  %indvars.iv = phi i64 [ 1, %.lr.ph366.new ], [ %indvars.iv.next.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph366.new ], [ %niter.next.7, %bb.d ]
  %i.bg = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bh = getelementptr inbounds [2 x i8], ptr %store_forwarded559, i64 %i.at ; 2 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !361
  %i.bi = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.at ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !361
  %i.bl = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.at ; 2 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !361
  %i.bo = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.at ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !361
  %i.br = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bs = getelementptr i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.at ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !361
  %i.bu = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bv = getelementptr i8, ptr %i.bu, i64 40
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.at ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !361
  %i.bx = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.by = getelementptr i8, ptr %i.bx, i64 48
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.at ; 2 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !361
  %i.ca = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.cb = getelementptr i8, ptr %i.ca, i64 56
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.at ; 3 uses
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !361
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph370.unr-lcssa, label %bb.d, !llvm.loop !340

.preheader354.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod569.not = icmp eq i64 %xtraiter567, 0
  br i1 %lcmp.mod569.not, label %.preheader354, label %.epil.preheader566

.epil.preheader566:                               ; preds = %.preheader354.loopexit.unr-lcssa, %.lr.ph370
  %store_forwarded.epil.init = phi ptr [ %i.bc, %.lr.ph370 ], [ %i.dn, %.preheader354.loopexit.unr-lcssa ]
  %indvars.iv449.epil.init = phi i64 [ 1, %.lr.ph370 ], [ %indvars.iv.next450.7, %.preheader354.loopexit.unr-lcssa ]
  %lcmp.mod570 = icmp ne i64 %xtraiter567, 0
  tail call void @llvm.assume(i1 %lcmp.mod570)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader566
  %store_forwarded.epil = phi ptr [ %store_forwarded.epil.init, %.epil.preheader566 ], [ %i.ce, %bb.e ]
  %indvars.iv449.epil = phi i64 [ %indvars.iv449.epil.init, %.epil.preheader566 ], [ %indvars.iv.next450.epil, %bb.e ] ; 2 uses
  %epil.iter568 = phi i64 [ 0, %.epil.preheader566 ], [ %epil.iter568.next, %bb.e ]
  %i.cd = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv449.epil
  %i.ce = getelementptr inbounds [2 x i8], ptr %store_forwarded.epil, i64 %i.be ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !361
  %indvars.iv.next450.epil = add nuw nsw i64 %indvars.iv449.epil, 1
  %epil.iter568.next = add i64 %epil.iter568, 1   ; 2 uses
  %epil.iter568.cmp.not = icmp eq i64 %epil.iter568.next, %xtraiter567
  br i1 %epil.iter568.cmp.not, label %.preheader354, label %bb.e, !llvm.loop !341

.preheader354:                                    ; preds = %.preheader354.loopexit.unr-lcssa, %bb.e, %._crit_edge367
  %.not291422 = icmp sgt i32 %i.k, 0
  br i1 %.not291422, label %.lr.ph427, label %.preheader347

.lr.ph427:                                        ; preds = %.preheader354
  %.not292.not382 = icmp sgt i32 %i.g, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = icmp eq i32 %i.e, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.ck = icmp sgt i32 %i.g, 7                    ; 2 uses
  %.not295 = icmp eq i32 %i.t, %i.i
  %i.cl = shl nsw i32 %i.t, 6
  %i.cm = shl nsw i32 %i.t, 3
  %i.cn = sext i32 %i.cm to i64
  %i.co = zext i32 %i.n to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1)
  %smax492 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  %wide.trip.count471 = zext nneg i32 %smax to i64
  %wide.trip.count456 = zext nneg i32 %i.e to i64
  %wide.trip.count461 = zext nneg i32 %i.e to i64
  %wide.trip.count466 = zext nneg i32 %i.e to i64
  %wide.trip.count490 = zext nneg i32 %i.e to i64
  %i.cp = add nsw i32 %i.t, -1
  %xtraiter574 = and i32 %i.t, 7                  ; 3 uses
  %i.cq = icmp ult i32 %i.cp, 7
  %unroll_iter578 = and i32 %i.t, 268435448
  %lcmp.mod576.not = icmp eq i32 %xtraiter574, 0
  %lcmp.mod577 = icmp ne i32 %xtraiter574, 0
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph370.new
  %store_forwarded = phi ptr [ %i.bc, %.lr.ph370.new ], [ %i.dn, %bb.f ]
  %indvars.iv449 = phi i64 [ 1, %.lr.ph370.new ], [ %indvars.iv.next450.7, %bb.f ] ; 9 uses
  %niter572 = phi i64 [ 0, %.lr.ph370.new ], [ %niter572.next.7, %bb.f ]
  %i.cr = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv449
  %i.cs = getelementptr inbounds [2 x i8], ptr %store_forwarded, i64 %i.be ; 2 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !361
  %i.ct = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv449
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %i.be ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !361
  %i.cw = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv449
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cv, i64 %i.be ; 2 uses
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !361
  %i.cz = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv449
  %i.da = getelementptr i8, ptr %i.cz, i64 24
  %i.db = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.be ; 2 uses
  store ptr %i.db, ptr %i.da, align 8, !tbaa !361
  %i.dc = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv449
  %i.dd = getelementptr i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.be ; 2 uses
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !361
  %i.df = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv449
  %i.dg = getelementptr i8, ptr %i.df, i64 40
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.be ; 2 uses
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !361
  %i.di = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv449
  %i.dj = getelementptr i8, ptr %i.di, i64 48
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.be ; 2 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !361
  %i.dl = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv449
  %i.dm = getelementptr i8, ptr %i.dl, i64 56
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %i.be ; 3 uses
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !361
  %indvars.iv.next450.7 = add nuw nsw i64 %indvars.iv449, 8 ; 2 uses
  %niter572.next.7 = add i64 %niter572, 8         ; 2 uses
  %niter572.ncmp.7 = icmp eq i64 %niter572.next.7, %unroll_iter571
  br i1 %niter572.ncmp.7, label %.preheader354.loopexit.unr-lcssa, label %bb.f, !llvm.loop !342

bb.g:                                             ; preds = %.lr.ph427, %._crit_edge421
  %indvars.iv474.a = phi i64 [ 0, %.lr.ph427 ], [ %indvars.iv.next475, %._crit_edge421 ] ; 4 uses
  %.0280424 = phi i32 [ 0, %.lr.ph427 ], [ %4, %._crit_edge421 ] ; 3 uses
  %.0307423 = phi ptr [ %i.v, %.lr.ph427 ], [ %.4311.ph, %._crit_edge421 ] ; 2 uses
  %i.do = icmp eq i32 %.0280424, %i.q
  %spec.select = select i1 %i.do, i32 %i.s, i32 8 ; 3 uses
  br i1 %.not292.not382, label %.lr.ph388, label %.preheader353

.lr.ph388:                                        ; preds = %bb.g, %._crit_edge381
  %indvars.iv468 = phi i64 [ %indvars.iv.next469, %._crit_edge381 ], [ 0, %bb.g ] ; 5 uses
  %.0276384 = phi i32 [ %spec.select298, %._crit_edge381 ], [ 8, %bb.g ]
  %.1308383 = phi ptr [ %.2309.lcssa528533, %._crit_edge381 ], [ %.0307423, %bb.g ] ; 2 uses
  %i.dp = icmp eq i64 %indvars.iv468, %i.co
  %spec.select298 = select i1 %i.dp, i32 %i.p, i32 %.0276384 ; 2 uses
  br i1 %i.ag, label %.lr.ph376, label %._crit_edge381

.lr.ph376:                                        ; preds = %.lr.ph388, %bb.ai
  %indvars.iv454 = phi i64 [ %indvars.iv.next455, %bb.ai ], [ 0, %.lr.ph388 ] ; 3 uses
  %.0271373 = phi i8 [ %.2273.ph, %bb.ai ], [ 1, %.lr.ph388 ]
  %.2309372 = phi ptr [ %i.ej, %bb.ai ], [ %.1308383, %.lr.ph388 ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv454
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !116 ; 27 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 256 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 272
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv454 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.dt, i8 0, i64 112, i1 false)
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !361 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !361
  %i.dx = load i16, ptr %i.dv, align 2, !tbaa !97 ; 3 uses
  %i.dy = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %i.dx, i64 0
  store <8 x i16> %i.dy, ptr %i.ds, align 16, !tbaa !95
  %i.dz = load i64, ptr %i.cf, align 8, !tbaa !134
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.cf, align 8, !tbaa !134
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph376
  %.02334.i = phi i64 [ 0, %.lr.ph376 ], [ %i.ei, %bb.l ]
  %.02433.i = phi i32 [ 0, %.lr.ph376 ], [ %.1.i, %bb.l ]
  %.02532.i = phi ptr [ %.2309372, %.lr.ph376 ], [ %i.ej, %bb.l ] ; 3 uses
  %.02631.i = phi i32 [ 1, %.lr.ph376 ], [ %.127.i, %bb.l ] ; 3 uses
  %.not.i = icmp ult ptr %.02532.i, %i.x
  br i1 %.not.i, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.eb = load i16, ptr %.02532.i, align 2, !tbaa !97 ; 3 uses
  %i.ec = icmp ugt i16 %i.eb, -257
  br i1 %i.ec, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ed = and i16 %i.eb, 255                      ; 2 uses
  %i.ee = icmp eq i16 %i.ed, 0
  %narrow.i = select i1 %i.ee, i16 64, i16 %i.ed
  %i.ef = zext nneg i16 %narrow.i to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.eg = zext nneg i32 %.02631.i to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.eg
  store i16 %i.eb, ptr %i.eh, align 2, !tbaa !97
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi i32 [ %i.ef, %bb.j ], [ 1, %bb.k ]
  %.1.i = phi i32 [ %.02433.i, %bb.j ], [ %.02631.i, %bb.k ] ; 9 uses
  %.127.i = add nuw nsw i32 %.pn.i, %.02631.i     ; 2 uses
  %i.ei = add i64 %.02334.i, 1                    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.02532.i, i64 2 ; 4 uses
  %i.ek = icmp samesign ult i32 %.127.i, 64
  br i1 %i.ek, label %bb.h, label %bb.m, !llvm.loop !343

bb.m:                                             ; preds = %bb.l
  %i.el = load i64, ptr %2, align 8, !tbaa !133
  %i.em = add i64 %i.el, %i.ei
  store i64 %i.em, ptr %2, align 8, !tbaa !133
  %i.en = icmp eq i32 %.1.i, 0
  br i1 %i.en, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.eo = zext i16 %i.dx to i32
  %i.ep = shl nuw nsw i32 %i.eo, 13
  %i.eq = and i32 %i.ep, 268427264                ; 6 uses
  %.signext.i.i = sext i16 %i.dx to i32
  %i.er = and i32 %.signext.i.i, -2147483648      ; 3 uses
  %i.es = icmp samesign ugt i32 %i.eq, 8388607
  br i1 %i.es, label %bb.o, label %bb.r, !prof !139

bb.o:                                             ; preds = %bb.n
  %i.et = or disjoint i32 %i.eq, %i.er            ; 2 uses
  %i.eu = icmp samesign ult i32 %i.eq, 260046848
  br i1 %i.eu, label %bb.p, label %bb.q, !prof !139

bb.p:                                             ; preds = %bb.o
  %i.ev = add nuw nsw i32 %i.et, 939524096
  br label %half_to_float.exit

bb.q:                                             ; preds = %bb.o
  %i.ew = or i32 %i.et, 2139095040
  br label %half_to_float.exit

bb.r:                                             ; preds = %bb.n
  %.not.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i, label %half_to_float.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.eq, i1 true)
  %i.ey = add nsw i32 %i.ex, -8                   ; 2 uses
  %i.ez = shl i32 %i.eq, %i.ey
  %i.fa = or i32 %i.er, %i.ez
  %i.fb = or i32 %i.fa, 947912704
  %i.fc = shl nuw nsw i32 %i.ey, 23
  %i.fd = sub nuw i32 %i.fb, %i.fc
  br label %half_to_float.exit

half_to_float.exit:                               ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %.sroa.0.0.i.i = phi i32 [ %i.ev, %bb.p ], [ %i.ew, %bb.q ], [ %i.fd, %bb.s ], [ %i.er, %bb.r ]
  %i.fe = bitcast i32 %.sroa.0.0.i.i to float
  %i.ff = fmul float %i.fe, f0x3EB504FA
  %i.fg = fmul float %i.ff, f0x3EB504FA
  %i.fh = insertelement <4 x float> poison, float %i.fg, i64 0
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  store <4 x float> %i.fi, ptr %i.dr, align 16, !tbaa !95
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x float> %i.fi, ptr %i.fj, align 16, !tbaa !95
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store <4 x float> %i.fi, ptr %i.fk, align 16, !tbaa !95
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  store <4 x float> %i.fi, ptr %i.fl, align 16, !tbaa !95
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  store <4 x float> %i.fi, ptr %i.fm, align 16, !tbaa !95
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  store <4 x float> %i.fi, ptr %i.fn, align 16, !tbaa !95
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  store <4 x float> %i.fi, ptr %i.fo, align 16, !tbaa !95
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  store <4 x float> %i.fi, ptr %i.fp, align 16, !tbaa !95
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dr, i64 128
  store <4 x float> %i.fi, ptr %i.fq, align 16, !tbaa !95
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dr, i64 144
  store <4 x float> %i.fi, ptr %i.fr, align 16, !tbaa !95
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dr, i64 160
  store <4 x float> %i.fi, ptr %i.fs, align 16, !tbaa !95
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dr, i64 176
  store <4 x float> %i.fi, ptr %i.ft, align 16, !tbaa !95
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dr, i64 192
  store <4 x float> %i.fi, ptr %i.fu, align 16, !tbaa !95
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dr, i64 208
  store <4 x float> %i.fi, ptr %i.fv, align 16, !tbaa !95
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dr, i64 224
  store <4 x float> %i.fi, ptr %i.fw, align 16, !tbaa !95
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dr, i64 240
  store <4 x float> %i.fi, ptr %i.fx, align 16, !tbaa !95
  br label %bb.ai

bb.t:                                             ; preds = %bb.m
  %i.fy = load ptr, ptr @fromHalfZigZag, align 8, !tbaa !53
  tail call void %i.fy(ptr noundef nonnull %i.ds, ptr noundef %i.dr) #21, !callees !362
  %i.fz = icmp slt i32 %.1.i, 2
  br i1 %i.fz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ga = load ptr, ptr @dctInverse8x8_7, align 8, !tbaa !53
  tail call void %i.ga(ptr noundef nonnull %i.dr) #21, !callees !363
  br label %bb.ai

bb.v:                                             ; preds = %bb.t
  %i.gb = icmp eq i32 %.1.i, 2
  br i1 %i.gb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gc = load ptr, ptr @dctInverse8x8_6, align 8, !tbaa !53
  tail call void %i.gc(ptr noundef nonnull %i.dr) #21, !callees !364
  br label %bb.ai

bb.x:                                             ; preds = %bb.v
  %i.gd = icmp samesign ult i32 %.1.i, 9
  br i1 %i.gd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ge = load ptr, ptr @dctInverse8x8_5, align 8, !tbaa !53
  tail call void %i.ge(ptr noundef nonnull %i.dr) #21, !callees !365
  br label %bb.ai

bb.z:                                             ; preds = %bb.x
  %i.gf = icmp eq i32 %.1.i, 9
  br i1 %i.gf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gg = load ptr, ptr @dctInverse8x8_4, align 8, !tbaa !53
  tail call void %i.gg(ptr noundef nonnull %i.dr) #21, !callees !366
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.gh = icmp samesign ult i32 %.1.i, 20
  br i1 %i.gh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gi = load ptr, ptr @dctInverse8x8_3, align 8, !tbaa !53
  tail call void %i.gi(ptr noundef nonnull %i.dr) #21, !callees !367
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %i.gj = icmp eq i32 %.1.i, 20
  br i1 %i.gj, label %bb.ae, label %bb.af
end_hunk_0
begin_hunk_1_@LossyDctDecoder_execute:bb.a
  %i.ov = getelementptr inbounds nuw i8, ptr %i.gr, i64 224 ; 2 uses
  %i.ow = load <4 x float>, ptr %i.ov, align 16, !tbaa !95 ; 2 uses
  %i.ox = fmul <4 x float> %i.ow, splat (float 1.574700e+00)
  %i.oy = fadd <4 x float> %i.os, %i.ox
  store <4 x float> %i.oy, ptr %i.or, align 16, !tbaa !95
  %i.oz = load <4 x float>, ptr %i.ot, align 16, !tbaa !95
  %i.pa = fmul <4 x float> %i.oz, splat (float 1.873000e-01)
  %i.pb = fmul <4 x float> %i.ow, splat (float 4.682000e-01)
  %i.pc = fsub <4 x float> %i.os, %i.pa
  %i.pd = fsub <4 x float> %i.pc, %i.pb
  store <4 x float> %i.pd, ptr %i.ot, align 16, !tbaa !95
  %i.pe = fmul <4 x float> %i.ou, splat (float 1.855600e+00)
  %i.pf = fadd <4 x float> %i.os, %i.pe
  store <4 x float> %i.pf, ptr %i.ov, align 16, !tbaa !95
  %i.pg = getelementptr inbounds nuw i8, ptr %i.gp, i64 240 ; 2 uses
  %i.ph = load <4 x float>, ptr %i.pg, align 16, !tbaa !95 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.gq, i64 240 ; 3 uses
  %i.pj = load <4 x float>, ptr %i.pi, align 16, !tbaa !95
  %i.pk = getelementptr inbounds nuw i8, ptr %i.gr, i64 240 ; 2 uses
  %i.pl = load <4 x float>, ptr %i.pk, align 16, !tbaa !95 ; 2 uses
  %i.pm = fmul <4 x float> %i.pl, splat (float 1.574700e+00)
  %i.pn = fadd <4 x float> %i.ph, %i.pm
  store <4 x float> %i.pn, ptr %i.pg, align 16, !tbaa !95
  %i.po = load <4 x float>, ptr %i.pi, align 16, !tbaa !95
  %i.pp = fmul <4 x float> %i.po, splat (float 1.873000e-01)
  %i.pq = fmul <4 x float> %i.pl, splat (float 4.682000e-01)
  %i.pr = fsub <4 x float> %i.ph, %i.pp
  %i.ps = fsub <4 x float> %i.pr, %i.pq
  store <4 x float> %i.ps, ptr %i.pi, align 16, !tbaa !95
  %i.pt = fmul <4 x float> %i.pj, splat (float 1.855600e+00)
  %i.pu = fadd <4 x float> %i.ph, %i.pt
  store <4 x float> %i.pu, ptr %i.pk, align 16, !tbaa !95
  %i.pv = shl nuw nsw i64 %indvars.iv468, 6
  br label %.lr.ph380.split.us.preheader

.thread:                                          ; preds = %bb.aj
  %i.pw = load float, ptr %i.gq, align 4, !tbaa !137
  %i.px = load float, ptr %i.gr, align 4, !tbaa !137
  %i.py = load float, ptr %i.gp, align 4, !tbaa !137 ; 2 uses
  %i.pz = insertelement <2 x float> poison, float %i.px, i64 0
  %i.qa = insertelement <2 x float> %i.pz, float %i.pw, i64 1 ; 2 uses
  %i.qb = insertelement <2 x float> poison, float %i.py, i64 0
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qa, <2 x float> <float 1.574700e+00, float -1.873000e-01>, <2 x float> %i.qc) ; 2 uses
  %i.qe = extractelement <2 x float> %i.qd, i64 0
  store float %i.qe, ptr %i.gp, align 4, !tbaa !137
  %i.qf = shufflevector <2 x float> %i.qd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qg = insertelement <2 x float> %i.qf, float %i.py, i64 1
  %i.qh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qa, <2 x float> <float -4.682000e-01, float 1.855600e+00>, <2 x float> %i.qg) ; 2 uses
  %i.qi = extractelement <2 x float> %i.qh, i64 0
  store float %i.qi, ptr %i.gq, align 4, !tbaa !137
  %i.qj = extractelement <2 x float> %i.qh, i64 1
  store float %i.qj, ptr %i.gr, align 4, !tbaa !137
  %i.qk = shl nuw nsw i64 %indvars.iv468, 6
  br label %.lr.ph380.split.preheader

.lr.ph380:                                        ; preds = %.thread338
  %i.ql = shl nuw nsw i64 %indvars.iv468, 6       ; 2 uses
  br i1 %i.go, label %.lr.ph380.split.us.preheader, label %.lr.ph380.split.preheader

.lr.ph380.split.preheader:                        ; preds = %.thread, %.lr.ph380
  %i.qm = phi i64 [ %i.qk, %.thread ], [ %i.ql, %.lr.ph380 ]
  br label %.lr.ph380.split

.lr.ph380.split.us.preheader:                     ; preds = %.thread.thread, %.lr.ph380
  %i.qn = phi i64 [ %i.pv, %.thread.thread ], [ %i.ql, %.lr.ph380 ]
  br label %.lr.ph380.split.us

.lr.ph380.split.us:                               ; preds = %.lr.ph380.split.us.preheader, %.lr.ph380.split.us
  %indvars.iv463 = phi i64 [ 0, %.lr.ph380.split.us.preheader ], [ %indvars.iv.next464, %.lr.ph380.split.us ] ; 3 uses
  %i.qo = load ptr, ptr @convertFloatToHalf64, align 8, !tbaa !53
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv463
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !361
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.qq, i64 %i.qn
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv463
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !116
  tail call void %i.qo(ptr noundef %i.qr, ptr noundef %i.qt) #21, !callees !371
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %._crit_edge381, label %.lr.ph380.split.us, !llvm.loop !345

.lr.ph380.split:                                  ; preds = %.lr.ph380.split.preheader, %float_to_half.exit
  %indvars.iv458 = phi i64 [ 0, %.lr.ph380.split.preheader ], [ %indvars.iv.next459, %float_to_half.exit ] ; 3 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv458
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !361
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.qm ; 8 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv458
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !116
  %i.qz = load float, ptr %i.qy, align 32, !tbaa !137 ; 2 uses
  %i.ra = bitcast float %i.qz to i32
  %i.rb = tail call float @llvm.fabs.f32(float %i.qz)
  %i.rc = bitcast float %i.rb to i32              ; 10 uses
  %i.rd = lshr i32 %i.ra, 16                      ; 3 uses
  %i.re = trunc nuw i32 %i.rd to i16
  %i.rf = and i16 %i.re, -32768                   ; 3 uses
  %i.rg = icmp samesign ugt i32 %i.rc, 947912703
  br i1 %i.rg, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %.lr.ph380.split
  %i.rh = icmp samesign ugt i32 %i.rc, 2139095039
  br i1 %i.rh, label %bb.al, label %bb.an, !prof !138

bb.al:                                            ; preds = %bb.ak
  %i.ri = or disjoint i16 %i.rf, 31744            ; 2 uses
  %i.rj = icmp eq i32 %i.rc, 2139095040
  br i1 %i.rj, label %float_to_half.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.rk = lshr i32 %i.rc, 13
  %i.rl = and i32 %i.rk, 1023                     ; 2 uses
  %i.rm = icmp eq i32 %i.rl, 0
  %i.rn = zext i1 %i.rm to i16
  %i.ro = trunc nuw nsw i32 %i.rl to i16
  %i.rp = or i16 %i.ro, %i.rn
  %i.rq = or disjoint i16 %i.rp, %i.ri
  br label %float_to_half.exit

bb.an:                                            ; preds = %bb.ak
  %i.rr = icmp samesign ugt i32 %i.rc, 1199566847
  br i1 %i.rr, label %bb.ao, label %bb.ap, !prof !138

bb.ao:                                            ; preds = %bb.an
  %i.rs = or disjoint i16 %i.rf, 31744
  br label %float_to_half.exit

bb.ap:                                            ; preds = %bb.an
  %i.rt = add nuw nsw i32 %i.rc, 134221823
  %i.ru = lshr i32 %i.rc, 13
  %i.rv = and i32 %i.ru, 1
  %i.rw = add nuw nsw i32 %i.rt, %i.rv
  %i.rx = lshr i32 %i.rw, 13
  %i.ry = and i32 %i.rd, 32768
  %i.rz = or i32 %i.rx, %i.ry
  %i.sa = trunc i32 %i.rz to i16
  br label %float_to_half.exit

bb.aq:                                            ; preds = %.lr.ph380.split
  %i.sb = icmp samesign ult i32 %i.rc, 855638017
  br i1 %i.sb, label %float_to_half.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.sc = lshr i32 %i.rc, 23                      ; 2 uses
  %i.sd = sub nuw nsw i32 126, %i.sc
  %i.se = and i32 %i.rc, 8388607
  %i.sf = or disjoint i32 %i.se, 8388608          ; 2 uses
  %i.sg = add nsw i32 %i.sc, -94
  %i.sh = shl i32 %i.sf, %i.sg                    ; 2 uses
  %i.si = lshr i32 %i.sf, %i.sd                   ; 2 uses
  %i.sj = and i32 %i.rd, 32768
  %i.sk = or i32 %i.si, %i.sj
  %i.sl = trunc nuw i32 %i.sk to i16              ; 2 uses
  %i.sm = icmp ugt i32 %i.sh, -2147483648
  br i1 %i.sm, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sn = icmp ne i32 %i.sh, -2147483648
  %i.so = and i32 %i.si, 1
  %.not.i.i301 = icmp eq i32 %i.so, 0
  %or.cond.i.i = select i1 %i.sn, i1 true, i1 %.not.i.i301
  br i1 %or.cond.i.i, label %float_to_half.exit, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.sp = add nuw i16 %i.sl, 1
  br label %float_to_half.exit

float_to_half.exit:                               ; preds = %bb.al, %bb.am, %bb.ao, %bb.ap, %bb.aq, %bb.as, %bb.at
  %.033.i.i = phi i16 [ %i.rf, %bb.aq ], [ %i.rq, %bb.am ], [ %i.rs, %bb.ao ], [ %i.sa, %bb.ap ], [ %i.ri, %bb.al ], [ %i.sp, %bb.at ], [ %i.sl, %bb.as ]
  %i.sq = insertelement <8 x i16> poison, i16 %.033.i.i, i64 0
  %i.sr = shufflevector <8 x i16> %i.sq, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  store <8 x i16> %i.sr, ptr %i.qw, align 16, !tbaa !95
  %i.ss = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store <8 x i16> %i.sr, ptr %i.ss, align 16, !tbaa !95
  %i.st = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  store <8 x i16> %i.sr, ptr %i.st, align 16, !tbaa !95
  %i.su = getelementptr inbounds nuw i8, ptr %i.qw, i64 48
  store <8 x i16> %i.sr, ptr %i.su, align 16, !tbaa !95
  %i.sv = getelementptr inbounds nuw i8, ptr %i.qw, i64 64
  store <8 x i16> %i.sr, ptr %i.sv, align 16, !tbaa !95
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qw, i64 80
  store <8 x i16> %i.sr, ptr %i.sw, align 16, !tbaa !95
  %i.sx = getelementptr inbounds nuw i8, ptr %i.qw, i64 96
  store <8 x i16> %i.sr, ptr %i.sx, align 16, !tbaa !95
  %i.sy = getelementptr inbounds nuw i8, ptr %i.qw, i64 112
  store <8 x i16> %i.sr, ptr %i.sy, align 16, !tbaa !95
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count461
  br i1 %exitcond462.not, label %._crit_edge381, label %.lr.ph380.split, !llvm.loop !345

._crit_edge381:                                   ; preds = %float_to_half.exit, %.lr.ph380.split.us, %.lr.ph388
  %.2309.lcssa528533 = phi ptr [ %.1308383, %.lr.ph388 ], [ %i.ej, %.lr.ph380.split.us ], [ %i.ej, %float_to_half.exit ] ; 2 uses
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471
  br i1 %exitcond472.not, label %.preheader353, label %.lr.ph388, !llvm.loop !346

.preheader353:                                    ; preds = %._crit_edge381, %bb.g
  %.4311.ph = phi ptr [ %.0307423, %bb.g ], [ %.2309.lcssa528533, %._crit_edge381 ]
  %.2278.ph = phi i32 [ 8, %bb.g ], [ %spec.select298, %._crit_edge381 ] ; 5 uses
  br i1 %i.ag, label %.lr.ph420, label %._crit_edge421

.lr.ph420:                                        ; preds = %.preheader353
  %3 = shl nuw nsw i32 %.0280424, 3
  %i.sz = add nsw i32 %spec.select, %3
  %i.ta = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.tb = icmp slt i32 %spec.select, 1
  %i.tc = icmp sgt i32 %.2278.ph, 0
  %i.td = sext i32 %.2278.ph to i64
  %i.te = shl nsw i64 %i.td, 1
  %i.tf = sext i32 %i.sz to i64                   ; 3 uses
  %brmerge = select i1 %.not295, i1 true, i1 %i.tb
  %xtraiter580 = and i32 %.2278.ph, 3             ; 3 uses
  %i.tg = icmp ult i32 %.2278.ph, 4
  %unroll_iter584 = and i32 %.2278.ph, 2147483644
  %lcmp.mod582.not = icmp eq i32 %xtraiter580, 0
  %lcmp.mod583 = icmp ne i32 %xtraiter580, 0
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph420, %.loopexit350
  %indvars.iv487 = phi i64 [ 0, %.lr.ph420 ], [ %indvars.iv.next488, %.loopexit350 ] ; 7 uses
  %i.th = load ptr, ptr %i.cj, align 8, !tbaa !131
  %.not294 = icmp eq ptr %i.th, null
  br i1 %.not294, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.ta, label %.lr.ph400, label %.loopexit350

.lr.ph400:                                        ; preds = %bb.av
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv487
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !116
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 392
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv487
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !361
  br i1 %i.ck, label %.lr.ph396, label %.loopexit351

.lr.ph396:                                        ; preds = %.lr.ph400, %._crit_edge397
  %indvars.iv476 = phi i64 [ %indvars.iv.next477, %._crit_edge397 ], [ %indvars.iv474.a, %.lr.ph400 ] ; 3 uses
  %i.tn = load ptr, ptr %i.tk, align 8, !tbaa !112
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %indvars.iv476
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !100
  %i.tq = shl i64 %indvars.iv476, 3
  %i.tr = and i64 %i.tq, 56
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %i.tr
  br label %bb.aw

._crit_edge397:                                   ; preds = %bb.aw
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.tt = icmp slt i64 %indvars.iv.next477, %i.tf
  br i1 %i.tt, label %.lr.ph396, label %.loopexit351, !llvm.loop !347

bb.aw:                                            ; preds = %.lr.ph396, %bb.aw
  %.0257394 = phi i32 [ 0, %.lr.ph396 ], [ %i.vt, %bb.aw ]
  %.0258393 = phi ptr [ %i.ts, %.lr.ph396 ], [ %i.vs, %bb.aw ] ; 10 uses
  %.0259392 = phi ptr [ %i.tp, %.lr.ph396 ], [ %i.vr, %bb.aw ] ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0258393, i64 2048
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tu, i32 0, i32 0, i32 1)
  %i.tv = load i16, ptr %.0258393, align 1, !tbaa !95
  %i.tw = getelementptr inbounds nuw i8, ptr %.0258393, i64 2
  %i.tx = load i16, ptr %i.tw, align 1, !tbaa !95
  %i.ty = getelementptr inbounds nuw i8, ptr %.0258393, i64 4
  %i.tz = load i16, ptr %i.ty, align 1, !tbaa !95
  %i.ua = getelementptr inbounds nuw i8, ptr %.0258393, i64 6
  %i.ub = load i16, ptr %i.ua, align 1, !tbaa !95
  %i.uc = getelementptr inbounds nuw i8, ptr %.0258393, i64 8
  %i.ud = load i16, ptr %i.uc, align 1, !tbaa !95
  %i.ue = getelementptr inbounds nuw i8, ptr %.0258393, i64 10
  %i.uf = load i16, ptr %i.ue, align 1, !tbaa !95
  %i.ug = getelementptr inbounds nuw i8, ptr %.0258393, i64 12
  %i.uh = load i16, ptr %i.ug, align 1, !tbaa !95
  %i.ui = getelementptr inbounds nuw i8, ptr %.0258393, i64 14
  %i.uj = load i16, ptr %i.ui, align 1, !tbaa !95
  %i.uk = load ptr, ptr %i.cj, align 8, !tbaa !131 ; 8 uses
  %i.ul = zext i16 %i.tv to i64
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.ul
  %i.un = load i16, ptr %i.um, align 2, !tbaa !97
  %i.uo = zext i16 %i.tx to i64
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.uo
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !97
  %i.ur = zext i16 %i.tz to i64
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.ur
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !97
  %i.uu = zext i16 %i.ub to i64
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.uu
  %i.uw = load i16, ptr %i.uv, align 2, !tbaa !97
  %i.ux = zext i16 %i.ud to i64
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.ux
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !97
  %i.va = zext i16 %i.uf to i64
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.va
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !97
  %i.vd = zext i16 %i.uh to i64
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.vd
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !97
  %i.vg = zext i16 %i.uj to i64
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.vg
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !97
  %i.vj = insertelement <8 x i16> poison, i16 %i.un, i64 0
  %i.vk = insertelement <8 x i16> %i.vj, i16 %i.uq, i64 1
  %i.vl = insertelement <8 x i16> %i.vk, i16 %i.ut, i64 2
  %i.vm = insertelement <8 x i16> %i.vl, i16 %i.uw, i64 3
  %i.vn = insertelement <8 x i16> %i.vm, i16 %i.uz, i64 4
  %i.vo = insertelement <8 x i16> %i.vn, i16 %i.vc, i64 5
  %i.vp = insertelement <8 x i16> %i.vo, i16 %i.vf, i64 6
  %i.vq = insertelement <8 x i16> %i.vp, i16 %i.vi, i64 7
  store <8 x i16> %i.vq, ptr %.0259392, align 1, !tbaa !95
  %i.vr = getelementptr inbounds nuw i8, ptr %.0259392, i64 16
  %i.vs = getelementptr inbounds nuw i8, ptr %.0258393, i64 128
  %i.vt = add nuw nsw i32 %.0257394, 1            ; 2 uses
  %exitcond473.not = icmp eq i32 %i.vt, %i.t
  br i1 %exitcond473.not, label %._crit_edge397, label %bb.aw, !llvm.loop !348

bb.ax:                                            ; preds = %bb.au
  br i1 %i.ta, label %.lr.ph409, label %.loopexit350

.lr.ph409:                                        ; preds = %bb.ax
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv487
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !116
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 392
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv487
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !361
  br i1 %i.ck, label %.lr.ph405, label %.loopexit351

.lr.ph405:                                        ; preds = %.lr.ph409, %._crit_edge406
  %indvars.iv480 = phi i64 [ %indvars.iv.next481, %._crit_edge406 ], [ %indvars.iv474.a, %.lr.ph409 ] ; 3 uses
  %i.vz = load ptr, ptr %i.vw, align 8, !tbaa !112
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv480
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !100 ; 2 uses
  %i.wc = shl i64 %indvars.iv480, 3
  %i.wd = and i64 %i.wc, 56
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.vy, i64 %i.wd ; 2 uses
  br i1 %i.cq, label %.epil.preheader573, label %.lr.ph405.new

._crit_edge406.unr-lcssa:                         ; preds = %.lr.ph405.new
  br i1 %lcmp.mod576.not, label %._crit_edge406, label %.epil.preheader573

.epil.preheader573:                               ; preds = %._crit_edge406.unr-lcssa, %.lr.ph405
  %.0253402.epil.init = phi ptr [ %i.we, %.lr.ph405 ], [ %i.xg, %._crit_edge406.unr-lcssa ]
  %.0254401.epil.init = phi ptr [ %i.wb, %.lr.ph405 ], [ %i.xf, %._crit_edge406.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod577)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.epil.preheader573
  %.0253402.epil = phi ptr [ %.0253402.epil.init, %.epil.preheader573 ], [ %i.wh, %bb.ay ] ; 2 uses
  %.0254401.epil = phi ptr [ %.0254401.epil.init, %.epil.preheader573 ], [ %i.wg, %bb.ay ] ; 2 uses
  %epil.iter575 = phi i32 [ 0, %.epil.preheader573 ], [ %epil.iter575.next, %bb.ay ]
  %i.wf = load <2 x i64>, ptr %.0253402.epil, align 1, !tbaa !95
  store <2 x i64> %i.wf, ptr %.0254401.epil, align 1, !tbaa !95
  %i.wg = getelementptr inbounds nuw i8, ptr %.0254401.epil, i64 16
  %i.wh = getelementptr inbounds nuw i8, ptr %.0253402.epil, i64 128
  %epil.iter575.next = add i32 %epil.iter575, 1   ; 2 uses
  %epil.iter575.cmp.not = icmp eq i32 %epil.iter575.next, %xtraiter574
  br i1 %epil.iter575.cmp.not, label %._crit_edge406, label %bb.ay, !llvm.loop !349

._crit_edge406:                                   ; preds = %bb.ay, %._crit_edge406.unr-lcssa
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %i.wi = icmp slt i64 %indvars.iv.next481, %i.tf
  br i1 %i.wi, label %.lr.ph405, label %.loopexit351, !llvm.loop !350

.lr.ph405.new:                                    ; preds = %.lr.ph405, %.lr.ph405.new
  %.0253402 = phi ptr [ %i.xg, %.lr.ph405.new ], [ %i.we, %.lr.ph405 ] ; 9 uses
  %.0254401 = phi ptr [ %i.xf, %.lr.ph405.new ], [ %i.wb, %.lr.ph405 ] ; 9 uses
  %niter579 = phi i32 [ %niter579.next.7, %.lr.ph405.new ], [ 0, %.lr.ph405 ]
  %i.wj = load <2 x i64>, ptr %.0253402, align 1, !tbaa !95
  store <2 x i64> %i.wj, ptr %.0254401, align 1, !tbaa !95
  %i.wk = getelementptr inbounds nuw i8, ptr %.0254401, i64 16
  %i.wl = getelementptr inbounds nuw i8, ptr %.0253402, i64 128
  %i.wm = load <2 x i64>, ptr %i.wl, align 1, !tbaa !95
  store <2 x i64> %i.wm, ptr %i.wk, align 1, !tbaa !95
  %i.wn = getelementptr inbounds nuw i8, ptr %.0254401, i64 32
  %i.wo = getelementptr inbounds nuw i8, ptr %.0253402, i64 256
  %i.wp = load <2 x i64>, ptr %i.wo, align 1, !tbaa !95
  store <2 x i64> %i.wp, ptr %i.wn, align 1, !tbaa !95
  %i.wq = getelementptr inbounds nuw i8, ptr %.0254401, i64 48
  %i.wr = getelementptr inbounds nuw i8, ptr %.0253402, i64 384
  %i.ws = load <2 x i64>, ptr %i.wr, align 1, !tbaa !95
  store <2 x i64> %i.ws, ptr %i.wq, align 1, !tbaa !95
  %i.wt = getelementptr inbounds nuw i8, ptr %.0254401, i64 64
  %i.wu = getelementptr inbounds nuw i8, ptr %.0253402, i64 512
  %i.wv = load <2 x i64>, ptr %i.wu, align 1, !tbaa !95
  store <2 x i64> %i.wv, ptr %i.wt, align 1, !tbaa !95
  %i.ww = getelementptr inbounds nuw i8, ptr %.0254401, i64 80
  %i.wx = getelementptr inbounds nuw i8, ptr %.0253402, i64 640
  %i.wy = load <2 x i64>, ptr %i.wx, align 1, !tbaa !95
  store <2 x i64> %i.wy, ptr %i.ww, align 1, !tbaa !95
  %i.wz = getelementptr inbounds nuw i8, ptr %.0254401, i64 96
  %i.xa = getelementptr inbounds nuw i8, ptr %.0253402, i64 768
  %i.xb = load <2 x i64>, ptr %i.xa, align 1, !tbaa !95
  store <2 x i64> %i.xb, ptr %i.wz, align 1, !tbaa !95
  %i.xc = getelementptr inbounds nuw i8, ptr %.0254401, i64 112
  %i.xd = getelementptr inbounds nuw i8, ptr %.0253402, i64 896
  %i.xe = load <2 x i64>, ptr %i.xd, align 1, !tbaa !95
  store <2 x i64> %i.xe, ptr %i.xc, align 1, !tbaa !95
  %i.xf = getelementptr inbounds nuw i8, ptr %.0254401, i64 128 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.0253402, i64 1024 ; 2 uses
  %niter579.next.7 = add i32 %niter579, 8         ; 2 uses
  %niter579.ncmp.7 = icmp eq i32 %niter579.next.7, %unroll_iter578
  br i1 %niter579.ncmp.7, label %._crit_edge406.unr-lcssa, label %.lr.ph405.new, !llvm.loop !351

.loopexit351:                                     ; preds = %._crit_edge397, %._crit_edge406, %.lr.ph400, %.lr.ph409
  br i1 %brmerge, label %.loopexit350, label %.lr.ph416

.lr.ph416:                                        ; preds = %.loopexit351
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv487
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !361
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv487
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !116
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 392 ; 2 uses
  %.pre507 = load ptr, ptr %i.xl, align 8, !tbaa !112
  %.pre509 = load ptr, ptr %i.cj, align 8, !tbaa !131
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph416, %.loopexit349
  %i.xm = phi ptr [ %.pre509, %.lr.ph416 ], [ %i.zb, %.loopexit349 ] ; 9 uses
  %i.xn = phi ptr [ %.pre507, %.lr.ph416 ], [ %i.zc, %.loopexit349 ] ; 4 uses
  %indvars.iv484 = phi i64 [ %indvars.iv474.a, %.lr.ph416 ], [ %indvars.iv.next485, %.loopexit349 ] ; 3 uses
  %i.xo = trunc nuw nsw i64 %indvars.iv484 to i32
  %i.xp = shl i32 %i.xo, 3
  %i.xq = and i32 %i.xp, 56
  %i.xr = or disjoint i32 %i.xq, %i.cl
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds [2 x i8], ptr %i.xi, i64 %i.xs ; 3 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %indvars.iv484
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !100
  %i.xw = getelementptr inbounds [2 x i8], ptr %i.xv, i64 %i.cn ; 3 uses
  %.not296 = icmp eq ptr %i.xm, null
  br i1 %.not296, label %bb.ba, label %.preheader348

.preheader348:                                    ; preds = %bb.az
  br i1 %i.tc, label %.lr.ph413.preheader, label %.loopexit349

.lr.ph413.preheader:                              ; preds = %.preheader348
  br i1 %i.tg, label %.lr.ph413.epil.preheader, label %.lr.ph413

.lr.ph413:                                        ; preds = %.lr.ph413.preheader, %.lr.ph413
  %.0249411 = phi ptr [ %i.yu, %.lr.ph413 ], [ %i.xw, %.lr.ph413.preheader ] ; 5 uses
  %.0250410 = phi ptr [ %i.yp, %.lr.ph413 ], [ %i.xt, %.lr.ph413.preheader ] ; 5 uses
  %niter585 = phi i32 [ %niter585.next.3, %.lr.ph413 ], [ 0, %.lr.ph413.preheader ]
  %i.xx = getelementptr inbounds nuw i8, ptr %.0250410, i64 2
  %i.xy = load i16, ptr %.0250410, align 2, !tbaa !97
  %i.xz = zext i16 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %i.xm, i64 %i.xz
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !97
  %i.yc = getelementptr inbounds nuw i8, ptr %.0249411, i64 2
  store i16 %i.yb, ptr %.0249411, align 2, !tbaa !97
  %i.yd = getelementptr inbounds nuw i8, ptr %.0250410, i64 4
  %i.ye = load i16, ptr %i.xx, align 2, !tbaa !97
  %i.yf = zext i16 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [2 x i8], ptr %i.xm, i64 %i.yf
  %i.yh = load i16, ptr %i.yg, align 2, !tbaa !97
  %i.yi = getelementptr inbounds nuw i8, ptr %.0249411, i64 4
  store i16 %i.yh, ptr %i.yc, align 2, !tbaa !97
  %i.yj = getelementptr inbounds nuw i8, ptr %.0250410, i64 6
  %i.yk = load i16, ptr %i.yd, align 2, !tbaa !97
  %i.yl = zext i16 %i.yk to i64
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.xm, i64 %i.yl
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !97
  %i.yo = getelementptr inbounds nuw i8, ptr %.0249411, i64 6
  store i16 %i.yn, ptr %i.yi, align 2, !tbaa !97
  %i.yp = getelementptr inbounds nuw i8, ptr %.0250410, i64 8 ; 2 uses
  %i.yq = load i16, ptr %i.yj, align 2, !tbaa !97
  %i.yr = zext i16 %i.yq to i64
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %i.xm, i64 %i.yr
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !97
  %i.yu = getelementptr inbounds nuw i8, ptr %.0249411, i64 8 ; 2 uses
  store i16 %i.yt, ptr %i.yo, align 2, !tbaa !97
  %niter585.next.3 = add nuw nsw i32 %niter585, 4 ; 2 uses
  %niter585.ncmp.3 = icmp eq i32 %niter585.next.3, %unroll_iter584
  br i1 %niter585.ncmp.3, label %.loopexit349.loopexit.unr-lcssa, label %.lr.ph413, !llvm.loop !352

bb.ba:                                            ; preds = %bb.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.xw, ptr align 2 %i.xt, i64 %i.te, i1 false)
  %.pre = load ptr, ptr %i.xl, align 8, !tbaa !112
  %.pre508 = load ptr, ptr %i.cj, align 8, !tbaa !131
  br label %.loopexit349

.loopexit349.loopexit.unr-lcssa:                  ; preds = %.lr.ph413
  br i1 %lcmp.mod582.not, label %.loopexit349, label %.lr.ph413.epil.preheader

.lr.ph413.epil.preheader:                         ; preds = %.loopexit349.loopexit.unr-lcssa, %.lr.ph413.preheader
  %.0249411.epil.init = phi ptr [ %i.xw, %.lr.ph413.preheader ], [ %i.yu, %.loopexit349.loopexit.unr-lcssa ]
  %.0250410.epil.init = phi ptr [ %i.xt, %.lr.ph413.preheader ], [ %i.yp, %.loopexit349.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod583)
  br label %.lr.ph413.epil

.lr.ph413.epil:                                   ; preds = %.lr.ph413.epil, %.lr.ph413.epil.preheader
  %.0249411.epil = phi ptr [ %i.za, %.lr.ph413.epil ], [ %.0249411.epil.init, %.lr.ph413.epil.preheader ] ; 2 uses
  %.0250410.epil = phi ptr [ %i.yv, %.lr.ph413.epil ], [ %.0250410.epil.init, %.lr.ph413.epil.preheader ] ; 2 uses
  %epil.iter581 = phi i32 [ %epil.iter581.next, %.lr.ph413.epil ], [ 0, %.lr.ph413.epil.preheader ]
  %i.yv = getelementptr inbounds nuw i8, ptr %.0250410.epil, i64 2
  %i.yw = load i16, ptr %.0250410.epil, align 2, !tbaa !97
  %i.yx = zext i16 %i.yw to i64
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %i.xm, i64 %i.yx
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !97
  %i.za = getelementptr inbounds nuw i8, ptr %.0249411.epil, i64 2
  store i16 %i.yz, ptr %.0249411.epil, align 2, !tbaa !97
  %epil.iter581.next = add i32 %epil.iter581, 1   ; 2 uses
  %epil.iter581.cmp.not = icmp eq i32 %epil.iter581.next, %xtraiter580
  br i1 %epil.iter581.cmp.not, label %.loopexit349, label %.lr.ph413.epil, !llvm.loop !353

.loopexit349:                                     ; preds = %.loopexit349.loopexit.unr-lcssa, %.lr.ph413.epil, %.preheader348, %bb.ba
  %i.zb = phi ptr [ %.pre508, %bb.ba ], [ %i.xm, %.preheader348 ], [ %i.xm, %.lr.ph413.epil ], [ %i.xm, %.loopexit349.loopexit.unr-lcssa ]
  %i.zc = phi ptr [ %.pre, %bb.ba ], [ %i.xn, %.preheader348 ], [ %i.xn, %.lr.ph413.epil ], [ %i.xn, %.loopexit349.loopexit.unr-lcssa ]
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1 ; 2 uses
  %i.zd = icmp slt i64 %indvars.iv.next485, %i.tf
  br i1 %i.zd, label %bb.az, label %.loopexit350, !llvm.loop !354

.loopexit350:                                     ; preds = %.loopexit349, %bb.ax, %bb.av, %.loopexit351
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %exitcond491.not = icmp eq i64 %indvars.iv.next488, %wide.trip.count490
  br i1 %exitcond491.not, label %._crit_edge421, label %bb.au, !llvm.loop !355

._crit_edge421:                                   ; preds = %.loopexit350, %.preheader353
  %4 = add nuw nsw i32 %.0280424, 1               ; 2 uses
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474.a, 8
  %exitcond493.not = icmp eq i32 %4, %smax492
  br i1 %exitcond493.not, label %.preheader347, label %bb.g, !llvm.loop !356

.preheader347:                                    ; preds = %._crit_edge421, %.preheader354
  br i1 %i.ag, label %.lr.ph439.preheader, label %.sink.split

.lr.ph439.preheader:                              ; preds = %.preheader347
  %wide.trip.count505 = zext nneg i32 %i.e to i64
  br label %.lr.ph439

.lr.ph439:                                        ; preds = %.lr.ph439.preheader, %.loopexit
  %indvars.iv502 = phi i64 [ 0, %.lr.ph439.preheader ], [ %indvars.iv.next503, %.loopexit ] ; 2 uses
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv502
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !116 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 416
  %i.zh = load i32, ptr %i.zg, align 32, !tbaa !80
  %.not293 = icmp eq i32 %i.zh, 2
  br i1 %.not293, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.lr.ph439
  %i.zi = load i32, ptr %i.j, align 4, !tbaa !136 ; 2 uses
  %i.zj = icmp sgt i32 %i.zi, 0
  br i1 %i.zj, label %.lr.ph437, label %.loopexit

.lr.ph437:                                        ; preds = %.preheader
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zf, i64 392
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !112
  %i.zm = load i32, ptr %i.f, align 8, !tbaa !135 ; 2 uses
  %i.zn = icmp sgt i32 %i.zm, 0
  br i1 %i.zn, label %.lr.ph434.preheader, label %.loopexit

.lr.ph434.preheader:                              ; preds = %.lr.ph437
  %i.zo = zext nneg i32 %i.zm to i64
  %wide.trip.count500 = zext nneg i32 %i.zi to i64
  br label %.lr.ph434

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %._crit_edge435
  %indvars.iv497 = phi i64 [ 0, %.lr.ph434.preheader ], [ %indvars.iv.next498, %._crit_edge435 ] ; 2 uses
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %indvars.iv497
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !100 ; 2 uses
  br label %bb.bb

._crit_edge435:                                   ; preds = %half_to_float.exit305
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %exitcond501.not = icmp eq i64 %indvars.iv.next498, %wide.trip.count500
  br i1 %exitcond501.not, label %.loopexit, label %.lr.ph434, !llvm.loop !357

bb.bb:                                            ; preds = %.lr.ph434, %half_to_float.exit305
  %indvars.iv494 = phi i64 [ %i.zo, %.lr.ph434 ], [ %indvars.iv.next495, %half_to_float.exit305 ] ; 2 uses
  %indvars.iv.next495 = add nsw i64 %indvars.iv494, -1 ; 3 uses
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.zq, i64 %indvars.iv.next495
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !97 ; 2 uses
  %i.zt = zext i16 %i.zs to i32
  %i.zu = shl nuw nsw i32 %i.zt, 13
  %i.zv = and i32 %i.zu, 268427264                ; 6 uses
  %.signext.i.i302 = sext i16 %i.zs to i32
  %i.zw = and i32 %.signext.i.i302, -2147483648   ; 3 uses
  %i.zx = icmp samesign ugt i32 %i.zv, 8388607
  br i1 %i.zx, label %bb.bc, label %bb.bf, !prof !139

bb.bc:                                            ; preds = %bb.bb
  %i.zy = or disjoint i32 %i.zv, %i.zw            ; 2 uses
  %i.zz = icmp samesign ult i32 %i.zv, 260046848
  br i1 %i.zz, label %bb.bd, label %bb.be, !prof !139

bb.bd:                                            ; preds = %bb.bc
  %i.aaa = add nuw nsw i32 %i.zy, 939524096
  br label %half_to_float.exit305

bb.be:                                            ; preds = %bb.bc
  %i.aab = or i32 %i.zy, 2139095040
  br label %half_to_float.exit305

bb.bf:                                            ; preds = %bb.bb
  %.not.i.i303 = icmp eq i32 %i.zv, 0
  br i1 %.not.i.i303, label %half_to_float.exit305, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.aac = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.zv, i1 true)
  %i.aad = add nsw i32 %i.aac, -8                 ; 2 uses
  %i.aae = shl i32 %i.zv, %i.aad
  %i.aaf = or i32 %i.zw, %i.aae
  %i.aag = or i32 %i.aaf, 947912704
  %i.aah = shl nuw nsw i32 %i.aad, 23
  %i.aai = sub nuw i32 %i.aag, %i.aah
  br label %half_to_float.exit305

half_to_float.exit305:                            ; preds = %bb.bd, %bb.be, %bb.bf, %bb.bg
  %.sroa.0.0.i.i304 = phi i32 [ %i.aaa, %bb.bd ], [ %i.aab, %bb.be ], [ %i.aai, %bb.bg ], [ %i.zw, %bb.bf ]
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %indvars.iv.next495
  store i32 %.sroa.0.0.i.i304, ptr %i.aaj, align 4, !tbaa !137
  %i.aak = icmp sgt i64 %indvars.iv494, 1
  br i1 %i.aak, label %bb.bb, label %._crit_edge435, !llvm.loop !358

.loopexit:                                        ; preds = %._crit_edge435, %.preheader, %.lr.ph437, %.lr.ph439
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next503, %wide.trip.count505
  br i1 %exitcond506.not, label %.sink.split, label %.lr.ph439, !llvm.loop !359

.sink.split:                                      ; preds = %bb.h, %.loopexit, %.preheader347
  %.7.ph = phi i32 [ 0, %.loopexit ], [ 0, %.preheader347 ], [ 23, %bb.h ]
  tail call void %1(ptr noundef nonnull %i.am) #21
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %._crit_edge, %bb.a
  %.7 = phi i32 [ 23, %bb.a ], [ 1, %._crit_edge ], [ %.7.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.7
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @interleaveByte2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #17 !guid !396 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = sdiv i32 %3, 16                          ; 4 uses
  %i.e = or i64 %i.b, %i.a
  %i.f = or i64 %i.e, %i.c
  %i.g = and i64 %i.f, 15
  %or.cond3.not = icmp eq i64 %i.g, 0
  br i1 %or.cond3.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 15
  br i1 %i.h, label %.lr.ph146.preheader, label %._crit_edge147

.lr.ph146.preheader:                              ; preds = %.preheader
  %wide.trip.count177 = zext nneg i32 %i.d to i64
  br label %.lr.ph146

._crit_edge147:                                   ; preds = %.lr.ph146, %.preheader
  %i.i = shl nsw i32 %i.d, 4                      ; 2 uses
  %i.j = icmp slt i32 %i.i, %3
  br i1 %i.j, label %iter.check306, label %.loopexit

iter.check306:                                    ; preds = %._crit_edge147
  %i.k = sext i32 %i.i to i64                     ; 10 uses
  %wide.trip.count182 = sext i32 %3 to i64        ; 9 uses
  %i.l = sub nsw i64 %wide.trip.count182, %i.k    ; 4 uses
  %min.iters.check282 = icmp ult i64 %i.l, 4
  br i1 %min.iters.check282, label %.lr.ph150.preheader, label %vector.memcheck283

vector.memcheck283:                               ; preds = %iter.check306
  %i.m = shl nsw i64 %i.k, 1
  %i.n = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.o = shl nsw i64 %wide.trip.count182, 1
  %i.p = getelementptr i8, ptr %0, i64 %i.o       ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.k
  %i.r = getelementptr i8, ptr %1, i64 %wide.trip.count182
  %i.s = getelementptr i8, ptr %2, i64 %i.k
  %i.t = getelementptr i8, ptr %2, i64 %wide.trip.count182
  %bound0284 = icmp ult ptr %i.n, %i.r
  %bound1285 = icmp ult ptr %i.q, %i.p
  %found.conflict286 = and i1 %bound0284, %bound1285
  %bound0287 = icmp ult ptr %i.n, %i.t
  %bound1288 = icmp ult ptr %i.s, %i.p
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx290 = or i1 %found.conflict286, %found.conflict289
  br i1 %conflict.rdx290, label %.lr.ph150.preheader, label %vector.main.loop.iter.check291

vector.main.loop.iter.check291:                   ; preds = %vector.memcheck283
  %min.iters.check292 = icmp ult i64 %i.l, 16
  br i1 %min.iters.check292, label %vec.epilog.ph310, label %vector.ph293

vector.ph293:                                     ; preds = %vector.main.loop.iter.check291
  %i.u = and i64 %wide.trip.count182, 15          ; 2 uses
  %n.vec294 = sub nuw nsw i64 %i.l, %i.u          ; 3 uses
  %i.v = add nsw i64 %n.vec294, %i.k
  br label %vector.body295

vector.body295:                                   ; preds = %vector.ph293, %vector.body295
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next303, %vector.body295 ] ; 2 uses
  %i.w = add i64 %index296, %i.k                  ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %wide.load297 = load <8 x i8>, ptr %i.x, align 1, !tbaa !95, !alias.scope !397
  %wide.load298 = load <8 x i8>, ptr %i.y, align 1, !tbaa !95, !alias.scope !397
  %i.z = shl nsw i64 %i.w, 1
  %i.aa = shl i64 %i.w, 1
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ac = getelementptr i8, ptr %0, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.w ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %wide.load299 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !95, !alias.scope !398
  %wide.load300 = load <8 x i8>, ptr %i.af, align 1, !tbaa !95, !alias.scope !398
  %interleaved.vec301 = shufflevector <8 x i8> %wide.load297, <8 x i8> %wide.load299, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec301, ptr %i.ab, align 1, !tbaa !95, !alias.scope !399, !noalias !400
  %interleaved.vec302 = shufflevector <8 x i8> %wide.load298, <8 x i8> %wide.load300, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec302, ptr %i.ad, align 1, !tbaa !95, !alias.scope !399, !noalias !400
  %index.next303 = add nuw i64 %index296, 16      ; 2 uses
  %i.ag = icmp eq i64 %index.next303, %n.vec294
  br i1 %i.ag, label %middle.block304, label %vector.body295, !llvm.loop !376

middle.block304:                                  ; preds = %vector.body295
  %i.ah = and i32 %3, 15
  %cmp.n305 = icmp eq i32 %i.ah, 0
  br i1 %cmp.n305, label %.loopexit, label %vec.epilog.iter.check307
end_hunk_1
