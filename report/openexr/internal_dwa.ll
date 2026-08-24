Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_dwa?download=true
inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@LossyDctDecoder_execute:bb.a
  %i.a = alloca [3 x ptr], align 16               ; 13 uses
  %i.b = alloca [3 x ptr], align 16               ; 14 uses
  %i.c = alloca [3 x ptr], align 16               ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !173  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !177  ; 5 uses
  %i.h = add nsw i32 %i.g, 7
  %i.i = sdiv i32 %i.h, 8                         ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !178  ; 3 uses
  %i.l = add nsw i32 %i.k, 7
  %i.m = sdiv i32 %i.l, 8                         ; 3 uses
  %i.n = add nsw i32 %i.i, -1                     ; 2 uses
  %i.o = shl nsw i32 %i.n, 3
  %i.p = sub nsw i32 %i.g, %i.o
  %i.q = add nsw i32 %i.m, -1                     ; 2 uses
  %i.r = shl nsw i32 %i.q, 3
  %i.s = sub nsw i32 %i.k, %i.r
  %i.t = sdiv i32 %i.g, 8                         ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !171
  %i.aa = sext i32 %i.e to i64
  %i.ab = sext i32 %i.i to i64                    ; 3 uses
  %i.ac = mul nsw i64 %i.ab, %i.aa                ; 2 uses
  %i.ad = sext i32 %i.m to i64                    ; 2 uses
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.z, %i.ae
  br i1 %i.af, label %bb.bg, label %.preheader357

.preheader357:                                    ; preds = %bb.a
  %i.ag = icmp sgt i32 %i.e, 0                    ; 4 uses
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader357
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ai = zext nneg i32 %i.e to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %i.ah, i64 %i.aj, i1 false), !tbaa !123
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader357
  %i.ak = shl i64 %i.ac, 7
  %i.al = or disjoint i64 %i.ak, 32
  %i.am = tail call ptr %0(i64 noundef %i.al) #21 ; 4 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.bg, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 0, %i.an
  %i.ap = and i64 %i.ao, 15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  store ptr %i.aq, ptr %i.c, align 16, !tbaa !122
  %i.ar = icmp sgt i32 %i.e, 1
  br i1 %i.ar, label %.lr.ph368, label %._crit_edge369

.lr.ph368:                                        ; preds = %bb.b
  %.idx = shl nsw i64 %i.ab, 7                    ; 9 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %load_initial556 = load ptr, ptr %i.c, align 16 ; 2 uses
  %i.as = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.at = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %xtraiter = and i64 %i.as, 7                    ; 3 uses
  %i.au = icmp ult i64 %i.at, 7
  br i1 %i.au, label %.epil.preheader, label %.lr.ph368.new

.lr.ph368.new:                                    ; preds = %.lr.ph368
  %unroll_iter = and i64 %i.as, -8
  br label %bb.d

._crit_edge369:                                   ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !170
  store ptr %i.aw, ptr %i.b, align 16, !tbaa !122
  br label %.preheader356

.lr.ph372.unr-lcssa:                              ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph372, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph372.unr-lcssa, %.lr.ph368
  %store_forwarded557.epil.init = phi ptr [ %load_initial556, %.lr.ph368 ], [ %i.bz, %.lr.ph372.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph368 ], [ %indvars.iv.next.7, %.lr.ph372.unr-lcssa ]
  %lcmp.mod563 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod563)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %store_forwarded557.epil = phi ptr [ %store_forwarded557.epil.init, %.epil.preheader ], [ %i.ay, %bb.c ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ax = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.epil
  %i.ay = getelementptr inbounds nuw i8, ptr %store_forwarded557.epil, i64 %.idx ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !122
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph372, label %bb.c, !llvm.loop !265

.lr.ph372:                                        ; preds = %bb.c, %.lr.ph372.unr-lcssa
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !170 ; 3 uses
  store ptr %i.ba, ptr %i.b, align 16, !tbaa !122
  %i.bb = mul nsw i64 %i.ad, %i.ab                ; 9 uses
  %xtraiter565 = and i64 %i.as, 7                 ; 3 uses
  %i.bc = icmp ult i64 %i.at, 7
  br i1 %i.bc, label %.epil.preheader564, label %.lr.ph372.new

.lr.ph372.new:                                    ; preds = %.lr.ph372
  %unroll_iter569 = and i64 %i.as, -8
  br label %bb.f

bb.d:                                             ; preds = %bb.d, %.lr.ph368.new
  %store_forwarded557 = phi ptr [ %load_initial556, %.lr.ph368.new ], [ %i.bz, %bb.d ]
  %indvars.iv = phi i64 [ 1, %.lr.ph368.new ], [ %indvars.iv.next.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph368.new ], [ %niter.next.7, %bb.d ]
  %i.bd = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %store_forwarded557, i64 %.idx ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !122
  %i.bf = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx ; 2 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !122
  %i.bi = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !122
  %i.bl = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx ; 2 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !122
  %i.bo = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bp = getelementptr i8, ptr %i.bo, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !122
  %i.br = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bs = getelementptr i8, ptr %i.br, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !122
  %i.bu = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bv = getelementptr i8, ptr %i.bu, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !122
  %i.bx = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.by = getelementptr i8, ptr %i.bx, i64 56
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx ; 3 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !122
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph372.unr-lcssa, label %bb.d, !llvm.loop !266

.preheader356.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod567.not = icmp eq i64 %xtraiter565, 0
  br i1 %lcmp.mod567.not, label %.preheader356, label %.epil.preheader564

.epil.preheader564:                               ; preds = %.preheader356.loopexit.unr-lcssa, %.lr.ph372
  %store_forwarded.epil.init = phi ptr [ %i.ba, %.lr.ph372 ], [ %i.dk, %.preheader356.loopexit.unr-lcssa ]
  %indvars.iv452.epil.init = phi i64 [ 1, %.lr.ph372 ], [ %indvars.iv.next453.7, %.preheader356.loopexit.unr-lcssa ]
  %lcmp.mod568 = icmp ne i64 %xtraiter565, 0
  tail call void @llvm.assume(i1 %lcmp.mod568)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader564
  %store_forwarded.epil = phi ptr [ %store_forwarded.epil.init, %.epil.preheader564 ], [ %i.cb, %bb.e ]
  %indvars.iv452.epil = phi i64 [ %indvars.iv452.epil.init, %.epil.preheader564 ], [ %indvars.iv.next453.epil, %bb.e ] ; 2 uses
  %epil.iter566 = phi i64 [ 0, %.epil.preheader564 ], [ %epil.iter566.next, %bb.e ]
  %i.ca = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv452.epil
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %store_forwarded.epil, i64 %i.bb ; 2 uses
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !122
  %indvars.iv.next453.epil = add nuw nsw i64 %indvars.iv452.epil, 1
  %epil.iter566.next = add i64 %epil.iter566, 1   ; 2 uses
  %epil.iter566.cmp.not = icmp eq i64 %epil.iter566.next, %xtraiter565
  br i1 %epil.iter566.cmp.not, label %.preheader356, label %bb.e, !llvm.loop !267

.preheader356:                                    ; preds = %.preheader356.loopexit.unr-lcssa, %bb.e, %._crit_edge369
  %.not293424 = icmp sgt i32 %i.k, 0
  br i1 %.not293424, label %.lr.ph429, label %.preheader349

.lr.ph429:                                        ; preds = %.preheader356
  %.not294.not384 = icmp sgt i32 %i.g, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cd = icmp eq i32 %i.e, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.ch = icmp sgt i32 %i.g, 7                    ; 2 uses
  %.not297 = icmp eq i32 %i.t, %i.i
  %i.ci = shl nsw i32 %i.t, 6
  %i.cj = shl nsw i32 %i.t, 3
  %i.ck = sext i32 %i.cj to i64
  %i.cl = zext i32 %i.n to i64
  %wide.trip.count474 = zext nneg i32 %i.i to i64
  %wide.trip.count459 = zext nneg i32 %i.e to i64
  %wide.trip.count464 = zext nneg i32 %i.e to i64
  %wide.trip.count469 = zext nneg i32 %i.e to i64
  %wide.trip.count493 = zext nneg i32 %i.e to i64
  %i.cm = add nsw i32 %i.t, -1
  %xtraiter572 = and i32 %i.t, 7                  ; 3 uses
  %i.cn = icmp ult i32 %i.cm, 7
  %unroll_iter576 = and i32 %i.t, 268435448
  %lcmp.mod574.not = icmp eq i32 %xtraiter572, 0
  %lcmp.mod575 = icmp ne i32 %xtraiter572, 0
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph372.new
  %store_forwarded = phi ptr [ %i.ba, %.lr.ph372.new ], [ %i.dk, %bb.f ]
  %indvars.iv452 = phi i64 [ 1, %.lr.ph372.new ], [ %indvars.iv.next453.7, %bb.f ] ; 9 uses
  %niter570 = phi i64 [ 0, %.lr.ph372.new ], [ %niter570.next.7, %bb.f ]
  %i.co = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv452
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %store_forwarded, i64 %i.bb ; 2 uses
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !122
  %i.cq = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv452
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.bb ; 2 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !122
  %i.ct = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv452
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.bb ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !122
  %i.cw = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv452
  %i.cx = getelementptr i8, ptr %i.cw, i64 24
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.bb ; 2 uses
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !122
  %i.cz = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv452
  %i.da = getelementptr i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.bb ; 2 uses
  store ptr %i.db, ptr %i.da, align 8, !tbaa !122
  %i.dc = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv452
  %i.dd = getelementptr i8, ptr %i.dc, i64 40
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.bb ; 2 uses
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !122
  %i.df = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv452
  %i.dg = getelementptr i8, ptr %i.df, i64 48
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.bb ; 2 uses
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !122
  %i.di = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv452
  %i.dj = getelementptr i8, ptr %i.di, i64 56
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.bb ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !122
  %indvars.iv.next453.7 = add nuw nsw i64 %indvars.iv452, 8 ; 2 uses
  %niter570.next.7 = add i64 %niter570, 8         ; 2 uses
  %niter570.ncmp.7 = icmp eq i64 %niter570.next.7, %unroll_iter569
  br i1 %niter570.ncmp.7, label %.preheader356.loopexit.unr-lcssa, label %bb.f, !llvm.loop !268

bb.g:                                             ; preds = %.lr.ph429, %._crit_edge423
  %indvars.iv477 = phi i64 [ 0, %.lr.ph429 ], [ %indvars.iv.next478, %._crit_edge423 ] ; 4 uses
  %.0274426 = phi i32 [ 0, %.lr.ph429 ], [ %i.yt, %._crit_edge423 ] ; 3 uses
  %.0309425 = phi ptr [ %i.v, %.lr.ph429 ], [ %.4313.ph, %._crit_edge423 ] ; 2 uses
  %i.dl = icmp eq i32 %.0274426, %i.q
  %spec.select = select i1 %i.dl, i32 %i.s, i32 8 ; 3 uses
  br i1 %.not294.not384, label %.lr.ph390, label %.preheader355

.lr.ph390:                                        ; preds = %bb.g, %._crit_edge383
  %indvars.iv471 = phi i64 [ %indvars.iv.next472, %._crit_edge383 ], [ 0, %bb.g ] ; 5 uses
  %.0281386 = phi i32 [ %spec.select300, %._crit_edge383 ], [ 8, %bb.g ]
  %.1310385 = phi ptr [ %.2311.lcssa526531, %._crit_edge383 ], [ %.0309425, %bb.g ] ; 2 uses
  %i.dm = icmp eq i64 %indvars.iv471, %i.cl
  %spec.select300 = select i1 %i.dm, i32 %i.p, i32 %.0281386 ; 2 uses
  br i1 %i.ag, label %.lr.ph378, label %._crit_edge383

.lr.ph378:                                        ; preds = %.lr.ph390, %bb.ai
  %indvars.iv457 = phi i64 [ %indvars.iv.next458, %bb.ai ], [ 0, %.lr.ph390 ] ; 3 uses
  %.0276375 = phi i8 [ %.2278.ph, %bb.ai ], [ 1, %.lr.ph390 ]
  %.2311374 = phi ptr [ %i.eg, %bb.ai ], [ %.1310385, %.lr.ph390 ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv457
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !123 ; 27 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 256 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 272
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv457 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.dq, i8 0, i64 112, i1 false)
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !122 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !122
  %i.du = load i16, ptr %i.ds, align 2, !tbaa !94 ; 3 uses
  %i.dv = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %i.du, i64 0
  store <8 x i16> %i.dv, ptr %i.dp, align 16, !tbaa !90
  %i.dw = load i64, ptr %i.cc, align 8, !tbaa !175
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.cc, align 8, !tbaa !175
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph378
  %.02334.i = phi i64 [ 0, %.lr.ph378 ], [ %i.ef, %bb.l ]
  %.02433.i = phi i32 [ 0, %.lr.ph378 ], [ %.1.i, %bb.l ]
  %.02532.i = phi ptr [ %.2311374, %.lr.ph378 ], [ %i.eg, %bb.l ] ; 3 uses
  %.02631.i = phi i32 [ 1, %.lr.ph378 ], [ %.127.i, %bb.l ] ; 3 uses
  %.not.i = icmp ult ptr %.02532.i, %i.x
  br i1 %.not.i, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.dy = load i16, ptr %.02532.i, align 2, !tbaa !94 ; 3 uses
  %i.dz = icmp ugt i16 %i.dy, -257
  br i1 %i.dz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ea = and i16 %i.dy, 255                      ; 2 uses
  %i.eb = icmp eq i16 %i.ea, 0
  %narrow.i = select i1 %i.eb, i16 64, i16 %i.ea
  %i.ec = zext nneg i16 %narrow.i to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ed = zext nneg i32 %.02631.i to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.ed
  store i16 %i.dy, ptr %i.ee, align 2, !tbaa !94
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi i32 [ %i.ec, %bb.j ], [ 1, %bb.k ]
  %.1.i = phi i32 [ %.02433.i, %bb.j ], [ %.02631.i, %bb.k ] ; 9 uses
  %.127.i = add nuw nsw i32 %.pn.i, %.02631.i     ; 2 uses
  %i.ef = add i64 %.02334.i, 1                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02532.i, i64 2 ; 4 uses
  %i.eh = icmp samesign ult i32 %.127.i, 64
  br i1 %i.eh, label %bb.h, label %bb.m, !llvm.loop !269

bb.m:                                             ; preds = %bb.l
  %i.ei = load i64, ptr %2, align 8, !tbaa !174
  %i.ej = add i64 %i.ei, %i.ef
  store i64 %i.ej, ptr %2, align 8, !tbaa !174
  %i.ek = icmp eq i32 %.1.i, 0
  br i1 %i.ek, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.el = zext i16 %i.du to i32
  %i.em = shl nuw nsw i32 %i.el, 13
  %i.en = and i32 %i.em, 268427264                ; 6 uses
  %.signext.i.i = sext i16 %i.du to i32
  %i.eo = and i32 %.signext.i.i, -2147483648      ; 3 uses
  %i.ep = icmp samesign ugt i32 %i.en, 8388607
  br i1 %i.ep, label %bb.o, label %bb.r, !prof !188

bb.o:                                             ; preds = %bb.n
  %i.eq = or disjoint i32 %i.en, %i.eo            ; 2 uses
  %i.er = icmp samesign ult i32 %i.en, 260046848
  br i1 %i.er, label %bb.p, label %bb.q, !prof !188

bb.p:                                             ; preds = %bb.o
  %i.es = add nuw nsw i32 %i.eq, 939524096
  br label %half_to_float.exit

bb.q:                                             ; preds = %bb.o
  %i.et = or i32 %i.eq, 2139095040
  br label %half_to_float.exit

bb.r:                                             ; preds = %bb.n
  %.not.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i, label %half_to_float.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.en, i1 true)
  %i.ev = add nsw i32 %i.eu, -8                   ; 2 uses
  %i.ew = shl i32 %i.en, %i.ev
  %i.ex = or i32 %i.eo, %i.ew
  %i.ey = or i32 %i.ex, 947912704
  %i.ez = shl nuw nsw i32 %i.ev, 23
  %i.fa = sub nuw i32 %i.ey, %i.ez
  br label %half_to_float.exit

half_to_float.exit:                               ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %.sroa.0.0.i.i = phi i32 [ %i.es, %bb.p ], [ %i.et, %bb.q ], [ %i.fa, %bb.s ], [ %i.eo, %bb.r ]
  %i.fb = bitcast i32 %.sroa.0.0.i.i to float
  %i.fc = fmul float %i.fb, f0x3EB504FA
  %i.fd = fmul float %i.fc, f0x3EB504FA
  %i.fe = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  store <4 x float> %i.ff, ptr %i.do, align 16, !tbaa !90
  %i.fg = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x float> %i.ff, ptr %i.fg, align 16, !tbaa !90
  %i.fh = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store <4 x float> %i.ff, ptr %i.fh, align 16, !tbaa !90
  %i.fi = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store <4 x float> %i.ff, ptr %i.fi, align 16, !tbaa !90
  %i.fj = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  store <4 x float> %i.ff, ptr %i.fj, align 16, !tbaa !90
  %i.fk = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  store <4 x float> %i.ff, ptr %i.fk, align 16, !tbaa !90
  %i.fl = getelementptr inbounds nuw i8, ptr %i.do, i64 96
  store <4 x float> %i.ff, ptr %i.fl, align 16, !tbaa !90
  %i.fm = getelementptr inbounds nuw i8, ptr %i.do, i64 112
  store <4 x float> %i.ff, ptr %i.fm, align 16, !tbaa !90
  %i.fn = getelementptr inbounds nuw i8, ptr %i.do, i64 128
  store <4 x float> %i.ff, ptr %i.fn, align 16, !tbaa !90
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  store <4 x float> %i.ff, ptr %i.fo, align 16, !tbaa !90
  %i.fp = getelementptr inbounds nuw i8, ptr %i.do, i64 160
  store <4 x float> %i.ff, ptr %i.fp, align 16, !tbaa !90
  %i.fq = getelementptr inbounds nuw i8, ptr %i.do, i64 176
  store <4 x float> %i.ff, ptr %i.fq, align 16, !tbaa !90
  %i.fr = getelementptr inbounds nuw i8, ptr %i.do, i64 192
  store <4 x float> %i.ff, ptr %i.fr, align 16, !tbaa !90
  %i.fs = getelementptr inbounds nuw i8, ptr %i.do, i64 208
end_hunk_0
begin_hunk_1_@LossyDctDecoder_execute:bb.a
  %exitcond476.not = icmp eq i32 %i.vk, %i.t
  br i1 %exitcond476.not, label %._crit_edge399, label %bb.aw, !llvm.loop !284

bb.ax:                                            ; preds = %bb.au
  br i1 %i.sr, label %.lr.ph411, label %.loopexit352

.lr.ph411:                                        ; preds = %bb.ax
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv490
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !123
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 392
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv490
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !122
  br i1 %i.ch, label %.lr.ph407, label %.loopexit353

.lr.ph407:                                        ; preds = %.lr.ph411, %._crit_edge408
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %._crit_edge408 ], [ %indvars.iv477, %.lr.ph411 ] ; 3 uses
  %i.vq = load ptr, ptr %i.vn, align 8, !tbaa !115
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv483
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !97 ; 2 uses
  %i.vt = shl i64 %indvars.iv483, 3
  %i.vu = and i64 %i.vt, 56
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %i.vp, i64 %i.vu ; 2 uses
  br i1 %i.cn, label %.epil.preheader571, label %.lr.ph407.new

._crit_edge408.unr-lcssa:                         ; preds = %.lr.ph407.new
  br i1 %lcmp.mod574.not, label %._crit_edge408, label %.epil.preheader571

.epil.preheader571:                               ; preds = %._crit_edge408.unr-lcssa, %.lr.ph407
  %.0256404.epil.init = phi ptr [ %i.vv, %.lr.ph407 ], [ %i.wx, %._crit_edge408.unr-lcssa ]
  %.0257403.epil.init = phi ptr [ %i.vs, %.lr.ph407 ], [ %i.ww, %._crit_edge408.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod575)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.epil.preheader571
  %.0256404.epil = phi ptr [ %.0256404.epil.init, %.epil.preheader571 ], [ %i.vy, %bb.ay ] ; 2 uses
  %.0257403.epil = phi ptr [ %.0257403.epil.init, %.epil.preheader571 ], [ %i.vx, %bb.ay ] ; 2 uses
  %epil.iter573 = phi i32 [ 0, %.epil.preheader571 ], [ %epil.iter573.next, %bb.ay ]
  %i.vw = load <2 x i64>, ptr %.0256404.epil, align 1, !tbaa !90
  store <2 x i64> %i.vw, ptr %.0257403.epil, align 1, !tbaa !90
  %i.vx = getelementptr inbounds nuw i8, ptr %.0257403.epil, i64 16
  %i.vy = getelementptr inbounds nuw i8, ptr %.0256404.epil, i64 128
  %epil.iter573.next = add i32 %epil.iter573, 1   ; 2 uses
  %epil.iter573.cmp.not = icmp eq i32 %epil.iter573.next, %xtraiter572
  br i1 %epil.iter573.cmp.not, label %._crit_edge408, label %bb.ay, !llvm.loop !285

._crit_edge408:                                   ; preds = %bb.ay, %._crit_edge408.unr-lcssa
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %i.vz = icmp slt i64 %indvars.iv.next484, %i.sw
  br i1 %i.vz, label %.lr.ph407, label %.loopexit353, !llvm.loop !286

.lr.ph407.new:                                    ; preds = %.lr.ph407, %.lr.ph407.new
  %.0256404 = phi ptr [ %i.wx, %.lr.ph407.new ], [ %i.vv, %.lr.ph407 ] ; 9 uses
  %.0257403 = phi ptr [ %i.ww, %.lr.ph407.new ], [ %i.vs, %.lr.ph407 ] ; 9 uses
  %niter577 = phi i32 [ %niter577.next.7, %.lr.ph407.new ], [ 0, %.lr.ph407 ]
  %i.wa = load <2 x i64>, ptr %.0256404, align 1, !tbaa !90
  store <2 x i64> %i.wa, ptr %.0257403, align 1, !tbaa !90
  %i.wb = getelementptr inbounds nuw i8, ptr %.0257403, i64 16
  %i.wc = getelementptr inbounds nuw i8, ptr %.0256404, i64 128
  %i.wd = load <2 x i64>, ptr %i.wc, align 1, !tbaa !90
  store <2 x i64> %i.wd, ptr %i.wb, align 1, !tbaa !90
  %i.we = getelementptr inbounds nuw i8, ptr %.0257403, i64 32
  %i.wf = getelementptr inbounds nuw i8, ptr %.0256404, i64 256
  %i.wg = load <2 x i64>, ptr %i.wf, align 1, !tbaa !90
  store <2 x i64> %i.wg, ptr %i.we, align 1, !tbaa !90
  %i.wh = getelementptr inbounds nuw i8, ptr %.0257403, i64 48
  %i.wi = getelementptr inbounds nuw i8, ptr %.0256404, i64 384
  %i.wj = load <2 x i64>, ptr %i.wi, align 1, !tbaa !90
  store <2 x i64> %i.wj, ptr %i.wh, align 1, !tbaa !90
  %i.wk = getelementptr inbounds nuw i8, ptr %.0257403, i64 64
  %i.wl = getelementptr inbounds nuw i8, ptr %.0256404, i64 512
  %i.wm = load <2 x i64>, ptr %i.wl, align 1, !tbaa !90
  store <2 x i64> %i.wm, ptr %i.wk, align 1, !tbaa !90
  %i.wn = getelementptr inbounds nuw i8, ptr %.0257403, i64 80
  %i.wo = getelementptr inbounds nuw i8, ptr %.0256404, i64 640
  %i.wp = load <2 x i64>, ptr %i.wo, align 1, !tbaa !90
  store <2 x i64> %i.wp, ptr %i.wn, align 1, !tbaa !90
  %i.wq = getelementptr inbounds nuw i8, ptr %.0257403, i64 96
  %i.wr = getelementptr inbounds nuw i8, ptr %.0256404, i64 768
  %i.ws = load <2 x i64>, ptr %i.wr, align 1, !tbaa !90
  store <2 x i64> %i.ws, ptr %i.wq, align 1, !tbaa !90
  %i.wt = getelementptr inbounds nuw i8, ptr %.0257403, i64 112
  %i.wu = getelementptr inbounds nuw i8, ptr %.0256404, i64 896
  %i.wv = load <2 x i64>, ptr %i.wu, align 1, !tbaa !90
  store <2 x i64> %i.wv, ptr %i.wt, align 1, !tbaa !90
  %i.ww = getelementptr inbounds nuw i8, ptr %.0257403, i64 128 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.0256404, i64 1024 ; 2 uses
  %niter577.next.7 = add i32 %niter577, 8         ; 2 uses
  %niter577.ncmp.7 = icmp eq i32 %niter577.next.7, %unroll_iter576
  br i1 %niter577.ncmp.7, label %._crit_edge408.unr-lcssa, label %.lr.ph407.new, !llvm.loop !287

.loopexit353:                                     ; preds = %._crit_edge399, %._crit_edge408, %.lr.ph402, %.lr.ph411
  br i1 %brmerge, label %.loopexit352, label %.lr.ph418

.lr.ph418:                                        ; preds = %.loopexit353
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv490
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !122
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv490
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !123
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 392
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph418, %.loopexit351
  %indvars.iv487 = phi i64 [ %indvars.iv477, %.lr.ph418 ], [ %indvars.iv.next488, %.loopexit351 ] ; 3 uses
  %i.xd = trunc nuw nsw i64 %indvars.iv487 to i32
  %i.xe = shl i32 %i.xd, 3
  %i.xf = and i32 %i.xe, 56
  %i.xg = or disjoint i32 %i.xf, %i.ci
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds [2 x i8], ptr %i.wz, i64 %i.xh ; 3 uses
  %i.xj = load ptr, ptr %i.xc, align 8, !tbaa !115
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %indvars.iv487
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !97
  %i.xm = getelementptr inbounds [2 x i8], ptr %i.xl, i64 %i.ck ; 3 uses
  %i.xn = load ptr, ptr %i.cg, align 8, !tbaa !172 ; 6 uses
  %.not298 = icmp eq ptr %i.xn, null
  br i1 %.not298, label %bb.ba, label %.preheader350

.preheader350:                                    ; preds = %bb.az
  br i1 %i.st, label %.lr.ph415.preheader, label %.loopexit351

.lr.ph415.preheader:                              ; preds = %.preheader350
  br i1 %i.sx, label %.lr.ph415.epil.preheader, label %.lr.ph415

.lr.ph415:                                        ; preds = %.lr.ph415.preheader, %.lr.ph415
  %.0252413 = phi ptr [ %i.yl, %.lr.ph415 ], [ %i.xm, %.lr.ph415.preheader ] ; 5 uses
  %.0253412 = phi ptr [ %i.yg, %.lr.ph415 ], [ %i.xi, %.lr.ph415.preheader ] ; 5 uses
  %niter583 = phi i32 [ %niter583.next.3, %.lr.ph415 ], [ 0, %.lr.ph415.preheader ]
  %i.xo = getelementptr inbounds nuw i8, ptr %.0253412, i64 2
  %i.xp = load i16, ptr %.0253412, align 2, !tbaa !94
  %i.xq = zext i16 %i.xp to i64
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.xn, i64 %i.xq
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !94
  %i.xt = getelementptr inbounds nuw i8, ptr %.0252413, i64 2
  store i16 %i.xs, ptr %.0252413, align 2, !tbaa !94
  %i.xu = getelementptr inbounds nuw i8, ptr %.0253412, i64 4
  %i.xv = load i16, ptr %i.xo, align 2, !tbaa !94
  %i.xw = zext i16 %i.xv to i64
  %i.xx = getelementptr inbounds nuw [2 x i8], ptr %i.xn, i64 %i.xw
  %i.xy = load i16, ptr %i.xx, align 2, !tbaa !94
  %i.xz = getelementptr inbounds nuw i8, ptr %.0252413, i64 4
  store i16 %i.xy, ptr %i.xt, align 2, !tbaa !94
  %i.ya = getelementptr inbounds nuw i8, ptr %.0253412, i64 6
  %i.yb = load i16, ptr %i.xu, align 2, !tbaa !94
  %i.yc = zext i16 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [2 x i8], ptr %i.xn, i64 %i.yc
  %i.ye = load i16, ptr %i.yd, align 2, !tbaa !94
  %i.yf = getelementptr inbounds nuw i8, ptr %.0252413, i64 6
  store i16 %i.ye, ptr %i.xz, align 2, !tbaa !94
  %i.yg = getelementptr inbounds nuw i8, ptr %.0253412, i64 8 ; 2 uses
  %i.yh = load i16, ptr %i.ya, align 2, !tbaa !94
  %i.yi = zext i16 %i.yh to i64
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.xn, i64 %i.yi
  %i.yk = load i16, ptr %i.yj, align 2, !tbaa !94
  %i.yl = getelementptr inbounds nuw i8, ptr %.0252413, i64 8 ; 2 uses
  store i16 %i.yk, ptr %i.yf, align 2, !tbaa !94
  %niter583.next.3 = add nuw nsw i32 %niter583, 4 ; 2 uses
  %niter583.ncmp.3 = icmp eq i32 %niter583.next.3, %unroll_iter582
  br i1 %niter583.ncmp.3, label %.loopexit351.loopexit.unr-lcssa, label %.lr.ph415, !llvm.loop !288

bb.ba:                                            ; preds = %bb.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.xm, ptr align 2 %i.xi, i64 %i.sv, i1 false)
  br label %.loopexit351

.loopexit351.loopexit.unr-lcssa:                  ; preds = %.lr.ph415
  br i1 %lcmp.mod580.not, label %.loopexit351, label %.lr.ph415.epil.preheader

.lr.ph415.epil.preheader:                         ; preds = %.loopexit351.loopexit.unr-lcssa, %.lr.ph415.preheader
  %.0252413.epil.init = phi ptr [ %i.xm, %.lr.ph415.preheader ], [ %i.yl, %.loopexit351.loopexit.unr-lcssa ]
  %.0253412.epil.init = phi ptr [ %i.xi, %.lr.ph415.preheader ], [ %i.yg, %.loopexit351.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod581)
  br label %.lr.ph415.epil

.lr.ph415.epil:                                   ; preds = %.lr.ph415.epil, %.lr.ph415.epil.preheader
  %.0252413.epil = phi ptr [ %i.yr, %.lr.ph415.epil ], [ %.0252413.epil.init, %.lr.ph415.epil.preheader ] ; 2 uses
  %.0253412.epil = phi ptr [ %i.ym, %.lr.ph415.epil ], [ %.0253412.epil.init, %.lr.ph415.epil.preheader ] ; 2 uses
  %epil.iter579 = phi i32 [ %epil.iter579.next, %.lr.ph415.epil ], [ 0, %.lr.ph415.epil.preheader ]
  %i.ym = getelementptr inbounds nuw i8, ptr %.0253412.epil, i64 2
  %i.yn = load i16, ptr %.0253412.epil, align 2, !tbaa !94
  %i.yo = zext i16 %i.yn to i64
  %i.yp = getelementptr inbounds nuw [2 x i8], ptr %i.xn, i64 %i.yo
  %i.yq = load i16, ptr %i.yp, align 2, !tbaa !94
  %i.yr = getelementptr inbounds nuw i8, ptr %.0252413.epil, i64 2
  store i16 %i.yq, ptr %.0252413.epil, align 2, !tbaa !94
  %epil.iter579.next = add i32 %epil.iter579, 1   ; 2 uses
  %epil.iter579.cmp.not = icmp eq i32 %epil.iter579.next, %xtraiter578
  br i1 %epil.iter579.cmp.not, label %.loopexit351, label %.lr.ph415.epil, !llvm.loop !289

.loopexit351:                                     ; preds = %.loopexit351.loopexit.unr-lcssa, %.lr.ph415.epil, %.preheader350, %bb.ba
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %i.ys = icmp slt i64 %indvars.iv.next488, %i.sw
  br i1 %i.ys, label %bb.az, label %.loopexit352, !llvm.loop !290

.loopexit352:                                     ; preds = %.loopexit351, %bb.ax, %bb.av, %.loopexit353
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %exitcond494.not = icmp eq i64 %indvars.iv.next491, %wide.trip.count493
  br i1 %exitcond494.not, label %._crit_edge423, label %bb.au, !llvm.loop !291

._crit_edge423:                                   ; preds = %.loopexit352, %.preheader355
  %i.yt = add nuw nsw i32 %.0274426, 1            ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 8
  %exitcond496.not = icmp eq i32 %i.yt, %i.m
  br i1 %exitcond496.not, label %.preheader349, label %bb.g, !llvm.loop !292

.preheader349:                                    ; preds = %._crit_edge423, %.preheader356
  br i1 %i.ag, label %.lr.ph441.preheader, label %.sink.split

.lr.ph441.preheader:                              ; preds = %.preheader349
  %wide.trip.count506 = zext nneg i32 %i.e to i64
  br label %.lr.ph441

.lr.ph441:                                        ; preds = %.lr.ph441.preheader, %.loopexit
  %indvars.iv503 = phi i64 [ 0, %.lr.ph441.preheader ], [ %indvars.iv.next504, %.loopexit ] ; 2 uses
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv503
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !123 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 416
  %i.yx = load i32, ptr %i.yw, align 32, !tbaa !64
  %.not295 = icmp eq i32 %i.yx, 2
  br i1 %.not295, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.lr.ph441
  %i.yy = load i32, ptr %i.j, align 4, !tbaa !178 ; 2 uses
  %i.yz = icmp sgt i32 %i.yy, 0
  br i1 %i.yz, label %.lr.ph439, label %.loopexit

.lr.ph439:                                        ; preds = %.preheader
  %i.za = getelementptr inbounds nuw i8, ptr %i.yv, i64 392
  %i.zb = load i32, ptr %i.f, align 8, !tbaa !177 ; 2 uses
  %i.zc = icmp sgt i32 %i.zb, 0
  br i1 %i.zc, label %.lr.ph439.split, label %.loopexit

.lr.ph439.splitthread-pre-split:                  ; preds = %._crit_edge437
  %.pr = load i32, ptr %i.f, align 8, !tbaa !177
  br label %.lr.ph439.split

.lr.ph439.split:                                  ; preds = %.lr.ph439, %.lr.ph439.splitthread-pre-split
  %i.zd = phi i32 [ %.pr, %.lr.ph439.splitthread-pre-split ], [ %i.zb, %.lr.ph439 ] ; 2 uses
  %i.ze = phi i32 [ %i.zk, %.lr.ph439.splitthread-pre-split ], [ %i.yy, %.lr.ph439 ]
  %indvars.iv500 = phi i64 [ %indvars.iv.next501, %.lr.ph439.splitthread-pre-split ], [ 0, %.lr.ph439 ] ; 2 uses
  %i.zf = load ptr, ptr %i.za, align 8, !tbaa !115
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %indvars.iv500
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !97 ; 2 uses
  %i.zi = icmp sgt i32 %i.zd, 0
  br i1 %i.zi, label %.lr.ph436.preheader, label %._crit_edge437

.lr.ph436.preheader:                              ; preds = %.lr.ph439.split
  %i.zj = zext nneg i32 %i.zd to i64
  br label %.lr.ph436

._crit_edge437.loopexit:                          ; preds = %half_to_float.exit307
  %.pre = load i32, ptr %i.j, align 4, !tbaa !178
  br label %._crit_edge437

._crit_edge437:                                   ; preds = %._crit_edge437.loopexit, %.lr.ph439.split
  %i.zk = phi i32 [ %.pre, %._crit_edge437.loopexit ], [ %i.ze, %.lr.ph439.split ] ; 2 uses
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %i.zl = sext i32 %i.zk to i64
  %i.zm = icmp slt i64 %indvars.iv.next501, %i.zl
  br i1 %i.zm, label %.lr.ph439.splitthread-pre-split, label %.loopexit, !llvm.loop !293

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %half_to_float.exit307
  %indvars.iv497 = phi i64 [ %i.zj, %.lr.ph436.preheader ], [ %indvars.iv.next498, %half_to_float.exit307 ] ; 2 uses
  %indvars.iv.next498 = add nsw i64 %indvars.iv497, -1 ; 3 uses
  %i.zn = shl nuw nsw i64 %indvars.iv.next498, 1
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.zn
  %.val = load i16, ptr %i.zo, align 1            ; 2 uses
  %i.zp = zext i16 %.val to i32
  %i.zq = shl nuw nsw i32 %i.zp, 13
  %i.zr = and i32 %i.zq, 268427264                ; 6 uses
  %.signext.i.i304 = sext i16 %.val to i32
  %i.zs = and i32 %.signext.i.i304, -2147483648   ; 3 uses
  %i.zt = icmp samesign ugt i32 %i.zr, 8388607
  br i1 %i.zt, label %bb.bb, label %bb.be, !prof !188

bb.bb:                                            ; preds = %.lr.ph436
  %i.zu = or disjoint i32 %i.zr, %i.zs            ; 2 uses
  %i.zv = icmp samesign ult i32 %i.zr, 260046848
  br i1 %i.zv, label %bb.bc, label %bb.bd, !prof !188

bb.bc:                                            ; preds = %bb.bb
  %i.zw = add nuw nsw i32 %i.zu, 939524096
  br label %half_to_float.exit307

bb.bd:                                            ; preds = %bb.bb
  %i.zx = or i32 %i.zu, 2139095040
  br label %half_to_float.exit307

bb.be:                                            ; preds = %.lr.ph436
  %.not.i.i305 = icmp eq i32 %i.zr, 0
  br i1 %.not.i.i305, label %half_to_float.exit307, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.zy = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.zr, i1 true)
  %i.zz = add nsw i32 %i.zy, -8                   ; 2 uses
  %i.aaa = shl i32 %i.zr, %i.zz
  %i.aab = or i32 %i.zs, %i.aaa
  %i.aac = or i32 %i.aab, 947912704
  %i.aad = shl nuw nsw i32 %i.zz, 23
  %i.aae = sub nuw i32 %i.aac, %i.aad
  br label %half_to_float.exit307

half_to_float.exit307:                            ; preds = %bb.bc, %bb.bd, %bb.be, %bb.bf
  %.sroa.0.0.i.i306 = phi i32 [ %i.zw, %bb.bc ], [ %i.zx, %bb.bd ], [ %i.aae, %bb.bf ], [ %i.zs, %bb.be ]
  %i.aaf = shl nuw nsw i64 %indvars.iv.next498, 2
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.aaf
  store i32 %.sroa.0.0.i.i306, ptr %i.aag, align 1
  %i.aah = icmp samesign ugt i64 %indvars.iv497, 1
  br i1 %i.aah, label %.lr.ph436, label %._crit_edge437.loopexit, !llvm.loop !294

.loopexit:                                        ; preds = %._crit_edge437, %.lr.ph439, %.preheader, %.lr.ph441
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %exitcond507.not = icmp eq i64 %indvars.iv.next504, %wide.trip.count506
  br i1 %exitcond507.not, label %.sink.split, label %.lr.ph441, !llvm.loop !295

.sink.split:                                      ; preds = %bb.h, %.loopexit, %.preheader349
  %.7.ph = phi i32 [ 0, %.loopexit ], [ 0, %.preheader349 ], [ 23, %bb.h ]
  tail call void %1(ptr noundef nonnull %i.am) #21
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %._crit_edge, %bb.a
  %.7 = phi i32 [ 23, %bb.a ], [ 1, %._crit_edge ], [ %.7.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.7
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @interleaveByte2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #17 {
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
  br i1 %i.j, label %iter.check291, label %.loopexit

iter.check291:                                    ; preds = %._crit_edge147
  %i.k = sext i32 %i.i to i64                     ; 10 uses
  %wide.trip.count182 = sext i32 %3 to i64        ; 9 uses
  %i.l = sub nsw i64 %wide.trip.count182, %i.k    ; 4 uses
  %min.iters.check274 = icmp ult i64 %i.l, 4
  br i1 %min.iters.check274, label %.lr.ph150.preheader, label %vector.memcheck260

vector.memcheck260:                               ; preds = %iter.check291
  %i.m = shl nsw i64 %i.k, 1
  %scevgep261 = getelementptr i8, ptr %0, i64 %i.m ; 2 uses
  %i.n = shl nsw i64 %wide.trip.count182, 1
  %scevgep262 = getelementptr i8, ptr %0, i64 %i.n ; 2 uses
  %scevgep263 = getelementptr i8, ptr %1, i64 %i.k
  %scevgep264 = getelementptr i8, ptr %1, i64 %wide.trip.count182
  %scevgep265 = getelementptr i8, ptr %2, i64 %i.k
  %scevgep266 = getelementptr i8, ptr %2, i64 %wide.trip.count182
  %bound0267 = icmp ult ptr %scevgep261, %scevgep264
  %bound1268 = icmp ult ptr %scevgep263, %scevgep262
  %found.conflict269 = and i1 %bound0267, %bound1268
  %bound0270 = icmp ult ptr %scevgep261, %scevgep266
  %bound1271 = icmp ult ptr %scevgep265, %scevgep262
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %found.conflict269, %found.conflict272
  br i1 %conflict.rdx273, label %.lr.ph150.preheader, label %vector.main.loop.iter.check275

vector.main.loop.iter.check275:                   ; preds = %vector.memcheck260
  %min.iters.check276 = icmp ult i64 %i.l, 16
  br i1 %min.iters.check276, label %vec.epilog.ph295, label %vector.ph277

vector.ph277:                                     ; preds = %vector.main.loop.iter.check275
  %i.o = and i64 %wide.trip.count182, 15          ; 2 uses
  %n.vec278 = sub nuw nsw i64 %i.l, %i.o          ; 3 uses
  %i.p = add nsw i64 %n.vec278, %i.k
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next287, %vector.body279 ] ; 2 uses
  %i.q = add i64 %index280, %i.k                  ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %wide.load281 = load <8 x i8>, ptr %i.r, align 1, !tbaa !90, !alias.scope !296
  %wide.load282 = load <8 x i8>, ptr %i.s, align 1, !tbaa !90, !alias.scope !296
  %i.t = shl nsw i64 %i.q, 1
  %i.u = shl i64 %i.q, 1
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.t
  %i.w = getelementptr i8, ptr %0, i64 %i.u
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.q ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
end_hunk_1
begin_hunk_2_@interleaveByte2:bb.a
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next170
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !90
  %i.gm = shl nuw nsw i64 %indvars.iv.next170, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 %i.gm ; 2 uses
  store i8 %i.gl, ptr %i.gn, align 1, !tbaa !90
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next170
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !90
  %i.gq = getelementptr i8, ptr %i.gn, i64 1
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !90
  %indvars.iv.next170.1 = add nuw nsw i64 %indvars.iv169, 2 ; 2 uses
  %exitcond173.not.1 = icmp eq i64 %indvars.iv.next170.1, %wide.trip.count172
  br i1 %exitcond173.not.1, label %.loopexit, label %.lr.ph144, !llvm.loop !321

._crit_edge:                                      ; preds = %.lr.ph, %.preheader129
  %i.gr = shl nsw i32 %i.d, 4                     ; 2 uses
  %i.gs = icmp slt i32 %i.gr, %3
  br i1 %i.gs, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %._crit_edge
  %i.gt = sext i32 %i.gr to i64                   ; 10 uses
  %wide.trip.count157 = sext i32 %3 to i64        ; 9 uses
  %i.gu = sub nsw i64 %wide.trip.count157, %i.gt  ; 4 uses
  %min.iters.check = icmp ult i64 %i.gu, 4
  br i1 %min.iters.check, label %.lr.ph133.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gv = shl nsw i64 %i.gt, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.gv  ; 2 uses
  %i.gw = shl nsw i64 %wide.trip.count157, 1
  %scevgep193 = getelementptr i8, ptr %0, i64 %i.gw ; 2 uses
  %scevgep194 = getelementptr i8, ptr %1, i64 %i.gt
  %scevgep195 = getelementptr i8, ptr %1, i64 %wide.trip.count157
  %scevgep196 = getelementptr i8, ptr %2, i64 %i.gt
  %scevgep197 = getelementptr i8, ptr %2, i64 %wide.trip.count157
  %bound0 = icmp ult ptr %scevgep, %scevgep195
  %bound1 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict = and i1 %bound0, %bound1
  %bound0198 = icmp ult ptr %scevgep, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep193
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx = or i1 %found.conflict, %found.conflict200
  br i1 %conflict.rdx, label %.lr.ph133.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check201 = icmp ult i64 %i.gu, 16
  br i1 %min.iters.check201, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gx = and i64 %wide.trip.count157, 15         ; 2 uses
  %n.vec = sub nuw nsw i64 %i.gu, %i.gx           ; 3 uses
  %i.gy = add nsw i64 %n.vec, %i.gt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gz = add i64 %index, %i.gt                   ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %1, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %wide.load = load <8 x i8>, ptr %i.ha, align 1, !tbaa !90, !alias.scope !322
  %wide.load202 = load <8 x i8>, ptr %i.hb, align 1, !tbaa !90, !alias.scope !322
  %i.hc = shl nsw i64 %i.gz, 1
  %i.hd = shl i64 %i.gz, 1
  %i.he = getelementptr inbounds i8, ptr %0, i64 %i.hc
  %i.hf = getelementptr i8, ptr %0, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 16
  %i.hh = getelementptr inbounds i8, ptr %2, i64 %i.gz ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %wide.load203 = load <8 x i8>, ptr %i.hh, align 1, !tbaa !90, !alias.scope !325
  %wide.load204 = load <8 x i8>, ptr %i.hi, align 1, !tbaa !90, !alias.scope !325
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> %wide.load203, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.he, align 1, !tbaa !90, !alias.scope !327, !noalias !329
  %interleaved.vec205 = shufflevector <8 x i8> %wide.load202, <8 x i8> %wide.load204, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec205, ptr %i.hg, align 1, !tbaa !90, !alias.scope !327, !noalias !329
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !330

middle.block:                                     ; preds = %vector.body
  %i.hk = and i32 %3, 15
  %cmp.n = icmp eq i32 %i.hk, 0
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.gx, 4
  br i1 %min.epilog.iters.check, label %.lr.ph133.preheader, label %vec.epilog.ph, !prof !305

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.hl = and i64 %wide.trip.count157, 3
  %n.vec206 = sub nsw i64 %i.gu, %i.hl            ; 2 uses
  %i.hm = add nsw i64 %n.vec206, %i.gt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index207 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next211, %vec.epilog.vector.body ] ; 2 uses
  %i.hn = add i64 %index207, %i.gt                ; 3 uses
  %i.ho = getelementptr inbounds i8, ptr %1, i64 %i.hn
  %wide.load208 = load <4 x i8>, ptr %i.ho, align 1, !tbaa !90, !alias.scope !322
  %i.hp = shl nsw i64 %i.hn, 1
  %i.hq = getelementptr inbounds i8, ptr %0, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %2, i64 %i.hn
  %wide.load209 = load <4 x i8>, ptr %i.hr, align 1, !tbaa !90, !alias.scope !325
  %interleaved.vec210 = shufflevector <4 x i8> %wide.load208, <4 x i8> %wide.load209, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec210, ptr %i.hq, align 1, !tbaa !90, !alias.scope !327, !noalias !329
  %index.next211 = add nuw i64 %index207, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.hs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !331

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ht = and i32 %3, 3
  %cmp.n212 = icmp eq i32 %i.ht, 0
  br i1 %cmp.n212, label %.loopexit, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv154.ph = phi i64 [ %i.gt, %iter.check ], [ %i.gt, %vector.memcheck ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hm, %vec.epilog.middle.block ] ; 7 uses
  %i.hu = sub nsw i64 %wide.trip.count157, %indvars.iv154.ph
  %xtraiter = and i64 %i.hu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph133.prol.loopexit, label %.lr.ph133.prol

.lr.ph133.prol:                                   ; preds = %.lr.ph133.preheader
  %i.hv = getelementptr inbounds i8, ptr %1, i64 %indvars.iv154.ph
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !90
  %i.hx = shl nsw i64 %indvars.iv154.ph, 1
  %i.hy = getelementptr inbounds i8, ptr %0, i64 %i.hx ; 2 uses
  store i8 %i.hw, ptr %i.hy, align 1, !tbaa !90
  %i.hz = getelementptr inbounds i8, ptr %2, i64 %indvars.iv154.ph
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !90
  %i.ib = getelementptr i8, ptr %i.hy, i64 1
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !90
  %indvars.iv.next155.prol = add nsw i64 %indvars.iv154.ph, 1
  br label %.lr.ph133.prol.loopexit

.lr.ph133.prol.loopexit:                          ; preds = %.lr.ph133.prol, %.lr.ph133.preheader
  %indvars.iv154.unr = phi i64 [ %indvars.iv154.ph, %.lr.ph133.preheader ], [ %indvars.iv.next155.prol, %.lr.ph133.prol ]
  %i.ic = add nsw i64 %wide.trip.count157, -1
  %i.id = icmp eq i64 %indvars.iv154.ph, %i.ic
  br i1 %i.id, label %.loopexit, label %.lr.ph133

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.if = load <16 x i8>, ptr %i.ie, align 1, !tbaa !90 ; 2 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.ih = load <16 x i8>, ptr %i.ig, align 1, !tbaa !90 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.ij = shufflevector <16 x i8> %i.if, <16 x i8> %i.ih, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ij, ptr %i.ii, align 1, !tbaa !90
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.il = shufflevector <16 x i8> %i.if, <16 x i8> %i.ih, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.il, ptr %i.ik, align 1, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !332

.lr.ph133:                                        ; preds = %.lr.ph133.prol.loopexit, %.lr.ph133
  %indvars.iv154 = phi i64 [ %indvars.iv.next155.1, %.lr.ph133 ], [ %indvars.iv154.unr, %.lr.ph133.prol.loopexit ] ; 5 uses
  %i.im = getelementptr inbounds i8, ptr %1, i64 %indvars.iv154
  %i.in = load i8, ptr %i.im, align 1, !tbaa !90
  %i.io = shl nsw i64 %indvars.iv154, 1
  %i.ip = getelementptr inbounds i8, ptr %0, i64 %i.io ; 2 uses
  store i8 %i.in, ptr %i.ip, align 1, !tbaa !90
  %i.iq = getelementptr inbounds i8, ptr %2, i64 %indvars.iv154
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !90
  %i.is = getelementptr i8, ptr %i.ip, i64 1
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !90
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 3 uses
  %i.it = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next155
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !90
  %i.iv = shl nsw i64 %indvars.iv.next155, 1
  %i.iw = getelementptr inbounds i8, ptr %0, i64 %i.iv ; 2 uses
  store i8 %i.iu, ptr %i.iw, align 1, !tbaa !90
  %i.ix = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next155
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !90
  %i.iz = getelementptr i8, ptr %i.iw, i64 1
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !90
  %indvars.iv.next155.1 = add nsw i64 %indvars.iv154, 2 ; 2 uses
  %exitcond158.not.1 = icmp eq i64 %indvars.iv.next155.1, %wide.trip.count157
  br i1 %exitcond158.not.1, label %.loopexit, label %.lr.ph133, !llvm.loop !333

.loopexit:                                        ; preds = %.lr.ph133.prol.loopexit, %.lr.ph133, %.lr.ph144.prol.loopexit, %.lr.ph144, %.lr.ph150.prol.loopexit, %.lr.ph150, %middle.block, %vec.epilog.middle.block, %middle.block242, %vec.epilog.middle.block257, %middle.block288, %vec.epilog.middle.block303, %bb.c, %._crit_edge, %._crit_edge141, %._crit_edge147, %._crit_edge137
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.ctpop.v2i16(<2 x i16>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { nounwind memory(none) }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 54}
!9 = !{!"_exr_encode_pipeline", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !11, i64 96, !11, i64 104, !10, i64 112, !10, i64 120, !15, i64 128, !10, i64 136, !11, i64 144, !10, i64 152, !10, i64 160, !11, i64 168, !10, i64 176, !10, i64 184, !11, i64 192, !10, i64 200, !11, i64 208, !10, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !6, i64 272}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!"p1 _ZTS19_priv_exr_context_t", !11, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{i64 2152673057, i64 2152673139, i64 2152673220}
!18 = !{i64 2152673433, i64 2152673515, i64 2152673596}
!19 = !{i64 5169670}
!20 = !{!21, !5, i64 16}
!21 = !{!"_DwaCompressor", !22, i64 0, !23, i64 8, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 32, !5, i64 40, !5, i64 44, !24, i64 48, !25, i64 56, !11, i64 64, !26, i64 72, !10, i64 80, !27, i64 88, !10, i64 96, !27, i64 104, !10, i64 112, !27, i64 120, !10, i64 128, !6, i64 136, !6, i64 160, !11, i64 184, !11, i64 192, !5, i64 200, !28, i64 204}
!22 = !{!"p1 _ZTS20_exr_encode_pipeline", !11, i64 0}
!23 = !{!"p1 _ZTS20_exr_decode_pipeline", !11, i64 0}
!24 = !{!"p1 _ZTS12_ChannelData", !11, i64 0}
!25 = !{!"p1 _ZTS14_CscChannelSet", !11, i64 0}
!26 = !{!"p1 _ZTS11_Classifier", !11, i64 0}
!27 = !{!"p1 omnipotent char", !11, i64 0}
!28 = !{!"float", !6, i64 0}
!29 = !{!21, !22, i64 0}
!30 = !{!21, !23, i64 8}
!31 = !{!9, !13, i64 24}
!32 = !{!33, !11, i64 88}
!33 = !{!"_priv_exr_context_t", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !34, i64 8, !34, i64 24, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !28, i64 124, !11, i64 128, !11, i64 136, !11, i64 144, !10, i64 152, !11, i64 160, !11, i64 168, !10, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !35, i64 200, !40, i64 464, !41, i64 472, !36, i64 480, !6, i64 504, !6, i64 544, !6, i64 545, !6, i64 546, !5, i64 548}
!34 = !{!"", !5, i64 0, !5, i64 4, !27, i64 8}
!35 = !{!"_priv_exr_part_t", !5, i64 0, !5, i64 4, !36, i64 8, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !38, i64 144, !38, i64 160, !5, i64 176, !5, i64 180, !5, i64 184, !28, i64 188, !5, i64 192, !5, i64 196, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !10, i64 232, !12, i64 240, !12, i64 242, !5, i64 244, !10, i64 248, !6, i64 256}
!36 = !{!"exr_attribute_list", !5, i64 0, !5, i64 4, !37, i64 8, !37, i64 16}
!37 = !{!"any p2 pointer", !11, i64 0}
!38 = !{!"", !39, i64 0, !39, i64 8}
!39 = !{!"", !5, i64 0, !5, i64 4}
!40 = !{!"p1 _ZTS16_priv_exr_part_t", !11, i64 0}
!41 = !{!"p2 _ZTS16_priv_exr_part_t", !37, i64 0}
!42 = !{!33, !11, i64 96}
!43 = !{!21, !11, i64 184}
!44 = !{!21, !11, i64 192}
!45 = !{!9, !12, i64 16}
!46 = !{!21, !24, i64 48}
!47 = !{!21, !5, i64 40}
!48 = !{!9, !5, i64 44}
!49 = !{!21, !5, i64 20}
!50 = !{!9, !5, i64 36}
!51 = !{!5, !5, i64 0}
!52 = !{!9, !5, i64 40}
!53 = !{!9, !5, i64 48}
!54 = !{!9, !5, i64 20}
!55 = !{!9, !11, i64 8}
!56 = !{!57, !11, i64 448}
!57 = !{!"_ChannelData", !58, i64 0, !11, i64 448, !27, i64 456, !27, i64 464, !6, i64 472, !6, i64 504, !10, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !6, i64 556}
!58 = !{!"_DctCoderChannelData", !6, i64 0, !6, i64 256, !59, i64 384, !60, i64 392, !10, i64 400, !10, i64 408, !5, i64 416, !6, i64 420}
!59 = !{!"p1 short", !11, i64 0}
!60 = !{!"p2 omnipotent char", !37, i64 0}
!61 = !{!57, !5, i64 548}
!62 = !{!63, !12, i64 26}
!63 = !{!"", !27, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 25, !12, i64 26, !12, i64 28, !12, i64 30, !5, i64 32, !5, i64 36, !6, i64 40}
!64 = !{!58, !5, i64 416}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!68, !13, i64 24}
!68 = !{!"_exr_decode_pipeline", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !5, i64 96, !5, i64 100, !10, i64 104, !11, i64 112, !11, i64 120, !10, i64 128, !11, i64 136, !10, i64 144, !11, i64 152, !10, i64 160, !15, i64 168, !10, i64 176, !11, i64 184, !10, i64 192, !11, i64 200, !10, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !6, i64 264}
!69 = !{!68, !12, i64 16}
!70 = !{!68, !11, i64 8}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !{!68, !5, i64 44}
!74 = !{!68, !5, i64 36}
!75 = !{!68, !5, i64 40}
!76 = !{!68, !5, i64 48}
!77 = distinct !{!77, !66}
!78 = !{!10, !10, i64 0}
!79 = !{!21, !26, i64 72}
!80 = !{!21, !10, i64 80}
!81 = !{!9, !10, i64 184}
!82 = !{!9, !11, i64 168}
!83 = !{!84, !5, i64 12}
!84 = !{!"_Classifier", !27, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 20, !12, i64 22}
!85 = !{!63, !27, i64 0}
!86 = !{!84, !12, i64 20}
!87 = !{!84, !27, i64 0}
!88 = !{!84, !5, i64 16}
!89 = !{!84, !5, i64 8}
!90 = !{!6, !6, i64 0}
!91 = distinct !{!91, !66}
!92 = distinct !{!92, !66, !93}
!93 = !{!"llvm.loop.unswitch.partial.disable"}
!94 = !{!12, !12, i64 0}
!95 = !{!21, !27, i64 88}
!96 = !{!21, !27, i64 104}
!97 = !{!27, !27, i64 0}
!98 = !{!63, !5, i64 12}
!99 = !{!63, !5, i64 8}
!100 = !{!63, !6, i64 25}
!101 = !{!57, !10, i64 536}
!102 = !{!57, !27, i64 456}
!103 = !{!57, !27, i64 464}
!104 = distinct !{!104, !66}
!105 = distinct !{!105, !72}
!106 = !{!57, !5, i64 552}
!107 = distinct !{!107, !66}
!108 = !{!57, !5, i64 544}
!109 = distinct !{!109, !72}
!110 = !{!9, !11, i64 104}
!111 = distinct !{!111, !66}
!112 = !{!63, !5, i64 20}
!113 = !{!58, !10, i64 408}
!114 = !{!58, !10, i64 400}
!115 = !{!58, !60, i64 392}
!116 = !{ptr @DctCoderChannelData_push_row}
!117 = distinct !{!117, !66}
!118 = distinct !{!118, !66, !93}
!119 = !{!21, !5, i64 44}
!120 = !{!21, !25, i64 56}
!121 = !{!21, !28, i64 204}
!122 = !{!59, !59, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"p1 _ZTS20_DctCoderChannelData", !11, i64 0}
!125 = !{!126, !5, i64 48}
!126 = !{!"_LossyDctEncoder", !59, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !5, i64 48, !5, i64 52, !5, i64 56, !28, i64 60, !27, i64 64, !27, i64 72, !6, i64 80, !6, i64 336, !6, i64 464, !6, i64 720}
!127 = distinct !{!127, !66}
!128 = distinct !{!128, !66}
!129 = !{!63, !6, i64 24}
!130 = distinct !{!130, !66, !93}
!131 = distinct !{!131, !66}
!132 = distinct !{!132, !66}
!133 = distinct !{!133, !66}
!134 = distinct !{!134, !66}
!135 = !{!9, !11, i64 192}
!136 = !{!9, !10, i64 200}
!137 = !{!9, !10, i64 120}
!138 = !{!9, !10, i64 176}
!139 = !{!21, !5, i64 200}
!140 = !{!21, !27, i64 120}
!141 = !{!21, !10, i64 128}
!142 = !{!9, !10, i64 112}
!143 = !{!21, !11, i64 64}
!144 = distinct !{null}
!145 = distinct !{!145, !66}
!146 = !{!84, !12, i64 22}
!147 = distinct !{null}
!148 = distinct !{!148, !66}
!149 = !{!68, !10, i64 104}
!150 = distinct !{!150, !66}
!151 = distinct !{null, null}
!152 = distinct !{null, null}
!153 = distinct !{!153, !66}
!154 = distinct !{null}
!155 = distinct !{!155, !66}
!156 = !{!68, !11, i64 136}
!157 = !{!68, !10, i64 144}
!158 = !{!21, !10, i64 96}
end_hunk_2
