Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/spng?download=true
inline.NumInlined: 350
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@read_chunks:bb.a
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
  %scevgep = getelementptr i8, ptr %0, i64 1578
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
  br i1 %i.hx, label %bb.at, label %.lr.ph1009.i.preheader

bb.at:                                            ; preds = %bb.as
  %i.hy = load i8, ptr %i.fy, align 4, !tbaa !53
  %i.hz = zext nneg i8 %i.hy to i32
  %i.ia = shl nuw i32 1, %i.hz
  %i.ib = icmp ugt i32 %i.hu, %i.ia
  br i1 %i.ib, label %read_non_idat_chunks.exit.thread, label %.lr.ph1009.i.preheader

.lr.ph1009.i.preheader:                           ; preds = %bb.at, %bb.as
  %umax.i = zext nneg i32 %i.hu to i64            ; 2 uses
  %xtraiter473 = and i64 %umax.i, 1
  %.sroa.4.0.copyload.i.off = add i32 %.sroa.4.0.copyload.i, -3
  %i.ic = icmp ult i32 %.sroa.4.0.copyload.i.off, 3
  br i1 %i.ic, label %.lr.ph1009.i.epil.preheader, label %.lr.ph1009.i.preheader.new

.lr.ph1009.i.preheader.new:                       ; preds = %.lr.ph1009.i.preheader
  %unroll_iter = and i64 %umax.i, 510
  br label %.lr.ph1009.i

.lr.ph1009.i:                                     ; preds = %.lr.ph1009.i, %.lr.ph1009.i.preheader.new
  %.05771008.i = phi i64 [ 0, %.lr.ph1009.i.preheader.new ], [ %i.iy, %.lr.ph1009.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph1009.i.preheader.new ], [ %niter.next.1, %.lr.ph1009.i ]
  %i.id = mul nuw nsw i64 %.05771008.i, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.id ; 3 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !51
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.05771008.i ; 3 uses
  store i8 %i.if, ptr %i.ig, align 4, !tbaa !81
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !51
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !82
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !51
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  store i8 %i.il, ptr %i.im, align 2, !tbaa !83
  %i.in = or disjoint i64 %.05771008.i, 1         ; 2 uses
  %i.io = mul nuw nsw i64 %i.in, 3
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.io ; 3 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !51
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.in ; 3 uses
  store i8 %i.iq, ptr %i.ir, align 4, !tbaa !81
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !51
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !82
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !51
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  store i8 %i.iw, ptr %i.ix, align 2, !tbaa !83
  %i.iy = add nuw nsw i64 %.05771008.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1010.i.loopexit.unr-lcssa, label %.lr.ph1009.i, !llvm.loop !290

._crit_edge1010.i.loopexit.unr-lcssa:             ; preds = %.lr.ph1009.i
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
  br i1 %lcmp.mod474.not, label %._crit_edge1010.i, label %.lr.ph1009.i.epil.preheader

.lr.ph1009.i.epil.preheader:                      ; preds = %._crit_edge1010.i.loopexit.unr-lcssa, %.lr.ph1009.i.preheader
  %.05771008.i.epil.init = phi i64 [ 0, %.lr.ph1009.i.preheader ], [ %i.iy, %._crit_edge1010.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod475 = trunc i32 %i.hu to i1
  tail call void @llvm.assume(i1 %lcmp.mod475)
  %i.iz = mul nuw nsw i64 %.05771008.i.epil.init, 3
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.iz ; 3 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !51
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.05771008.i.epil.init ; 3 uses
  store i8 %i.jb, ptr %i.jc, align 4, !tbaa !81
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !51
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !82
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !51
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  store i8 %i.jh, ptr %i.ji, align 2, !tbaa !83
  br label %._crit_edge1010.i

._crit_edge1010.i:                                ; preds = %._crit_edge1010.i.loopexit.unr-lcssa, %.lr.ph1009.i.epil.preheader
  %i.jj = or i32 %i.hr, 2
  store i32 %i.jj, ptr %i.dt, align 8
  br label %.backedge.sink.split.i

bb.au:                                            ; preds = %bb.ao
  %i.jk = load i32, ptr %i.a, align 8, !tbaa !50
  %i.jl = icmp eq i32 %i.jk, 8
  br i1 %i.jl, label %bb.av, label %read_non_idat_chunks.exit.thread

bb.av:                                            ; preds = %bb.au
  %.not790.i = icmp eq i32 %.sroa.4.0.copyload.i, 0
  br i1 %.not790.i, label %bb.aw, label %read_non_idat_chunks.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.jm = tail call fastcc i32 @read_and_check_crc(ptr noundef nonnull %0) ; 2 uses
  %i.jn = icmp eq i32 %i.jm, -1
  br i1 %i.jn, label %read_non_idat_chunks.exit.thread114, label %read_non_idat_chunks.exit

bb.ax:                                            ; preds = %bb.an
  switch i32 %.sroa.28.0.copyload.i, label %bb.hl [
    i32 1297238115, label %bb.ay
    i32 1095582055, label %bb.be
    i32 1414087283, label %bb.bk
    i32 1111970419, label %bb.by
    i32 1145523042, label %bb.ce
    i32 1397641844, label %bb.cp
    i32 1414744424, label %bb.da
    i32 1935231088, label %bb.de
    i32 1162692980, label %bb.di
    i32 1933985391, label %bb.dn
    i32 1716082789, label %bb.ds
    i32 1346585449, label %bb.ea
    i32 1951945850, label %bb.et
    i32 1951945833, label %bb.et
    i32 1951942004, label %bb.et
    i32 1414287475, label %bb.go
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.jo = load i32, ptr %i.dt, align 8            ; 3 uses
  %i.jp = and i32 %i.jo, 2
  %.not656.i = icmp eq i32 %i.jp, 0
  br i1 %.not656.i, label %bb.az, label %read_non_idat_chunks.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.jq = load i32, ptr %i.a, align 8, !tbaa !50
  %i.jr = icmp eq i32 %i.jq, 8
  br i1 %i.jr, label %read_non_idat_chunks.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.js = and i32 %i.jo, 4
  %.not657.i = icmp eq i32 %i.js, 0
  br i1 %.not657.i, label %bb.bb, label %read_non_idat_chunks.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %.not658.i = icmp eq i32 %.sroa.4.0.copyload.i, 32
  br i1 %.not658.i, label %bb.bc, label %read_non_idat_chunks.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.jt = load i8, ptr %i.hp, align 1, !tbaa !51
  %i.ju = zext i8 %i.jt to i32
  %i.jv = shl nuw i32 %i.ju, 24                   ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !51
  %i.jy = zext i8 %i.jx to i32
  %i.jz = shl nuw nsw i32 %i.jy, 16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !51
  %i.kc = zext i8 %i.kb to i32
  %i.kd = shl nuw nsw i32 %i.kc, 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !51
  %i.kg = zext i8 %i.kf to i32
  %i.kh = or disjoint i32 %i.jz, %i.kg
  %i.ki = or disjoint i32 %i.kh, %i.kd
  %i.kj = or disjoint i32 %i.ki, %i.jv
  store i32 %i.kj, ptr %i.fo, align 8, !tbaa !112
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !51
  %i.km = zext i8 %i.kl to i32
  %i.kn = shl nuw i32 %i.km, 24                   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hp, i64 5
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !51
  %i.kq = zext i8 %i.kp to i32
  %i.kr = shl nuw nsw i32 %i.kq, 16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.hp, i64 6
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !51
  %i.ku = zext i8 %i.kt to i32
  %i.kv = shl nuw nsw i32 %i.ku, 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.hp, i64 7
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !51
  %i.ky = zext i8 %i.kx to i32
  %i.kz = or disjoint i32 %i.kr, %i.ky
  %i.la = or disjoint i32 %i.kz, %i.kv
  %i.lb = or disjoint i32 %i.la, %i.kn
  store i32 %i.lb, ptr %i.fp, align 4, !tbaa !113
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !51
  %i.le = zext i8 %i.ld to i32
  %i.lf = shl nuw i32 %i.le, 24                   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.hp, i64 9
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !51
  %i.li = zext i8 %i.lh to i32
  %i.lj = shl nuw nsw i32 %i.li, 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hp, i64 10
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !51
  %i.lm = zext i8 %i.ll to i32
  %i.ln = shl nuw nsw i32 %i.lm, 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hp, i64 11
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !51
  %i.lq = zext i8 %i.lp to i32
  %i.lr = or disjoint i32 %i.lj, %i.lq
  %i.ls = or disjoint i32 %i.lr, %i.ln
  %i.lt = or disjoint i32 %i.ls, %i.lf
  store i32 %i.lt, ptr %i.fq, align 8, !tbaa !114
  %i.lu = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !51
  %i.lw = zext i8 %i.lv to i32
  %i.lx = shl nuw i32 %i.lw, 24                   ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.hp, i64 13
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !51
  %i.ma = zext i8 %i.lz to i32
  %i.mb = shl nuw nsw i32 %i.ma, 16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.hp, i64 14
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !51
  %i.me = zext i8 %i.md to i32
  %i.mf = shl nuw nsw i32 %i.me, 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.hp, i64 15
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !51
  %i.mi = zext i8 %i.mh to i32
  %i.mj = or disjoint i32 %i.mb, %i.mi
  %i.mk = or disjoint i32 %i.mj, %i.mf
  %i.ml = or disjoint i32 %i.mk, %i.lx
  store i32 %i.ml, ptr %i.fr, align 4, !tbaa !115
  %i.mm = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !51
  %i.mo = zext i8 %i.mn to i32
  %i.mp = shl nuw i32 %i.mo, 24                   ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.hp, i64 17
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !51
  %i.ms = zext i8 %i.mr to i32
  %i.mt = shl nuw nsw i32 %i.ms, 16
  %i.mu = getelementptr inbounds nuw i8, ptr %i.hp, i64 18
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !51
  %i.mw = zext i8 %i.mv to i32
  %i.mx = shl nuw nsw i32 %i.mw, 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.hp, i64 19
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !51
  %i.na = zext i8 %i.mz to i32
  %i.nb = or disjoint i32 %i.mt, %i.na
  %i.nc = or disjoint i32 %i.nb, %i.mx
  %i.nd = or disjoint i32 %i.nc, %i.mp
  store i32 %i.nd, ptr %i.fs, align 8, !tbaa !116
  %i.ne = getelementptr inbounds nuw i8, ptr %i.hp, i64 20
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !51
  %i.ng = zext i8 %i.nf to i32
  %i.nh = shl nuw i32 %i.ng, 24                   ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.hp, i64 21
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !51
  %i.nk = zext i8 %i.nj to i32
  %i.nl = shl nuw nsw i32 %i.nk, 16
  %i.nm = getelementptr inbounds nuw i8, ptr %i.hp, i64 22
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !51
  %i.no = zext i8 %i.nn to i32
  %i.np = shl nuw nsw i32 %i.no, 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.hp, i64 23
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !51
  %i.ns = zext i8 %i.nr to i32
  %i.nt = or disjoint i32 %i.nl, %i.ns
  %i.nu = or disjoint i32 %i.nt, %i.np
  %i.nv = or disjoint i32 %i.nu, %i.nh
  store i32 %i.nv, ptr %i.ft, align 4, !tbaa !117
  %i.nw = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !51
  %i.ny = zext i8 %i.nx to i32
  %i.nz = shl nuw i32 %i.ny, 24                   ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.hp, i64 25
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !51
  %i.oc = zext i8 %i.ob to i32
  %i.od = shl nuw nsw i32 %i.oc, 16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.hp, i64 26
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !51
  %i.og = zext i8 %i.of to i32
  %i.oh = shl nuw nsw i32 %i.og, 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.hp, i64 27
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !51
  %i.ok = zext i8 %i.oj to i32
  %i.ol = or disjoint i32 %i.od, %i.ok
  %i.om = or disjoint i32 %i.ol, %i.oh
  %i.on = or disjoint i32 %i.om, %i.nz
  store i32 %i.on, ptr %i.fu, align 8, !tbaa !118
  %i.oo = getelementptr inbounds nuw i8, ptr %i.hp, i64 28
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !51
  %i.oq = zext i8 %i.op to i32
  %i.or = shl nuw i32 %i.oq, 24                   ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.hp, i64 29
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !51
  %i.ou = zext i8 %i.ot to i32
  %i.ov = shl nuw nsw i32 %i.ou, 16
  %i.ow = getelementptr inbounds nuw i8, ptr %i.hp, i64 30
end_hunk_0
