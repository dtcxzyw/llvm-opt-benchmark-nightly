Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/kwajd?download=true
inline.NumInlined: 15
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@lzh_read_lens:bb.a
  switch i32 %1, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %.preheader353.a
    i32 2, label %.preheader361.a
    i32 3, label %.preheader365
  ]

.preheader365:                                    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7092 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader363

.preheader361.a:                                  ; preds = %bb.a
  %i.l = icmp slt i32 %i.h, 4
  br i1 %i.l, label %.lr.ph452, label %._crit_edge453

.lr.ph452:                                        ; preds = %.preheader361.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7092 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ai

.preheader353.a:                                  ; preds = %bb.a
  %i.p = icmp slt i32 %i.h, 4
  br i1 %i.p, label %.lr.ph488, label %._crit_edge489

.lr.ph488:                                        ; preds = %.preheader353.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7092 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.c [
    i32 16, label %.loopexit.loopexit
    i32 32, label %.fold.split
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %2, 64
  %i.u = icmp eq i32 %2, 256
  %i.v = select i1 %i.u, i8 8, i8 0
  %i.w = select i1 %i.t, i8 6, i8 %i.v
  br label %.loopexit.loopexit

.fold.split:                                      ; preds = %bb.b
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.b, %.fold.split, %bb.c
  %i.x = phi i8 [ 4, %bb.b ], [ %i.w, %bb.c ], [ 5, %.fold.split ]
  %i.y = zext nneg i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %3, i8 %i.x, i64 %i.y, i1 false), !tbaa !28
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph488, %bb.j
  %.0197487 = phi i32 [ %i.h, %.lr.ph488 ], [ %i.aq, %bb.j ] ; 3 uses
  %.0201486 = phi i32 [ %i.f, %.lr.ph488 ], [ %i.ap, %bb.j ]
  %.0215485 = phi ptr [ %i.d, %.lr.ph488 ], [ %.1216, %bb.j ] ; 2 uses
  %.0229484 = phi ptr [ %i.b, %.lr.ph488 ], [ %i.ak, %bb.j ] ; 2 uses
  %.not294 = icmp ult ptr %.0229484, %.0215485
  br i1 %.not294, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.z, 8
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.af = tail call i32 %i.ad(ptr noundef %i.ae, ptr noundef nonnull %i.r, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %lzh_read_input.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %bb.f
  %.sink = phi i32 [ %i.aa, %bb.f ], [ 8, %bb.h ]
  store i32 %.sink, ptr %i.q, align 8, !tbaa !44
  store i8 0, ptr %i.r, align 4, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.0.i = phi i32 [ %i.af, %bb.h ], [ 1, %.sink.split ]
  store ptr %i.r, ptr %i.a, align 8, !tbaa !40
  %i.ai = zext nneg i32 %.0.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ai ; 2 uses
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.1230 = phi ptr [ %i.r, %bb.i ], [ %.0229484, %bb.d ] ; 2 uses
  %.1216 = phi ptr [ %i.aj, %bb.i ], [ %.0215485, %bb.d ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1230, i64 1 ; 2 uses
  %i.al = load i8, ptr %.1230, align 1, !tbaa !28
  %i.am = zext i8 %i.al to i32
  %i.an = sub i32 24, %.0197487
  %i.ao = shl i32 %i.am, %i.an
  %i.ap = or i32 %i.ao, %.0201486                 ; 2 uses
  %i.aq = add nsw i32 %.0197487, 8                ; 2 uses
  %i.ar = icmp slt i32 %.0197487, -4
  br i1 %i.ar, label %bb.d, label %._crit_edge489

._crit_edge489:                                   ; preds = %bb.j, %.preheader353.a
  %.0229.lcssa = phi ptr [ %i.b, %.preheader353.a ], [ %i.ak, %bb.j ]
  %.0215.lcssa = phi ptr [ %i.d, %.preheader353.a ], [ %.1216, %bb.j ]
  %.0201.lcssa = phi i32 [ %i.f, %.preheader353.a ], [ %i.ap, %bb.j ] ; 2 uses
  %.0197.lcssa = phi i32 [ %i.h, %.preheader353.a ], [ %i.aq, %bb.j ]
  %i.as = add nsw i32 %.0197.lcssa, -4            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %.not282 = icmp ne i32 %i.au, 0
  %i.av = icmp slt i32 %i.as, %i.au
  %or.cond = select i1 %.not282, i1 %i.av, i1 false
  br i1 %or.cond, label %lzh_read_input.exit, label %.split

.split:                                           ; preds = %._crit_edge489
  %i.aw = shl i32 %.0201.lcssa, 4
  %i.ax = lshr i32 %.0201.lcssa, 28               ; 2 uses
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  store i8 %i.ay, ptr %3, align 1, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 7092 ; 17 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count614 = zext nneg i32 %2 to i64
  br label %.preheader349

.preheader349:                                    ; preds = %.split, %bb.ah
  %indvars.iv611 = phi i64 [ 1, %.split ], [ %indvars.iv.next612, %bb.ah ] ; 2 uses
  %.0570 = phi i32 [ %i.ax, %.split ], [ %.0570.sink, %bb.ah ] ; 2 uses
  %.1198568 = phi i32 [ %i.as, %.split ], [ %.5, %bb.ah ] ; 2 uses
  %.1202567 = phi i32 [ %i.aw, %.split ], [ %.5206, %bb.ah ] ; 2 uses
  %.2217566 = phi ptr [ %.0215.lcssa, %.split ], [ %.9224, %bb.ah ] ; 3 uses
  %.2231565 = phi ptr [ %.0229.lcssa, %.split ], [ %.9238, %bb.ah ] ; 3 uses
  %i.bb = icmp slt i32 %.1198568, 1
  br i1 %i.bb, label %.lr.ph497, label %bb.p

.lr.ph497:                                        ; preds = %.preheader349
  %.not292 = icmp ult ptr %.2231565, %.2217566
  br i1 %.not292, label %._crit_edge498, label %bb.k

bb.k:                                             ; preds = %.lr.ph497
  %i.bc = load i32, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %.not.i303 = icmp eq i32 %i.bc, 0
  br i1 %.not.i303, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %i.bc, 8
  br label %.sink.split676.a

bb.m:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %0, align 8, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bi = tail call i32 %i.bg(ptr noundef %i.bh, ptr noundef nonnull %i.az, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %lzh_read_input.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp eq i32 %i.bi, 0
  br i1 %i.bk, label %.sink.split676.a, label %bb.o

.sink.split676.a:                                 ; preds = %bb.n, %bb.l
  %.sink677.a = phi i32 [ %i.bd, %bb.l ], [ 8, %bb.n ]
  store i32 %.sink677.a, ptr %i.at, align 8, !tbaa !44
  store i8 0, ptr %i.az, align 4, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %.sink.split676.a, %bb.n
  %.0.i304 = phi i32 [ %i.bi, %bb.n ], [ 1, %.sink.split676.a ]
  store ptr %i.az, ptr %i.a, align 8, !tbaa !40
  %i.bl = zext nneg i32 %.0.i304 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bl ; 2 uses
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !41
  br label %._crit_edge498

._crit_edge498:                                   ; preds = %bb.o, %.lr.ph497
  %.4233 = phi ptr [ %i.az, %bb.o ], [ %.2231565, %.lr.ph497 ] ; 2 uses
  %.4219 = phi ptr [ %i.bm, %bb.o ], [ %.2217566, %.lr.ph497 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.4233, i64 1
  %i.bo = load i8, ptr %.4233, align 1, !tbaa !28
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw i32 %i.bp, 24
  %i.br = or i32 %i.bq, %.1202567
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge498, %.preheader349
  %.3232.lcssa = phi ptr [ %i.bn, %._crit_edge498 ], [ %.2231565, %.preheader349 ] ; 4 uses
  %.3218.lcssa = phi ptr [ %.4219, %._crit_edge498 ], [ %.2217566, %.preheader349 ] ; 4 uses
  %.2203.lcssa = phi i32 [ %i.br, %._crit_edge498 ], [ %.1202567, %.preheader349 ] ; 2 uses
  %.2199.lcssa = phi i32 [ 8, %._crit_edge498 ], [ %.1198568, %.preheader349 ] ; 2 uses
  %i.bs = shl i32 %.2203.lcssa, 1                 ; 3 uses
  %i.bt = add nsw i32 %.2199.lcssa, -1            ; 3 uses
  %i.bu = load i32, ptr %i.at, align 8, !tbaa !44 ; 5 uses
  %.not284 = icmp sgt i32 %.2199.lcssa, %i.bu
  br i1 %.not284, label %bb.q, label %lzh_read_input.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = icmp sgt i32 %.2203.lcssa, -1
  br i1 %i.bv, label %bb.ah, label %.preheader347

.preheader347:                                    ; preds = %bb.q
  %i.bw = icmp eq i32 %i.bt, 0
  br i1 %i.bw, label %.lr.ph531, label %bb.x

.lr.ph531:                                        ; preds = %.preheader347
  %.not290 = icmp ult ptr %.3232.lcssa, %.3218.lcssa
  br i1 %.not290, label %._crit_edge532, label %bb.r

bb.r:                                             ; preds = %.lr.ph531
  %.not.i307 = icmp eq i32 %i.bu, 0
  br i1 %.not.i307, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = add nsw i32 %i.bu, 8                    ; 2 uses
  store i32 %i.bx, ptr %i.at, align 8, !tbaa !44
  store i8 0, ptr %i.az, align 4, !tbaa !28
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %0, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !25
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.cc = tail call i32 %i.ca(ptr noundef %i.cb, ptr noundef nonnull %i.az, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %lzh_read_input.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = icmp eq i32 %i.cc, 0
  br i1 %i.ce, label %bb.v, label %._crit_edge623.a

._crit_edge623.a:                                 ; preds = %bb.u
  %.pre619.pre.pre = load i32, ptr %i.at, align 8, !tbaa !44
  %i.cf = zext nneg i32 %i.cc to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 8, ptr %i.at, align 8, !tbaa !44
  store i8 0, ptr %i.az, align 4, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge623.a, %bb.s, %bb.v
  %.pre619.pre = phi i32 [ %i.bx, %bb.s ], [ 8, %bb.v ], [ %.pre619.pre.pre, %._crit_edge623.a ]
  %.0.i308 = phi i64 [ 1, %bb.s ], [ 1, %bb.v ], [ %i.cf, %._crit_edge623.a ]
  store ptr %i.az, ptr %i.a, align 8, !tbaa !40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.i308 ; 2 uses
  store ptr %i.cg, ptr %i.c, align 8, !tbaa !41
  br label %._crit_edge532

._crit_edge532:                                   ; preds = %bb.w, %.lr.ph531
  %.pre619 = phi i32 [ %.pre619.pre, %bb.w ], [ %i.bu, %.lr.ph531 ]
  %.6235 = phi ptr [ %i.az, %bb.w ], [ %.3232.lcssa, %.lr.ph531 ] ; 2 uses
  %.6221 = phi ptr [ %i.cg, %bb.w ], [ %.3218.lcssa, %.lr.ph531 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.6235, i64 1
  %i.ci = load i8, ptr %.6235, align 1, !tbaa !28
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw i32 %i.cj, 24
  %i.cl = or i32 %i.ck, %i.bs
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge532, %.preheader347
  %i.cm = phi i32 [ %.pre619, %._crit_edge532 ], [ %i.bu, %.preheader347 ] ; 5 uses
  %.5234.lcssa = phi ptr [ %i.ch, %._crit_edge532 ], [ %.3232.lcssa, %.preheader347 ] ; 4 uses
  %.5220.lcssa = phi ptr [ %.6221, %._crit_edge532 ], [ %.3218.lcssa, %.preheader347 ] ; 4 uses
  %.3204.lcssa = phi i32 [ %i.cl, %._crit_edge532 ], [ %i.bs, %.preheader347 ] ; 2 uses
  %.3200.lcssa = phi i32 [ 8, %._crit_edge532 ], [ %i.bt, %.preheader347 ] ; 5 uses
  %i.cn = shl i32 %.3204.lcssa, 1                 ; 3 uses
  %i.co = add nsw i32 %.3200.lcssa, -1            ; 2 uses
  %.not286 = icmp sgt i32 %.3200.lcssa, %i.cm
  br i1 %.not286, label %bb.y, label %lzh_read_input.exit

bb.y:                                             ; preds = %bb.x
  %i.cp = icmp sgt i32 %.3204.lcssa, -1
  br i1 %i.cp, label %bb.z, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.cq = icmp slt i32 %.3200.lcssa, 5
  br i1 %i.cq, label %.lr.ph559.preheader, label %._crit_edge560

.lr.ph559.preheader:                              ; preds = %.preheader
  %i.cr = add nuw nsw i32 %.3200.lcssa, 7
  %.not288 = icmp ult ptr %.5234.lcssa, %.5220.lcssa
  br i1 %.not288, label %._crit_edge560.loopexit, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cs = add i32 %.0570, 1
  br label %bb.ah

bb.aa:                                            ; preds = %.lr.ph559.preheader
  %.not.i311 = icmp eq i32 %i.cm, 0
  br i1 %.not.i311, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = add nsw i32 %i.cm, 8                    ; 2 uses
  store i32 %i.ct, ptr %i.at, align 8, !tbaa !44
  store i8 0, ptr %i.az, align 4, !tbaa !28
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %0, align 8, !tbaa !37
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !25
  %i.cx = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.cy = tail call i32 %i.cw(ptr noundef %i.cx, ptr noundef nonnull %i.az, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %lzh_read_input.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = icmp eq i32 %i.cy, 0
  br i1 %i.da, label %bb.ae, label %._crit_edge625

._crit_edge625:                                   ; preds = %bb.ad
  %.pre620.pre.pre = load i32, ptr %i.at, align 8, !tbaa !44
  %i.db = zext nneg i32 %i.cy to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 8, ptr %i.at, align 8, !tbaa !44
  store i8 0, ptr %i.az, align 4, !tbaa !28
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge625, %bb.ab, %bb.ae
  %.pre620.pre = phi i32 [ %i.ct, %bb.ab ], [ 8, %bb.ae ], [ %.pre620.pre.pre, %._crit_edge625 ]
  %.0.i312 = phi i64 [ 1, %bb.ab ], [ 1, %bb.ae ], [ %i.db, %._crit_edge625 ]
  store ptr %i.az, ptr %i.a, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.i312 ; 2 uses
  store ptr %i.dc, ptr %i.c, align 8, !tbaa !41
  br label %._crit_edge560.loopexit

._crit_edge560.loopexit:                          ; preds = %bb.af, %.lr.ph559.preheader
  %.pre620 = phi i32 [ %.pre620.pre, %bb.af ], [ %i.cm, %.lr.ph559.preheader ]
  %.8237 = phi ptr [ %i.az, %bb.af ], [ %.5234.lcssa, %.lr.ph559.preheader ] ; 2 uses
  %.8223 = phi ptr [ %i.dc, %bb.af ], [ %.5220.lcssa, %.lr.ph559.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.8237, i64 1
  %i.de = load i8, ptr %.8237, align 1, !tbaa !28
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 25, %.3200.lcssa
  %i.dh = shl nuw i32 %i.df, %i.dg
  %i.di = or i32 %i.dh, %i.cn
  br label %._crit_edge560

._crit_edge560:                                   ; preds = %._crit_edge560.loopexit, %.preheader
  %i.dj = phi i32 [ %i.cm, %.preheader ], [ %.pre620, %._crit_edge560.loopexit ] ; 2 uses
  %.7236.lcssa = phi ptr [ %.5234.lcssa, %.preheader ], [ %i.dd, %._crit_edge560.loopexit ]
  %.7222.lcssa = phi ptr [ %.5220.lcssa, %.preheader ], [ %.8223, %._crit_edge560.loopexit ]
  %.4205.lcssa = phi i32 [ %i.cn, %.preheader ], [ %i.di, %._crit_edge560.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %i.co, %.preheader ], [ %i.cr, %._crit_edge560.loopexit ]
  %i.dk = add nsw i32 %.4.lcssa, -4               ; 2 uses
  %.not287 = icmp ne i32 %i.dj, 0
  %i.dl = icmp slt i32 %i.dk, %i.dj
  %or.cond298.a = select i1 %.not287, i1 %i.dl, i1 false
  br i1 %or.cond298.a, label %lzh_read_input.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge560
  %i.dm = shl i32 %.4205.lcssa, 4
  %i.dn = lshr i32 %.4205.lcssa, 28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.q, %bb.ag, %bb.z
  %.0570.sink = phi i32 [ %i.cs, %bb.z ], [ %i.dn, %bb.ag ], [ %.0570, %bb.q ] ; 2 uses
  %.9238 = phi ptr [ %.5234.lcssa, %bb.z ], [ %.7236.lcssa, %bb.ag ], [ %.3232.lcssa, %bb.q ] ; 2 uses
  %.9224 = phi ptr [ %.5220.lcssa, %bb.z ], [ %.7222.lcssa, %bb.ag ], [ %.3218.lcssa, %bb.q ] ; 2 uses
  %.5206 = phi i32 [ %i.cn, %bb.z ], [ %i.dm, %bb.ag ], [ %i.bs, %bb.q ] ; 2 uses
  %.5 = phi i32 [ %i.co, %bb.z ], [ %i.dk, %bb.ag ], [ %i.bt, %bb.q ] ; 2 uses
  %i.do = trunc i32 %.0570.sink to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv611
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !28
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1 ; 2 uses
  %exitcond615.not = icmp eq i64 %indvars.iv.next612, %wide.trip.count614
  br i1 %exitcond615.not, label %.loopexit, label %.preheader349

bb.ai:                                            ; preds = %.lr.ph452, %bb.ao
  %.6451 = phi i32 [ %i.h, %.lr.ph452 ], [ %i.eh, %bb.ao ] ; 3 uses
  %.6207450 = phi i32 [ %i.f, %.lr.ph452 ], [ %i.eg, %bb.ao ]
  %.10225449 = phi ptr [ %i.d, %.lr.ph452 ], [ %.11226, %bb.ao ] ; 2 uses
  %.10239448 = phi ptr [ %i.b, %.lr.ph452 ], [ %i.eb, %bb.ao ] ; 2 uses
  %.not280 = icmp ult ptr %.10239448, %.10225449
  br i1 %.not280, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = load i32, ptr %i.m, align 8, !tbaa !44  ; 2 uses
  %.not.i315 = icmp eq i32 %i.dq, 0
  br i1 %.not.i315, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = add nsw i32 %i.dq, 8
  br label %.sink.split680.a

bb.al:                                            ; preds = %bb.aj
  %i.ds = load ptr, ptr %0, align 8, !tbaa !37
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !25
  %i.dv = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.dw = tail call i32 %i.du(ptr noundef %i.dv, ptr noundef nonnull %i.n, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %lzh_read_input.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dy = icmp eq i32 %i.dw, 0
  br i1 %i.dy, label %.sink.split680.a, label %bb.an

.sink.split680.a:                                 ; preds = %bb.am, %bb.ak
  %.sink681.a = phi i32 [ %i.dr, %bb.ak ], [ 8, %bb.am ]
  store i32 %.sink681.a, ptr %i.m, align 8, !tbaa !44
  store i8 0, ptr %i.n, align 4, !tbaa !28
  br label %bb.an

bb.an:                                            ; preds = %.sink.split680.a, %bb.am
  %.0.i316 = phi i32 [ %i.dw, %bb.am ], [ 1, %.sink.split680.a ]
  store ptr %i.n, ptr %i.a, align 8, !tbaa !40
  %i.dz = zext nneg i32 %.0.i316 to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dz ; 2 uses
  store ptr %i.ea, ptr %i.c, align 8, !tbaa !41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.11240 = phi ptr [ %i.n, %bb.an ], [ %.10239448, %bb.ai ] ; 2 uses
  %.11226 = phi ptr [ %i.ea, %bb.an ], [ %.10225449, %bb.ai ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.11240, i64 1 ; 2 uses
  %i.ec = load i8, ptr %.11240, align 1, !tbaa !28
  %i.ed = zext i8 %i.ec to i32
  %i.ee = sub i32 24, %.6451
  %i.ef = shl i32 %i.ed, %i.ee
  %i.eg = or i32 %i.ef, %.6207450                 ; 2 uses
  %i.eh = add nsw i32 %.6451, 8                   ; 2 uses
  %i.ei = icmp slt i32 %.6451, -4
  br i1 %i.ei, label %bb.ai, label %._crit_edge453

._crit_edge453:                                   ; preds = %bb.ao, %.preheader361.a
  %.10239.lcssa = phi ptr [ %i.b, %.preheader361.a ], [ %i.eb, %bb.ao ]
  %.10225.lcssa = phi ptr [ %i.d, %.preheader361.a ], [ %.11226, %bb.ao ]
  %.6207.lcssa = phi i32 [ %i.f, %.preheader361.a ], [ %i.eg, %bb.ao ] ; 2 uses
  %.6.lcssa = phi i32 [ %i.h, %.preheader361.a ], [ %i.eh, %bb.ao ]
  %i.ej = add nsw i32 %.6.lcssa, -4               ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !44 ; 2 uses
  %.not273 = icmp ne i32 %i.el, 0
  %i.em = icmp slt i32 %i.ej, %i.el
  %or.cond299.a = select i1 %.not273, i1 %i.em, i1 false
  br i1 %or.cond299.a, label %lzh_read_input.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge453
  %i.en = shl i32 %.6207.lcssa, 4
  %i.eo = lshr i32 %.6207.lcssa, 28               ; 2 uses
  %i.ep = trunc nuw nsw i32 %i.eo to i8
  store i8 %i.ep, ptr %3, align 1, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 7092 ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count609 = zext nneg i32 %2 to i64
  br label %.preheader357

.preheader357:                                    ; preds = %bb.ap, %bb.be
  %indvars.iv606 = phi i64 [ 1, %bb.ap ], [ %indvars.iv.next607, %bb.be ] ; 2 uses
  %.2483 = phi i32 [ %i.eo, %bb.ap ], [ %.3, %bb.be ]
  %.7481 = phi i32 [ %i.ej, %bb.ap ], [ %.10, %bb.be ] ; 3 uses
  %.7208480 = phi i32 [ %i.en, %bb.ap ], [ %.10211, %bb.be ] ; 2 uses
  %.12227479 = phi ptr [ %.10225.lcssa, %bb.ap ], [ %.17, %bb.be ] ; 2 uses
  %.12241478 = phi ptr [ %.10239.lcssa, %bb.ap ], [ %.17246, %bb.be ] ; 2 uses
  %i.es = icmp slt i32 %.7481, 2
  br i1 %i.es, label %.lr.ph462, label %._crit_edge463

.lr.ph462:                                        ; preds = %.preheader357, %bb.av
  %.8461 = phi i32 [ %i.fk, %bb.av ], [ %.7481, %.preheader357 ] ; 3 uses
  %.8209460 = phi i32 [ %i.fj, %bb.av ], [ %.7208480, %.preheader357 ]
  %.13228459 = phi ptr [ %.14, %bb.av ], [ %.12227479, %.preheader357 ] ; 2 uses
  %.13242458 = phi ptr [ %i.fe, %bb.av ], [ %.12241478, %.preheader357 ] ; 2 uses
  %.not278 = icmp ult ptr %.13242458, %.13228459
  br i1 %.not278, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph462
  %i.et = load i32, ptr %i.ek, align 8, !tbaa !44 ; 2 uses
  %.not.i319 = icmp eq i32 %i.et, 0
  br i1 %.not.i319, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eu = add nsw i32 %i.et, 8
  br label %.sink.split682.a

bb.as:                                            ; preds = %bb.aq
  %i.ev = load ptr, ptr %0, align 8, !tbaa !37
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !25
  %i.ey = load ptr, ptr %i.er, align 8, !tbaa !38
  %i.ez = tail call i32 %i.ex(ptr noundef %i.ey, ptr noundef nonnull %i.eq, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %lzh_read_input.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fb = icmp eq i32 %i.ez, 0
  br i1 %i.fb, label %.sink.split682.a, label %bb.au

end_hunk_0
