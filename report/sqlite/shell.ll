inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@qrfWrapLine:bb.a
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 192
  %i.aw = icmp eq i32 %i.av, 128
  br i1 %i.aw, label %bb.m, label %sqlite3_qrf_wcwidth.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = and i32 %i.az, 192
  %i.bb = icmp eq i32 %i.ba, 128
  br i1 %i.bb, label %bb.n, label %sqlite3_qrf_wcwidth.exit

bb.n:                                             ; preds = %bb.m
  %i.bc = shl nuw nsw i32 %i.g, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.ap, 12
  %i.bf = and i32 %i.be, 258048
  %i.bg = or disjoint i32 %i.bf, %i.bd
  %i.bh = shl nuw nsw i32 %i.au, 6
  %i.bi = and i32 %i.bh, 4032
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = and i32 %i.az, 63
  %i.bl = or disjoint i32 %i.bj, %i.bk
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.e, %bb.i, %bb.n
  %.sink.i = phi i32 [ %i.r, %bb.e ], [ %i.bl, %bb.n ], [ %i.ak, %bb.i ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.e ], [ 4, %bb.n ], [ 3, %bb.i ] ; 4 uses
  %i.bm = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.bm, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.q
  %.01935.i = phi i32 [ %.2.i, %bb.q ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.q ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.bn = add nsw i32 %.02034.i, %.01935.i
  %i.bo = sdiv i32 %i.bn, 2                       ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !11 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %.sink.i
  br i1 %i.bt, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.bu = icmp sgt i32 %i.bs, %.sink.i
  br i1 %i.bu, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bv = add nsw i32 %i.bo, -1
  br label %bb.q

.thread.i:                                        ; preds = %bb.o
  %i.bw = load i8, ptr %i.bq, align 8, !tbaa !13
  br label %sqlite3_qrf_wcwidth.exit

bb.q:                                             ; preds = %bb.p, %.preheader.i
  %.222.i = phi i32 [ %i.bo, %.preheader.i ], [ %.02034.i, %bb.p ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i ], [ %i.bv, %bb.p ] ; 3 uses
  %i.bx = add nsw i32 %.2.i, -1
  %i.by = icmp slt i32 %.222.i, %i.bx
  br i1 %i.by, label %.preheader.i, label %bb.r, !llvm.loop !14

bb.r:                                             ; preds = %bb.q
  %i.bz = sext i32 %.2.i to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !11
  %i.cd = icmp sgt i32 %i.cc, %.sink.i
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = sext i32 %.222.i to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !13
  br label %sqlite3_qrf_wcwidth.exit

bb.t:                                             ; preds = %bb.r
  %i.ch = load i8, ptr %i.ca, align 8, !tbaa !13
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.s, %bb.t
  %.0.i143 = phi i32 [ %.0.i, %bb.t ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.s ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.225.shrunk.i = phi i8 [ %i.ch, %bb.t ], [ %i.bw, %.thread.i ], [ %i.cg, %bb.s ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.ci = add nsw i32 %.0110173, %.225.i          ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, %1
  %i.ck = add i32 %.0115172, -1
  %i.cl = add i32 %i.ck, %.0.i143
  br i1 %i.cj, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.ad

bb.u:                                             ; preds = %.lr.ph
  %i.cm = icmp ugt i8 %i.e, 31
  br i1 %i.cm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cn = icmp eq i32 %.0110173, %1
  br i1 %i.cn, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = add nsw i32 %.0110173, 1
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  switch i8 %i.e, label %qrfIsVt100.exit.thread [
    i8 10, label %sqlite3_qrf_wcwidth.exit._crit_edge
    i8 0, label %sqlite3_qrf_wcwidth.exit._crit_edge
    i8 13, label %bb.y
    i8 9, label %bb.z
    i8 27, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.cp = add nsw i32 %.0115172, 1                ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16
  %i.ct = icmp eq i8 %i.cs, 10
  br i1 %i.ct, label %.thread151, label %qrfIsVt100.exit.thread

bb.z:                                             ; preds = %bb.x
  %reass.sub = and i32 %.0110173, -8
  %i.cu = add i32 %reass.sub, 8                   ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, %1
  br i1 %i.cv, label %.thread, label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.cx, 91
  br i1 %.not.i, label %.preheader.i140, label %qrfIsVt100.exit.thread

.preheader.i140:                                  ; preds = %bb.aa, %.preheader.i140
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i140 ], [ 2, %bb.aa ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16
  %i.da = and i8 %i.cz, -16
  %or.cond.i = icmp eq i8 %i.da, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i140, label %.critedge.i, !llvm.loop !18

.critedge.i:                                      ; preds = %.preheader.i140, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i140 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv25.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !16  ; 2 uses
  %i.dd = and i8 %i.dc, -16
  %or.cond22.i = icmp eq i8 %i.dd, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !19

.critedge2.i:                                     ; preds = %.critedge.i
  %i.de = add i8 %i.dc, -64
  %or.cond23.i = icmp ult i8 %i.de, 63
  br i1 %or.cond23.i, label %bb.ab, label %qrfIsVt100.exit.thread

bb.ab:                                            ; preds = %.critedge2.i
  %i.df = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.dg = add nsw i32 %.0115172, %i.df
  br label %bb.ad

qrfIsVt100.exit.thread:                           ; preds = %.critedge2.i, %bb.aa, %bb.y, %bb.x
  %i.dh = icmp eq i32 %.0110173, %1
  br i1 %i.dh, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %qrfIsVt100.exit.thread
  %i.di = add nsw i32 %.0110173, 1
  br label %bb.ad

bb.ad:                                            ; preds = %sqlite3_qrf_wcwidth.exit, %bb.z, %bb.ab, %bb.ac, %bb.w
  %.2117 = phi i32 [ %i.cl, %sqlite3_qrf_wcwidth.exit ], [ %.0115172, %bb.w ], [ %.0115172, %bb.z ], [ %i.dg, %bb.ab ], [ %.0115172, %bb.ac ]
  %.3 = phi i32 [ %i.ci, %sqlite3_qrf_wcwidth.exit ], [ %i.co, %bb.w ], [ %i.cu, %bb.z ], [ %.0110173, %bb.ab ], [ %i.di, %bb.ac ] ; 3 uses
  %i.dj = add nsw i32 %.2117, 1                   ; 2 uses
  %.not = icmp sgt i32 %.3, %1
  br i1 %.not, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph, !llvm.loop !824

sqlite3_qrf_wcwidth.exit._crit_edge:              ; preds = %bb.ad, %bb.v, %qrfIsVt100.exit.thread, %bb.x, %bb.x, %sqlite3_qrf_wcwidth.exit
  %.0115.lcssa = phi i32 [ %.0115172, %sqlite3_qrf_wcwidth.exit ], [ %i.dj, %bb.ad ], [ %.0115172, %bb.v ], [ %.0115172, %qrfIsVt100.exit.thread ], [ %.0115172, %bb.x ], [ %.0115172, %bb.x ] ; 3 uses
  %.0110.lcssa = phi i32 [ %.0110173, %sqlite3_qrf_wcwidth.exit ], [ %.3, %bb.ad ], [ %1, %bb.v ], [ %1, %qrfIsVt100.exit.thread ], [ %.0110173, %bb.x ], [ %.0110173, %bb.x ] ; 3 uses
  switch i8 %i.e, label %.thread [
    i8 0, label %sqlite3_qrf_wcwidth.exit._crit_edge.thread
    i8 10, label %.thread151
  ]

sqlite3_qrf_wcwidth.exit._crit_edge.thread:       ; preds = %.preheader159, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110.lcssa226 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ 0, %.preheader159 ]
  %.0115.lcssa225 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ 0, %.preheader159 ] ; 2 uses
  store i32 %.0115.lcssa225, ptr %3, align 4, !tbaa !17
  store i32 %.0110.lcssa226, ptr %4, align 4, !tbaa !17
  br label %bb.am

.thread151:                                       ; preds = %bb.y, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110166 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.y ]
  %.3118155 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %i.cp, %bb.y ] ; 2 uses
  store i32 %.3118155, ptr %3, align 4, !tbaa !17
  store i32 %.0110166, ptr %4, align 4, !tbaa !17
  %i.dk = add nsw i32 %.3118155, 1
  br label %bb.am

.thread:                                          ; preds = %bb.z, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0115170 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0115172, %bb.z ] ; 9 uses
  %.0110167 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.z ] ; 5 uses
  %.not129 = icmp eq i32 %2, 0
  %.pre = sext i32 %.0115170 to i64               ; 10 uses
  br i1 %.not129, label %.thread._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %.pre
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !16  ; 2 uses
  %.not130 = icmp eq i8 %i.dm, 0
  br i1 %.not130, label %.thread._crit_edge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16  ; 2 uses
  %i.dq = and i8 %i.dp, 1
  %.not131 = icmp eq i8 %i.dq, 0
  br i1 %.not131, label %bb.ag, label %.thread._crit_edge

bb.ag:                                            ; preds = %bb.af
  %i.dr = zext i8 %i.e to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = and i8 %i.dt, 6
  %i.dv = icmp ne i8 %i.du, 0
  %i.dw = and i8 %i.dp, 6
  %i.dx = icmp eq i8 %i.dw, 0
  %i.dy = xor i1 %i.dx, %i.dv
  br i1 %i.dy, label %.preheader158, label %.thread._crit_edge

.preheader158:                                    ; preds = %bb.ag
  %i.dz = sdiv i32 %.0115170, 2                   ; 3 uses
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %indvars.iv.next249 = add nsw i64 %.pre, -1     ; 2 uses
  %.not132.not254 = icmp sgt i32 %.0115170, 0
  br i1 %.not132.not254, label %.lr.ph256, label %.split.loop.exit237

bb.ah:                                            ; preds = %.lr.ph256
  %indvars.iv.next = add nsw i64 %indvars.iv255, -1 ; 2 uses
  %.not132.not = icmp sgt i64 %indvars.iv255, %i.ea
  br i1 %.not132.not, label %.lr.ph256, label %.split.loop.exit237, !llvm.loop !825

.lr.ph256:                                        ; preds = %.preheader158, %bb.ah
  %indvars.iv255 = phi i64 [ %indvars.iv.next, %bb.ah ], [ %indvars.iv.next249, %.preheader158 ] ; 6 uses
  %indvars.iv251 = phi i64 [ %indvars.iv255, %bb.ah ], [ %.pre, %.preheader158 ]
  %i.eb = getelementptr inbounds i8, ptr %0, i64 %indvars.iv255
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !16
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !16
  %i.eg = and i8 %i.ef, 1
  %.not133 = icmp eq i8 %i.eg, 0
  br i1 %.not133, label %bb.ah, label %.split.loop.exit, !llvm.loop !825

.split.loop.exit:                                 ; preds = %.lr.ph256
  br label %.split.loop.exit237, !llvm.loop !825

.split.loop.exit237:                              ; preds = %bb.ah, %.split.loop.exit, %.preheader158
  %indvars.iv.lcssa = phi i64 [ %indvars.iv251, %.split.loop.exit ], [ %.pre, %.preheader158 ], [ %indvars.iv255, %bb.ah ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv255, %.split.loop.exit ], [ %indvars.iv.next249, %.preheader158 ], [ %indvars.iv.next, %bb.ah ]
  %6 = trunc nsw i64 %indvars.iv.lcssa to i32
  %.not134 = icmp sge i32 %i.dz, %6
  %i.eh = icmp sgt i32 %.0115170, 1
  %or.cond = and i1 %i.eh, %.not134
  br i1 %or.cond, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %.split.loop.exit237, %bb.ai
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.ai ], [ %.pre, %.split.loop.exit237 ] ; 4 uses
  %i.ei = getelementptr i8, ptr %0, i64 %indvars.iv211 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !16
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !16
  %i.eo = and i8 %i.en, 6
  %i.ep = icmp ne i8 %i.eo, 0
  %i.eq = load i8, ptr %i.ei, align 1, !tbaa !16  ; 2 uses
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16
  %i.eu = and i8 %i.et, 6
  %i.ev = icmp eq i8 %i.eu, 0
  %.not136 = xor i1 %i.ep, %i.ev
  %.not137 = icmp slt i8 %i.eq, -64
  %or.cond139 = or i1 %.not137, %.not136
  br i1 %or.cond139, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %.lr.ph196
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, -1 ; 2 uses
  %.not135.not = icmp sgt i64 %indvars.iv211, %i.ea
  br i1 %.not135.not, label %.lr.ph196, label %.loopexit, !llvm.loop !826

.loopexit:                                        ; preds = %bb.ai, %.lr.ph196, %.split.loop.exit237
  %.2114.in = phi i64 [ %indvars.iv.next.lcssa, %.split.loop.exit237 ], [ %indvars.iv.next212, %bb.ai ], [ %indvars.iv211, %.lr.ph196 ] ; 2 uses
  %.2114 = trunc i64 %.2114.in to i32             ; 2 uses
  %.not138 = icmp sgt i32 %i.dz, %.2114
  br i1 %.not138, label %.thread._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %sext = shl i64 %.2114.in, 32
  %7 = ashr exact i64 %sext, 32                   ; 2 uses
  %i.ew = tail call fastcc i32 @qrfDisplayWidth(ptr noundef nonnull %0, i64 noundef %7, ptr noundef null)
  br label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread, %.loopexit, %bb.aj, %bb.ag, %bb.af, %bb.ae
  %.pre-phi = phi i64 [ %.pre, %bb.ae ], [ %.pre, %.loopexit ], [ %7, %bb.aj ], [ %.pre, %bb.ag ], [ %.pre, %bb.af ], [ %.pre, %.thread ]
  %.4119 = phi i32 [ %.0115170, %bb.ae ], [ %.0115170, %.loopexit ], [ %.2114, %bb.aj ], [ %.0115170, %bb.ag ], [ %.0115170, %bb.af ], [ %.0115170, %.thread ]
  %.5 = phi i32 [ %.0110167, %bb.ae ], [ %.0110167, %.loopexit ], [ %i.ew, %bb.aj ], [ %.0110167, %bb.ag ], [ %.0110167, %bb.af ], [ %.0110167, %.thread ]
  store i32 %.4119, ptr %3, align 4, !tbaa !17
  store i32 %.5, ptr %4, align 4, !tbaa !17
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %.thread._crit_edge
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.critedge ], [ %.pre-phi, %.thread._crit_edge ] ; 3 uses
  %i.ex = getelementptr inbounds i8, ptr %0, i64 %indvars.iv214
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !16
  switch i8 %i.ey, label %bb.al [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
  ]

.critedge:                                        ; preds = %bb.ak, %bb.ak, %bb.ak
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, 1
  br label %bb.ak, !llvm.loop !827

bb.al:                                            ; preds = %bb.ak
  %i.ez = trunc nsw i64 %indvars.iv214 to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread151, %sqlite3_qrf_wcwidth.exit._crit_edge.thread, %bb.b
  %.sink = phi i32 [ %i.ez, %bb.al ], [ %i.dk, %.thread151 ], [ %.0115.lcssa225, %sqlite3_qrf_wcwidth.exit._crit_edge.thread ], [ 0, %bb.b ]
  store i32 %.sink, ptr %5, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfRTrim(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_str_length(ptr noundef %0) #45 ; 3 uses
  %i.b = tail call ptr @sqlite3_str_value(ptr noundef %0) #45
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.07 = phi i32 [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = zext nneg i32 %.07 to i64
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = icmp eq i8 %i.g, 32
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nsw i32 %.07, -1
  %i.j = icmp sgt i32 %.07, 1
  br i1 %i.j, label %.lr.ph, label %.critedge, !llvm.loop !97

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ 0, %bb.b ], [ %.07, %.lr.ph ]
  tail call void @sqlite3_str_truncate(ptr noundef %0, i32 noundef %.0.lcssa) #45
  ret void
}

declare void @sqlite3_str_appendchar(ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendall(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @sqlite3_str_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @sqlite3_errstr(i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_value_dup(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_value(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_value_free(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_str_truncate(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfAppendWithTabs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %.073 = phi i32 [ %2, %.lr.ph ], [ %.2, %bb.ab ] ; 3 uses
  %.05072 = phi ptr [ %1, %.lr.ph ], [ %.252, %bb.ab ] ; 4 uses
  %.05371 = phi i32 [ 0, %.lr.ph ], [ %.255, %bb.ab ] ; 6 uses
  %.05670 = phi i32 [ 0, %.lr.ph ], [ %.157, %bb.ab ] ; 5 uses
  %i.e = sext i32 %.05670 to i64
  %i.f = getelementptr inbounds i8, ptr %.05072, i64 %i.e ; 15 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16    ; 6 uses
  %i.h = icmp ult i8 %i.g, 32
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %.05072, i32 noundef %.05670) #45
  %i.i = sub nsw i32 %.073, %.05670               ; 4 uses
  switch i8 %i.g, label %bb.g [
    i8 27, label %bb.d
    i8 9, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.k, 91
  br i1 %.not.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = and i8 %i.m, -16
  %or.cond.i = icmp eq i8 %i.n, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !18

.critedge.i:                                      ; preds = %.preheader.i, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv25.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16    ; 2 uses
  %i.q = and i8 %i.p, -16
  %or.cond22.i = icmp eq i8 %i.q, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !19

.critedge2.i:                                     ; preds = %.critedge.i
  %i.r = add i8 %i.p, -64
  %or.cond23.i = icmp ult i8 %i.r, 63
  br i1 %or.cond23.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %.critedge2.i
  %i.s = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.t = add nuw nsw i32 %i.s, 1                  ; 3 uses
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef %i.t) #45
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  %i.w = sub nsw i32 %i.i, %i.t
  br label %bb.ab

bb.f:                                             ; preds = %bb.c
  %i.x = and i32 %.05371, 7
  %i.y = sub nuw nsw i32 8, %i.x                  ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.y, i8 noundef signext 32) #45
  %i.z = add i32 %i.y, %.05371
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ab = add nsw i32 %i.i, -1
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.ac = icmp eq i8 %i.g, 13
  %i.ad = icmp eq i32 %i.i, 1
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %.thread79, label %.thread

.thread79:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %._crit_edge

.thread:                                          ; preds = %.critedge2.i, %bb.d, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.af = add i32 %.05371, 1
  store i8 -30, ptr %i.a, align 1, !tbaa !16
  store i8 -112, ptr %i.c, align 1, !tbaa !16
  %i.ag = or disjoint i8 %i.g, -128
  store i8 %i.ag, ptr %i.d, align 1, !tbaa !16
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 3) #45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ai = add nsw i32 %i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.ab

bb.h:                                             ; preds = %bb.b
  %i.aj = icmp sgt i8 %i.g, -1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %.05670, 1
  %i.al = add i32 %.05371, 1
end_hunk_0
