Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vlc?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ff_vlc_init_sparse:bb.a
  call void @av_free(ptr noundef nonnull %.1338.ph) #9
  br label %vlc_common_init.exit

bb.x:                                             ; preds = %bb.u
  br i1 %.not276, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = and i32 %.sink, 255
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 24
  %i.at = lshr i32 %.sink, 8
  %i.au = and i32 %i.at, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 16
  %i.ba = or disjoint i32 %i.az, %i.as
  %i.bb = lshr i32 %.sink, 16
  %i.bc = and i32 %i.bb, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = or disjoint i32 %i.ba, %i.bh
  %i.bj = lshr i32 %.sink, 24
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bi, %i.bn
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bp = sub nuw nsw i32 32, %.0245
  %i.bq = shl i32 %.sink, %i.bp
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %storemerge360 = phi i32 [ %i.bo, %bb.y ], [ %i.bq, %bb.z ]
  store i32 %storemerge360, ptr %i.aj, align 4, !tbaa !22
  br i1 %.not277, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = mul nsw i64 %indvars.iv, %i.p
  %i.bs = getelementptr inbounds i8, ptr %9, i64 %i.br ; 2 uses
  br i1 %i.m, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = zext i8 %i.bt to i16
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.bv = load i16, ptr %i.bs, align 2, !tbaa !18
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.bw = trunc i64 %indvars.iv to i16
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %.sink495 = phi i16 [ %i.bu, %bb.ac ], [ %i.bv, %bb.ad ], [ %i.bw, %bb.ae ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i16 %.sink495, ptr %i.bx, align 2, !tbaa !23
  %i.by = add nsw i32 %.0252390, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.l
  %.1253 = phi i32 [ %.0252390, %bb.l ], [ %i.by, %bb.af ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.ag, %.preheader362
  %.0252.lcssa = phi i32 [ 0, %.preheader362 ], [ %.1253, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %.1338.ph, ptr %i.a, align 16, !tbaa !40
  %i.bz = sext i32 %.0252.lcssa to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %.1338.ph, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !40
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge, %.thread347
  %.0242413 = phi i32 [ 1, %._crit_edge ], [ %.1243377, %.thread347 ] ; 2 uses
  %i.cd = add nsw i32 %.0242413, -1               ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !40 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !40 ; 2 uses
  %i.cj = icmp ult ptr %i.cg, %i.ci
  br i1 %i.cj, label %.lr.ph408.preheader, label %.thread347

.lr.ph408.preheader:                              ; preds = %bb.ah
  %i.ck = sext i32 %.0242413 to i64
  %i.cl = add nsw i64 %i.ck, -1
  br label %.lr.ph408

.lr.ph408:                                        ; preds = %.lr.ph408.preheader, %bb.ba
  %indvars.iv444 = phi i64 [ %i.cl, %.lr.ph408.preheader ], [ %indvars.iv.next445, %bb.ba ] ; 6 uses
  %.0236406 = phi ptr [ %i.ci, %.lr.ph408.preheader ], [ %.1237, %bb.ba ] ; 16 uses
  %.0239405 = phi ptr [ %i.cg, %.lr.ph408.preheader ], [ %.1240, %bb.ba ] ; 15 uses
  %i.cm = getelementptr inbounds i8, ptr %.0236406, i64 -8 ; 5 uses
  %i.cn = icmp ult ptr %.0239405, %i.cm
  br i1 %i.cn, label %bb.ai, label %bb.bb

bb.ai:                                            ; preds = %.lr.ph408
  %i.co = getelementptr inbounds i8, ptr %.0236406, i64 -16 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0239405, i64 8 ; 3 uses
  %i.cq = ptrtoint ptr %.0236406 to i64           ; 2 uses
  %i.cr = ptrtoint ptr %.0239405 to i64           ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr i64 %i.cs, 4
  %i.cu = getelementptr inbounds [8 x i8], ptr %.0239405, i64 %i.ct ; 12 uses
  %i.cv = getelementptr i8, ptr %.0239405, i64 4
  %.0239.val305 = load i32, ptr %i.cv, align 4, !tbaa !22
  %i.cw = getelementptr i8, ptr %.0236406, i64 4  ; 2 uses
  %.0236.val306 = load i32, ptr %i.cw, align 4, !tbaa !22
  %i.cx = lshr i32 %.0239.val305, 1               ; 2 uses
  %i.cy = lshr i32 %.0236.val306, 1               ; 2 uses
  %i.cz = icmp samesign ugt i32 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cu, i64 4
  %.val304 = load i32, ptr %i.da, align 4, !tbaa !22
  %i.db = lshr i32 %.val304, 1                    ; 2 uses
  br i1 %i.cz, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.dc = icmp samesign ugt i32 %i.cy, %i.db
  %i.dd = load i64, ptr %.0239405, align 4        ; 2 uses
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.de = load i64, ptr %i.cu, align 4
  store i64 %i.dd, ptr %i.cu, align 4
  br label %.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.df = load i64, ptr %.0236406, align 4
  store i64 %i.dd, ptr %.0236406, align 4
  br label %.sink.split

bb.am:                                            ; preds = %bb.ai
  %i.dg = icmp samesign ugt i32 %i.cx, %i.db
  br i1 %i.dg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dh = load i64, ptr %i.cu, align 4
  %i.di = load i64, ptr %.0239405, align 4
  store i64 %i.di, ptr %i.cu, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.al, %bb.ak, %bb.an
  %.sink497 = phi i64 [ %i.dh, %bb.an ], [ %i.de, %bb.ak ], [ %i.df, %bb.al ]
  store i64 %.sink497, ptr %.0239405, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.am
  %.0234 = phi i32 [ 1, %bb.am ], [ 0, %.sink.split ]
  %i.dj = getelementptr i8, ptr %i.cu, i64 4
  %.val299 = load i32, ptr %i.dj, align 4, !tbaa !22
  %.0236.val300 = load i32, ptr %i.cw, align 4, !tbaa !22
  %i.dk = lshr i32 %.val299, 1
  %i.dl = lshr i32 %.0236.val300, 1
  %i.dm = icmp samesign ugt i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dn = load i64, ptr %.0236406, align 4
  %i.do = load i64, ptr %i.cu, align 4
  store i64 %i.do, ptr %.0236406, align 4
  store i64 %i.dn, ptr %i.cu, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.1235 = phi i32 [ 0, %bb.ap ], [ %.0234, %bb.ao ]
  %i.dp = icmp eq ptr %.0239405, %i.co
  br i1 %i.dp, label %.thread347.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dq = load i64, ptr %i.cu, align 4            ; 3 uses
  %i.dr = load i64, ptr %i.cm, align 4
  store i64 %i.dr, ptr %i.cu, align 4
  store i64 %i.dq, ptr %i.cm, align 4
  %.not290398 = icmp ugt ptr %i.cp, %i.co
  br i1 %.not290398, label %._crit_edge401, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.ar
  %i.ds = lshr i64 %i.dq, 32
  %i.dt = trunc nuw i64 %i.ds to i32
  %i.du = getelementptr i8, ptr %.0236406, i64 -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge294
  %.val298 = phi i32 [ %i.dt, %.preheader.lr.ph ], [ %.val298454, %.critedge294 ] ; 3 uses
  %.0230400 = phi ptr [ %i.cp, %.preheader.lr.ph ], [ %.2, %.critedge294 ]
  %.0231399 = phi ptr [ %i.co, %.preheader.lr.ph ], [ %.2233, %.critedge294 ] ; 4 uses
  %i.dv = lshr i32 %.val298, 1                    ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %bb.at
  %.1393 = phi ptr [ %.0230400, %.preheader ], [ %i.dz, %bb.at ] ; 3 uses
  %i.dw = getelementptr i8, ptr %.1393, i64 4
  %.1.val = load i32, ptr %i.dw, align 4, !tbaa !22
  %i.dx = lshr i32 %.1.val, 1
  %i.dy = icmp samesign ult i32 %i.dx, %i.dv
  br i1 %i.dy, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.dz = getelementptr inbounds nuw i8, ptr %.1393, i64 8 ; 3 uses
  %.not292 = icmp ugt ptr %i.dz, %.0231399
  br i1 %.not292, label %.critedge, label %bb.as, !llvm.loop !34

.critedge:                                        ; preds = %bb.at, %bb.as
  %.1.lcssa = phi ptr [ %i.dz, %bb.at ], [ %.1393, %bb.as ] ; 7 uses
  %.not293394 = icmp ugt ptr %.1.lcssa, %.0231399
  br i1 %.not293394, label %.critedge294, label %.lr.ph396

.lr.ph396:                                        ; preds = %.critedge, %bb.au
  %.1232395 = phi ptr [ %i.ed, %bb.au ], [ %.0231399, %.critedge ] ; 5 uses
  %i.ea = getelementptr i8, ptr %.1232395, i64 4
  %.1232.val = load i32, ptr %i.ea, align 4, !tbaa !22
  %i.eb = lshr i32 %.1232.val, 1
  %i.ec = icmp samesign ugt i32 %i.eb, %i.dv
  br i1 %i.ec, label %bb.au, label %.critedge4

bb.au:                                            ; preds = %.lr.ph396
  %i.ed = getelementptr inbounds i8, ptr %.1232395, i64 -8 ; 3 uses
  %.not293 = icmp ugt ptr %.1.lcssa, %i.ed
  br i1 %.not293, label %.critedge294, label %.lr.ph396, !llvm.loop !35

.critedge4:                                       ; preds = %.lr.ph396
  %i.ee = load i64, ptr %.1232395, align 4
  %i.ef = load i64, ptr %.1.lcssa, align 4
  store i64 %i.ef, ptr %.1232395, align 4
  store i64 %i.ee, ptr %.1.lcssa, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  %i.eh = getelementptr inbounds i8, ptr %.1232395, i64 -8
  %.val298.pre = load i32, ptr %i.du, align 4, !tbaa !22
  br label %.critedge294

.critedge294:                                     ; preds = %bb.au, %.critedge, %.critedge4
  %.val298454 = phi i32 [ %.val298.pre, %.critedge4 ], [ %.val298, %.critedge ], [ %.val298, %bb.au ]
  %.2233 = phi ptr [ %i.eh, %.critedge4 ], [ %.0231399, %.critedge ], [ %i.ed, %bb.au ] ; 3 uses
  %.2 = phi ptr [ %i.eg, %.critedge4 ], [ %.1.lcssa, %.critedge ], [ %.1.lcssa, %bb.au ] ; 3 uses
  %.not290 = icmp ugt ptr %.2, %.2233
  br i1 %.not290, label %._crit_edge401.loopexit, label %.preheader, !llvm.loop !36

._crit_edge401.loopexit:                          ; preds = %.critedge294
  %.pre = load i64, ptr %i.cm, align 4
  br label %._crit_edge401

._crit_edge401:                                   ; preds = %._crit_edge401.loopexit, %bb.ar
  %i.ei = phi i64 [ %i.dq, %bb.ar ], [ %.pre, %._crit_edge401.loopexit ]
  %.0231.lcssa = phi ptr [ %i.co, %bb.ar ], [ %.2233, %._crit_edge401.loopexit ] ; 2 uses
  %.0230.lcssa = phi ptr [ %i.cp, %bb.ar ], [ %.2, %._crit_edge401.loopexit ] ; 7 uses
  %i.ej = load i64, ptr %.0230.lcssa, align 4
  store i64 %i.ei, ptr %.0230.lcssa, align 4
  store i64 %i.ej, ptr %i.cm, align 4
  %.not291 = icmp eq i32 %.1235, 0
  br i1 %.not291, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %._crit_edge401
  %i.ek = getelementptr inbounds i8, ptr %.0230.lcssa, i64 -8
  %i.el = icmp eq ptr %i.cu, %i.ek
  %i.em = icmp eq ptr %i.cu, %.0230.lcssa
  %or.cond295 = or i1 %i.em, %i.el
  br i1 %or.cond295, label %.preheader361, label %bb.ax

.preheader361:                                    ; preds = %bb.av, %bb.aw
  %.0229 = phi ptr [ %i.eo, %bb.aw ], [ %.0239405, %bb.av ] ; 5 uses
  %i.en = icmp ult ptr %.0229, %.0236406
  br i1 %i.en, label %bb.aw, label %.critedge6

bb.aw:                                            ; preds = %.preheader361
  %i.eo = getelementptr inbounds nuw i8, ptr %.0229, i64 8
  %i.ep = getelementptr i8, ptr %.0229, i64 4
  %.0229.val = load i32, ptr %i.ep, align 4, !tbaa !22
  %i.eq = getelementptr i8, ptr %.0229, i64 12
  %.val = load i32, ptr %i.eq, align 4, !tbaa !22
  %i.er = lshr i32 %.0229.val, 1
  %i.es = lshr i32 %.val, 1
  %.not358 = icmp samesign ugt i32 %i.er, %i.es
  br i1 %.not358, label %.critedge6, label %.preheader361, !llvm.loop !37

.critedge6:                                       ; preds = %.preheader361, %bb.aw
  %i.et = icmp eq ptr %.0229, %.0236406
  br i1 %i.et, label %.thread347.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.av, %.critedge6, %._crit_edge401
  %i.eu = ptrtoint ptr %.0230.lcssa to i64        ; 2 uses
  %i.ev = sub i64 %i.cq, %i.eu
  %i.ew = sub i64 %i.eu, %i.cr
  %i.ex = icmp slt i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ey = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv444 ; 2 uses
  store ptr %.0239405, ptr %i.ey, align 16, !tbaa !40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %.0231.lcssa, ptr %i.ez, align 8, !tbaa !40
  %i.fa = getelementptr inbounds nuw i8, ptr %.0230.lcssa, i64 8
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.fb = getelementptr inbounds nuw i8, ptr %.0230.lcssa, i64 8
  %i.fc = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv444 ; 2 uses
  store ptr %i.fb, ptr %i.fc, align 16, !tbaa !40
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %.0236406, ptr %i.fd, align 8, !tbaa !40
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %.1240 = phi ptr [ %i.fa, %bb.ay ], [ %.0239405, %bb.az ] ; 2 uses
  %.1237 = phi ptr [ %.0236406, %bb.ay ], [ %.0231.lcssa, %bb.az ] ; 2 uses
  %indvars.iv.next445 = add nsw i64 %indvars.iv444, 1 ; 2 uses
  %i.fe = icmp ult ptr %.1240, %.1237
  br i1 %i.fe, label %.lr.ph408, label %.thread347.loopexit

bb.bb:                                            ; preds = %.lr.ph408
  %i.ff = trunc nsw i64 %indvars.iv444 to i32     ; 2 uses
  %i.fg = getelementptr i8, ptr %.0239405, i64 4
  %.0239.val = load i32, ptr %i.fg, align 4, !tbaa !22
  %i.fh = getelementptr i8, ptr %.0236406, i64 4
  %.0236.val = load i32, ptr %i.fh, align 4, !tbaa !22
  %i.fi = lshr i32 %.0239.val, 1
  %i.fj = lshr i32 %.0236.val, 1
  %i.fk = icmp samesign ugt i32 %i.fi, %i.fj
  br i1 %i.fk, label %bb.bc, label %.thread347

bb.bc:                                            ; preds = %bb.bb
  %i.fl = load i64, ptr %.0236406, align 4
  %i.fm = load i64, ptr %.0239405, align 4
  store i64 %i.fm, ptr %.0236406, align 4
  store i64 %i.fl, ptr %.0239405, align 4
  br label %.thread347

.thread347.loopexit:                              ; preds = %.critedge6, %bb.aq, %bb.ba
  %.1243377.ph.in = phi i64 [ %indvars.iv444, %.critedge6 ], [ %indvars.iv444, %bb.aq ], [ %indvars.iv.next445, %bb.ba ]
  %.1243377.ph = trunc i64 %.1243377.ph.in to i32
  br label %.thread347

.thread347:                                       ; preds = %.thread347.loopexit, %bb.ah, %bb.bb, %bb.bc
  %.1243377 = phi i32 [ %i.ff, %bb.bc ], [ %i.ff, %bb.bb ], [ %i.cd, %bb.ah ], [ %.1243377.ph, %.thread347.loopexit ] ; 2 uses
  %.not281 = icmp eq i32 %.1243377, 0
  br i1 %.not281, label %bb.bd, label %bb.ah, !llvm.loop !38

bb.bd:                                            ; preds = %.thread347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not280389, label %.lr.ph419, label %._crit_edge420

.lr.ph419:                                        ; preds = %bb.bd
  %i.fn = mul nsw i32 %1, 3
  %invariant.umin422 = call i32 @llvm.umin.i32(i32 %i.fn, i32 32)
  %i.fo = and i32 %12, 4
  %.not285 = icmp eq i32 %i.fo, 0
  %.not286 = icmp eq ptr %9, null
  %i.fp = icmp eq i32 %11, 1
  %i.fq = sext i32 %4 to i64
  %i.fr = sext i32 %7 to i64
  %i.fs = sext i32 %10 to i64
  %wide.trip.count451 = zext nneg i32 %2 to i64
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph419, %bb.ce
  %indvars.iv447 = phi i64 [ 0, %.lr.ph419 ], [ %indvars.iv.next448, %bb.ce ] ; 6 uses
  %.3255415 = phi i32 [ %.0252.lcssa, %.lr.ph419 ], [ %.4256, %bb.ce ] ; 3 uses
  %i.ft = mul nsw i64 %indvars.iv447, %i.fq
  %i.fu = getelementptr inbounds i8, ptr %3, i64 %i.ft ; 3 uses
  switch i32 %5, label %bb.bf [
    i32 1, label %bb.bg
    i32 2, label %bb.bh
    i32 4, label %bb.bi
  ]

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !16
  %i.fw = zext i8 %i.fv to i32
  br label %bb.bj

bb.bh:                                            ; preds = %bb.be
  %i.fx = load i16, ptr %i.fu, align 2, !tbaa !18
  %i.fy = zext i16 %i.fx to i32
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be
  %i.fz = load i32, ptr %i.fu, align 4, !tbaa !19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.0 = phi i32 [ %i.fw, %bb.bg ], [ %i.fy, %bb.bh ], [ %i.fz, %bb.bi ] ; 6 uses
  %i.ga = add i32 %.0, -1
  %or.cond296.not = icmp ult i32 %i.ga, %1
  br i1 %or.cond296.not, label %bb.bk, label %bb.ce

bb.bk:                                            ; preds = %bb.bj
  %or.cond8 = icmp ugt i32 %.0, %invariant.umin422
  br i1 %or.cond8, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %.0) #9
  %.not288 = icmp eq ptr %.1338.ph, %13
  br i1 %.not288, label %vlc_common_init.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @av_free(ptr noundef nonnull %.1338.ph) #9
  br label %vlc_common_init.exit

bb.bn:                                            ; preds = %bb.bk
  %i.gb = trunc nuw nsw i32 %.0 to i8
  %i.gc = sext i32 %.3255415 to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %.1338.ph, i64 %i.gc ; 4 uses
  store i8 %i.gb, ptr %i.gd, align 4, !tbaa !21
  %i.ge = mul nsw i64 %indvars.iv447, %i.fr
  %i.gf = getelementptr inbounds i8, ptr %6, i64 %i.ge ; 3 uses
  switch i32 %8, label %bb.bo [
    i32 1, label %bb.bp
    i32 2, label %bb.bq
    i32 4, label %bb.br
  ]

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !16
  %i.gh = zext i8 %i.gg to i32
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bn
  %i.gi = load i16, ptr %i.gf, align 2, !tbaa !18
  %i.gj = zext i16 %i.gi to i32
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  %i.gk = load i32, ptr %i.gf, align 4, !tbaa !19
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.sink498 = phi i32 [ %i.gk, %bb.br ], [ %i.gj, %bb.bq ], [ %i.gh, %bb.bp ] ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store i32 %.sink498, ptr %i.gl, align 4, !tbaa !22
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gn = zext i32 %.sink498 to i64
  %i.go = zext nneg i32 %.0 to i64
  %.highbits = lshr i64 %i.gn, %i.go
  %.not284 = icmp eq i64 %.highbits, 0
  br i1 %.not284, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gp = trunc nuw nsw i64 %indvars.iv447 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %.sink498, i32 noundef %i.gp) #9
  %.not287 = icmp eq ptr %.1338.ph, %13
end_hunk_0
