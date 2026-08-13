inline.NumInlined: 12
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@xsub_encode:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !43 ; 3 uses
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 46
  store i8 %i.de, ptr %i.df, align 1, !tbaa !46
  %i.dg = lshr i32 %i.dd, 8
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 45
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !46
  %i.dj = lshr i32 %i.dd, 16
  %i.dk = trunc i32 %i.dj to i8
  store i8 %i.dk, ptr %i.cx, align 1, !tbaa !46
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !38
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !43 ; 3 uses
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !46
  %i.du = lshr i32 %i.dr, 8
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !46
  %i.dx = lshr i32 %i.dr, 16
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %i.dl, align 1, !tbaa !46
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !40
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !43 ; 3 uses
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !46
  %i.ei = lshr i32 %i.ef, 8
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 51
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !46
  %i.el = lshr i32 %i.ef, 16
  %i.em = trunc i32 %i.el to i8
  store i8 %i.em, ptr %i.dz, align 1, !tbaa !46
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.eo = icmp samesign ult i32 %2, 55
  %spec.select.i = select i1 %i.eo, ptr null, ptr %i.en ; 3 uses
  %i.ep = tail call i32 @llvm.umax.i32(i32 %2, i32 55)
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %spec.select.i, ptr %i.eq, align 8, !tbaa !49
  %i.er = zext nneg i32 %i.ep to i64
  %i.es = getelementptr i8, ptr %spec.select.i, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -55
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %spec.select.i, ptr %i.ev, align 8, !tbaa !52
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 32, ptr %i.ew, align 4, !tbaa !53
  store i32 0, ptr %4, align 8, !tbaa !54
  %i.ex = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !38 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !40
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !43
  %i.fd = shl nsw i32 %i.fc, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !44
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !45
  %i.fi = add nsw i32 %i.fh, 1
  %i.fj = ashr i32 %i.fi, 1
  %i.fk = call fastcc i32 @xsub_encode_rle(ptr noundef %4, ptr noundef %i.fa, i32 noundef %i.fd, i32 noundef %i.ff, i32 noundef %i.fj)
  %.not59 = icmp eq i32 %i.fk, 0
  br i1 %.not59, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.fm = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.fn = load ptr, ptr %i.eq, align 8, !tbaa !49
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = load i32, ptr %i.ew, align 4, !tbaa !53
  %i.fs = sub nsw i32 32, %i.fr
  %i.ft = lshr i32 %i.fs, 3
  %i.fu = trunc i64 %i.fq to i32
  %i.fv = add i32 %i.ft, %i.fu
  %i.fw = trunc i32 %i.fv to i16
  store i16 %i.fw, ptr %i.fl, align 1, !tbaa !46
  %i.fx = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !38 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !40
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !43 ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %i.ga, i64 %i.gd
  %i.gf = shl nsw i32 %i.gc, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !44
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !45
  %i.gk = ashr i32 %i.gj, 1
  %i.gl = call fastcc i32 @xsub_encode_rle(ptr noundef %4, ptr noundef %i.ge, i32 noundef %i.gf, i32 noundef %i.gh, i32 noundef %i.gk)
  %.not60 = icmp eq i32 %i.gl, 0
  br i1 %.not60, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.gm = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !38 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !45
  %i.gq = and i32 %i.gp, 1
  %.not61 = icmp eq i32 %i.gq, 0
  br i1 %.not61, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !44
  call fastcc void @put_xsub_rle(ptr noundef %4, i32 noundef %i.gs, i32 noundef 0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call fastcc void @flush_put_bits(ptr noundef %4)
  %.val = load ptr, ptr %i.eq, align 8, !tbaa !49
  %.val62 = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.gt = ptrtoint ptr %.val62 to i64
  %i.gu = ptrtoint ptr %.val to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = add i32 %i.gw, 53
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.n, %bb.r, %bb.m, %bb.g, %bb.b
  %.050 = phi i32 [ -1397118274, %bb.b ], [ -22, %bb.m ], [ -22, %bb.g ], [ -1397118274, %bb.n ], [ %i.gx, %bb.r ], [ -1397118274, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.050
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1397118274, 1) i32 @xsub_encode_rle(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 -1073741824, 1073741824) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.f = and i32 %3, 1                            ; 2 uses
  %.not45 = icmp eq i32 %i.f, 0
  %i.g = sext i32 %2 to i64
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre = load i32, ptr %i.e, align 4, !tbaa !53
  %.pre59 = load i32, ptr %0, align 8, !tbaa !54
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.h = zext nneg i32 %3 to i64                  ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %align_put_bits.exit.us
  %.03853.us = phi i32 [ %i.bg, %align_put_bits.exit.us ], [ 0, %.preheader.us.preheader ]
  %.04252.us = phi ptr [ %i.bf, %align_put_bits.exit.us ], [ %1, %.preheader.us.preheader ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %.critedge.us
  %.04051.us = phi i32 [ 0, %.preheader.us ], [ %i.am, %.critedge.us ] ; 4 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = load i32, ptr %i.e, align 4, !tbaa !53
  %i.n = sub i32 39, %i.m
  %i.o = ashr i32 %i.n, 3
  %i.p = zext i32 %i.o to i64
  %i.q = add i64 %i.l, %i.p
  %i.r = sub i64 %i.k, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 7
  br i1 %i.t, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = sext i32 %.04051.us to i64               ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.04252.us, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !46
  %i.x = and i8 %i.w, 3                           ; 3 uses
  %i.y = zext nneg i8 %i.x to i32
  %i.z = add nsw i32 %.04051.us, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.z) ; 2 uses
  %indvars.iv.next74 = add nsw i64 %i.u, 1        ; 2 uses
  %i.aa = icmp slt i64 %indvars.iv.next74, %i.h
  br i1 %i.aa, label %.lr.ph, label %.critedge.us

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next75, 1 ; 2 uses
  %i.ab = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.ab, label %.lr.ph, label %.critedge.us, !llvm.loop !55

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.next75 = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next74, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %.04252.us, i64 %indvars.iv.next75
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !46
  %i.ae = and i8 %i.ad, 3
  %i.af = icmp eq i8 %i.ae, %i.x
  br i1 %i.af, label %bb.d, label %.critedge.us.split.loop.exit, !llvm.loop !55

.critedge.us.split.loop.exit:                     ; preds = %.lr.ph
  %i.ag = trunc nsw i64 %indvars.iv.next75 to i32
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.d, %bb.c, %.critedge.us.split.loop.exit
  %.039.us.lcssa = phi i32 [ %i.ag, %.critedge.us.split.loop.exit ], [ %smax, %bb.c ], [ %smax, %bb.d ] ; 2 uses
  %i.ah = sub nsw i32 %.039.us.lcssa, %.04051.us  ; 2 uses
  %i.ai = icmp eq i32 %.039.us.lcssa, %3
  %i.aj = icmp eq i8 %i.x, 0                      ; 2 uses
  %or.cond.us = select i1 %i.ai, i1 %i.aj, i1 false
  %i.ak = add nsw i32 %i.ah, %i.f
  %i.al = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 255)
  %.037.us = select i1 %or.cond.us, i32 %i.ak, i32 %i.al ; 2 uses
  tail call fastcc void @put_xsub_rle(ptr noundef %0, i32 noundef %.037.us, i32 noundef %i.y)
  %i.am = add nsw i32 %.037.us, %.04051.us        ; 2 uses
  %i.an = icmp slt i32 %i.am, %3
  br i1 %i.an, label %bb.b, label %._crit_edge.us, !llvm.loop !57

bb.e:                                             ; preds = %._crit_edge.us
  tail call fastcc void @put_xsub_rle(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.us
  %i.ao = load i32, ptr %i.e, align 4, !tbaa !53  ; 5 uses
  %i.ap = load i32, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.aq = icmp sgt i32 %i.ao, 7
  br i1 %i.aq, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !52  ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ugt i64 %i.av, 3
  br i1 %i.aw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.9) #8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = shl i32 %i.ap, %i.ao
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  store i32 %i.ay, ptr %i.as, align 1, !tbaa !46
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.ba, ptr %i.d, align 8, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %reass.sub.i.i.us = and i32 %i.ao, -8
  %i.bb = add i32 %reass.sub.i.i.us, 32
  br label %align_put_bits.exit.us

bb.k:                                             ; preds = %bb.f
  %i.bc = and i32 %i.ao, 7
  %i.bd = shl i32 %i.ap, %i.bc
  %i.be = and i32 %i.ao, 2147483640
  br label %align_put_bits.exit.us

align_put_bits.exit.us:                           ; preds = %bb.k, %bb.j
  %.026.i.i.i.us = phi i32 [ %i.bd, %bb.k ], [ 0, %bb.j ]
  %.0.i.i.i.us = phi i32 [ %i.be, %bb.k ], [ %i.bb, %bb.j ]
  store i32 %.026.i.i.i.us, ptr %0, align 8, !tbaa !54
  store i32 %.0.i.i.i.us, ptr %i.e, align 4, !tbaa !53
  %i.bf = getelementptr inbounds i8, ptr %.04252.us, i64 %i.g
  %i.bg = add nuw nsw i32 %.03853.us, 1           ; 2 uses
  %exitcond58.not = icmp eq i32 %i.bg, %4
  br i1 %exitcond58.not, label %.loopexit, label %.preheader.us, !llvm.loop !58

._crit_edge.us:                                   ; preds = %.critedge.us
  %or.cond46.us = or i1 %.not45, %i.aj
  br i1 %or.cond46.us, label %bb.f, label %bb.e

.preheader:                                       ; preds = %.preheader.preheader, %align_put_bits.exit
  %i.bh = phi i32 [ %.026.i.i.i, %align_put_bits.exit ], [ %.pre59, %.preheader.preheader ] ; 2 uses
  %i.bi = phi i32 [ %.0.i.i.i, %align_put_bits.exit ], [ %.pre, %.preheader.preheader ] ; 5 uses
  %.03853 = phi i32 [ %i.by, %align_put_bits.exit ], [ 0, %.preheader.preheader ]
  %i.bj = icmp sgt i32 %i.bi, 7
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader
  %i.bk = and i32 %i.bi, 7
  %i.bl = shl i32 %i.bh, %i.bk
  %i.bm = and i32 %i.bi, 2147483640
  br label %align_put_bits.exit

bb.m:                                             ; preds = %.preheader
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !52  ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ugt i64 %i.br, 3
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = shl i32 %i.bh, %i.bi
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  store i32 %i.bu, ptr %i.bo, align 1, !tbaa !46
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !52
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.9) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %reass.sub.i.i = and i32 %i.bi, -8
  %i.bx = add i32 %reass.sub.i.i, 32
  br label %align_put_bits.exit

align_put_bits.exit:                              ; preds = %bb.l, %bb.p
  %.026.i.i.i = phi i32 [ %i.bl, %bb.l ], [ 0, %bb.p ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.bm, %bb.l ], [ %i.bx, %bb.p ] ; 2 uses
  store i32 %.026.i.i.i, ptr %0, align 8, !tbaa !54
  store i32 %.0.i.i.i, ptr %i.e, align 4, !tbaa !53
  %i.by = add nuw nsw i32 %.03853, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %4
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !58

.loopexit:                                        ; preds = %align_put_bits.exit, %align_put_bits.exit.us, %bb.b, %bb.a
  %.041 = phi i32 [ 0, %bb.a ], [ 0, %align_put_bits.exit.us ], [ -1397118274, %bb.b ], [ 0, %align_put_bits.exit ]
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_xsub_rle(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 4) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %1, 256
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds i8, ptr @ff_log2_tab, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !46
  %i.e = lshr i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 2                  ; 2 uses
  %i.h = or disjoint i32 %i.g, 2                  ; 4 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !53   ; 5 uses
  %i.l = icmp slt i32 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = shl i32 %i.i, %i.h
  %i.n = or i32 %i.m, %1
  %i.o = sub nsw i32 %i.k, %i.h
  br label %put_bits.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52   ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.v, 3
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = shl i32 %i.i, %i.k
  %i.y = sub nsw i32 %i.h, %i.k
  %i.z = lshr i32 %1, %i.y
  %i.aa = or i32 %i.z, %i.x
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  store i32 %i.ab, ptr %i.s, align 1, !tbaa !46
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.ad, ptr %i.r, align 8, !tbaa !52
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.9) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = sub i32 %i.k, %i.g
  %i.af = add i32 %i.ae, 30
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.c, %bb.g
  %.026.i.i = phi i32 [ %i.n, %bb.c ], [ %1, %bb.g ] ; 2 uses
  %.0.i.i = phi i32 [ %i.o, %bb.c ], [ %i.af, %bb.g ] ; 2 uses
  store i32 %.026.i.i, ptr %0, align 8, !tbaa !54
  store i32 %.0.i.i, ptr %i.j, align 4, !tbaa !53
  br label %bb.m

bb.h:                                             ; preds = %bb.a
end_hunk_0
