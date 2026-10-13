Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sunrast?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sunrast_decode_frame:bb.a
  %i.fb = tail call ptr @av_malloc_array(i64 noundef %i.ez, i64 noundef %i.fa) #5 ; 3 uses
  store ptr %i.fb, ptr %i.a, align 8, !tbaa !41
  %.not239 = icmp eq ptr %i.fb, null
  br i1 %.not239, label %bb.bc, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = lshr i32 %i.ey, 3
  %i.fd = mul nuw nsw i32 %i.fc, %i.s
  %i.fe = zext nneg i32 %i.fd to i64
  br label %bb.al

bb.ak:                                            ; preds = %.thread246, %._crit_edge
  %i.ff = phi i1 [ %i.ev, %.thread246 ], [ false, %._crit_edge ]
  %i.fg = phi ptr [ %i.eu, %.thread246 ], [ %i.ew, %._crit_edge ]
  %i.fh = load ptr, ptr %1, align 8, !tbaa !41
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !65
  %i.fk = sext i32 %i.fj to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fl = phi i1 [ true, %bb.aj ], [ %i.ff, %bb.ak ]
  %i.fm = phi ptr [ %i.ew, %bb.aj ], [ %i.fg, %bb.ak ] ; 5 uses
  %.0196 = phi i64 [ %i.fe, %bb.aj ], [ %i.fk, %bb.ak ] ; 3 uses
  %.1195 = phi ptr [ %i.fb, %bb.aj ], [ %i.fh, %bb.ak ] ; 3 uses
  %i.fn = icmp eq i32 %i.u, 33554432
  br i1 %i.fn, label %bb.am, label %.preheader250

.preheader250:                                    ; preds = %bb.al
  %.not281 = icmp eq i32 %i.o, 0
  br i1 %.not281, label %.critedge, label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader250
  %i.fo = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.fp = zext nneg i32 %i.aw to i64
  br label %bb.ay

bb.am:                                            ; preds = %bb.al
  %i.fq = zext nneg i32 %i.p to i64
  %i.fr = mul nsw i64 %.0196, %i.fq               ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.1195, i64 %i.fr ; 2 uses
  %i.ft = icmp eq i64 %i.fr, 0
  %i.fu = icmp uge ptr %i.fm, %i.h
  %.not245263 = select i1 %i.ft, i1 true, i1 %i.fu
  br i1 %.not245263, label %.critedge, label %.lr.ph268

.lr.ph268:                                        ; preds = %bb.am, %bb.ax
  %.2266 = phi ptr [ %.5, %bb.ax ], [ %.1195, %bb.am ]
  %.1200265 = phi i32 [ %.4203, %bb.ax ], [ 0, %bb.am ]
  %.0205264 = phi ptr [ %.1206, %bb.ax ], [ %i.fm, %bb.am ] ; 5 uses
  %i.fv = ptrtoint ptr %.0205264 to i64
  %i.fw = sub i64 %i.bb, %i.fv
  %i.fx = icmp slt i64 %i.fw, 1
  br i1 %i.fx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph268
  call void @av_freep(ptr noundef nonnull %i.a) #5
  br label %bb.bc

bb.ao:                                            ; preds = %.lr.ph268
  %i.fy = getelementptr inbounds nuw i8, ptr %.0205264, i64 1 ; 2 uses
  %i.fz = load i8, ptr %.0205264, align 1, !tbaa !42 ; 2 uses
  %i.ga = icmp eq i8 %i.fz, -128
  br i1 %i.ga, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gb = getelementptr inbounds nuw i8, ptr %.0205264, i64 2 ; 2 uses
  %i.gc = load i8, ptr %i.fy, align 1, !tbaa !42  ; 2 uses
  %.not240 = icmp eq i8 %i.gc, 0
  br i1 %.not240, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gd = zext i8 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %.0205264, i64 3
  %i.gf = load i8, ptr %i.gb, align 1, !tbaa !42
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %.1206 = phi ptr [ %i.ge, %bb.aq ], [ %i.gb, %bb.ap ], [ %i.fy, %bb.ao ] ; 3 uses
  %.0191.shrunk = phi i8 [ %i.gf, %bb.aq ], [ -128, %bb.ap ], [ %i.fz, %bb.ao ]
  %.0 = phi i32 [ %i.gd, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.ao ]
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aw
  %i.gg = phi i32 [ %.0, %bb.ar ], [ %i.gn, %bb.aw ] ; 2 uses
  %.3262 = phi ptr [ %.2266, %bb.ar ], [ %.4, %bb.aw ] ; 3 uses
  %.2201261 = phi i32 [ %.1200265, %bb.ar ], [ %.3202, %bb.aw ] ; 3 uses
  %i.gh = icmp ult i32 %.2201261, %i.aw
  br i1 %i.gh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gi = zext nneg i32 %.2201261 to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %.3262, i64 %i.gi
  store i8 %.0191.shrunk, ptr %i.gj, align 1, !tbaa !42
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gk = add i32 %.2201261, 1                    ; 2 uses
  %.not242 = icmp ult i32 %i.gk, %i.ay
  br i1 %.not242, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gl = getelementptr inbounds i8, ptr %.3262, i64 %.0196 ; 3 uses
  %i.gm = icmp eq ptr %i.gl, %i.fs
  br i1 %i.gm, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.3202 = phi i32 [ 0, %bb.av ], [ %i.gk, %bb.au ] ; 2 uses
  %.4 = phi ptr [ %i.gl, %bb.av ], [ %.3262, %bb.au ] ; 2 uses
  %i.gn = add nsw i32 %i.gg, -1
  %.not241 = icmp eq i32 %i.gg, 0
  br i1 %.not241, label %bb.ax, label %bb.as, !llvm.loop !16

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.4203 = phi i32 [ 0, %bb.av ], [ %.3202, %bb.aw ]
  %.5 = phi ptr [ %i.gl, %bb.av ], [ %.4, %bb.aw ] ; 2 uses
  %i.go = icmp eq ptr %.5, %i.fs
  %i.gp = icmp uge ptr %.1206, %i.h
  %.not245 = select i1 %i.go, i1 true, i1 %i.gp
  br i1 %.not245, label %.critedge, label %.lr.ph268, !llvm.loop !17

bb.ay:                                            ; preds = %.lr.ph258, %bb.az
  %.6257 = phi ptr [ %.1195, %.lr.ph258 ], [ %i.gt, %bb.az ] ; 2 uses
  %.0197256 = phi i32 [ 0, %.lr.ph258 ], [ %i.gv, %bb.az ]
  %.2207255 = phi ptr [ %i.fm, %.lr.ph258 ], [ %i.gu, %bb.az ] ; 4 uses
  %i.gq = ptrtoint ptr %.2207255 to i64
  %i.gr = sub i64 %i.bb, %i.gq
  %i.gs = icmp slt i64 %i.gr, %i.fo
  br i1 %i.gs, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.6257, ptr align 1 %.2207255, i64 %i.fp, i1 false)
  %i.gt = getelementptr inbounds i8, ptr %.6257, i64 %.0196
  %i.gu = getelementptr inbounds nuw i8, ptr %.2207255, i64 %i.fo ; 2 uses
  %i.gv = add nuw i32 %.0197256, 1                ; 2 uses
  %exitcond288.not = icmp eq i32 %i.gv, %i.p
  br i1 %exitcond288.not, label %.critedge, label %bb.ay, !llvm.loop !18

.critedge:                                        ; preds = %bb.ay, %bb.az, %bb.ax, %.preheader250, %bb.am
  %.3208 = phi ptr [ %.1206, %bb.ax ], [ %i.fm, %bb.am ], [ %i.fm, %.preheader250 ], [ %.2207255, %bb.ay ], [ %i.gu, %bb.az ]
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !56
  %i.gy = icmp eq i32 %i.gx, 11
  %or.cond8 = select i1 %i.gy, i1 %i.fl, i1 false
  br i1 %or.cond8, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.gz = load ptr, ptr %i.a, align 8, !tbaa !41  ; 7 uses
  store ptr %i.gz, ptr %i.b, align 8, !tbaa !41
  %i.ha = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %.not282 = icmp eq i32 %i.o, 0
  br i1 %.not282, label %._crit_edge276, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.ba
  %i.hb = add nuw nsw i32 %i.m, 7
  %i.hc = lshr i32 %i.hb, 3                       ; 2 uses
  %i.hd = mul i32 %i.hc, %i.s                     ; 6 uses
  %.not283 = icmp eq i32 %i.hc, 0
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.hf = add i32 %i.m, 15
  %i.hg = lshr i32 %i.hf, 3
  %i.hh = mul i32 %i.hg, %i.s
  %i.hi = zext i32 %i.hh to i64                   ; 4 uses
  br i1 %.not283, label %._crit_edge276, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.hj = icmp eq i32 %i.r, 16777216
  br i1 %i.hj, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %umax292 = tail call i32 @llvm.umax.i32(i32 %i.hd, i32 1)
  %wide.trip.count293 = zext i32 %umax292 to i64  ; 10 uses
  %i.hk = shl nuw nsw i64 %wide.trip.count293, 1
  %i.hl = add i32 %i.p, -1
  %i.hm = zext i32 %i.hl to i64
  %i.hn = mul nuw i64 %i.hi, %i.hm
  %i.ho = getelementptr i8, ptr %i.gz, i64 %i.hn
  %scevgep356 = getelementptr i8, ptr %i.ho, i64 %wide.trip.count293
  %min.iters.check361 = icmp ult i32 %i.hd, 4
  %min.iters.check362 = icmp ult i32 %i.hd, 16
  %i.hp = and i64 %wide.trip.count293, 12
  %n.vec364 = and i64 %wide.trip.count293, 4294967280 ; 4 uses
  %cmp.n372 = icmp eq i64 %n.vec364, %wide.trip.count293
  %min.epilog.iters.check = icmp eq i64 %i.hp, 0
  %n.vec373 = and i64 %wide.trip.count293, 4294967292 ; 3 uses
  %cmp.n378 = icmp eq i64 %n.vec373, %wide.trip.count293
  %xtraiter416 = and i64 %wide.trip.count293, 1
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  %i.hq = add nsw i64 %wide.trip.count293, -1
  br label %iter.check

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %wide.trip.count301 = zext nneg i32 %i.hd to i64 ; 8 uses
  %i.hr = add i32 %i.p, -1
  %i.hs = zext i32 %i.hr to i64
  %i.ht = mul nuw nsw i64 %i.hi, %i.hs
  %i.hu = getelementptr i8, ptr %i.gz, i64 %i.ht
  %scevgep381 = getelementptr i8, ptr %i.hu, i64 %wide.trip.count301
  %i.hv = shl nuw nsw i64 %wide.trip.count301, 3
  %min.iters.check387 = icmp ult i32 %i.hd, 8
  %min.iters.check389 = icmp ult i32 %i.hd, 16
  %i.hw = and i64 %wide.trip.count301, 8
  %n.vec391 = and i64 %wide.trip.count301, 536870896 ; 4 uses
  %cmp.n398 = icmp eq i64 %n.vec391, %wide.trip.count301
  %min.epilog.iters.check403.not.not = icmp eq i64 %i.hw, 0
  %n.vec405 = and i64 %wide.trip.count301, 536870904 ; 3 uses
  %cmp.n412 = icmp eq i64 %n.vec405, %wide.trip.count301
  br label %iter.check400

iter.check400:                                    ; preds = %.preheader.us.us.preheader, %._crit_edge272.split.us.us.us
  %i.hx = phi ptr [ %i.kv, %._crit_edge272.split.us.us.us ], [ %i.gz, %.preheader.us.us.preheader ] ; 4 uses
  %.7274.us.us = phi ptr [ %i.ku, %._crit_edge272.split.us.us.us ], [ %i.ha, %.preheader.us.us.preheader ] ; 13 uses
  %.1198273.us.us = phi i32 [ %i.kw, %._crit_edge272.split.us.us.us ], [ 0, %.preheader.us.us.preheader ]
  br i1 %min.iters.check387, label %vec.epilog.scalar.ph401.preheader, label %vector.memcheck380

vector.memcheck380:                               ; preds = %iter.check400
  %scevgep382 = getelementptr i8, ptr %.7274.us.us, i64 %i.hv
  %bound0383 = icmp ult ptr %i.gz, %scevgep382
  %bound1384 = icmp ult ptr %.7274.us.us, %scevgep381
  %found.conflict385 = and i1 %bound0383, %bound1384
  br i1 %found.conflict385, label %vec.epilog.scalar.ph401.preheader, label %vector.main.loop.iter.check388

vector.main.loop.iter.check388:                   ; preds = %vector.memcheck380
  br i1 %min.iters.check389, label %vec.epilog.ph404, label %vector.body392

vector.body392:                                   ; preds = %vector.main.loop.iter.check388, %vector.body392
  %index393 = phi i64 [ %index.next396, %vector.body392 ], [ 0, %vector.main.loop.iter.check388 ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %index393
  %wide.load394 = load <16 x i8>, ptr %i.hy, align 1, !tbaa !42, !alias.scope !71, !noalias !72 ; 6 uses
  %i.hz = lshr <16 x i8> %wide.load394, splat (i8 7)
  %i.ia = shl i64 %index393, 3
  %i.ib = and i64 %i.ia, 4294967168
  %i.ic = getelementptr inbounds nuw i8, ptr %.7274.us.us, i64 %i.ib
  %i.id = lshr <16 x i8> %wide.load394, splat (i8 6)
  %i.ie = and <16 x i8> %i.id, splat (i8 1)
  %i.if = lshr <16 x i8> %wide.load394, splat (i8 1)
  %i.ig = shufflevector <16 x i8> %i.hz, <16 x i8> %i.ie, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ih = shufflevector <16 x i8> %wide.load394, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ii = lshr <32 x i8> %i.ih, <i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %i.ij = and <32 x i8> %i.ii, splat (i8 1)
  %i.ik = shufflevector <16 x i8> %wide.load394, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.il = lshr <32 x i8> %i.ik, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>
  %i.im = shufflevector <16 x i8> %i.if, <16 x i8> %wide.load394, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.in = shufflevector <32 x i8> %i.ig, <32 x i8> %i.ij, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.io = shufflevector <32 x i8> %i.il, <32 x i8> %i.im, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ip = and <64 x i8> %i.io, splat (i8 1)
  %interleaved.vec395 = shufflevector <64 x i8> %i.in, <64 x i8> %i.ip, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i8> %interleaved.vec395, ptr %i.ic, align 1, !tbaa !42, !alias.scope !72
  %index.next396 = add nuw i64 %index393, 16      ; 2 uses
  %i.iq = icmp eq i64 %index.next396, %n.vec391
  br i1 %i.iq, label %middle.block397, label %vector.body392, !llvm.loop !22

middle.block397:                                  ; preds = %vector.body392
  br i1 %cmp.n398, label %._crit_edge272.split.us.us.us, label %vec.epilog.iter.check402

vec.epilog.iter.check402:                         ; preds = %middle.block397
  br i1 %min.epilog.iters.check403.not.not, label %vec.epilog.scalar.ph401.preheader, label %vec.epilog.ph404, !prof !73

vec.epilog.ph404:                                 ; preds = %vector.main.loop.iter.check388, %vec.epilog.iter.check402
  %vec.epilog.resume.val399 = phi i64 [ %n.vec391, %vec.epilog.iter.check402 ], [ 0, %vector.main.loop.iter.check388 ]
  br label %vec.epilog.vector.body406

vec.epilog.vector.body406:                        ; preds = %vec.epilog.vector.body406, %vec.epilog.ph404
  %index407 = phi i64 [ %vec.epilog.resume.val399, %vec.epilog.ph404 ], [ %index.next410, %vec.epilog.vector.body406 ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hx, i64 %index407
  %wide.load408 = load <8 x i8>, ptr %i.ir, align 1, !tbaa !42, !alias.scope !71, !noalias !72 ; 8 uses
  %4 = lshr <8 x i8> %wide.load408, splat (i8 7)
  %i.is = shl i64 %index407, 3
  %i.it = and i64 %i.is, 4294967232
  %i.iu = getelementptr inbounds nuw i8, ptr %.7274.us.us, i64 %i.it
  %5 = lshr <8 x i8> %wide.load408, splat (i8 6)
  %6 = and <8 x i8> %5, splat (i8 1)
  %7 = lshr <8 x i8> %wide.load408, splat (i8 5)
  %8 = lshr <8 x i8> %wide.load408, splat (i8 4)
  %9 = lshr <8 x i8> %wide.load408, splat (i8 3)
  %10 = lshr <8 x i8> %wide.load408, splat (i8 2)
  %11 = lshr <8 x i8> %wide.load408, splat (i8 1)
  %12 = shufflevector <8 x i8> %4, <8 x i8> %6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %13 = shufflevector <8 x i8> %7, <8 x i8> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %14 = and <16 x i8> %13, splat (i8 1)
  %15 = shufflevector <8 x i8> %9, <8 x i8> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %16 = shufflevector <8 x i8> %11, <8 x i8> %wide.load408, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %17 = shufflevector <16 x i8> %12, <16 x i8> %14, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %18 = shufflevector <16 x i8> %15, <16 x i8> %16, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %19 = and <32 x i8> %18, splat (i8 1)
  %interleaved.vec409 = shufflevector <32 x i8> %17, <32 x i8> %19, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i8> %interleaved.vec409, ptr %i.iu, align 1, !tbaa !42, !alias.scope !72
  %index.next410 = add nuw i64 %index407, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next410, %n.vec405
  br i1 %i.iv, label %vec.epilog.middle.block411, label %vec.epilog.vector.body406, !llvm.loop !23

vec.epilog.middle.block411:                       ; preds = %vec.epilog.vector.body406
  br i1 %cmp.n412, label %._crit_edge272.split.us.us.us, label %vec.epilog.scalar.ph401.preheader

vec.epilog.scalar.ph401.preheader:                ; preds = %iter.check400, %vector.memcheck380, %vec.epilog.iter.check402, %vec.epilog.middle.block411
  %indvars.iv297.ph = phi i64 [ 0, %iter.check400 ], [ 0, %vector.memcheck380 ], [ %n.vec391, %vec.epilog.iter.check402 ], [ %n.vec405, %vec.epilog.middle.block411 ]
  br label %vec.epilog.scalar.ph401

vec.epilog.scalar.ph401:                          ; preds = %vec.epilog.scalar.ph401.preheader, %vec.epilog.scalar.ph401
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %vec.epilog.scalar.ph401 ], [ %indvars.iv297.ph, %vec.epilog.scalar.ph401.preheader ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv297 ; 8 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !42
  %i.iy = lshr i8 %i.ix, 7
  %i.iz = trunc nuw nsw i64 %indvars.iv297 to i32
  %i.ja = shl i32 %i.iz, 3                        ; 8 uses
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %.7274.us.us, i64 %i.jb
  store i8 %i.iy, ptr %i.jc, align 1, !tbaa !42
  %i.jd = load i8, ptr %i.iw, align 1, !tbaa !42
  %i.je = lshr i8 %i.jd, 6
  %i.jf = and i8 %i.je, 1
  %i.jg = or disjoint i32 %i.ja, 1
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %.7274.us.us, i64 %i.jh
  store i8 %i.jf, ptr %i.ji, align 1, !tbaa !42
  %i.jj = load i8, ptr %i.iw, align 1, !tbaa !42
  %i.jk = lshr i8 %i.jj, 5
  %i.jl = and i8 %i.jk, 1
  %i.jm = or disjoint i32 %i.ja, 2
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %.7274.us.us, i64 %i.jn
  store i8 %i.jl, ptr %i.jo, align 1, !tbaa !42
  %i.jp = load i8, ptr %i.iw, align 1, !tbaa !42
  %i.jq = lshr i8 %i.jp, 4
  %i.jr = and i8 %i.jq, 1
  %i.js = or disjoint i32 %i.ja, 3
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %.7274.us.us, i64 %i.jt
  store i8 %i.jr, ptr %i.ju, align 1, !tbaa !42
  %i.jv = load i8, ptr %i.iw, align 1, !tbaa !42
  %i.jw = lshr i8 %i.jv, 3
  %i.jx = and i8 %i.jw, 1
  %i.jy = or disjoint i32 %i.ja, 4
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %.7274.us.us, i64 %i.jz
  store i8 %i.jx, ptr %i.ka, align 1, !tbaa !42
  %i.kb = load i8, ptr %i.iw, align 1, !tbaa !42
  %i.kc = lshr i8 %i.kb, 2
  %i.kd = and i8 %i.kc, 1
  %i.ke = or disjoint i32 %i.ja, 5
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %.7274.us.us, i64 %i.kf
  store i8 %i.kd, ptr %i.kg, align 1, !tbaa !42
  %i.kh = load i8, ptr %i.iw, align 1, !tbaa !42
  %i.ki = lshr i8 %i.kh, 1
  %i.kj = and i8 %i.ki, 1
  %i.kk = or disjoint i32 %i.ja, 6
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %.7274.us.us, i64 %i.kl
  store i8 %i.kj, ptr %i.km, align 1, !tbaa !42
  %i.kn = load i8, ptr %i.iw, align 1, !tbaa !42
  %i.ko = and i8 %i.kn, 1
  %i.kp = or disjoint i32 %i.ja, 7
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %.7274.us.us, i64 %i.kq
  store i8 %i.ko, ptr %i.kr, align 1, !tbaa !42
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge272.split.us.us.us, label %vec.epilog.scalar.ph401, !llvm.loop !24

._crit_edge272.split.us.us.us:                    ; preds = %vec.epilog.scalar.ph401, %vec.epilog.middle.block411, %middle.block397
  %i.ks = load i32, ptr %i.he, align 8, !tbaa !65
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds i8, ptr %.7274.us.us, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hi
  %i.kw = add nuw nsw i32 %.1198273.us.us, 1      ; 2 uses
  %exitcond304.not = icmp eq i32 %i.kw, %i.p
  br i1 %exitcond304.not, label %._crit_edge276, label %iter.check400, !llvm.loop !25

iter.check:                                       ; preds = %.preheader.us.preheader, %._crit_edge272.split.us279
  %i.kx = phi ptr [ %i.mv, %._crit_edge272.split.us279 ], [ %i.gz, %.preheader.us.preheader ] ; 6 uses
  %.7274.us = phi ptr [ %i.mu, %._crit_edge272.split.us279 ], [ %i.ha, %.preheader.us.preheader ] ; 12 uses
  %.1198273.us = phi i32 [ %i.mw, %._crit_edge272.split.us279 ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check361, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck355

vector.memcheck355:                               ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.7274.us, i64 %i.hk
  %bound0357 = icmp ult ptr %.7274.us, %scevgep356
  %bound1358 = icmp ult ptr %i.gz, %scevgep
  %found.conflict359 = and i1 %bound0357, %bound1358
  br i1 %found.conflict359, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck355
  br i1 %min.iters.check362, label %vec.epilog.ph, label %vector.body365

vector.body365:                                   ; preds = %vector.main.loop.iter.check, %vector.body365
  %index366 = phi i64 [ %index.next370, %vector.body365 ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %index366 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %wide.load367 = load <8 x i8>, ptr %i.ky, align 1, !tbaa !42, !alias.scope !74 ; 2 uses
  %wide.load368 = load <8 x i8>, ptr %i.kz, align 1, !tbaa !42, !alias.scope !74 ; 2 uses
  %i.la = lshr <8 x i8> %wide.load367, splat (i8 4)
  %i.lb = lshr <8 x i8> %wide.load368, splat (i8 4)
  %i.lc = shl nuw nsw i64 %index366, 1
  %i.ld = shl i64 %index366, 1
  %i.le = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.lc
  %i.lf = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.ld
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = and <8 x i8> %wide.load367, splat (i8 15)
  %i.li = and <8 x i8> %wide.load368, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.la, <8 x i8> %i.lh, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.le, align 1, !tbaa !42, !alias.scope !75, !noalias !74
  %interleaved.vec369 = shufflevector <8 x i8> %i.lb, <8 x i8> %i.li, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec369, ptr %i.lg, align 1, !tbaa !42, !alias.scope !75, !noalias !74
  %index.next370 = add nuw i64 %index366, 16      ; 2 uses
  %i.lj = icmp eq i64 %index.next370, %n.vec364
  br i1 %i.lj, label %middle.block371, label %vector.body365, !llvm.loop !29

middle.block371:                                  ; preds = %vector.body365
  br i1 %cmp.n372, label %._crit_edge272.split.us279, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block371
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec364, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index374 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next377, %vec.epilog.vector.body ] ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kx, i64 %index374
  %wide.load375 = load <4 x i8>, ptr %i.lk, align 1, !tbaa !42, !alias.scope !74 ; 2 uses
  %i.ll = lshr <4 x i8> %wide.load375, splat (i8 4)
  %i.lm = shl nuw nsw i64 %index374, 1
  %i.ln = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.lm
  %i.lo = and <4 x i8> %wide.load375, splat (i8 15)
  %interleaved.vec376 = shufflevector <4 x i8> %i.ll, <4 x i8> %i.lo, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec376, ptr %i.ln, align 1, !tbaa !42, !alias.scope !75, !noalias !74
  %index.next377 = add nuw i64 %index374, 4       ; 2 uses
  %i.lp = icmp eq i64 %index.next377, %n.vec373
  br i1 %i.lp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n378, label %._crit_edge272.split.us279, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck355, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv289.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck355 ], [ %n.vec364, %vec.epilog.iter.check ], [ %n.vec373, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod417.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv289.ph ; 2 uses
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !42
  %i.ls = lshr i8 %i.lr, 4
  %i.lt = shl nuw nsw i64 %indvars.iv289.ph, 1    ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.lt
  store i8 %i.ls, ptr %i.lu, align 1, !tbaa !42
  %i.lv = load i8, ptr %i.lq, align 1, !tbaa !42
  %i.lw = and i8 %i.lv, 15
  %i.lx = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.lt
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  store i8 %i.lw, ptr %i.ly, align 1, !tbaa !42
  %indvars.iv.next290.prol = or disjoint i64 %indvars.iv289.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next290.prol, %vec.epilog.scalar.ph.prol ]
  %i.lz = icmp eq i64 %indvars.iv289.ph, %i.hq
  br i1 %i.lz, label %._crit_edge272.split.us279, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.1, %vec.epilog.scalar.ph ], [ %indvars.iv289.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv289 ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !42
  %i.mc = lshr i8 %i.mb, 4
  %i.md = shl nuw nsw i64 %indvars.iv289, 1       ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.md
  store i8 %i.mc, ptr %i.me, align 1, !tbaa !42
  %i.mf = load i8, ptr %i.ma, align 1, !tbaa !42
  %i.mg = and i8 %i.mf, 15
  %i.mh = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.md
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  store i8 %i.mg, ptr %i.mi, align 1, !tbaa !42
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.next290 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !42
  %i.ml = lshr i8 %i.mk, 4
  %i.mm = shl nuw nsw i64 %indvars.iv.next290, 1  ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.mm
  store i8 %i.ml, ptr %i.mn, align 1, !tbaa !42
  %i.mo = load i8, ptr %i.mj, align 1, !tbaa !42
  %i.mp = and i8 %i.mo, 15
  %i.mq = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.mm
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  store i8 %i.mp, ptr %i.mr, align 1, !tbaa !42
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %exitcond294.not.1 = icmp eq i64 %indvars.iv.next290.1, %wide.trip.count293
  br i1 %exitcond294.not.1, label %._crit_edge272.split.us279, label %vec.epilog.scalar.ph, !llvm.loop !31

._crit_edge272.split.us279:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block371
  %i.ms = load i32, ptr %i.he, align 8, !tbaa !65
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds i8, ptr %.7274.us, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.hi
  %i.mw = add nuw nsw i32 %.1198273.us, 1         ; 2 uses
  %exitcond296.not = icmp eq i32 %i.mw, %i.p
  br i1 %exitcond296.not, label %._crit_edge276, label %iter.check, !llvm.loop !25

._crit_edge276:                                   ; preds = %._crit_edge272.split.us279, %._crit_edge272.split.us.us.us, %.preheader.lr.ph, %bb.ba
  call void @av_freep(ptr noundef nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge276, %.critedge
  store i32 1, ptr %2, align 4, !tbaa !65
  %i.mx = ptrtoint ptr %.3208 to i64
  %i.my = ptrtoint ptr %i.d to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = trunc i64 %i.mz to i32
  br label %bb.bc

bb.bc:                                            ; preds = %bb.an, %.thread, %bb.ai, %bb.ac, %bb.ab, %bb.w, %bb.a, %bb.bb, %bb.v, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.3212 = phi i32 [ -1094995529, %.thread ], [ -1094995529, %bb.c ], [ -1163346256, %bb.e ], [ -1094995529, %bb.g ], [ -1163346256, %bb.i ], [ -1094995529, %bb.k ], [ -1163346256, %bb.m ], [ -1094995529, %bb.o ], [ -1094995529, %bb.v ], [ -1094995529, %bb.a ], [ %i.ar, %bb.w ], [ -1094995529, %bb.ab ], [ %i.na, %bb.bb ], [ -1094995529, %bb.an ], [ %i.bi, %bb.ac ], [ -12, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.3212
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !68, !69, !70}
!15 = distinct !{!15, !68, !69}
!16 = distinct !{!16, !68}
!17 = distinct !{!17, !68}
!18 = distinct !{!18, !68}
!19 = distinct !{!19, i1 false, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !68, !69, !70}
!23 = distinct !{!23, !68, !69, !70}
!24 = distinct !{!24, !68, !69}
!25 = distinct !{!25, !68}
!26 = distinct !{!26, i1 false, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !68, !69, !70}
!30 = distinct !{!30, !68, !69, !70}
!31 = distinct !{!31, !68, !69}
!32 = !{!"any pointer", !5, i64 0}
!33 = !{!"p1 _ZTS11AVBufferRef", !32, i64 0}
!34 = !{!"long", !5, i64 0}
!35 = !{!"p1 omnipotent char", !32, i64 0}
!36 = !{!"p1 _ZTS16AVPacketSideData", !32, i64 0}
!37 = !{!"AVRational", !6, i64 0, !6, i64 4}
!38 = !{!"AVPacket", !33, i64 0, !34, i64 8, !34, i64 16, !35, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !36, i64 48, !6, i64 56, !34, i64 64, !34, i64 72, !32, i64 80, !33, i64 88, !37, i64 96}
!39 = !{!38, !35, i64 24}
!40 = !{!38, !6, i64 32}
!41 = !{!35, !35, i64 0}
!42 = !{!5, !5, i64 0}
!43 = !{!"p1 _ZTS7AVClass", !32, i64 0}
!44 = !{!"p1 _ZTS7AVCodec", !32, i64 0}
!45 = !{!"p1 _ZTS15AVCodecInternal", !32, i64 0}
!46 = !{!"float", !5, i64 0}
!47 = !{!"p1 short", !32, i64 0}
!48 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !32, i64 16}
!49 = !{!"p1 _ZTS10RcOverride", !32, i64 0}
!50 = !{!"p1 _ZTS9AVHWAccel", !32, i64 0}
!51 = !{!"p1 _ZTS17AVCodecDescriptor", !32, i64 0}
!52 = !{!"p1 int", !32, i64 0}
!53 = !{!"any p2 pointer", !32, i64 0}
!54 = !{!"p2 _ZTS15AVFrameSideData", !53, i64 0}
!55 = !{!"AVCodecContext", !43, i64 0, !6, i64 8, !6, i64 12, !44, i64 16, !6, i64 24, !6, i64 28, !32, i64 32, !45, i64 40, !32, i64 48, !34, i64 56, !6, i64 64, !6, i64 68, !35, i64 72, !6, i64 80, !37, i64 84, !37, i64 92, !37, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !37, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !32, i64 184, !32, i64 192, !6, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !47, i64 288, !47, i64 296, !47, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !48, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !32, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !46, i64 428, !46, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !49, i64 456, !34, i64 464, !34, i64 472, !46, i64 480, !46, i64 484, !6, i64 488, !6, i64 492, !35, i64 496, !35, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !50, i64 536, !32, i64 544, !33, i64 552, !33, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !32, i64 672, !32, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !51, i64 728, !35, i64 736, !6, i64 744, !6, i64 748, !35, i64 752, !35, i64 760, !35, i64 768, !36, i64 776, !6, i64 784, !6, i64 788, !34, i64 792, !6, i64 800, !6, i64 804, !34, i64 808, !32, i64 816, !34, i64 824, !52, i64 832, !6, i64 840, !54, i64 848, !6, i64 856, !6, i64 860}
!56 = !{!55, !6, i64 136}
!57 = !{!"p2 omnipotent char", !53, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !53, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !32, i64 0}
!60 = !{!"AVFrame", !5, i64 0, !5, i64 64, !57, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !37, i64 124, !34, i64 136, !34, i64 144, !37, i64 152, !6, i64 160, !32, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !58, i64 248, !6, i64 256, !54, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !34, i64 304, !59, i64 312, !6, i64 320, !33, i64 328, !33, i64 336, !34, i64 344, !34, i64 352, !34, i64 360, !34, i64 368, !32, i64 376, !48, i64 384, !34, i64 408, !6, i64 416}
!61 = !{!60, !6, i64 120}
!62 = !{!10}
!63 = !{!11}
!64 = !{!12}
!65 = !{!6, !6, i64 0}
!66 = !{!13}
!67 = !{!12, !11, !10}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!20}
!72 = !{!21}
!73 = !{!"branch_weights", i32 8, i32 8}
!74 = !{!27}
!75 = !{!28}
!76 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
