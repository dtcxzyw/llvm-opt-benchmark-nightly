Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/spng?download=true
inline.NumInlined: 350
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 22
begin_hunk_0_@read_chunks:bb.a
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
  %.sroa.29.0..sroa_idx.i = getelementptr i8, ptr %0, i64 140 ; 2 uses
  %.sroa.37.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.sroa.4.0..sroa_idx1334.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.29.0..sroa_idx1360.i = getelementptr inbounds nuw i8, ptr %0, i64 284
  %.sroa.37.0..sroa_idx1362.i = getelementptr inbounds nuw i8, ptr %0, i64 288
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
  store ptr null, ptr %i.di, align 8, !tbaa !308
  %i.ge = load i32, ptr %i.dk, align 8, !tbaa !51
  store i32 %i.ge, ptr %i.dj, align 4, !tbaa !51
  %i.gf = tail call fastcc i32 @read_header(ptr noundef nonnull %0) ; 2 uses
  %.not1011.i = icmp eq i32 %i.gf, 0
  br i1 %.not1011.i, label %.lr.ph1013.i, label %read_non_idat_chunks.exit

.lr.ph1013.i:                                     ; preds = %.critedge, %.backedge.i
  %i.gg = load i16, ptr %i.dh, align 4            ; 3 uses
  %i.gh = and i16 %i.gg, 64
  %.not644.i = icmp eq i16 %i.gh, 0
  br i1 %.not644.i, label %._crit_edge1420.i, label %bb.y

._crit_edge1420.i:                                ; preds = %.lr.ph1013.i
  %.pre1421.i = load i32, ptr %i.dk, align 8, !tbaa !51
  br label %bb.ab

bb.y:                                             ; preds = %.lr.ph1013.i
  %i.gi = load ptr, ptr %i.di, align 8, !tbaa !308 ; 2 uses
  %.not645.i = icmp eq ptr %i.gi, null
  br i1 %.not645.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void %i.gi(ptr noundef nonnull %0) #28, !inline_history !287
  %.pre.pre.i = load i16, ptr %i.dh, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre.i = phi i16 [ %.pre.pre.i, %bb.z ], [ %i.gg, %bb.y ]
  %i.gj = load i32, ptr %i.dj, align 4, !tbaa !51 ; 2 uses
  store i32 %i.gj, ptr %i.dk, align 8, !tbaa !51
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge1420.i
  %i.gk = phi i32 [ %i.gj, %bb.aa ], [ %.pre1421.i, %._crit_edge1420.i ] ; 2 uses
  %i.gl = phi i16 [ %.pre.i, %bb.aa ], [ %i.gg, %._crit_edge1420.i ] ; 3 uses
  %i.gm = and i16 %i.gl, -65
  store i16 %i.gm, ptr %i.dh, align 4
  store ptr null, ptr %i.di, align 8, !tbaa !308
  store i32 %i.gk, ptr %i.dj, align 4, !tbaa !51
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !67 ; 54 uses
  %.sroa.29.0.copyload.i = load i32, ptr %.sroa.29.0..sroa_idx.i, align 4, !tbaa !51 ; 7 uses
  %.not646.i = icmp eq i32 %.sroa.29.0.copyload.i, 1413563465
  br i1 %.not646.i, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %.sroa.37.0.copyload.i = load i64, ptr %.sroa.37.0..sroa_idx.i, align 8
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
  store i32 1413563465, ptr %.sroa.29.0..sroa_idx1360.i, align 4, !tbaa !51
  store i64 %.sroa.37.0.copyload.i, ptr %.sroa.37.0..sroa_idx1362.i, align 8
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
  switch i32 %.sroa.29.0.copyload.i, label %bb.an [
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
  %i.hc = tail call i32 %i.gz(ptr noundef nonnull %0, ptr noundef %i.ha, ptr noundef %i.hb, i64 noundef range(i64 1, 4294967296) %i.gy) #28, !inline_history !288 ; 2 uses
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
  %i.hq = and i32 %.sroa.29.0.copyload.i, 32
  %.not958.i = icmp eq i32 %i.hq, 0
  br i1 %.not958.i, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %bb.an
  switch i32 %.sroa.29.0.copyload.i, label %read_non_idat_chunks.exit.thread110 [
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
  %3 = zext nneg i32 %i.hu to i64                 ; 2 uses
  %.not1292.i = icmp ult i32 %.sroa.4.0.copyload.i, 3
  br i1 %.not1292.i, label %._crit_edge1010.i, label %.lr.ph1009.i.preheader

.lr.ph1009.i.preheader:                           ; preds = %check_plte.exit.i
  %xtraiter473 = and i64 %3, 1
  %.sroa.4.0.copyload.i.off = add i32 %.sroa.4.0.copyload.i, -3
  %4 = icmp ult i32 %.sroa.4.0.copyload.i.off, 3
  br i1 %4, label %.lr.ph1009.i.epil.preheader, label %.lr.ph1009.i.preheader.new

.lr.ph1009.i.preheader.new:                       ; preds = %.lr.ph1009.i.preheader
  %unroll_iter = and i64 %3, 510
  br label %.lr.ph1009.i

.lr.ph1009.i:                                     ; preds = %.lr.ph1009.i, %.lr.ph1009.i.preheader.new
  %.05771008.i = phi i64 [ 0, %.lr.ph1009.i.preheader.new ], [ %i.ix, %.lr.ph1009.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph1009.i.preheader.new ], [ %niter.next.1, %.lr.ph1009.i ]
  %i.ic = mul nuw nsw i64 %.05771008.i, 3
  %i.id = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ic ; 3 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !51
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.05771008.i ; 3 uses
  store i8 %i.ie, ptr %i.if, align 4, !tbaa !81
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !51
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !82
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !51
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  store i8 %i.ik, ptr %i.il, align 2, !tbaa !83
  %i.im = or disjoint i64 %.05771008.i, 1         ; 2 uses
  %i.in = mul nuw nsw i64 %i.im, 3
  %i.io = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.in ; 3 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !51
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.im ; 3 uses
  store i8 %i.ip, ptr %i.iq, align 4, !tbaa !81
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !51
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  store i8 %i.is, ptr %i.it, align 1, !tbaa !82
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !51
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  store i8 %i.iv, ptr %i.iw, align 2, !tbaa !83
  %i.ix = add nuw nsw i64 %.05771008.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1010.i.loopexit.unr-lcssa, label %.lr.ph1009.i, !llvm.loop !289

._crit_edge1010.i.loopexit.unr-lcssa:             ; preds = %.lr.ph1009.i
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
  br i1 %lcmp.mod474.not, label %._crit_edge1010.i, label %.lr.ph1009.i.epil.preheader

.lr.ph1009.i.epil.preheader:                      ; preds = %._crit_edge1010.i.loopexit.unr-lcssa, %.lr.ph1009.i.preheader
  %.05771008.i.epil.init = phi i64 [ 0, %.lr.ph1009.i.preheader ], [ %i.ix, %._crit_edge1010.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod475 = trunc i32 %i.hu to i1
  tail call void @llvm.assume(i1 %lcmp.mod475)
  %i.iy = mul nuw nsw i64 %.05771008.i.epil.init, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.iy ; 3 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !51
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.05771008.i.epil.init ; 3 uses
  store i8 %i.ja, ptr %i.jb, align 4, !tbaa !81
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !51
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !82
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !51
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  store i8 %i.jg, ptr %i.jh, align 2, !tbaa !83
  br label %._crit_edge1010.i

._crit_edge1010.i:                                ; preds = %.lr.ph1009.i.epil.preheader, %._crit_edge1010.i.loopexit.unr-lcssa, %check_plte.exit.i
  %i.ji = or i32 %i.hr, 2
  store i32 %i.ji, ptr %i.dt, align 8
  br label %.backedge.sink.split.i

bb.au:                                            ; preds = %bb.ao
  %i.jj = load i32, ptr %i.a, align 8, !tbaa !50
  %i.jk = icmp eq i32 %i.jj, 8
  br i1 %i.jk, label %bb.av, label %read_non_idat_chunks.exit.thread

bb.av:                                            ; preds = %bb.au
  %.not790.i = icmp eq i32 %.sroa.4.0.copyload.i, 0
  br i1 %.not790.i, label %bb.aw, label %read_non_idat_chunks.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.jl = tail call fastcc i32 @read_and_check_crc(ptr noundef nonnull %0) ; 2 uses
  %i.jm = icmp eq i32 %i.jl, -1
  br i1 %i.jm, label %read_non_idat_chunks.exit.thread114, label %read_non_idat_chunks.exit

bb.ax:                                            ; preds = %bb.an
  switch i32 %.sroa.29.0.copyload.i, label %bb.hl [
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
  %i.jn = load i32, ptr %i.dt, align 8            ; 3 uses
  %i.jo = and i32 %i.jn, 2
  %.not656.i = icmp eq i32 %i.jo, 0
  br i1 %.not656.i, label %bb.az, label %read_non_idat_chunks.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.jp = load i32, ptr %i.a, align 8, !tbaa !50
  %i.jq = icmp eq i32 %i.jp, 8
  br i1 %i.jq, label %read_non_idat_chunks.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jr = and i32 %i.jn, 4
  %.not657.i = icmp eq i32 %i.jr, 0
  br i1 %.not657.i, label %bb.bb, label %read_non_idat_chunks.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %.not658.i = icmp eq i32 %.sroa.4.0.copyload.i, 32
  br i1 %.not658.i, label %bb.bc, label %read_non_idat_chunks.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.js = load i8, ptr %i.hp, align 1, !tbaa !51
  %i.jt = zext i8 %i.js to i32
  %i.ju = shl nuw i32 %i.jt, 24                   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !51
  %i.jx = zext i8 %i.jw to i32
  %i.jy = shl nuw nsw i32 %i.jx, 16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !51
  %i.kb = zext i8 %i.ka to i32
  %i.kc = shl nuw nsw i32 %i.kb, 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !51
  %i.kf = zext i8 %i.ke to i32
  %i.kg = or disjoint i32 %i.jy, %i.kf
  %i.kh = or disjoint i32 %i.kg, %i.kc
  %i.ki = or disjoint i32 %i.kh, %i.ju
  store i32 %i.ki, ptr %i.fo, align 8, !tbaa !112
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !51
  %i.kl = zext i8 %i.kk to i32
  %i.km = shl nuw i32 %i.kl, 24                   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.hp, i64 5
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !51
  %i.kp = zext i8 %i.ko to i32
  %i.kq = shl nuw nsw i32 %i.kp, 16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hp, i64 6
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !51
  %i.kt = zext i8 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hp, i64 7
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !51
  %i.kx = zext i8 %i.kw to i32
  %i.ky = or disjoint i32 %i.kq, %i.kx
  %i.kz = or disjoint i32 %i.ky, %i.ku
  %i.la = or disjoint i32 %i.kz, %i.km
  store i32 %i.la, ptr %i.fp, align 4, !tbaa !113
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !51
  %i.ld = zext i8 %i.lc to i32
  %i.le = shl nuw i32 %i.ld, 24                   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.hp, i64 9
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !51
  %i.lh = zext i8 %i.lg to i32
  %i.li = shl nuw nsw i32 %i.lh, 16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.hp, i64 10
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !51
  %i.ll = zext i8 %i.lk to i32
  %i.lm = shl nuw nsw i32 %i.ll, 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.hp, i64 11
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !51
  %i.lp = zext i8 %i.lo to i32
  %i.lq = or disjoint i32 %i.li, %i.lp
  %i.lr = or disjoint i32 %i.lq, %i.lm
  %i.ls = or disjoint i32 %i.lr, %i.le
  store i32 %i.ls, ptr %i.fq, align 8, !tbaa !114
  %i.lt = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !51
  %i.lv = zext i8 %i.lu to i32
  %i.lw = shl nuw i32 %i.lv, 24                   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.hp, i64 13
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !51
  %i.lz = zext i8 %i.ly to i32
  %i.ma = shl nuw nsw i32 %i.lz, 16
  %i.mb = getelementptr inbounds nuw i8, ptr %i.hp, i64 14
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !51
  %i.md = zext i8 %i.mc to i32
  %i.me = shl nuw nsw i32 %i.md, 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.hp, i64 15
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !51
  %i.mh = zext i8 %i.mg to i32
  %i.mi = or disjoint i32 %i.ma, %i.mh
  %i.mj = or disjoint i32 %i.mi, %i.me
  %i.mk = or disjoint i32 %i.mj, %i.lw
  store i32 %i.mk, ptr %i.fr, align 4, !tbaa !115
  %i.ml = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !51
  %i.mn = zext i8 %i.mm to i32
  %i.mo = shl nuw i32 %i.mn, 24                   ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.hp, i64 17
end_hunk_0
begin_hunk_1_@read_chunks:bb.a

bb.gj:                                            ; preds = %bb.gi
  %i.als = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ali, ptr noundef nonnull dereferenceable(1) @.str.91) #29
  %.not24.i = icmp eq ptr %i.als, null
  br i1 %.not24.i, label %.lr.ph.i68, label %read_non_idat_chunks.exit.thread

bb.gk:                                            ; preds = %.lr.ph.i68
  %i.alt = getelementptr inbounds nuw i8, ptr %.028.i, i64 1 ; 2 uses
  %.not25.i = icmp eq ptr %i.alt, %i.all
  br i1 %.not25.i, label %check_png_keyword.exit, label %.lr.ph.i68, !llvm.loop !4

.lr.ph.i68:                                       ; preds = %bb.gj, %bb.gk
  %.028.i = phi ptr [ %i.alt, %bb.gk ], [ %i.ali, %bb.gj ] ; 2 uses
  %.0.copyload.i = load i8, ptr %.028.i, align 1  ; 2 uses
  %i.alu = add i8 %.0.copyload.i, -32
  %or.cond.i69 = icmp ult i8 %i.alu, 95
  %i.alv = icmp ugt i8 %.0.copyload.i, -96
  %or.cond5.i = or i1 %i.alv, %or.cond.i69
  br i1 %or.cond5.i, label %bb.gk, label %read_non_idat_chunks.exit.thread

check_png_keyword.exit:                           ; preds = %bb.gk
  %i.alw = getelementptr inbounds nuw i8, ptr %i.agn, i64 16
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !160 ; 2 uses
  %i.aly = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.alx) #29 ; 3 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.agn, i64 24
  store i64 %i.aly, ptr %i.alz, align 8, !tbaa !156
  %i.ama = load i32, ptr %i.agn, align 8, !tbaa !155 ; 2 uses
  %.not758.i = icmp eq i32 %i.ama, 3
  br i1 %.not758.i, label %.loopexit969.i, label %bb.gl

bb.gl:                                            ; preds = %check_png_keyword.exit
  %i.amb = load i16, ptr %i.dh, align 4
  %i.amc = and i16 %i.amb, 32
  %.not759.i = icmp eq i16 %i.amc, 0
  br i1 %.not759.i, label %.loopexit969.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.amd = icmp eq i64 %i.aly, 0
  br i1 %i.amd, label %.loopexit.i, label %.preheader.i.i

bb.gn:                                            ; preds = %.preheader.i.i
  %i.ame = add nuw i64 %.024.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ame, %i.aly
  br i1 %exitcond.not.i.i, label %.loopexit969.i, label %.preheader.i.i, !llvm.loop !5

.preheader.i.i:                                   ; preds = %bb.gm, %bb.gn
  %.024.i.i = phi i64 [ %i.ame, %bb.gn ], [ 0, %bb.gm ] ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alx, i64 %.024.i.i
  %.0.copyload.i.i = load i8, ptr %i.amf, align 1 ; 3 uses
  %i.amg = add i8 %.0.copyload.i.i, -32
  %or.cond4.i.i = icmp ult i8 %i.amg, 95
  %i.amh = icmp ugt i8 %.0.copyload.i.i, -96
  %or.cond7.i.i = or i1 %i.amh, %or.cond4.i.i
  %i.ami = icmp eq i8 %.0.copyload.i.i, 10
  %or.cond10.i.i = or i1 %i.ami, %or.cond7.i.i
  br i1 %or.cond10.i.i, label %bb.gn, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.gm, %.preheader.i.i
  %i.amj = icmp eq i32 %i.ama, 2
  %spec.select = select i1 %i.amj, i32 45, i32 43
  br label %read_non_idat_chunks.exit.thread

.loopexit969.i:                                   ; preds = %bb.gn, %bb.gl, %check_png_keyword.exit
  %.1573.i = phi i32 [ %.05721480.i, %check_png_keyword.exit ], [ %i.ahq, %bb.gl ], [ %i.ahq, %bb.gn ]
  %.2.i = phi i32 [ %.15711482.i, %check_png_keyword.exit ], [ %i.ahq, %bb.gl ], [ %i.ahq, %bb.gn ]
  %i.amk = zext i32 %.1573.i to i64
  %i.aml = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.agn, i64 40
  store ptr %i.aml, ptr %i.amm, align 8, !tbaa !162
  %i.amn = zext i32 %.2.i to i64
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.amn
  %i.amp = getelementptr inbounds nuw i8, ptr %i.agn, i64 48
  store ptr %i.amo, ptr %i.amp, align 8, !tbaa !163
  %i.amq = load i32, ptr %i.dk, align 8
  %i.amr = or i32 %i.amq, 128
  store i32 %i.amr, ptr %i.dk, align 8
  br label %bb.ic

bb.go:                                            ; preds = %bb.ax
  %i.ams = load i32, ptr %i.a, align 8, !tbaa !50
  %i.amt = icmp eq i32 %i.ams, 8
  br i1 %i.amt, label %read_non_idat_chunks.exit.thread, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.amu = load i32, ptr %i.ds, align 4
  %i.amv = and i32 %i.amu, 4096
  %.not763.i = icmp eq i32 %i.amv, 0
  br i1 %.not763.i, label %bb.gq, label %bb.ic

bb.gq:                                            ; preds = %bb.gp
  %.not764.i = icmp eq i32 %.sroa.4.0.copyload.i, 0
  br i1 %.not764.i, label %read_non_idat_chunks.exit.thread, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.amw = load i32, ptr %i.dt, align 8
  %i.amx = or i32 %i.amw, 4096
  store i32 %i.amx, ptr %i.dt, align 8
  %i.amy = zext i32 %.sroa.4.0.copyload.i to i64  ; 4 uses
  %i.amz = add nuw nsw i64 %i.amy, 96
  %i.ana = tail call fastcc i32 @increase_cache_usage(ptr noundef nonnull %0, i64 noundef %i.amz, i32 noundef 1)
  %.not765.i = icmp eq i32 %i.ana, 0
  br i1 %.not765.i, label %bb.gs, label %read_non_idat_chunks.exit.thread110

bb.gs:                                            ; preds = %bb.gr
  %i.anb = load i32, ptr %i.du, align 4, !tbaa !164
  %i.anc = add i32 %i.anb, 1                      ; 3 uses
  store i32 %i.anc, ptr %i.du, align 4, !tbaa !164
  %i.and = icmp eq i32 %i.anc, 0
  br i1 %i.and, label %read_non_idat_chunks.exit.thread110, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ane = zext i32 %i.anc to i64
  %i.anf = load ptr, ptr %i.dv, align 8, !tbaa !165
  %i.ang = mul nuw nsw i64 %i.ane, 96
  %.val845.i = load ptr, ptr %i.dw, align 8, !tbaa !153
  %i.anh = tail call ptr %.val845.i(ptr noundef %i.anf, i64 noundef %i.ang) #28, !inline_history !296 ; 3 uses
  %i.ani = icmp eq ptr %i.anh, null
  br i1 %i.ani, label %read_non_idat_chunks.exit.thread110, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  store ptr %i.anh, ptr %i.dv, align 8, !tbaa !165
  %i.anj = load i32, ptr %i.du, align 4, !tbaa !164
  %i.ank = add i32 %i.anj, -1
  %i.anl = zext i32 %i.ank to i64
  %i.anm = getelementptr inbounds nuw [96 x i8], ptr %i.anh, i64 %i.anl ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.anm, i8 0, i64 96, i1 false)
  store ptr @splt_undo, ptr %i.di, align 8, !tbaa !308
  %.val836.i = load ptr, ptr %i.dx, align 8, !tbaa !143
  %i.ann = tail call ptr %.val836.i(i64 noundef %i.amy) #28, !inline_history !295 ; 10 uses
  %i.ano = icmp eq ptr %i.ann, null
  br i1 %i.ano, label %read_non_idat_chunks.exit.thread110, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anm, i64 88 ; 2 uses
  store ptr %i.ann, ptr %i.anp, align 8, !tbaa !168
  %i.anq = tail call fastcc i32 @read_chunk_bytes2(ptr noundef nonnull %0, ptr noundef nonnull %i.ann, i32 noundef %.sroa.4.0.copyload.i) ; 2 uses
  %.not766.i = icmp eq i32 %i.anq, 0
  br i1 %.not766.i, label %bb.gw, label %read_non_idat_chunks.exit

bb.gw:                                            ; preds = %bb.gv
  %i.anr = tail call i32 @llvm.umin.i32(i32 %.sroa.4.0.copyload.i, i32 80)
  %i.ans = zext nneg i32 %i.anr to i64
  %i.ant = tail call ptr @memchr(ptr noundef nonnull %i.ann, i32 noundef 0, i64 noundef %i.ans) #29 ; 2 uses
  %i.anu = icmp eq ptr %i.ant, null
  br i1 %i.anu, label %read_non_idat_chunks.exit.thread, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.anv = ptrtoint ptr %i.ant to i64
  %i.anw = ptrtoint ptr %i.ann to i64
  %i.anx = sub i64 %i.anv, %i.anw                 ; 3 uses
  %i.any = trunc i64 %i.anx to i32
  %i.anz = and i64 %i.anx, 4294967295             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.anm, ptr nonnull align 1 %i.ann, i64 %i.anz, i1 false)
  %i.aoa = tail call fastcc i32 @check_png_keyword(ptr noundef nonnull %i.anm)
  %.not767.i = icmp eq i32 %i.aoa, 0
  br i1 %.not767.i, label %.preheader974.i, label %read_non_idat_chunks.exit.thread

.preheader974.i:                                  ; preds = %bb.gx
  %i.aob = load i32, ptr %i.du, align 4, !tbaa !164
  %i.aoc = add i32 %i.aob, -1                     ; 2 uses
  %.not1283.i = icmp eq i32 %i.aoc, 0
  br i1 %.not1283.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader974.i
  %i.aod = load ptr, ptr %i.dv, align 8, !tbaa !165
  %wide.trip.count.i = zext i32 %i.aoc to i64
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gz
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.gz, !llvm.loop !298

bb.gz:                                            ; preds = %bb.gy, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.gy ] ; 2 uses
  %i.aoe = getelementptr inbounds nuw [96 x i8], ptr %i.aod, i64 %indvars.iv.i
  %i.aof = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aoe, ptr noundef nonnull dereferenceable(1) %i.anm) #29
  %.not773.i = icmp eq i32 %i.aof, 0
  br i1 %.not773.i, label %read_non_idat_chunks.exit.thread, label %bb.gy

._crit_edge.i:                                    ; preds = %bb.gy, %.preheader974.i
  %i.aog = sub i32 %.sroa.4.0.copyload.i, %i.any  ; 2 uses
  %i.aoh = icmp ult i32 %i.aog, 3
  br i1 %i.aoh, label %read_non_idat_chunks.exit.thread, label %bb.ha

bb.ha:                                            ; preds = %._crit_edge.i
  %i.aoi = add i64 %i.anx, 1
  %i.aoj = and i64 %i.aoi, 4294967295
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ann, i64 %i.aoj
  %i.aol = load i8, ptr %i.aok, align 1, !tbaa !51 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.anm, i64 80 ; 2 uses
  store i8 %i.aol, ptr %i.aom, align 8, !tbaa !169
  %i.aon = add i32 %i.aog, -2                     ; 4 uses
  switch i8 %i.aol, label %read_non_idat_chunks.exit.thread [
    i8 16, label %bb.hb
    i8 8, label %bb.hc
  ]

bb.hb:                                            ; preds = %bb.ha
  %i.aoo = urem i32 %i.aon, 10
  %i.aop = udiv i32 %i.aon, 10
  %.not770.i = icmp eq i32 %i.aoo, 0
  br i1 %.not770.i, label %bb.hd, label %read_non_idat_chunks.exit.thread

bb.hc:                                            ; preds = %bb.ha
  %i.aoq = urem i32 %i.aon, 6
  %i.aor = udiv i32 %i.aon, 6
  %.not769.i = icmp eq i32 %i.aoq, 0
  br i1 %.not769.i, label %bb.hd, label %read_non_idat_chunks.exit.thread

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.sink1554.i = phi i32 [ %i.aop, %bb.hb ], [ %i.aor, %bb.hc ] ; 3 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.anm, i64 84 ; 3 uses
  store i32 %.sink1554.i, ptr %i.aos, align 4, !tbaa !170
  %.not771.i = icmp eq i32 %.sink1554.i, 0
  br i1 %.not771.i, label %read_non_idat_chunks.exit.thread, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aot = zext nneg i32 %.sink1554.i to i64
  %i.aou = mul nuw nsw i64 %i.aot, 10             ; 2 uses
  %i.aov = load i64, ptr %i.dy, align 8, !tbaa !149 ; 2 uses
  %i.aow = add i64 %i.aov, %i.aou                 ; 3 uses
  %i.aox = icmp ult i64 %i.aow, %i.aov
  br i1 %i.aox, label %read_non_idat_chunks.exit.thread110, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aoy = load i64, ptr %i.dz, align 8, !tbaa !150
  %i.aoz = icmp ugt i64 %i.aow, %i.aoy
  br i1 %i.aoz, label %read_non_idat_chunks.exit.thread110, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  store i64 %i.aow, ptr %i.dy, align 8, !tbaa !149
  %.val835.i = load ptr, ptr %i.dx, align 8, !tbaa !143
  %i.apa = tail call ptr %.val835.i(i64 noundef %i.aou) #28, !inline_history !295 ; 4 uses
  store ptr %i.apa, ptr %i.anp, align 8, !tbaa !168
  %i.apb = icmp eq ptr %i.apa, null
  br i1 %i.apb, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %.val841.i = load ptr, ptr %i.ea, align 8, !tbaa !145
  tail call void %.val841.i(ptr noundef nonnull %i.ann) #28, !inline_history !299
  br label %read_non_idat_chunks.exit.thread110

bb.hi:                                            ; preds = %bb.hg
  %i.apc = getelementptr inbounds nuw i8, ptr %i.ann, i64 %i.anz
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 2 ; 5 uses
  %i.ape = load i8, ptr %i.aom, align 8, !tbaa !169
  switch i8 %i.ape, label %.loopexit971.i [
    i8 16, label %.preheader970.i
    i8 8, label %.preheader972.i
  ]

.preheader972.i:                                  ; preds = %bb.hi
  %i.apf = load i32, ptr %i.aos, align 4, !tbaa !170 ; 2 uses
  %.not1284.i = icmp eq i32 %i.apf, 0
  br i1 %.not1284.i, label %.loopexit971.i, label %.lr.ph1002.preheader.i

.lr.ph1002.preheader.i:                           ; preds = %.preheader972.i
  %wide.trip.count1324.i = zext i32 %i.apf to i64
  br label %.lr.ph1002.i

.preheader970.i:                                  ; preds = %bb.hi
  %i.apg = load i32, ptr %i.aos, align 4, !tbaa !170 ; 2 uses
  %.not1285.i = icmp eq i32 %i.apg, 0
  br i1 %.not1285.i, label %.loopexit971.i, label %.lr.ph1004.preheader.i

.lr.ph1004.preheader.i:                           ; preds = %.preheader970.i
  %wide.trip.count1329.i = zext i32 %i.apg to i64
  br label %.lr.ph1004.i

.lr.ph1004.i:                                     ; preds = %.lr.ph1004.i, %.lr.ph1004.preheader.i
  %indvars.iv1326.i = phi i64 [ 0, %.lr.ph1004.preheader.i ], [ %indvars.iv.next1327.i, %.lr.ph1004.i ] ; 3 uses
  %i.aph = mul nuw nsw i64 %indvars.iv1326.i, 10
  %i.api = and i64 %i.aph, 4294967294
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apd, i64 %i.api ; 10 uses
  %.val810.i = load i8, ptr %i.apj, align 1, !tbaa !51
  %i.apk = getelementptr i8, ptr %i.apj, i64 1
  %.val811.i = load i8, ptr %i.apk, align 1, !tbaa !51
  %i.apl = zext i8 %.val810.i to i16
  %i.apm = shl nuw i16 %i.apl, 8
  %i.apn = zext i8 %.val811.i to i16
  %i.apo = or disjoint i16 %i.apm, %i.apn
  %i.app = getelementptr inbounds nuw [10 x i8], ptr %i.apa, i64 %indvars.iv1326.i ; 5 uses
  store i16 %i.apo, ptr %i.app, align 2, !tbaa !172
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apj, i64 2
  %.val808.i = load i8, ptr %i.apq, align 1, !tbaa !51
  %i.apr = getelementptr i8, ptr %i.apj, i64 3
  %.val809.i = load i8, ptr %i.apr, align 1, !tbaa !51
  %i.aps = zext i8 %.val808.i to i16
  %i.apt = shl nuw i16 %i.aps, 8
  %i.apu = zext i8 %.val809.i to i16
  %i.apv = or disjoint i16 %i.apt, %i.apu
  %i.apw = getelementptr inbounds nuw i8, ptr %i.app, i64 2
  store i16 %i.apv, ptr %i.apw, align 2, !tbaa !173
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apj, i64 4
  %.val806.i = load i8, ptr %i.apx, align 1, !tbaa !51
  %i.apy = getelementptr i8, ptr %i.apj, i64 5
  %.val807.i = load i8, ptr %i.apy, align 1, !tbaa !51
  %i.apz = zext i8 %.val806.i to i16
  %i.aqa = shl nuw i16 %i.apz, 8
  %i.aqb = zext i8 %.val807.i to i16
  %i.aqc = or disjoint i16 %i.aqa, %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.app, i64 4
  store i16 %i.aqc, ptr %i.aqd, align 2, !tbaa !174
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apj, i64 6
  %.val804.i = load i8, ptr %i.aqe, align 1, !tbaa !51
  %i.aqf = getelementptr i8, ptr %i.apj, i64 7
  %.val805.i = load i8, ptr %i.aqf, align 1, !tbaa !51
  %i.aqg = zext i8 %.val804.i to i16
  %i.aqh = shl nuw i16 %i.aqg, 8
  %i.aqi = zext i8 %.val805.i to i16
  %i.aqj = or disjoint i16 %i.aqh, %i.aqi
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.app, i64 6
  store i16 %i.aqj, ptr %i.aqk, align 2, !tbaa !175
  %i.aql = getelementptr inbounds nuw i8, ptr %i.apj, i64 8
  %.val802.i = load i8, ptr %i.aql, align 1, !tbaa !51
  %i.aqm = getelementptr i8, ptr %i.apj, i64 9
  %.val803.i = load i8, ptr %i.aqm, align 1, !tbaa !51
  %i.aqn = zext i8 %.val802.i to i16
  %i.aqo = shl nuw i16 %i.aqn, 8
  %i.aqp = zext i8 %.val803.i to i16
  %i.aqq = or disjoint i16 %i.aqo, %i.aqp
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  store i16 %i.aqq, ptr %i.aqr, align 2, !tbaa !176
  %indvars.iv.next1327.i = add nuw nsw i64 %indvars.iv1326.i, 1 ; 2 uses
  %exitcond1330.not.i = icmp eq i64 %indvars.iv.next1327.i, %wide.trip.count1329.i
  br i1 %exitcond1330.not.i, label %.loopexit971.i, label %.lr.ph1004.i, !llvm.loop !300

.lr.ph1002.i:                                     ; preds = %.lr.ph1002.i, %.lr.ph1002.preheader.i
  %indvars.iv1321.i = phi i64 [ 0, %.lr.ph1002.preheader.i ], [ %indvars.iv.next1322.i, %.lr.ph1002.i ] ; 3 uses
  %i.aqs = trunc nuw i64 %indvars.iv1321.i to i32
  %i.aqt = mul i32 %i.aqs, 6                      ; 4 uses
  %i.aqu = zext i32 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.apd, i64 %i.aqu ; 3 uses
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !51
  %i.aqx = zext i8 %i.aqw to i16
  %i.aqy = getelementptr inbounds nuw [10 x i8], ptr %i.apa, i64 %indvars.iv1321.i ; 5 uses
  store i16 %i.aqx, ptr %i.aqy, align 2, !tbaa !172
  %i.aqz = or disjoint i32 %i.aqt, 1
  %i.ara = zext i32 %i.aqz to i64
  %i.arb = getelementptr inbounds nuw i8, ptr %i.apd, i64 %i.ara
  %i.arc = load i8, ptr %i.arb, align 1, !tbaa !51
  %i.ard = zext i8 %i.arc to i16
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqy, i64 2
  store i16 %i.ard, ptr %i.are, align 2, !tbaa !173
  %i.arf = add i32 %i.aqt, 2
  %i.arg = zext i32 %i.arf to i64
  %i.arh = getelementptr inbounds nuw i8, ptr %i.apd, i64 %i.arg
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !51
  %i.arj = zext i8 %i.ari to i16
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqy, i64 4
  store i16 %i.arj, ptr %i.ark, align 2, !tbaa !174
  %i.arl = add i32 %i.aqt, 3
  %i.arm = zext i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw i8, ptr %i.apd, i64 %i.arm
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !51
  %i.arp = zext i8 %i.aro to i16
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aqy, i64 6
  store i16 %i.arp, ptr %i.arq, align 2, !tbaa !175
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aqv, i64 4
  %.val800.i = load i8, ptr %i.arr, align 1, !tbaa !51
  %i.ars = getelementptr i8, ptr %i.aqv, i64 5
  %.val801.i = load i8, ptr %i.ars, align 1, !tbaa !51
  %i.art = zext i8 %.val800.i to i16
  %i.aru = shl nuw i16 %i.art, 8
  %i.arv = zext i8 %.val801.i to i16
  %i.arw = or disjoint i16 %i.aru, %i.arv
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  store i16 %i.arw, ptr %i.arx, align 2, !tbaa !176
  %indvars.iv.next1322.i = add nuw nsw i64 %indvars.iv1321.i, 1 ; 2 uses
  %exitcond1325.not.i = icmp eq i64 %indvars.iv.next1322.i, %wide.trip.count1324.i
  br i1 %exitcond1325.not.i, label %.loopexit971.i, label %.lr.ph1002.i, !llvm.loop !301

.loopexit971.i:                                   ; preds = %.lr.ph1002.i, %.lr.ph1004.i, %.preheader970.i, %.preheader972.i, %bb.hi
  %.val840.i = load ptr, ptr %i.ea, align 8, !tbaa !145
  tail call void %.val840.i(ptr noundef nonnull %i.ann) #28, !inline_history !299
  %i.ary = load i64, ptr %i.dy, align 8, !tbaa !149 ; 2 uses
  %i.arz = icmp ult i64 %i.ary, %i.amy
  br i1 %i.arz, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %.loopexit971.i
  %i.asa = sub nuw i64 %i.ary, %i.amy
  store i64 %i.asa, ptr %i.dy, align 8, !tbaa !149
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %.loopexit971.i
  %i.asb = load i32, ptr %i.dk, align 8
  %i.asc = or i32 %i.asb, 4096
  store i32 %i.asc, ptr %i.dk, align 8
  br label %bb.ic

bb.hl:                                            ; preds = %bb.ax
  %i.asd = load i32, ptr %i.dt, align 8
  %i.ase = or i32 %i.asd, 65536
  store i32 %i.ase, ptr %i.dt, align 8
  %i.asf = load i16, ptr %i.dh, align 4
  %i.asg = and i16 %i.asf, 256
  %.not774.i = icmp eq i16 %i.asg, 0
  br i1 %.not774.i, label %bb.ic, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ash = load i32, ptr %i.ds, align 4
  %i.asi = and i32 %i.ash, 65536
  %.not775.i = icmp eq i32 %i.asi, 0
  br i1 %.not775.i, label %bb.hn, label %bb.ic

bb.hn:                                            ; preds = %bb.hm
end_hunk_1
