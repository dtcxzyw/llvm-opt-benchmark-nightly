Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/spng?download=true
inline.NumInlined: 350
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@read_chunks:bb.a

bb.k:                                             ; preds = %bb.j
  %or.cond31.i.i = icmp slt i32 %i.bk, 1
  br i1 %or.cond31.i.i, label %read_ihdr.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = icmp ugt i32 %i.ar, %i.cc
  br i1 %i.cf, label %read_ihdr.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = icmp ugt i32 %i.bk, %i.ce
  br i1 %i.cg, label %read_ihdr.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i8 %i.bq, label %read_ihdr.exit.thread [
    i8 0, label %bb.o
    i8 2, label %bb.p
    i8 4, label %bb.p
    i8 6, label %bb.p
    i8 3, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ch = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.bn)
  %i.ci = icmp eq i8 %i.ch, 1
  %i.cj = and i8 %i.bn, 31
  %switch.i.i = icmp ne i8 %i.cj, 0
  %or.cond33.i.i = and i1 %i.ci, %switch.i.i
  br i1 %or.cond33.i.i, label %bb.r, label %read_ihdr.exit.thread

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.n
  switch i8 %i.bn, label %read_ihdr.exit.thread [
    i8 8, label %bb.r
    i8 16, label %bb.r
  ]

bb.q:                                             ; preds = %bb.n
  %i.ck = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.bn)
  %i.cl = icmp eq i8 %i.ck, 1
  %i.cm = and i8 %i.bn, 15
  %switch34.i.i = icmp ne i8 %i.cm, 0
  %or.cond35.i.i = and i1 %i.cl, %switch34.i.i
  br i1 %or.cond35.i.i, label %bb.r, label %read_ihdr.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.p, %bb.o
  %.not29.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not29.i.i, label %bb.s, label %read_ihdr.exit.thread

bb.s:                                             ; preds = %bb.r
  %.not30.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not30.i.i, label %bb.t, label %read_ihdr.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cn = icmp ugt i8 %i.bz, 1
  br i1 %i.cn, label %read_ihdr.exit.thread, label %check_ihdr.exit.i

check_ihdr.exit.i:                                ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = or i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = or i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 8
  %i.cu = icmp ult i8 %i.bn, 8
  br i1 %i.cu, label %read_ihdr.exit, label %bb.u

bb.u:                                             ; preds = %check_ihdr.exit.i
  %i.cv = icmp ult i8 %i.bq, 7
  br i1 %i.cv, label %switch.lookup, label %num_channels.exit.i

switch.lookup:                                    ; preds = %bb.u
  %i.cw = zext nneg i8 %i.bq to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.spng_decoded_image_size, i64 %i.cw
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %num_channels.exit.i

num_channels.exit.i:                              ; preds = %bb.u, %switch.lookup
  %.0.i58.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.u ]
  %i.cx = lshr i8 %i.bn, 3
  %i.cy = zext nneg i8 %i.cx to i32
  %i.cz = mul nuw nsw i32 %.0.i58.i, %i.cy
  br label %read_ihdr.exit

read_ihdr.exit:                                   ; preds = %check_ihdr.exit.i, %num_channels.exit.i
  %.sink.i = phi i32 [ %i.cz, %num_channels.exit.i ], [ 1, %check_ihdr.exit.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i32 %.sink.i, ptr %i.da, align 8, !tbaa !77
  %i.db = tail call fastcc i32 @calculate_subimages(ptr noundef nonnull %0) ; 2 uses
  %.not55 = icmp eq i32 %i.db, 0
  br i1 %.not55, label %.thread, label %read_ihdr.exit.thread

read_ihdr.exit.thread:                            ; preds = %bb.t, %bb.j, %bb.k, %bb.l, %bb.o, %bb.n, %bb.r, %bb.s, %bb.m, %bb.q, %bb.p, %bb.f, %bb.i, %bb.h, %read_data.exit.i, %bb.g, %read_ihdr.exit
  %.0.i96 = phi i32 [ %i.db, %read_ihdr.exit ], [ 13, %bb.t ], [ 5, %bb.j ], [ 6, %bb.k ], [ 7, %bb.l ], [ 9, %bb.o ], [ 10, %bb.n ], [ 11, %bb.r ], [ 12, %bb.s ], [ 8, %bb.m ], [ 9, %bb.q ], [ 9, %bb.p ], [ %spec.store.select.i.i, %bb.f ], [ 15, %bb.i ], [ 14, %bb.h ], [ 4, %read_data.exit.i ], [ 3, %bb.g ]
  store i32 0, ptr %i.a, align 8, !tbaa !50
  br label %.loopexit

bb.v:                                             ; preds = %bb.d
  %.not56 = icmp eq i32 %1, 0
  br i1 %.not56, label %bb.w, label %.loopexit

.thread:                                          ; preds = %read_ihdr.exit
  store i32 3, ptr %i.a, align 8, !tbaa !50
  %.not56300 = icmp eq i32 %1, 0
  br i1 %.not56300, label %.thread301, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.dc = icmp eq i32 %i.b, 6
  br i1 %i.dc, label %bb.x, label %.thread301

bb.x:                                             ; preds = %bb.w
  store i32 8, ptr %i.a, align 8, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 4
  %i.df = or i16 %i.de, 512
  store i16 %i.df, ptr %i.dd, align 4
  br label %.thread301

.thread301:                                       ; preds = %.thread, %bb.x, %bb.w
  %i.dg = phi i32 [ 8, %bb.x ], [ %i.b, %bb.w ], [ 3, %.thread ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 14 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 16 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 11 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 33 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2372 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 3 uses
  %i.dw = getelementptr i8, ptr %0, i64 168       ; 3 uses
  %i.dx = getelementptr i8, ptr %0, i64 160       ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 10 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.ea = getelementptr i8, ptr %0, i64 184       ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1556 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  %i.ef = getelementptr i8, ptr %0, i64 176
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 2396
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2364
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 4 uses
  %i.et = getelementptr i8, ptr %0, i64 1578      ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 381 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2100
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2094
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2098
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2092
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1570
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1572
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1574
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1553
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1549 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1550 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1551 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1548 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1420
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1428
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1436
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2432 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.28.0..sroa_idx.i = getelementptr i8, ptr %0, i64 140 ; 2 uses
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.sroa.4.0..sroa_idx1334.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.28.0..sroa_idx1359.i = getelementptr inbounds nuw i8, ptr %0, i64 284
  %.sroa.36.0..sroa_idx1361.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.thread301
  %i.gb = phi i32 [ %i.dg, %.thread301 ], [ %.be, %.backedge.backedge ]
  switch i32 %i.gb, label %.loopexit [
    i32 8, label %.critedge
    i32 3, label %.critedge
    i32 2, label %.critedge
    i32 1, label %.critedge
    i32 0, label %.critedge
  ]

.critedge:                                        ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge
  %i.gc = load i16, ptr %i.dh, align 4
  %i.gd = and i16 %i.gc, -65
  store i16 %i.gd, ptr %i.dh, align 4
  store ptr null, ptr %i.di, align 8, !tbaa !309
  %i.ge = load i32, ptr %i.dk, align 8, !tbaa !51
  store i32 %i.ge, ptr %i.dj, align 4, !tbaa !51
  %i.gf = tail call fastcc i32 @read_header(ptr noundef nonnull %0) ; 2 uses
  %.not1011.i = icmp eq i32 %i.gf, 0
  br i1 %.not1011.i, label %.lr.ph1013.i, label %read_non_idat_chunks.exit

.lr.ph1013.i:                                     ; preds = %.critedge, %.backedge.i
  %i.gg = load i16, ptr %i.dh, align 4            ; 3 uses
  %i.gh = and i16 %i.gg, 64
  %.not644.i = icmp eq i16 %i.gh, 0
  br i1 %.not644.i, label %._crit_edge1419.i, label %bb.y

._crit_edge1419.i:                                ; preds = %.lr.ph1013.i
  %.pre1420.i = load i32, ptr %i.dk, align 8, !tbaa !51
  br label %bb.ab

bb.y:                                             ; preds = %.lr.ph1013.i
  %i.gi = load ptr, ptr %i.di, align 8, !tbaa !309 ; 2 uses
  %.not645.i = icmp eq ptr %i.gi, null
  br i1 %.not645.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void %i.gi(ptr noundef nonnull %0) #28, !inline_history !288
  %.pre.pre.i = load i16, ptr %i.dh, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre.i = phi i16 [ %.pre.pre.i, %bb.z ], [ %i.gg, %bb.y ]
  %i.gj = load i32, ptr %i.dj, align 4, !tbaa !51 ; 2 uses
  store i32 %i.gj, ptr %i.dk, align 8, !tbaa !51
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge1419.i
  %i.gk = phi i32 [ %i.gj, %bb.aa ], [ %.pre1420.i, %._crit_edge1419.i ] ; 2 uses
  %i.gl = phi i16 [ %.pre.i, %bb.aa ], [ %i.gg, %._crit_edge1419.i ] ; 3 uses
  %i.gm = and i16 %i.gl, -65
  store i16 %i.gm, ptr %i.dh, align 4
  store ptr null, ptr %i.di, align 8, !tbaa !309
  store i32 %i.gk, ptr %i.dj, align 4, !tbaa !51
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !67 ; 53 uses
  %.sroa.28.0.copyload.i = load i32, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !51 ; 7 uses
  %.not646.i = icmp eq i32 %.sroa.28.0.copyload.i, 1413563465
  br i1 %.not646.i, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %.sroa.36.0.copyload.i = load i64, ptr %.sroa.36.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.dl, align 8, !tbaa !95
  %i.gn = load i32, ptr %i.a, align 8, !tbaa !50
  %i.go = icmp ult i32 %i.gn, 4
  br i1 %i.go, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gp = load i8, ptr %i.eu, align 1, !tbaa !108
  %i.gq = icmp eq i8 %i.gp, 3
  %i.gr = and i32 %i.gk, 2
  %.not649.i = icmp eq i32 %i.gr, 0
  %or.cond931.i = select i1 %i.gq, i1 %.not649.i, i1 false
  br i1 %or.cond931.i, label %read_non_idat_chunks.exit.thread110, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i64 %.sroa.0.0.copyload.i, ptr %i.ga, align 8, !tbaa !95
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx1334.i, align 8, !tbaa !67
  store i32 1413563465, ptr %.sroa.28.0..sroa_idx1359.i, align 4, !tbaa !51
  store i64 %.sroa.36.0.copyload.i, ptr %.sroa.36.0..sroa_idx1361.i, align 8
  br label %read_non_idat_chunks.exit.thread114

bb.af:                                            ; preds = %bb.ac
  %i.gs = and i16 %i.gl, 512
  %.not647.i = icmp eq i16 %i.gs, 0
  br i1 %.not647.i, label %read_non_idat_chunks.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gt = tail call fastcc i32 @discard_chunk_bytes(ptr noundef nonnull %0, i32 noundef %.sroa.4.0.copyload.i) ; 2 uses
  %.not648.i = icmp eq i32 %i.gt, 0
  br i1 %.not648.i, label %.backedge.i, label %read_non_idat_chunks.exit

bb.ah:                                            ; preds = %bb.ab
  %i.gu = and i16 %i.gl, -577
  store i16 %i.gu, ptr %i.dh, align 4
  switch i32 %.sroa.28.0.copyload.i, label %bb.an [
    i32 1935231088, label %is_small_chunk.exit.thread.i
    i32 1933985391, label %is_small_chunk.exit.thread.i
    i32 1414744424, label %is_small_chunk.exit.thread.i
    i32 1414087283, label %is_small_chunk.exit.thread.i
    i32 1397641844, label %is_small_chunk.exit.thread.i
    i32 1297238115, label %is_small_chunk.exit.thread.i
    i32 1163152464, label %is_small_chunk.exit.thread.i
    i32 1162692980, label %is_small_chunk.exit.thread.i
    i32 1145523042, label %is_small_chunk.exit.thread.i
    i32 1111970419, label %is_small_chunk.exit.thread.i
    i32 1095582055, label %is_small_chunk.exit.thread.i
  ]

is_small_chunk.exit.thread.i:                     ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah
  %.not651.i = icmp eq i32 %.sroa.4.0.copyload.i, 0
  br i1 %.not651.i, label %read_non_idat_chunks.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %is_small_chunk.exit.thread.i
  %i.gv = tail call i32 @llvm.umin.i32(i32 %.sroa.4.0.copyload.i, i32 768) ; 4 uses
  %i.gw = load i32, ptr %i.dm, align 8, !tbaa !94
  %i.gx = add nsw i32 %i.gv, -1
  %.not.i848.i = icmp ult i32 %i.gx, %i.gw
  br i1 %.not.i848.i, label %bb.aj, label %read_non_idat_chunks.exit.thread110

bb.aj:                                            ; preds = %bb.ai
  %i.gy = zext nneg i32 %i.gv to i64              ; 3 uses
  %i.gz = load ptr, ptr %i.dn, align 8, !tbaa !97
  %i.ha = load ptr, ptr %i.do, align 8, !tbaa !98
  %i.hb = load ptr, ptr %i.dp, align 8, !tbaa !99
  %i.hc = tail call i32 %i.gz(ptr noundef nonnull %0, ptr noundef %i.ha, ptr noundef %i.hb, i64 noundef range(i64 1, 4294967296) %i.gy) #28, !inline_history !289 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %spec.store.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.hc, i32 -2)
  br label %read_non_idat_chunks.exit

bb.al:                                            ; preds = %bb.aj
  %i.hd = load i64, ptr %i.dq, align 8, !tbaa !100
  %i.he = add i64 %i.hd, %i.gy                    ; 2 uses
  store i64 %i.he, ptr %i.dq, align 8, !tbaa !100
  %i.hf = icmp ult i64 %i.he, %i.gy
  br i1 %i.hf, label %read_non_idat_chunks.exit.thread110, label %read_data.exit.i.i

read_data.exit.i.i:                               ; preds = %bb.al
  %i.hg = load i16, ptr %i.dh, align 4
  %i.hh = and i16 %i.hg, 128
  %.not20.i849.i = icmp eq i16 %i.hh, 0
  br i1 %.not20.i849.i, label %bb.am, label %read_chunk_bytes.exit.i

bb.am:                                            ; preds = %read_data.exit.i.i
  %i.hi = load i32, ptr %i.dr, align 4, !tbaa !101
  %i.hj = zext i32 %i.hi to i64
  %i.hk = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.hl = tail call i64 @crc32(i64 noundef %i.hj, ptr noundef %i.hk, i32 noundef %i.gv) #28
  %i.hm = trunc i64 %i.hl to i32
  store i32 %i.hm, ptr %i.dr, align 4, !tbaa !101
  br label %read_chunk_bytes.exit.i

read_chunk_bytes.exit.i:                          ; preds = %bb.am, %read_data.exit.i.i
  %i.hn = load i32, ptr %i.dm, align 8, !tbaa !94
  %i.ho = sub i32 %i.hn, %i.gv
  store i32 %i.ho, ptr %i.dm, align 8, !tbaa !94
  br label %bb.an

bb.an:                                            ; preds = %read_chunk_bytes.exit.i, %bb.ah
  %i.hp = load ptr, ptr %i.c, align 8, !tbaa !69  ; 103 uses
  %i.hq = and i32 %.sroa.28.0.copyload.i, 32
  %.not958.i = icmp eq i32 %i.hq, 0
  br i1 %.not958.i, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %bb.an
  switch i32 %.sroa.28.0.copyload.i, label %read_non_idat_chunks.exit.thread110 [
    i32 1163152464, label %bb.ap
    i32 1145980233, label %bb.au
    i32 1380206665, label %read_non_idat_chunks.exit.thread
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.hr = load i32, ptr %i.dt, align 8            ; 2 uses
  %i.hs = and i32 %i.hr, 1792
  %or.cond793.i = icmp eq i32 %i.hs, 0
  br i1 %or.cond793.i, label %bb.aq, label %read_non_idat_chunks.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ht = urem i32 %.sroa.4.0.copyload.i, 3
  %i.hu = udiv i32 %.sroa.4.0.copyload.i, 3       ; 5 uses
  %.not786.i = icmp eq i32 %i.ht, 0
  br i1 %.not786.i, label %bb.ar, label %read_non_idat_chunks.exit.thread

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.hu, ptr %i.es, align 4, !tbaa !111
  %i.hv = add nsw i32 %i.hu, -257
  %or.cond.i.i64 = icmp ult i32 %i.hv, -256
  br i1 %or.cond.i.i64, label %read_non_idat_chunks.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hw = load i8, ptr %i.eu, align 1, !tbaa !79
  %i.hx = icmp eq i8 %i.hw, 3
  br i1 %i.hx, label %bb.at, label %check_plte.exit.i

bb.at:                                            ; preds = %bb.as
  %i.hy = load i8, ptr %i.fy, align 4, !tbaa !53
  %i.hz = zext nneg i8 %i.hy to i32
  %i.ia = shl nuw i32 1, %i.hz
  %i.ib = icmp ugt i32 %i.hu, %i.ia
  br i1 %i.ib, label %read_non_idat_chunks.exit.thread, label %check_plte.exit.i

check_plte.exit.i:                                ; preds = %bb.at, %bb.as
  %i.ic = zext nneg i32 %i.hu to i64              ; 2 uses
  %.not1292.i = icmp ult i32 %.sroa.4.0.copyload.i, 3
  br i1 %.not1292.i, label %._crit_edge1010.i, label %.lr.ph1009.i.preheader

.lr.ph1009.i.preheader:                           ; preds = %check_plte.exit.i
  %xtraiter473 = and i64 %i.ic, 1
  %.sroa.4.0.copyload.i.off = add i32 %.sroa.4.0.copyload.i, -3
  %i.id = icmp ult i32 %.sroa.4.0.copyload.i.off, 3
  br i1 %i.id, label %.lr.ph1009.i.epil.preheader, label %.lr.ph1009.i.preheader.new

.lr.ph1009.i.preheader.new:                       ; preds = %.lr.ph1009.i.preheader
  %unroll_iter = and i64 %i.ic, 510
  br label %.lr.ph1009.i

.lr.ph1009.i:                                     ; preds = %.lr.ph1009.i, %.lr.ph1009.i.preheader.new
  %.05771008.i = phi i64 [ 0, %.lr.ph1009.i.preheader.new ], [ %i.iz, %.lr.ph1009.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph1009.i.preheader.new ], [ %niter.next.1, %.lr.ph1009.i ]
  %i.ie = mul nuw nsw i64 %.05771008.i, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ie ; 3 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !51
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.05771008.i ; 3 uses
  store i8 %i.ig, ptr %i.ih, align 4, !tbaa !81
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !51
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !82
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  %i.im = load i8, ptr %i.il, align 1, !tbaa !51
  %i.in = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  store i8 %i.im, ptr %i.in, align 2, !tbaa !83
  %i.io = or disjoint i64 %.05771008.i, 1         ; 2 uses
  %i.ip = mul nuw nsw i64 %i.io, 3
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ip ; 3 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !51
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.io ; 3 uses
  store i8 %i.ir, ptr %i.is, align 4, !tbaa !81
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !51
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !82
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !51
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  store i8 %i.ix, ptr %i.iy, align 2, !tbaa !83
  %i.iz = add nuw nsw i64 %.05771008.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1010.i.loopexit.unr-lcssa, label %.lr.ph1009.i, !llvm.loop !290

._crit_edge1010.i.loopexit.unr-lcssa:             ; preds = %.lr.ph1009.i
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
end_hunk_0
begin_hunk_1_@read_chunks:bb.a
  br i1 %.not682.i, label %bb.cg, label %read_non_idat_chunks.exit.thread

bb.cg:                                            ; preds = %bb.cf
  %i.ry = load i8, ptr %i.eu, align 1, !tbaa !108
  switch i8 %i.ry, label %bb.co [
    i8 0, label %bb.ch
    i8 4, label %bb.ch
    i8 2, label %bb.cj
    i8 6, label %bb.cj
    i8 3, label %bb.cl
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cg
  %.not687.i = icmp eq i32 %.sroa.4.0.copyload.i, 2
  br i1 %.not687.i, label %bb.ci, label %read_non_idat_chunks.exit.thread

bb.ci:                                            ; preds = %bb.ch
  %.val830.i = load i8, ptr %i.hp, align 1, !tbaa !51
  %i.rz = getelementptr i8, ptr %i.hp, i64 1
  %.val831.i = load i8, ptr %i.rz, align 1, !tbaa !51
  %i.sa = zext i8 %.val830.i to i16
  %i.sb = shl nuw i16 %i.sa, 8
  %i.sc = zext i8 %.val831.i to i16
  %i.sd = or disjoint i16 %i.sb, %i.sc
  store i16 %i.sd, ptr %i.ff, align 8, !tbaa !127
  br label %bb.co

bb.cj:                                            ; preds = %bb.cg, %bb.cg
  %.not686.i = icmp eq i32 %.sroa.4.0.copyload.i, 6
  br i1 %.not686.i, label %bb.ck, label %read_non_idat_chunks.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %.val828.i = load i8, ptr %i.hp, align 1, !tbaa !51
  %i.se = getelementptr i8, ptr %i.hp, i64 1
  %.val829.i = load i8, ptr %i.se, align 1, !tbaa !51
  %i.sf = zext i8 %.val828.i to i16
  %i.sg = shl nuw i16 %i.sf, 8
  %i.sh = zext i8 %.val829.i to i16
  %i.si = or disjoint i16 %i.sg, %i.sh
  store i16 %i.si, ptr %i.fc, align 2, !tbaa !128
  %i.sj = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %.val826.i = load i8, ptr %i.sj, align 1, !tbaa !51
  %i.sk = getelementptr i8, ptr %i.hp, i64 3
  %.val827.i = load i8, ptr %i.sk, align 1, !tbaa !51
  %i.sl = zext i8 %.val826.i to i16
  %i.sm = shl nuw i16 %i.sl, 8
  %i.sn = zext i8 %.val827.i to i16
  %i.so = or disjoint i16 %i.sm, %i.sn
  store i16 %i.so, ptr %i.fd, align 4, !tbaa !129
  %i.sp = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %.val824.i = load i8, ptr %i.sp, align 1, !tbaa !51
  %i.sq = getelementptr i8, ptr %i.hp, i64 5
  %.val825.i = load i8, ptr %i.sq, align 1, !tbaa !51
  %i.sr = zext i8 %.val824.i to i16
  %i.ss = shl nuw i16 %i.sr, 8
  %i.st = zext i8 %.val825.i to i16
  %i.su = or disjoint i16 %i.ss, %i.st
  store i16 %i.su, ptr %i.fe, align 2, !tbaa !130
  br label %bb.co

bb.cl:                                            ; preds = %bb.cg
  %.not683.i = icmp eq i32 %.sroa.4.0.copyload.i, 1
  br i1 %.not683.i, label %bb.cm, label %read_non_idat_chunks.exit.thread

bb.cm:                                            ; preds = %bb.cl
  %i.sv = and i32 %i.rw, 2
  %.not684.i = icmp eq i32 %i.sv, 0
  br i1 %.not684.i, label %read_non_idat_chunks.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sw = load i8, ptr %i.hp, align 1, !tbaa !51  ; 2 uses
  %i.sx = zext i8 %i.sw to i16
  store i16 %i.sx, ptr %i.fb, align 8, !tbaa !131
  %i.sy = zext i8 %i.sw to i32
  %i.sz = load i32, ptr %i.es, align 4, !tbaa !111
  %.not685.i = icmp ugt i32 %i.sz, %i.sy
  br i1 %.not685.i, label %bb.co, label %read_non_idat_chunks.exit.thread

bb.co:                                            ; preds = %bb.cn, %bb.ck, %bb.ci, %bb.cg
  %i.ta = or disjoint i32 %i.rw, 256
  store i32 %i.ta, ptr %i.dt, align 8
  br label %.backedge.sink.split.i

bb.cp:                                            ; preds = %bb.ax
  %i.tb = load i32, ptr %i.a, align 8, !tbaa !50
  %i.tc = icmp eq i32 %i.tb, 8
  br i1 %i.tc, label %read_non_idat_chunks.exit.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.td = load i32, ptr %i.dt, align 8            ; 3 uses
  %i.te = and i32 %i.td, 1024
  %.not690.i = icmp eq i32 %i.te, 0
  br i1 %.not690.i, label %bb.cr, label %read_non_idat_chunks.exit.thread

bb.cr:                                            ; preds = %bb.cq
  %.not691.i = icmp eq i32 %.sroa.4.0.copyload.i, 0
  br i1 %.not691.i, label %read_non_idat_chunks.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.tf = load i8, ptr %i.eu, align 1, !tbaa !108
  switch i8 %i.tf, label %.thread.i [
    i8 0, label %bb.ct
    i8 2, label %bb.cv
    i8 3, label %bb.cx
    i8 4, label %read_non_idat_chunks.exit.thread
    i8 6, label %read_non_idat_chunks.exit.thread
  ]

bb.ct:                                            ; preds = %bb.cs
  %.not694.i = icmp eq i32 %.sroa.4.0.copyload.i, 2
  br i1 %.not694.i, label %bb.cu, label %read_non_idat_chunks.exit.thread

bb.cu:                                            ; preds = %bb.ct
  %.val822.i = load i8, ptr %i.hp, align 1, !tbaa !51
  %i.tg = getelementptr i8, ptr %i.hp, i64 1
  %.val823.i = load i8, ptr %i.tg, align 1, !tbaa !51
  %i.th = zext i8 %.val822.i to i16
  %i.ti = shl nuw i16 %i.th, 8
  %i.tj = zext i8 %.val823.i to i16
  %i.tk = or disjoint i16 %i.ti, %i.tj
  store i16 %i.tk, ptr %i.fa, align 4, !tbaa !85
  br label %.thread.i

bb.cv:                                            ; preds = %bb.cs
  %.not693.i = icmp eq i32 %.sroa.4.0.copyload.i, 6
  br i1 %.not693.i, label %bb.cw, label %read_non_idat_chunks.exit.thread

bb.cw:                                            ; preds = %bb.cv
  %.val820.i = load i8, ptr %i.hp, align 1, !tbaa !51
  %i.tl = getelementptr i8, ptr %i.hp, i64 1
  %.val821.i = load i8, ptr %i.tl, align 1, !tbaa !51
  %i.tm = zext i8 %.val820.i to i16
  %i.tn = shl nuw i16 %i.tm, 8
  %i.to = zext i8 %.val821.i to i16
  %i.tp = or disjoint i16 %i.tn, %i.to
  store i16 %i.tp, ptr %i.ex, align 2, !tbaa !132
  %i.tq = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %.val818.i = load i8, ptr %i.tq, align 1, !tbaa !51
  %i.tr = getelementptr i8, ptr %i.hp, i64 3
  %.val819.i = load i8, ptr %i.tr, align 1, !tbaa !51
  %i.ts = zext i8 %.val818.i to i16
  %i.tt = shl nuw i16 %i.ts, 8
  %i.tu = zext i8 %.val819.i to i16
  %i.tv = or disjoint i16 %i.tt, %i.tu
  store i16 %i.tv, ptr %i.ey, align 8, !tbaa !133
  %i.tw = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %.val816.i = load i8, ptr %i.tw, align 1, !tbaa !51
  %i.tx = getelementptr i8, ptr %i.hp, i64 5
  %.val817.i = load i8, ptr %i.tx, align 1, !tbaa !51
  %i.ty = zext i8 %.val816.i to i16
  %i.tz = shl nuw i16 %i.ty, 8
  %i.ua = zext i8 %.val817.i to i16
  %i.ub = or disjoint i16 %i.tz, %i.ua
  store i16 %i.ub, ptr %i.ez, align 2, !tbaa !134
  br label %.thread.i

bb.cx:                                            ; preds = %bb.cs
  %i.uc = load i32, ptr %i.es, align 4, !tbaa !111
  %i.ud = icmp ugt i32 %.sroa.4.0.copyload.i, %i.uc
  br i1 %i.ud, label %read_non_idat_chunks.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ue = and i32 %i.td, 2
  %.not692.i = icmp eq i32 %i.ue, 0
  br i1 %.not692.i, label %read_non_idat_chunks.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.uf = zext i32 %.sroa.4.0.copyload.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr align 1 %i.hp, i64 %i.uf, i1 false)
  store i32 %.sroa.4.0.copyload.i, ptr %i.ew, align 4, !tbaa !135
  br label %.thread.i

.thread.i:                                        ; preds = %bb.cz, %bb.cw, %bb.cu, %bb.cs
  %i.ug = or disjoint i32 %i.td, 1024
  store i32 %i.ug, ptr %i.dt, align 8
  br label %.backedge.sink.split.i

bb.da:                                            ; preds = %bb.ax
  %i.uh = load i32, ptr %i.dt, align 8            ; 3 uses
  %i.ui = and i32 %i.uh, 2
  %.not697.i = icmp eq i32 %i.ui, 0
  br i1 %.not697.i, label %read_non_idat_chunks.exit.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.uj = load i32, ptr %i.a, align 8, !tbaa !50
  %i.uk = icmp eq i32 %i.uj, 8
  br i1 %i.uk, label %read_non_idat_chunks.exit.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ul = and i32 %i.uh, 512
  %.not698.i = icmp eq i32 %i.ul, 0
  br i1 %.not698.i, label %bb.dd, label %read_non_idat_chunks.exit.thread

bb.dd:                                            ; preds = %bb.dc
  %i.um = lshr i32 %.sroa.4.0.copyload.i, 1       ; 3 uses
  %i.un = load i32, ptr %i.es, align 4, !tbaa !111
  %.not699.i = icmp eq i32 %i.um, %i.un
  br i1 %.not699.i, label %.preheader.i, label %read_non_idat_chunks.exit.thread

.preheader.i:                                     ; preds = %bb.dd
  %i.uo = zext nneg i32 %i.um to i64              ; 6 uses
  %.not1291.i = icmp eq i32 %i.um, 0
  br i1 %.not1291.i, label %._crit_edge1007.i, label %.lr.ph1006.i.preheader

.lr.ph1006.i.preheader:                           ; preds = %.preheader.i
  %min.iters.check = icmp ult i32 %.sroa.4.0.copyload.i, 32
  br i1 %min.iters.check, label %.lr.ph1006.i.preheader416, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1006.i.preheader
  %3 = shl nuw nsw i64 %i.uo, 1                   ; 2 uses
  %4 = getelementptr i8, ptr %0, i64 %3
  %scevgep414 = getelementptr i8, ptr %4, i64 1578
  %scevgep415 = getelementptr i8, ptr %i.hp, i64 %3
  %bound0 = icmp ult ptr %i.et, %scevgep415
  %bound1 = icmp ult ptr %i.hp, %scevgep414
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1006.i.preheader416, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uo, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.up = shl nuw nsw i64 %index, 1
  %i.uq = shl i64 %index, 1
  %i.ur = shl i64 %index, 1
  %i.us = shl i64 %index, 1
  %i.ut = shl i64 %index, 1
  %i.uu = shl i64 %index, 1
  %i.uv = shl i64 %index, 1
  %i.uw = shl i64 %index, 1
  %i.ux = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.up ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.uq ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 2
  %i.va = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ur ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vc = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.us ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 6
  %i.ve = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ut ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.uu ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 10
  %i.vi = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.uv ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 12
  %i.vk = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.uw ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 14
  %i.vm = load i8, ptr %i.ux, align 1, !tbaa !51, !alias.scope !310
  %i.vn = load i8, ptr %i.uz, align 1, !tbaa !51, !alias.scope !310
  %i.vo = load i8, ptr %i.vb, align 1, !tbaa !51, !alias.scope !310
  %i.vp = load i8, ptr %i.vd, align 1, !tbaa !51, !alias.scope !310
  %i.vq = load i8, ptr %i.vf, align 1, !tbaa !51, !alias.scope !310
  %i.vr = load i8, ptr %i.vh, align 1, !tbaa !51, !alias.scope !310
  %i.vs = load i8, ptr %i.vj, align 1, !tbaa !51, !alias.scope !310
  %i.vt = load i8, ptr %i.vl, align 1, !tbaa !51, !alias.scope !310
  %i.vu = insertelement <8 x i8> poison, i8 %i.vm, i64 0
  %i.vv = insertelement <8 x i8> %i.vu, i8 %i.vn, i64 1
  %i.vw = insertelement <8 x i8> %i.vv, i8 %i.vo, i64 2
  %i.vx = insertelement <8 x i8> %i.vw, i8 %i.vp, i64 3
  %i.vy = insertelement <8 x i8> %i.vx, i8 %i.vq, i64 4
  %i.vz = insertelement <8 x i8> %i.vy, i8 %i.vr, i64 5
  %i.wa = insertelement <8 x i8> %i.vz, i8 %i.vs, i64 6
  %i.wb = insertelement <8 x i8> %i.wa, i8 %i.vt, i64 7
  %i.wc = getelementptr i8, ptr %i.ux, i64 1
  %i.wd = getelementptr i8, ptr %i.uy, i64 3
  %i.we = getelementptr i8, ptr %i.va, i64 5
  %i.wf = getelementptr i8, ptr %i.vc, i64 7
  %i.wg = getelementptr i8, ptr %i.ve, i64 9
  %i.wh = getelementptr i8, ptr %i.vg, i64 11
  %i.wi = getelementptr i8, ptr %i.vi, i64 13
  %i.wj = getelementptr i8, ptr %i.vk, i64 15
  %i.wk = load i8, ptr %i.wc, align 1, !tbaa !51, !alias.scope !310
  %i.wl = load i8, ptr %i.wd, align 1, !tbaa !51, !alias.scope !310
  %i.wm = load i8, ptr %i.we, align 1, !tbaa !51, !alias.scope !310
  %i.wn = load i8, ptr %i.wf, align 1, !tbaa !51, !alias.scope !310
  %i.wo = load i8, ptr %i.wg, align 1, !tbaa !51, !alias.scope !310
  %i.wp = load i8, ptr %i.wh, align 1, !tbaa !51, !alias.scope !310
  %i.wq = load i8, ptr %i.wi, align 1, !tbaa !51, !alias.scope !310
  %i.wr = load i8, ptr %i.wj, align 1, !tbaa !51, !alias.scope !310
  %i.ws = insertelement <8 x i8> poison, i8 %i.wk, i64 0
  %i.wt = insertelement <8 x i8> %i.ws, i8 %i.wl, i64 1
  %i.wu = insertelement <8 x i8> %i.wt, i8 %i.wm, i64 2
  %i.wv = insertelement <8 x i8> %i.wu, i8 %i.wn, i64 3
  %i.ww = insertelement <8 x i8> %i.wv, i8 %i.wo, i64 4
  %i.wx = insertelement <8 x i8> %i.ww, i8 %i.wp, i64 5
  %i.wy = insertelement <8 x i8> %i.wx, i8 %i.wq, i64 6
  %i.wz = insertelement <8 x i8> %i.wy, i8 %i.wr, i64 7
  %i.xa = zext <8 x i8> %i.wb to <8 x i16>
  %i.xb = shl nuw <8 x i16> %i.xa, splat (i16 8)
  %i.xc = zext <8 x i8> %i.wz to <8 x i16>
  %i.xd = or disjoint <8 x i16> %i.xb, %i.xc
  %i.xe = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %index
  store <8 x i16> %i.xd, ptr %i.xe, align 2, !tbaa !74, !alias.scope !311, !noalias !310
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xf = icmp eq i64 %index.next, %n.vec
  br i1 %i.xf, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.uo
  br i1 %cmp.n, label %._crit_edge1007.i, label %.lr.ph1006.i.preheader416

.lr.ph1006.i.preheader416:                        ; preds = %vector.memcheck, %.lr.ph1006.i.preheader, %middle.block
  %.05761005.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1006.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %i.uo, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1006.i.prol.loopexit, label %.lr.ph1006.i.prol

.lr.ph1006.i.prol:                                ; preds = %.lr.ph1006.i.preheader416
  %i.xg = shl nuw nsw i64 %.05761005.i.ph, 1
  %i.xh = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.xg ; 2 uses
  %.val814.i.prol = load i8, ptr %i.xh, align 1, !tbaa !51
  %i.xi = getelementptr i8, ptr %i.xh, i64 1
  %.val815.i.prol = load i8, ptr %i.xi, align 1, !tbaa !51
  %i.xj = zext i8 %.val814.i.prol to i16
  %i.xk = shl nuw i16 %i.xj, 8
  %i.xl = zext i8 %.val815.i.prol to i16
  %i.xm = or disjoint i16 %i.xk, %i.xl
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %.05761005.i.ph
  store i16 %i.xm, ptr %i.xn, align 2, !tbaa !74
  %i.xo = or disjoint i64 %.05761005.i.ph, 1
  br label %.lr.ph1006.i.prol.loopexit

.lr.ph1006.i.prol.loopexit:                       ; preds = %.lr.ph1006.i.prol, %.lr.ph1006.i.preheader416
  %.05761005.i.unr = phi i64 [ %.05761005.i.ph, %.lr.ph1006.i.preheader416 ], [ %i.xo, %.lr.ph1006.i.prol ]
  %i.xp = add nsw i64 %i.uo, -1
  %i.xq = icmp eq i64 %.05761005.i.ph, %i.xp
  br i1 %i.xq, label %._crit_edge1007.i, label %.lr.ph1006.i

.lr.ph1006.i:                                     ; preds = %.lr.ph1006.i.prol.loopexit, %.lr.ph1006.i
  %.05761005.i = phi i64 [ %i.yi, %.lr.ph1006.i ], [ %.05761005.i.unr, %.lr.ph1006.i.prol.loopexit ] ; 4 uses
  %i.xr = shl nuw nsw i64 %.05761005.i, 1
  %i.xs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.xr ; 2 uses
  %.val814.i = load i8, ptr %i.xs, align 1, !tbaa !51
  %i.xt = getelementptr i8, ptr %i.xs, i64 1
  %.val815.i = load i8, ptr %i.xt, align 1, !tbaa !51
  %i.xu = zext i8 %.val814.i to i16
  %i.xv = shl nuw i16 %i.xu, 8
  %i.xw = zext i8 %.val815.i to i16
  %i.xx = or disjoint i16 %i.xv, %i.xw
  %i.xy = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %.05761005.i
  store i16 %i.xx, ptr %i.xy, align 2, !tbaa !74
  %i.xz = add nuw nsw i64 %.05761005.i, 1         ; 2 uses
  %i.ya = shl nuw nsw i64 %i.xz, 1
  %i.yb = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ya ; 2 uses
  %.val814.i.1 = load i8, ptr %i.yb, align 1, !tbaa !51
  %i.yc = getelementptr i8, ptr %i.yb, i64 1
  %.val815.i.1 = load i8, ptr %i.yc, align 1, !tbaa !51
  %i.yd = zext i8 %.val814.i.1 to i16
  %i.ye = shl nuw i16 %i.yd, 8
  %i.yf = zext i8 %.val815.i.1 to i16
  %i.yg = or disjoint i16 %i.ye, %i.yf
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.xz
  store i16 %i.yg, ptr %i.yh, align 2, !tbaa !74
  %i.yi = add nuw nsw i64 %.05761005.i, 2         ; 2 uses
  %exitcond1331.not.i.1 = icmp eq i64 %i.yi, %i.uo
  br i1 %exitcond1331.not.i.1, label %._crit_edge1007.i, label %.lr.ph1006.i, !llvm.loop !295

._crit_edge1007.i:                                ; preds = %.lr.ph1006.i.prol.loopexit, %.lr.ph1006.i, %middle.block, %.preheader.i
  %i.yj = or disjoint i32 %i.uh, 512
  store i32 %i.yj, ptr %i.dt, align 8
  br label %.backedge.sink.split.i

bb.de:                                            ; preds = %bb.ax
  %i.yk = load i32, ptr %i.a, align 8, !tbaa !50
  %i.yl = icmp eq i32 %i.yk, 8
  br i1 %i.yl, label %read_non_idat_chunks.exit.thread, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ym = load i32, ptr %i.dt, align 8            ; 2 uses
  %i.yn = and i32 %i.ym, 2048
  %.not702.i = icmp eq i32 %i.yn, 0
  br i1 %.not702.i, label %bb.dg, label %read_non_idat_chunks.exit.thread

bb.dg:                                            ; preds = %bb.df
  %.not703.i = icmp eq i32 %.sroa.4.0.copyload.i, 9
  br i1 %.not703.i, label %bb.dh, label %read_non_idat_chunks.exit.thread

bb.dh:                                            ; preds = %bb.dg
  %i.yo = load i8, ptr %i.hp, align 1, !tbaa !51
  %i.yp = zext i8 %i.yo to i32
  %i.yq = shl nuw i32 %i.yp, 24                   ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !51
  %i.yt = zext i8 %i.ys to i32
  %i.yu = shl nuw nsw i32 %i.yt, 16
  %i.yv = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !51
  %i.yx = zext i8 %i.yw to i32
  %i.yy = shl nuw nsw i32 %i.yx, 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !51
  %i.zb = zext i8 %i.za to i32
  %i.zc = or disjoint i32 %i.yu, %i.zb
  %i.zd = or disjoint i32 %i.zc, %i.yy
  %i.ze = or disjoint i32 %i.zd, %i.yq
  store i32 %i.ze, ptr %i.ep, align 8, !tbaa !136
  %i.zf = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !51
  %i.zh = zext i8 %i.zg to i32
  %i.zi = shl nuw i32 %i.zh, 24                   ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.hp, i64 5
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !51
  %i.zl = zext i8 %i.zk to i32
  %i.zm = shl nuw nsw i32 %i.zl, 16
  %i.zn = getelementptr inbounds nuw i8, ptr %i.hp, i64 6
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !51
  %i.zp = zext i8 %i.zo to i32
  %i.zq = shl nuw nsw i32 %i.zp, 8
  %i.zr = getelementptr inbounds nuw i8, ptr %i.hp, i64 7
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !51
  %i.zt = zext i8 %i.zs to i32
  %i.zu = or disjoint i32 %i.zm, %i.zt
  %i.zv = or disjoint i32 %i.zu, %i.zq
end_hunk_1
