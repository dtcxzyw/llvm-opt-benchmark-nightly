Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/decode?download=true
inline.NumInlined: 20
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@BrotliDecoderDecompressStream:bb.a
  br i1 %i.lk, label %.lr.ph590, label %.._crit_edge591_crit_edge

.._crit_edge591_crit_edge:                        ; preds = %bb.bj
  %.pre630 = load i64, ptr %i.c, align 8, !tbaa !55
  br label %._crit_edge591

.lr.ph590:                                        ; preds = %bb.bj
  %i.ll = load ptr, ptr %i.af, align 8, !tbaa !50
  %.promoted594 = load ptr, ptr %i.ae, align 8, !tbaa !49
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph590, %BrotliPullByte.exit
  %i.lm = phi ptr [ %.promoted594, %.lr.ph590 ], [ %i.lv, %BrotliPullByte.exit ] ; 3 uses
  %i.ln = phi i64 [ %.promoted588, %.lr.ph590 ], [ %i.lu, %BrotliPullByte.exit ] ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ll
  br i1 %i.lo, label %SafeReadBlockLength.exit.thread503, label %BrotliPullByte.exit

BrotliPullByte.exit:                              ; preds = %bb.bk
  %i.lp = load i64, ptr %i.c, align 8, !tbaa !55
  %i.lq = load i8, ptr %i.lm, align 1, !tbaa !53
  %i.lr = zext i8 %i.lq to i64
  %i.ls = shl i64 %i.lr, %i.ln
  %i.lt = or i64 %i.ls, %i.lp                     ; 2 uses
  store i64 %i.lt, ptr %i.c, align 8, !tbaa !55
  %i.lu = add nuw nsw i64 %i.ln, 8                ; 4 uses
  store i64 %i.lu, ptr %i.ak, align 8, !tbaa !54
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lm, i64 1 ; 2 uses
  store ptr %i.lv, ptr %i.ae, align 8, !tbaa !49
  %i.lw = icmp ult i64 %i.lu, %i.li
  br i1 %i.lw, label %bb.bk, label %._crit_edge591, !llvm.loop !0

SafeReadBlockLength.exit.thread503:               ; preds = %bb.bk
  store i64 %i.le, ptr %i.ce, align 8, !tbaa !72
  store i32 1, ptr %i.cd, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.backedge.backedge

._crit_edge591:                                   ; preds = %BrotliPullByte.exit, %.._crit_edge591_crit_edge
  %i.lx = phi i64 [ %.pre630, %.._crit_edge591_crit_edge ], [ %i.lt, %BrotliPullByte.exit ] ; 2 uses
  %.lcssa561 = phi i64 [ %.promoted588, %.._crit_edge591_crit_edge ], [ %i.lu, %BrotliPullByte.exit ]
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr @kBrotliBitMask, i64 %i.li
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !36
  %i.ma = and i64 %i.lz, %i.lx
  %i.mb = sub nuw i64 %.lcssa561, %i.li
  store i64 %i.mb, ptr %i.ak, align 8, !tbaa !54
  %i.mc = lshr i64 %i.lx, %i.li
  store i64 %i.mc, ptr %i.c, align 8, !tbaa !55
  %i.md = zext i16 %i.lj to i64
  %i.me = add i64 %i.ma, %i.md
  store i64 %i.me, ptr %i.jb, align 8, !tbaa !36
  store i32 0, ptr %i.cd, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.mf = load i32, ptr %i.aq, align 4, !tbaa !56
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr %i.aq, align 4, !tbaa !56
  store i32 18, ptr %0, align 8, !tbaa !27
  br label %.backedge.backedge

bb.bl:                                            ; preds = %bb.v
  %i.mh = call fastcc i32 @CopyUncompressedBlockToOutput(ptr noundef nonnull %3, ptr noundef %spec.select, ptr noundef %5, ptr noundef nonnull %0) ; 2 uses
  %.not380 = icmp eq i32 %i.mh, 1
  br i1 %.not380, label %bb.bm, label %.backedge.backedge

bb.bm:                                            ; preds = %bb.bl
  store i32 14, ptr %0, align 8, !tbaa !27
  br label %.backedge.backedge

bb.bn:                                            ; preds = %bb.v
  %i.mi = call fastcc i32 @SkipMetadataBlock(ptr noundef nonnull %0)
  %.not379 = icmp eq i32 %i.mi, 1
  br i1 %.not379, label %bb.bo, label %.backedge.backedge

bb.bo:                                            ; preds = %bb.bn
  store i32 14, ptr %0, align 8, !tbaa !27
  br label %.backedge.backedge

BrotliPullByte.exit440:                           ; preds = %.lr.ph
  %i.mj = load i64, ptr %i.c, align 8, !tbaa !55
  %i.mk = load i8, ptr %.promoted571, align 1, !tbaa !53
  %i.ml = zext i8 %i.mk to i64
  %i.mm = shl nuw nsw i64 %i.ml, %.promoted
  %i.mn = or i64 %i.mm, %i.mj
  %i.mo = or disjoint i64 %.promoted, 8
  %i.mp = getelementptr inbounds nuw i8, ptr %.promoted571, i64 1
  store ptr %i.mp, ptr %i.ae, align 8, !tbaa !49
  br label %bb.bp

bb.bp:                                            ; preds = %.preheader544._crit_edge, %BrotliPullByte.exit440
  %i.mq = phi i64 [ %i.mn, %BrotliPullByte.exit440 ], [ %.pre, %.preheader544._crit_edge ] ; 3 uses
  %.lcssa = phi i64 [ %i.mo, %BrotliPullByte.exit440 ], [ %.promoted, %.preheader544._crit_edge ]
  %i.mr = add i64 %.lcssa, -6
  store i64 %i.mr, ptr %i.ak, align 8, !tbaa !54
  %i.ms = lshr i64 %i.mq, 6
  store i64 %i.ms, ptr %i.c, align 8, !tbaa !55
  %i.mt = and i64 %i.mq, 3                        ; 2 uses
  store i64 %i.mt, ptr %i.ar, align 8, !tbaa !76
  %i.mu = lshr i64 %i.mq, 2
  %i.mv = and i64 %i.mu, 15
  %i.mw = shl nuw nsw i64 %i.mv, %i.mt
  store i64 %i.mw, ptr %i.as, align 8, !tbaa !129
  %i.mx = load ptr, ptr %i.at, align 8, !tbaa !38
  %i.my = load ptr, ptr %i.au, align 8, !tbaa !29
  %i.mz = load i64, ptr %i.av, align 8, !tbaa !36
  %i.na = call ptr %i.mx(ptr noundef %i.my, i64 noundef %i.mz) #21 ; 2 uses
  store ptr %i.na, ptr %i.aw, align 8, !tbaa !77
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %.backedge.backedge, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.aq, align 4, !tbaa !56
  store i32 6, ptr %0, align 8, !tbaa !27
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge, %bb.bq
  %i.nc = phi i32 [ %.pre612, %._crit_edge ], [ 0, %bb.bq ] ; 2 uses
  %i.nd = load i64, ptr %i.av, align 8, !tbaa !36 ; 2 uses
  %i.ne = trunc i64 %i.nd to i32
  %i.nf = icmp slt i32 %i.nc, %i.ne
  br i1 %i.nf, label %.preheader.lr.ph.i, label %.loopexit543

.preheader.lr.ph.i:                               ; preds = %bb.br
  %i.ng = sext i32 %i.nc to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.bs, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ng, %.preheader.lr.ph.i ], [ %indvars.iv.next.i, %bb.bs ] ; 3 uses
  %.promoted.i = load i64, ptr %i.ak, align 8, !tbaa !54 ; 4 uses
  %i.nh = icmp ult i64 %.promoted.i, 2
  br i1 %i.nh, label %.lr.ph.i, label %.preheader._crit_edge.i

.preheader._crit_edge.i:                          ; preds = %.preheader.i
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !55
  br label %bb.bs

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ni = load ptr, ptr %i.af, align 8, !tbaa !50
  %.promoted29.i = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 3 uses
  %i.nj = icmp eq ptr %.promoted29.i, %i.ni
  br i1 %i.nj, label %ReadContextModes.exit, label %BrotliPullByte.exit.i

BrotliPullByte.exit.i:                            ; preds = %.lr.ph.i
  %i.nk = load i64, ptr %i.c, align 8, !tbaa !55
  %i.nl = load i8, ptr %.promoted29.i, align 1, !tbaa !53
  %i.nm = zext i8 %i.nl to i64
  %i.nn = shl nuw nsw i64 %i.nm, %.promoted.i
  %i.no = or i64 %i.nn, %i.nk
  %i.np = or disjoint i64 %.promoted.i, 8
  %i.nq = getelementptr inbounds nuw i8, ptr %.promoted29.i, i64 1
  store ptr %i.nq, ptr %i.ae, align 8, !tbaa !49
  br label %bb.bs

bb.bs:                                            ; preds = %BrotliPullByte.exit.i, %.preheader._crit_edge.i
  %i.nr = phi i64 [ %i.no, %BrotliPullByte.exit.i ], [ %.pre.i, %.preheader._crit_edge.i ] ; 2 uses
  %.lcssa.i = phi i64 [ %i.np, %BrotliPullByte.exit.i ], [ %.promoted.i, %.preheader._crit_edge.i ]
  %i.ns = add i64 %.lcssa.i, -2
  store i64 %i.ns, ptr %i.ak, align 8, !tbaa !54
  %i.nt = lshr i64 %i.nr, 2
  store i64 %i.nt, ptr %i.c, align 8, !tbaa !55
  %i.nu = trunc i64 %i.nr to i8
  %i.nv = and i8 %i.nu, 3
  %i.nw = load ptr, ptr %i.aw, align 8, !tbaa !77
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 %indvars.iv.i
  store i8 %i.nv, ptr %i.nx, align 1, !tbaa !53
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ny = load i64, ptr %i.av, align 8, !tbaa !36 ; 2 uses
  %i.nz = shl i64 %i.ny, 32
  %i.oa = ashr exact i64 %i.nz, 32
  %i.ob = icmp slt i64 %indvars.iv.next.i, %i.oa
  br i1 %i.ob, label %.preheader.i, label %.loopexit543, !llvm.loop !121

ReadContextModes.exit:                            ; preds = %.lr.ph.i
  %i.oc = trunc nsw i64 %indvars.iv.i to i32
  store i32 %i.oc, ptr %i.aq, align 4, !tbaa !56
  br label %.backedge.backedge

.loopexit543:                                     ; preds = %bb.bs, %bb.br
  %i.od = phi i64 [ %i.nd, %bb.br ], [ %i.ny, %bb.bs ]
  store i32 22, ptr %0, align 8, !tbaa !27
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge613, %.loopexit543
  %i.oe = phi i64 [ %.pre614, %._crit_edge613 ], [ %i.od, %.loopexit543 ]
  %i.of = shl i64 %i.oe, 6
  %i.og = call fastcc i32 @DecodeContextMap(i64 noundef %i.of, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull %0) ; 2 uses
  %.not373 = icmp eq i32 %i.og, 1
  br i1 %.not373, label %.preheader542.preheader, label %.backedge.backedge

.preheader542.preheader:                          ; preds = %bb.bt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false), !tbaa !44
  %i.oh = load i64, ptr %i.av, align 8, !tbaa !36 ; 2 uses
  %.not598 = icmp eq i64 %i.oh, 0
  br i1 %.not598, label %DetectTrivialLiteralBlockTypes.exit, label %.lr.ph576

.lr.ph576:                                        ; preds = %.preheader542.preheader
  %i.oi = load ptr, ptr %i.ay, align 8, !tbaa !78
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph576, %bb.bw
  %.1.i418575 = phi i64 [ 0, %.lr.ph576 ], [ %i.qf, %bb.bw ] ; 4 uses
  %i.oj = shl i64 %.1.i418575, 6
  %i.ok = getelementptr i8, ptr %i.oi, i64 %i.oj  ; 8 uses
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !53  ; 6 uses
  %i.om = getelementptr i8, ptr %i.ok, i64 1
  %i.on = load i8, ptr %i.om, align 1, !tbaa !53
  %i.oo = getelementptr i8, ptr %i.ok, i64 2
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !53
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 3
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !53
  %i.os = getelementptr i8, ptr %i.ok, i64 4
  %i.ot = getelementptr i8, ptr %i.ok, i64 8
  %i.ou = getelementptr i8, ptr %i.ok, i64 16
  %i.ov = getelementptr i8, ptr %i.ok, i64 32
  %i.ow = load <16 x i8>, ptr %i.ou, align 1, !tbaa !53
  %i.ox = load <32 x i8>, ptr %i.ov, align 1, !tbaa !53
  %i.oy = shufflevector <16 x i8> %i.ow, <16 x i8> poison, <44 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 13, i32 12, i32 14, i32 15, i32 9, i32 8, i32 poison, i32 6, i32 7, i32 0, i32 2, i32 3> ; 2 uses
  %i.oz = insertelement <44 x i8> %i.oy, i8 %i.ol, i64 38
  %i.pa = shufflevector <32 x i8> %i.ox, <32 x i8> poison, <44 x i32> <i32 29, i32 28, i32 30, i32 31, i32 25, i32 24, i32 26, i32 27, i32 21, i32 20, i32 22, i32 23, i32 17, i32 16, i32 18, i32 19, i32 13, i32 12, i32 14, i32 15, i32 9, i32 8, i32 10, i32 11, i32 5, i32 4, i32 6, i32 7, i32 1, i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pb = shufflevector <44 x i8> %i.pa, <44 x i8> %i.oz, <44 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87> ; 2 uses
  %i.pc = shufflevector <44 x i8> %i.pb, <44 x i8> poison, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 38, i32 38, i32 38, i32 39, i32 40, i32 38, i32 41, i32 42, i32 43>
  %i.pd = shufflevector <44 x i8> %i.pb, <44 x i8> %i.oy, <48 x i32> <i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 54, i32 55, i32 49, i32 48, i32 38, i32 38, i32 45, i32 38, i32 38, i32 38>
  %i.pe = icmp eq <48 x i8> %i.pc, %i.pd          ; 2 uses
  %i.pf = load <8 x i8>, ptr %i.ot, align 1, !tbaa !53
  %i.pg = insertelement <8 x i8> poison, i8 %i.ol, i64 0
  %i.ph = shufflevector <8 x i8> %i.pg, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.pi = icmp eq <8 x i8> %i.pf, %i.ph
  %i.pj = load <4 x i8>, ptr %i.os, align 1, !tbaa !53
  %i.pk = insertelement <4 x i8> poison, i8 %i.ol, i64 0
  %i.pl = shufflevector <4 x i8> %i.pk, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.pm = icmp eq <4 x i8> %i.pj, %i.pl
  %i.pn = icmp eq i8 %i.on, %i.ol
  %i.po = icmp eq i8 %i.op, %i.ol
  %i.pp = icmp eq i8 %i.or, %i.ol
  %i.pq = shufflevector <48 x i1> %i.pe, <48 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = and <8 x i1> %i.pq, %i.pi             ; 2 uses
  %i.pr = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <48 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ps = shufflevector <48 x i1> %i.pr, <48 x i1> %i.pe, <48 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>
  %i.pt = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op725 = and <4 x i1> %i.pt, %i.pm
  %i.pu = shufflevector <4 x i1> %rdx.op725, <4 x i1> poison, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pv = shufflevector <48 x i1> %i.pu, <48 x i1> %i.ps, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>
  %i.pw = bitcast <48 x i1> %i.pv to i48
  %i.px = icmp eq i48 %i.pw, -1
  %op.rdx = and i1 %i.px, %i.pn
  %op.rdx726 = and i1 %i.po, %i.pp
  %op.rdx727 = and i1 %op.rdx, %op.rdx726
  br i1 %op.rdx727, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.py = trunc i64 %.1.i418575 to i32
  %i.pz = and i32 %i.py, 31
  %i.qa = shl nuw i32 1, %i.pz
  %i.qb = lshr i64 %.1.i418575, 5
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.qb ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !44
  %i.qe = or i32 %i.qd, %i.qa
  store i32 %i.qe, ptr %i.qc, align 4, !tbaa !44
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.qf = add nuw i64 %.1.i418575, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.qf, %i.oh
  br i1 %exitcond.not, label %DetectTrivialLiteralBlockTypes.exit, label %bb.bu, !llvm.loop !122

DetectTrivialLiteralBlockTypes.exit:              ; preds = %bb.bw, %.preheader542.preheader
  store i32 23, ptr %0, align 8, !tbaa !27
  br label %bb.bx

bb.bx:                                            ; preds = %DetectTrivialLiteralBlockTypes.exit, %bb.v
  %i.qg = load i64, ptr %i.ar, align 8, !tbaa !76
  %i.qh = load i64, ptr %i.as, align 8, !tbaa !129 ; 2 uses
  %i.qi = add i64 %i.qh, 16                       ; 2 uses
  %i.qj = trunc i64 %i.qg to i32                  ; 4 uses
  %i.qk = add i32 %i.qj, 1                        ; 2 uses
  %i.ql = shl i32 24, %i.qk
  %i.qm = zext i32 %i.ql to i64
  %i.qn = add i64 %i.qi, %i.qm                    ; 2 uses
  %i.qo = load i32, ptr %i.aj, align 4
  %i.qp = and i32 %i.qo, 32
  %.not374 = icmp eq i32 %i.qp, 0
  br i1 %.not374, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qq = trunc i64 %i.qh to i32                  ; 4 uses
  %i.qr = icmp ugt i32 %i.qq, 2147483643
  br i1 %i.qr, label %BrotliCalculateDistanceCodeLimit.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qs = sub nuw nsw i32 2147483644, %i.qq
  %i.qt = lshr i32 %i.qs, %i.qj
  %i.qu = add nuw i32 %i.qt, 4                    ; 2 uses
  %i.qv = lshr i32 %i.qu, 1
  %i.qw = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.qv, i1 true) ; 2 uses
  %i.qx = xor i32 %i.qw, 31
  %i.qy = lshr i32 %i.qu, %i.qx
  %i.qz = and i32 %i.qy, 1
  %i.ra = shl nuw nsw i32 %i.qw, 1
  %i.rb = sub nuw nsw i32 60, %i.ra
  %i.rc = or disjoint i32 %i.qz, %i.rb            ; 2 uses
  %i.rd = icmp eq i32 %i.rc, 0
  br i1 %i.rd, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.re = add nuw i32 %i.qq, 16
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %notmask.i = shl nsw i32 -1, %i.qj
  %i.rf = xor i32 %notmask.i, -1
  %i.rg = add nsw i32 %i.rc, -1
  %i.rh = shl i32 %i.rg, %i.qj
  %i.ri = or i32 %i.rh, %i.rf
  %i.rj = add nuw i32 %i.qq, 17
  %i.rk = add i32 %i.rj, %i.ri
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.0.0.i = phi i32 [ %i.re, %bb.ca ], [ %i.rk, %bb.cb ]
  %i.rl = zext i32 %.sroa.0.0.i to i64
  br label %BrotliCalculateDistanceCodeLimit.exit

BrotliCalculateDistanceCodeLimit.exit:            ; preds = %bb.by, %bb.cc
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.rl, %bb.cc ], [ 2147483660, %bb.by ]
  %i.rm = shl i32 62, %i.qk
  %i.rn = zext i32 %i.rm to i64
  %i.ro = add i64 %i.qi, %i.rn
  br label %bb.cd

bb.cd:                                            ; preds = %BrotliCalculateDistanceCodeLimit.exit, %bb.bx
  %.0311 = phi i64 [ %i.ro, %BrotliCalculateDistanceCodeLimit.exit ], [ %i.qn, %bb.bx ]
  %.0310 = phi i64 [ %.sroa.0.0.insert.insert.i, %BrotliCalculateDistanceCodeLimit.exit ], [ %i.qn, %bb.bx ]
  %i.rp = load i64, ptr %i.ba, align 8, !tbaa !36
  %i.rq = shl i64 %i.rp, 2
  %i.rr = call fastcc i32 @DecodeContextMap(i64 noundef %i.rq, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %0) ; 2 uses
  %.not375 = icmp eq i32 %i.rr, 1
  br i1 %.not375, label %bb.ce, label %.backedge.backedge

bb.ce:                                            ; preds = %bb.cd
  %i.rs = load i64, ptr %i.ax, align 8, !tbaa !130
  %i.rt = call i32 @BrotliDecoderHuffmanTreeGroupInit(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, i64 noundef 256, i64 noundef 256, i64 noundef %i.rs) #21
  %i.ru = and i32 %i.rt, 1
  %i.rv = load i64, ptr %i.bf, align 8, !tbaa !36
  %i.rw = call i32 @BrotliDecoderHuffmanTreeGroupInit(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i64 noundef 704, i64 noundef 704, i64 noundef %i.rv) #21
  %i.rx = and i32 %i.ru, %i.rw
  %i.ry = load i64, ptr %i.bb, align 8, !tbaa !131
  %i.rz = call i32 @BrotliDecoderHuffmanTreeGroupInit(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, i64 noundef %.0311, i64 noundef %.0310, i64 noundef %i.ry) #21
  %i.sa = and i32 %i.rx, %i.rz
  %.not376 = icmp eq i32 %i.sa, 0
  br i1 %.not376, label %.thread518, label %.thread680

.thread518:                                       ; preds = %bb.ce
  %i.sb = load i64, ptr %1, align 8, !tbaa !36
  %i.sc = sub i64 %i.d, %i.sb
  %i.sd = call fastcc i32 @SaveErrorCode(ptr noundef nonnull %0, i32 noundef -22, i64 noundef %i.sc)
  br label %bb.dw

.thread680:                                       ; preds = %bb.ce
  store i32 0, ptr %i.aq, align 4, !tbaa !56
  store i32 24, ptr %0, align 8, !tbaa !27
  br label %bb.ci

bb.cf:                                            ; preds = %bb.v
  %.pre616 = load i32, ptr %i.aq, align 4, !tbaa !56 ; 4 uses
  switch i32 %.pre616, label %.thread531 [
    i32 0, label %bb.ci
    i32 1, label %bb.cg
    i32 2, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  br label %bb.ci

.thread531:                                       ; preds = %bb.cf
  %i.se = load i64, ptr %1, align 8, !tbaa !36
  %i.sf = sub i64 %i.d, %i.se
  %i.sg = call fastcc i32 @SaveErrorCode(ptr noundef nonnull %0, i32 noundef -31, i64 noundef %i.sf)
  br label %bb.dw

bb.ci:                                            ; preds = %.thread680, %bb.cf, %bb.ch, %bb.cg
  %i.sh = phi i32 [ %.pre616, %bb.ch ], [ %.pre616, %bb.cg ], [ %.pre616, %bb.cf ], [ 0, %.thread680 ]
  %.0 = phi ptr [ %i.bg, %bb.ch ], [ %i.be, %bb.cg ], [ %i.bd, %bb.cf ], [ %i.bd, %.thread680 ] ; 5 uses
  %i.si = load i32, ptr %i.bh, align 8, !tbaa !128
  %.not.i449 = icmp eq i32 %i.si, 1
  br i1 %.not.i449, label %._crit_edge26.i, label %bb.cj

._crit_edge26.i:                                  ; preds = %bb.ci
  %.pre.i453 = load i32, ptr %i.bj, align 4, !tbaa !132
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.sj = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !133
  store ptr %i.sk, ptr %i.bi, align 8, !tbaa !134
  store i32 0, ptr %i.bj, align 4, !tbaa !132
  store i32 1, ptr %i.bh, align 8, !tbaa !128
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge26.i
  %i.sl = phi i32 [ %.pre.i453, %._crit_edge26.i ], [ 0, %bb.cj ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.0, i64 20 ; 2 uses
  %i.sn = load i16, ptr %i.sm, align 4, !tbaa !135
  %i.so = zext i16 %i.sn to i32
  %i.sp = icmp slt i32 %i.sl, %i.so
  br i1 %i.sp, label %.lr.ph.i451, label %.loopexit540

.lr.ph.i451:                                      ; preds = %bb.ck
  %i.sq = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.sr = getelementptr inbounds nuw i8, ptr %.0, i64 18
  %.pre27.i = load ptr, ptr %i.bi, align 8, !tbaa !134
  br label %bb.cl
end_hunk_0
begin_hunk_1_@BrotliDecoderDecompressStream:bb.a
  %i.zw = load ptr, ptr %i.ad, align 8, !tbaa !52
  %.not365 = icmp eq ptr %i.zw, null
  br i1 %.not365, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.zx = call fastcc i32 @WriteRingBuffer(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %spec.select, ptr noundef %5, i32 noundef 1) ; 2 uses
  %.not366 = icmp eq i32 %i.zx, 1
  br i1 %.not366, label %bb.dv, label %.backedge.backedge

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.zy = load i64, ptr %1, align 8, !tbaa !36
  %i.zz = sub i64 %i.d, %i.zy
  %i.aaa = call fastcc i32 @SaveErrorCode(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.zz)
  br label %bb.dw

.loopexit:                                        ; preds = %bb.l, %bb.r, %.lr.ph597, %bb.s, %bb.u, %BrotliBitReaderUnload.exit408
  %.14 = phi i32 [ %.1313, %bb.u ], [ %.1313, %BrotliBitReaderUnload.exit408 ], [ 2, %bb.s ], [ 2, %.lr.ph597 ], [ %i.cg, %bb.l ], [ 2, %bb.r ]
  %i.aab = load i64, ptr %1, align 8, !tbaa !36
  %i.aac = sub i64 %i.d, %i.aab
  %i.aad = call fastcc i32 @SaveErrorCode(ptr noundef nonnull %0, i32 noundef %.14, i64 noundef %i.aac)
  br label %bb.dw

bb.dw:                                            ; preds = %.thread531, %.thread518, %bb.c, %.loopexit, %bb.dv, %bb.g
  %.7 = phi i32 [ %i.n, %bb.g ], [ %i.aad, %.loopexit ], [ %i.sd, %.thread518 ], [ %i.sg, %.thread531 ], [ %i.aaa, %bb.dv ], [ 0, %bb.c ]
  ret i32 %.7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 4) i32 @SaveErrorCode(ptr nofree noundef captures(none) initializes((128, 132)) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %1, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !140
  %i.d = add i64 %i.c, %2
  store i64 %i.d, ptr %i.b, align 8, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %switch.tableidx = add i32 %1, -1
  %i.l = icmp ult i32 %switch.tableidx, 3
  %.0 = select i1 %i.l, i32 %1, i32 0
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -9, 4) i32 @WriteRingBuffer(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !95
  %i.g = sext i32 %i.f to i64
  %i.h = and i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !92
  %.phi.trans.insert9.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %.pre10.pre.i = load i32, ptr %.phi.trans.insert9.phi.trans.insert.i, align 4, !tbaa !90 ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.pre.i, i32 %.pre10.pre.i)
  %i.j = sext i32 %spec.select.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !96
  %i.m = sext i32 %.pre10.pre.i to i64
  %i.n = mul i64 %i.l, %i.m
  %i.o = sub i64 %i.j, %i.d
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = load i64, ptr %1, align 8, !tbaa !36     ; 4 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.p) ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.s = load i32, ptr %i.r, align 4, !tbaa !62
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %.not48 = icmp eq ptr %i.u, null
  br i1 %.not48, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %2, align 8, !tbaa !35
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.i, i64 %spec.select, i1 false)
  %i.v = load ptr, ptr %2, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %spec.select
  store ptr %i.w, ptr %2, align 8, !tbaa !35
  %.pre = load i64, ptr %1, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.d
  %i.x = phi i64 [ %i.q, %bb.b ], [ %.pre, %bb.e ], [ %i.q, %bb.d ]
  %i.y = sub i64 %i.x, %spec.select
  store i64 %i.y, ptr %1, align 8, !tbaa !36
  %i.z = load i64, ptr %i.c, align 8, !tbaa !46
  %i.aa = add i64 %i.z, %spec.select              ; 2 uses
  store i64 %i.aa, ptr %i.c, align 8, !tbaa !46
  %.not49 = icmp eq ptr %3, null
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  store i64 %i.aa, ptr %3, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.ab = icmp ult i64 %i.q, %i.p
  %i.ac = load i32, ptr %.phi.trans.insert9.phi.trans.insert.i, align 4, !tbaa !90 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = lshr i32 %i.ae, 6
  %i.ag = and i32 %i.af, 63
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = icmp eq i32 %i.ac, %i.ah                ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp ne i32 %4, 0
  %or.cond = or i1 %i.aj, %i.ai
  %. = select i1 %or.cond, i32 3, i32 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !92 ; 3 uses
  %.not50 = icmp slt i32 %i.ak, %i.ac
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = sub nsw i32 %i.ak, %i.ac
  store i32 %i.al, ptr %.phi.trans.insert.i, align 8, !tbaa !92
  %i.am = load i64, ptr %i.k, align 8, !tbaa !96
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.k, align 8, !tbaa !96
  %.not51.not = icmp eq i32 %i.ak, %i.ac
  %i.ao = select i1 %.not51.not, i32 0, i32 8
  %i.ap = and i32 %i.ae, -9
  %i.aq = or disjoint i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.ad, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.h, %bb.a
  %.041 = phi i32 [ -9, %bb.a ], [ %., %bb.h ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ]
  ret i32 %.041
}

declare hidden i32 @BrotliWarmupBitReader(ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliDecoderStateMetablockBegin(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -31, 3) i32 @DecodeMetaBlockLength(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !145
  switch i32 %.pre, label %BrotliSafeReadBits.exit95.thread [
    i32 0, label %.preheader172
    i32 1, label %bb.f
    i32 2, label %._crit_edge309
    i32 3, label %.loopexit.loopexit
    i32 4, label %.loopexit175.loopexit
    i32 5, label %.preheader168
    i32 6, label %.loopexit176.loopexit
    i32 7, label %.loopexit177.loopexit
  ]

bb.b:                                             ; preds = %bb.d
  store i32 2, ptr %i.a, align 8, !tbaa !145
  br label %._crit_edge309

bb.c:                                             ; preds = %bb.k
  %i.h = or i32 %3, 16388
  store i32 %i.h, ptr %i.e, align 4
  store i32 5, ptr %i.a, align 8, !tbaa !145
  br label %.preheader168

._crit_edge309:                                   ; preds = %bb.b, %bb.a
  %.promoted248.pre = load i64, ptr %i.b, align 8, !tbaa !54
  br label %bb.j

.preheader172:                                    ; preds = %bb.a
  %.promoted = load i64, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  %i.i = icmp eq i64 %.promoted, 0
  br i1 %i.i, label %.lr.ph, label %.preheader172._crit_edge

.preheader172._crit_edge:                         ; preds = %.preheader172
  %.pre307 = load i64, ptr %1, align 8, !tbaa !55
  %i.j = add i64 %.promoted, -1
  br label %bb.d

.lr.ph:                                           ; preds = %.preheader172
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !50
  %.promoted225 = load ptr, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.l = icmp eq ptr %.promoted225, %i.k
  br i1 %i.l, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit

.preheader168:                                    ; preds = %bb.c, %bb.a
  %.promoted255 = load i64, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  %i.m = icmp eq i64 %.promoted255, 0
  br i1 %i.m, label %.lr.ph256.split, label %.preheader168._crit_edge

.preheader168._crit_edge:                         ; preds = %.preheader168
  %.pre300 = load i64, ptr %1, align 8, !tbaa !55
  %i.n = add i64 %.promoted255, -1
  br label %bb.s

BrotliPullByte.exit:                              ; preds = %.lr.ph
  %i.o = load i64, ptr %1, align 8, !tbaa !55
  %i.p = load i8, ptr %.promoted225, align 1, !tbaa !53
  %i.q = zext i8 %i.p to i64
  %i.r = or i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.promoted225, i64 1
  store ptr %i.s, ptr %i.c, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %.preheader172._crit_edge, %BrotliPullByte.exit
  %i.t = phi i64 [ %i.r, %BrotliPullByte.exit ], [ %.pre307, %.preheader172._crit_edge ] ; 3 uses
  %.lcssa201 = phi i64 [ 7, %BrotliPullByte.exit ], [ %i.j, %.preheader172._crit_edge ]
  store i64 %.lcssa201, ptr %i.b, align 8, !tbaa !54
  %i.u = lshr i64 %i.t, 1
  store i64 %i.u, ptr %1, align 8, !tbaa !55
  %.not67 = trunc i64 %i.t to i1
  %i.v = trunc i64 %i.t to i32
  %i.w = and i32 %i.v, 1
  %i.x = load i32, ptr %i.e, align 4
  %i.y = and i32 %i.x, -8
  %i.z = or disjoint i32 %i.y, %i.w
  store i32 0, ptr %i.f, align 4, !tbaa !62
  store i32 %i.z, ptr %i.e, align 4
  br i1 %.not67, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.a, align 8, !tbaa !145
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.promoted233 = load i64, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  %i.aa = icmp eq i64 %.promoted233, 0
  br i1 %i.aa, label %.lr.ph235, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre308 = load i64, ptr %1, align 8, !tbaa !55
  %i.ab = add i64 %.promoted233, -1
  br label %bb.g

.lr.ph235:                                        ; preds = %bb.f
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !50
  %.promoted239 = load ptr, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.ad = icmp eq ptr %.promoted239, %i.ac
  br i1 %i.ad, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit98

BrotliPullByte.exit98:                            ; preds = %.lr.ph235
  %i.ae = load i64, ptr %1, align 8, !tbaa !55
  %i.af = load i8, ptr %.promoted239, align 1, !tbaa !53
  %i.ag = zext i8 %i.af to i64
  %i.ah = or i64 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted239, i64 1
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %BrotliPullByte.exit98
  %i.aj = phi i64 [ %i.ah, %BrotliPullByte.exit98 ], [ %.pre308, %._crit_edge ] ; 2 uses
  %.lcssa205 = phi i64 [ 7, %BrotliPullByte.exit98 ], [ %i.ab, %._crit_edge ] ; 2 uses
  %i.ak = and i64 %i.aj, 1
  store i64 %.lcssa205, ptr %i.b, align 8, !tbaa !54
  %i.al = lshr i64 %i.aj, 1
  store i64 %i.al, ptr %1, align 8, !tbaa !55
  %.not69 = icmp eq i64 %i.ak, 0
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.a, align 8, !tbaa !145
  br label %BrotliSafeReadBits.exit95.thread

bb.i:                                             ; preds = %bb.g
  store i32 2, ptr %i.a, align 8, !tbaa !145
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge309, %bb.i
  %.promoted248 = phi i64 [ %.promoted248.pre, %._crit_edge309 ], [ %.lcssa205, %bb.i ] ; 4 uses
  %i.am = icmp ult i64 %.promoted248, 2
  br i1 %i.am, label %.lr.ph250, label %._crit_edge311

._crit_edge311:                                   ; preds = %bb.j
  %.pre312 = load i64, ptr %1, align 8, !tbaa !55
  br label %bb.k

.lr.ph250:                                        ; preds = %bb.j
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !50
  %.promoted254 = load ptr, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.ao = icmp eq ptr %.promoted254, %i.an
  br i1 %i.ao, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit100

BrotliPullByte.exit100:                           ; preds = %.lr.ph250
  %i.ap = load i64, ptr %1, align 8, !tbaa !55
  %i.aq = load i8, ptr %.promoted254, align 1, !tbaa !53
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, %.promoted248
  %i.at = or i64 %i.as, %i.ap
  %i.au = or disjoint i64 %.promoted248, 8
  %i.av = getelementptr inbounds nuw i8, ptr %.promoted254, i64 1
  store ptr %i.av, ptr %i.c, align 8, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge311, %BrotliPullByte.exit100
  %i.aw = phi i64 [ %i.at, %BrotliPullByte.exit100 ], [ %.pre312, %._crit_edge311 ] ; 2 uses
  %.lcssa209 = phi i64 [ %i.au, %BrotliPullByte.exit100 ], [ %.promoted248, %._crit_edge311 ]
  %i.ax = and i64 %i.aw, 3                        ; 2 uses
  %i.ay = add i64 %.lcssa209, -2
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !54
  %i.az = lshr i64 %i.aw, 2
  store i64 %i.az, ptr %1, align 8, !tbaa !55
  %i.ba = trunc nuw nsw i64 %i.ax to i32
  %i.bb = load i32, ptr %i.e, align 4
  %i.bc = shl nuw nsw i32 %i.ba, 12
  %2 = and i32 %i.bb, -1044481
  %3 = or disjoint i32 %2, %i.bc                  ; 2 uses
  %i.bd = or disjoint i32 %3, 16384               ; 2 uses
  store i32 %i.bd, ptr %i.e, align 4
  store i32 0, ptr %i.g, align 4, !tbaa !56
  %i.be = icmp eq i64 %i.ax, 3
  br i1 %i.be, label %bb.c, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 3, ptr %i.a, align 8, !tbaa !145
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %.pre313 = load i32, ptr %i.g, align 4, !tbaa !56
  %.pre314 = load i32, ptr %i.e, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.l
  %i.bf = phi i32 [ %.pre314, %.loopexit.loopexit ], [ %i.bd, %bb.l ] ; 2 uses
  %i.bg = phi i32 [ %.pre313, %.loopexit.loopexit ], [ 0, %bb.l ] ; 2 uses
  %i.bh = lshr i32 %i.bf, 12
  %i.bi = and i32 %i.bh, 255
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.preheader163.lr.ph, label %._crit_edge282

.preheader163.lr.ph:                              ; preds = %.loopexit
  %.promoted275.pre = load i64, ptr %i.b, align 8, !tbaa !54
  br label %.preheader163

.preheader163:                                    ; preds = %.preheader163.lr.ph, %bb.p
  %.promoted275 = phi i64 [ %.promoted275.pre, %.preheader163.lr.ph ], [ %i.bw, %bb.p ] ; 4 uses
  %.0281 = phi i32 [ %i.bg, %.preheader163.lr.ph ], [ %i.by, %bb.p ] ; 4 uses
  %i.bk = icmp ult i64 %.promoted275, 4
  br i1 %i.bk, label %.lr.ph276, label %.preheader163._crit_edge

.preheader163._crit_edge:                         ; preds = %.preheader163
  %.pre316 = load i64, ptr %1, align 8, !tbaa !55
  br label %bb.n

.lr.ph276:                                        ; preds = %.preheader163
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !50
  %.promoted280 = load ptr, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.bm = icmp eq ptr %.promoted280, %i.bl
  br i1 %i.bm, label %bb.m, label %BrotliPullByte.exit102

BrotliPullByte.exit102:                           ; preds = %.lr.ph276
  %i.bn = load i64, ptr %1, align 8, !tbaa !55
  %i.bo = load i8, ptr %.promoted280, align 1, !tbaa !53
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, %.promoted275
  %i.br = or i64 %i.bq, %i.bn
  %i.bs = or disjoint i64 %.promoted275, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.promoted280, i64 1
  store ptr %i.bt, ptr %i.c, align 8, !tbaa !49
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph276
  store i32 %.0281, ptr %i.g, align 4, !tbaa !56
  br label %BrotliSafeReadBits.exit95.thread

bb.n:                                             ; preds = %.preheader163._crit_edge, %BrotliPullByte.exit102
  %i.bu = phi i64 [ %i.br, %BrotliPullByte.exit102 ], [ %.pre316, %.preheader163._crit_edge ] ; 2 uses
  %.lcssa181 = phi i64 [ %i.bs, %BrotliPullByte.exit102 ], [ %.promoted275, %.preheader163._crit_edge ]
  %i.bv = and i64 %i.bu, 15                       ; 2 uses
  %i.bw = add i64 %.lcssa181, -4                  ; 2 uses
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !54
  %i.bx = lshr i64 %i.bu, 4
  store i64 %i.bx, ptr %1, align 8, !tbaa !55
  %i.by = add nsw i32 %.0281, 1                   ; 3 uses
  %i.bz = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ca = lshr i32 %i.bz, 12
  %i.cb = and i32 %i.ca, 255                      ; 2 uses
  %i.cc = icmp eq i32 %i.by, %i.cb
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = icmp sgt i32 %.0281, 3
  %i.ce = icmp eq i64 %i.bv, 0
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %BrotliSafeReadBits.exit95.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cf = shl nsw i32 %.0281, 2
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl i64 %i.bv, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = load i32, ptr %i.f, align 4, !tbaa !62
  %i.ck = or i32 %i.cj, %i.ci
  store i32 %i.ck, ptr %i.f, align 4, !tbaa !62
  %i.cl = icmp slt i32 %i.by, %i.cb
  br i1 %i.cl, label %.preheader163, label %._crit_edge282, !llvm.loop !143

._crit_edge282:                                   ; preds = %bb.p, %.loopexit
  %i.cm = phi i32 [ %i.bf, %.loopexit ], [ %i.bz, %bb.p ]
  store i32 4, ptr %i.a, align 8, !tbaa !145
  br label %.loopexit175

.loopexit175.loopexit:                            ; preds = %bb.a
  %.pre317 = load i32, ptr %i.e, align 4
  br label %.loopexit175

.loopexit175:                                     ; preds = %.loopexit175.loopexit, %._crit_edge282
  %i.cn = phi i32 [ %.pre317, %.loopexit175.loopexit ], [ %i.cm, %._crit_edge282 ]
  %i.co = and i32 %i.cn, 1
  %.not71 = icmp eq i32 %i.co, 0
  br i1 %.not71, label %.preheader, label %bb.r

.preheader:                                       ; preds = %.loopexit175
  %.promoted283 = load i64, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  %i.cp = icmp eq i64 %.promoted283, 0
  br i1 %i.cp, label %.lr.ph284.split, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre318 = load i64, ptr %1, align 8, !tbaa !55
  %i.cq = add i64 %.promoted283, -1
  br label %bb.q

.lr.ph284.split:                                  ; preds = %.preheader
  %.promoted288 = load ptr, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.cs = icmp eq ptr %.promoted288, %i.cr
  br i1 %i.cs, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit104

BrotliPullByte.exit104:                           ; preds = %.lr.ph284.split
  %i.ct = load i64, ptr %1, align 8, !tbaa !55
  %i.cu = load i8, ptr %.promoted288, align 1, !tbaa !53
  %i.cv = zext i8 %i.cu to i64
  %i.cw = or i64 %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.promoted288, i64 1
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !49
  br label %bb.q

bb.q:                                             ; preds = %.preheader._crit_edge, %BrotliPullByte.exit104
  %i.cy = phi i64 [ %i.cw, %BrotliPullByte.exit104 ], [ %.pre318, %.preheader._crit_edge ] ; 2 uses
  %.lcssa = phi i64 [ 7, %BrotliPullByte.exit104 ], [ %i.cq, %.preheader._crit_edge ]
  store i64 %.lcssa, ptr %i.b, align 8, !tbaa !54
  %i.cz = lshr i64 %i.cy, 1
  store i64 %i.cz, ptr %1, align 8, !tbaa !55
  %i.da = load i32, ptr %i.e, align 4
  %i.db = trunc i64 %i.cy to i32
  %i.dc = shl i32 %i.db, 1
  %i.dd = and i32 %i.dc, 2
  %i.de = and i32 %i.da, -3
  %i.df = or disjoint i32 %i.de, %i.dd
  store i32 %i.df, ptr %i.e, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit175
  %i.dg = load i32, ptr %i.f, align 4, !tbaa !62
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.f, align 4, !tbaa !62
  store i32 0, ptr %i.a, align 8, !tbaa !145
  br label %BrotliSafeReadBits.exit95.thread

.lr.ph256.split:                                  ; preds = %.preheader168
  %.promoted258 = load ptr, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.dj = icmp eq ptr %.promoted258, %i.di
  br i1 %i.dj, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit106

BrotliPullByte.exit106:                           ; preds = %.lr.ph256.split
  %i.dk = load i64, ptr %1, align 8, !tbaa !55
  %i.dl = load i8, ptr %.promoted258, align 1, !tbaa !53
  %i.dm = zext i8 %i.dl to i64
  %i.dn = or i64 %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.promoted258, i64 1
  store ptr %i.do, ptr %i.c, align 8, !tbaa !49
  br label %bb.s

bb.s:                                             ; preds = %.preheader168._crit_edge, %BrotliPullByte.exit106
  %i.dp = phi i64 [ %i.dn, %BrotliPullByte.exit106 ], [ %.pre300, %.preheader168._crit_edge ] ; 2 uses
  %.lcssa197 = phi i64 [ 7, %BrotliPullByte.exit106 ], [ %i.n, %.preheader168._crit_edge ] ; 2 uses
  %i.dq = and i64 %i.dp, 1
  store i64 %.lcssa197, ptr %i.b, align 8, !tbaa !54
  %i.dr = lshr i64 %i.dp, 1
  store i64 %i.dr, ptr %1, align 8, !tbaa !55
  %.not63 = icmp eq i64 %i.dq, 0
  br i1 %.not63, label %bb.t, label %BrotliSafeReadBits.exit95.thread

bb.t:                                             ; preds = %bb.s
  store i32 6, ptr %i.a, align 8, !tbaa !145
  br label %.loopexit176

.loopexit176.loopexit:                            ; preds = %bb.a
  %.promoted260.pre = load i64, ptr %i.b, align 8, !tbaa !54
  br label %.loopexit176

.loopexit176:                                     ; preds = %.loopexit176.loopexit, %bb.t
  %.promoted260 = phi i64 [ %.promoted260.pre, %.loopexit176.loopexit ], [ %.lcssa197, %bb.t ] ; 4 uses
  %i.ds = icmp ult i64 %.promoted260, 2
  br i1 %i.ds, label %.lr.ph262, label %.loopexit176.._crit_edge263_crit_edge

.loopexit176.._crit_edge263_crit_edge:            ; preds = %.loopexit176
  %.pre302 = load i64, ptr %1, align 8, !tbaa !55
  br label %._crit_edge263

.lr.ph262:                                        ; preds = %.loopexit176
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !50
  %.promoted266 = load ptr, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.du = icmp eq ptr %.promoted266, %i.dt
  br i1 %i.du, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit108

BrotliPullByte.exit108:                           ; preds = %.lr.ph262
end_hunk_1
