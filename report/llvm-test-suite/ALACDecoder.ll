inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj:bb.a
    i8 3, label %bb.e
    i8 1, label %bb.ab
    i8 2, label %.thread407
    i8 5, label %.thread407
    i8 4, label %bb.ay
    i8 6, label %bb.az
    i8 7, label %bb.bb
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.x = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4)
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw i32 1, %i.y
  %i.aa = load i16, ptr %i.h, align 8, !tbaa !29
  %i.ab = trunc i32 %i.z to i16
  %i.ac = or i16 %i.aa, %i.ab
  store i16 %i.ac, ptr %i.h, align 8, !tbaa !29
  %i.ad = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 12)
  %i.ae = and i32 %i.ad, 65535
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ag = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 3 uses
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = lshr i8 %i.ah, 1
  %i.aj = and i8 %i.ai, 3                         ; 5 uses
  %.not383 = icmp eq i8 %i.aj, 3
  br i1 %.not383, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = and i32 %i.ag, 1
  %i.al = load i8, ptr %i.k, align 1, !tbaa !35
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i8 %i.aj, 3                 ; 2 uses
  %i.ao = zext nneg i8 %i.an to i32               ; 2 uses
  %i.ap = sub nsw i32 %i.am, %i.ao                ; 8 uses
  %i.aq = and i32 %i.ag, 248
  %.not384 = icmp eq i32 %i.aq, 0
  br i1 %.not384, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.as = shl i32 %i.ar, 16
  %i.at = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.au = or i32 %i.as, %i.at
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.au, %bb.h ], [ %.0334, %bb.g ] ; 22 uses
  %i.av = icmp eq i32 %i.ak, 0
  br i1 %i.av, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aw = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 0 uses
  %i.ax = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 0 uses
  %i.ay = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.az = and i32 %i.ay, 15
  %i.ba = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.bb = lshr i32 %i.ba, 5
  %i.bc = and i32 %i.bb, 7
  %i.bd = and i32 %i.ba, 31                       ; 3 uses
  %.not502 = icmp eq i32 %i.bd, 0
  br i1 %.not502, label %._crit_edge446, label %.lr.ph445.preheader

.lr.ph445.preheader:                              ; preds = %bb.j
  %wide.trip.count555 = zext nneg i32 %i.bd to i64
  br label %.lr.ph445

.lr.ph445:                                        ; preds = %.lr.ph445.preheader, %.lr.ph445
  %indvars.iv552 = phi i64 [ 0, %.lr.ph445.preheader ], [ %indvars.iv.next553, %.lr.ph445 ] ; 2 uses
  %i.be = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.bf = trunc i32 %i.be to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv552
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !26
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1 ; 2 uses
  %exitcond556.not = icmp eq i64 %indvars.iv.next553, %wide.trip.count555
  br i1 %exitcond556.not, label %._crit_edge446, label %.lr.ph445, !llvm.loop !36

._crit_edge446:                                   ; preds = %.lr.ph445, %bb.j
  %.not385 = icmp eq i8 %i.aj, 0                  ; 2 uses
  br i1 %.not385, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !38
  %i.bh = mul i32 %.1, %i.ao
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.bh)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge446
  %i.bi = load i8, ptr %i.n, align 1, !tbaa !40
  %i.bj = zext i8 %i.bi to i32
  %i.bk = zext i8 %i.v to i32
  %i.bl = mul nuw nsw i32 %i.bc, %i.bk
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = load i8, ptr %i.o, align 8, !tbaa !41
  %i.bo = zext i8 %i.bn to i32
  %i.bp = load i16, ptr %i.p, align 2, !tbaa !42
  %i.bq = zext i16 %i.bp to i32
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef %i.bj, i32 noundef %i.bm, i32 noundef %i.bo, i32 noundef %.1, i32 noundef %.1, i32 noundef %i.bq)
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.bs = call i32 @dyn_decomp(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef %i.br, i32 noundef %.1, i32 noundef %i.ap, ptr noundef nonnull %i.a) ; 2 uses
  %.not386 = icmp eq i32 %i.bs, 0
  br i1 %.not386, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bt = and i32 %i.ay, 240
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  br i1 %i.bu, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @unpc_block(ptr noundef %i.bv, ptr noundef %i.bv, i32 noundef %.1, ptr noundef null, i32 noundef 31, i32 noundef %i.ap, i32 noundef 0)
  %i.bw = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.bx = sub nsw i32 32, %i.ap                   ; 3 uses
  %i.by = icmp ult i32 %i.ap, 17
  %.not501 = icmp eq i32 %.1, 0                   ; 2 uses
  br i1 %i.by, label %.preheader, label %.preheader421

.preheader421:                                    ; preds = %bb.o
  br i1 %.not501, label %.thread, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader421
  %i.bz = trunc i32 %i.ap to i8
  %i.ca = add i8 %i.bz, -16
  %wide.trip.count545 = zext i32 %.1 to i64
  br label %bb.q

.preheader:                                       ; preds = %bb.o
  br i1 %.not501, label %.thread, label %.lr.ph442

.lr.ph442:                                        ; preds = %.preheader
  %i.cb = trunc nuw nsw i32 %i.ap to i8
  %wide.trip.count550 = zext i32 %.1 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph442, %bb.p
  %indvars.iv547 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next548, %bb.p ] ; 2 uses
  %i.cc = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.cb)
  %i.cd = shl i32 %i.cc, %i.bx
  %i.ce = ashr exact i32 %i.cd, %i.bx
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv547
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !4
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next548, %wide.trip.count550
  br i1 %exitcond551.not, label %.thread, label %bb.p, !llvm.loop !43

bb.q:                                             ; preds = %.lr.ph440, %bb.q
  %indvars.iv542 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next543, %bb.q ] ; 2 uses
  %i.ch = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.ci = shl i32 %i.ch, 16
  %i.cj = ashr i32 %i.ci, %i.bx
  %i.ck = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ca)
  %i.cl = or i32 %i.cj, %i.ck
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv542
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !4
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %exitcond546.not = icmp eq i64 %indvars.iv.next543, %wide.trip.count545
  br i1 %exitcond546.not, label %.thread, label %bb.q, !llvm.loop !44

.thread:                                          ; preds = %bb.q, %bb.p, %.preheader421, %.preheader
  %i.co = mul i32 %.1, %i.ap
  store i32 %i.co, ptr %i.a, align 4, !tbaa !4
  br label %.loopexit420

bb.r:                                             ; preds = %bb.m, %bb.n
  %.sink = phi ptr [ %i.bw, %bb.n ], [ %i.bv, %bb.m ]
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @unpc_block(ptr noundef %.sink, ptr noundef %i.cp, i32 noundef %.1, ptr noundef nonnull %i.c, i32 noundef %i.bd, i32 noundef %i.ap, i32 noundef %i.az)
  br i1 %.not385, label %.loopexit420, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not503 = icmp eq i32 %.1, 0
  br i1 %.not503, label %.loopexit420, label %.lr.ph449.preheader

.lr.ph449.preheader:                              ; preds = %bb.s
  %wide.trip.count560 = zext i32 %.1 to i64
  br label %.lr.ph449

.lr.ph449:                                        ; preds = %.lr.ph449.preheader, %.lr.ph449
  %indvars.iv557 = phi i64 [ 0, %.lr.ph449.preheader ], [ %indvars.iv.next558, %.lr.ph449 ] ; 2 uses
  %i.cq = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.an)
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv557
  store i16 %i.cr, ptr %i.ct, align 2, !tbaa !26
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next558, %wide.trip.count560
  br i1 %exitcond561.not, label %.loopexit420, label %.lr.ph449, !llvm.loop !45

.loopexit420:                                     ; preds = %.lr.ph449, %bb.s, %.thread, %bb.r
  %.not387399 = phi i1 [ true, %.thread ], [ true, %bb.r ], [ false, %bb.s ], [ false, %.lr.ph449 ] ; 2 uses
  %.shrunk504 = phi i8 [ 0, %.thread ], [ 0, %bb.r ], [ %i.aj, %bb.s ], [ %i.aj, %.lr.ph449 ]
  %i.cu = zext nneg i8 %.shrunk504 to i32         ; 2 uses
  %i.cv = load i8, ptr %i.k, align 1, !tbaa !35
  %i.cw = zext i8 %i.cv to i32
  %8 = add nsw i32 %i.cw, -16                     ; 2 uses
  %i.cx = call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 30)
  switch i32 %i.cx, label %.loopexit419 [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 4, label %bb.y
  ]

bb.t:                                             ; preds = %.loopexit420
  %i.cy = zext i32 %.0347 to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cy ; 6 uses
  %.not505 = icmp eq i32 %.1, 0
  br i1 %.not505, label %.loopexit419, label %.lr.ph453

.lr.ph453:                                        ; preds = %bb.t
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !8   ; 6 uses
  %wide.trip.count565 = zext i32 %.1 to i64       ; 5 uses
  %min.iters.check = icmp ugt i32 %.1, 7
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph453
  %n.vec = and i64 %wide.trip.count565, 4294967288 ; 4 uses
  %i.db = trunc nuw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <4 x i32>, ptr %i.dc, align 4, !tbaa !4
  %wide.load642 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !4
  %i.de = trunc <4 x i32> %wide.load to <4 x i16>
  %i.df = trunc <4 x i32> %wide.load642 to <4 x i16>
  %i.dg = and i64 %index, 4294967288
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store <4 x i16> %i.de, ptr %i.dh, align 2, !tbaa !26
  store <4 x i16> %i.df, ptr %i.di, align 2, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count565
  br i1 %cmp.n, label %.loopexit419, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph453, %middle.block
  %indvars.iv562.ph = phi i64 [ 0, %.lr.ph453 ], [ %n.vec, %middle.block ] ; 3 uses
  %.0340451.ph = phi i32 [ 0, %.lr.ph453 ], [ %i.db, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count565, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv562.prol = phi i64 [ %indvars.iv.next563.prol, %scalar.ph.prol ], [ %indvars.iv562.ph, %scalar.ph.preheader ] ; 2 uses
  %.0340451.prol = phi i32 [ %i.dp, %scalar.ph.prol ], [ %.0340451.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv562.prol
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = trunc i32 %i.dl to i16
  %i.dn = zext i32 %.0340451.prol to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dn
  store i16 %i.dm, ptr %i.do, align 2, !tbaa !26
  %indvars.iv.next563.prol = add nuw nsw i64 %indvars.iv562.prol, 1 ; 2 uses
  %i.dp = add i32 %.0340451.prol, %4              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !49

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv562.unr = phi i64 [ %indvars.iv562.ph, %scalar.ph.preheader ], [ %indvars.iv.next563.prol, %scalar.ph.prol ]
  %.0340451.unr = phi i32 [ %.0340451.ph, %scalar.ph.preheader ], [ %i.dp, %scalar.ph.prol ]
  %i.dq = sub nsw i64 %indvars.iv562.ph, %wide.trip.count565
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %.loopexit419, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv562 = phi i64 [ %indvars.iv.next563.3, %scalar.ph ], [ %indvars.iv562.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0340451 = phi i32 [ %i.es, %scalar.ph ], [ %.0340451.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv562
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.du = trunc i32 %i.dt to i16
  %i.dv = zext i32 %.0340451 to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dv
  store i16 %i.du, ptr %i.dw, align 2, !tbaa !26
  %i.dx = add i32 %.0340451, %4                   ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv562
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = zext i32 %i.dx to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.ec
  store i16 %i.eb, ptr %i.ed, align 2, !tbaa !26
  %i.ee = add i32 %i.dx, %4                       ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv562
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  %i.ei = trunc i32 %i.eh to i16
  %i.ej = zext i32 %i.ee to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.ej
  store i16 %i.ei, ptr %i.ek, align 2, !tbaa !26
  %i.el = add i32 %i.ee, %4                       ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv562
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = zext i32 %i.el to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.eq
  store i16 %i.ep, ptr %i.er, align 2, !tbaa !26
  %indvars.iv.next563.3 = add nuw nsw i64 %indvars.iv562, 4 ; 2 uses
  %i.es = add i32 %i.el, %4
  %exitcond566.not.3 = icmp eq i64 %indvars.iv.next563.3, %wide.trip.count565
  br i1 %exitcond566.not.3, label %.loopexit419, label %scalar.ph, !llvm.loop !51

bb.u:                                             ; preds = %.loopexit420
  %i.et = mul i32 %.0347, 3
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %i.eu
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @copyPredictorTo20(ptr noundef %i.ew, ptr noundef nonnull %i.ev, i32 noundef %4, i32 noundef %.1)
  br label %.loopexit419

bb.v:                                             ; preds = %.loopexit420
  %i.ex = mul i32 %.0347, 3
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ey ; 2 uses
  %i.fa = load ptr, ptr %i.l, align 8, !tbaa !8   ; 2 uses
  br i1 %.not387399, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fb = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @copyPredictorTo24Shift(ptr noundef %i.fa, ptr noundef %i.fb, ptr noundef nonnull %i.ez, i32 noundef %4, i32 noundef %.1, i32 noundef %i.cu)
  br label %.loopexit419

bb.x:                                             ; preds = %bb.v
  call void @copyPredictorTo24(ptr noundef %i.fa, ptr noundef nonnull %i.ez, i32 noundef %4, i32 noundef %.1)
  br label %.loopexit419

bb.y:                                             ; preds = %.loopexit420
  %i.fc = zext i32 %.0347 to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fc ; 2 uses
  %i.fe = load ptr, ptr %i.l, align 8, !tbaa !8   ; 2 uses
  br i1 %.not387399, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @copyPredictorTo32Shift(ptr noundef %i.fe, ptr noundef %i.ff, ptr noundef nonnull %i.fd, i32 noundef %4, i32 noundef %.1, i32 noundef %i.cu)
  br label %.loopexit419

bb.aa:                                            ; preds = %bb.y
  call void @copyPredictorTo32(ptr noundef %i.fe, ptr noundef nonnull %i.fd, i32 noundef %4, i32 noundef %.1)
  br label %.loopexit419

.loopexit419:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.t, %bb.z, %bb.aa, %bb.w, %bb.x, %bb.u, %.loopexit420
  %i.fg = add nuw i32 %.0347, 1
  store i32 %.1, ptr %5, align 4, !tbaa !4
  br label %bb.bc

bb.ab:                                            ; preds = %bb.d
  %i.fh = add i32 %.0347, 2                       ; 2 uses
  %i.fi = icmp ugt i32 %i.fh, %4
  br i1 %i.fi, label %.thread407, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fj = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4)
  %i.fk = zext nneg i8 %i.fj to i32
  %i.fl = shl nuw i32 1, %i.fk
  %i.fm = load i16, ptr %i.h, align 8, !tbaa !29
  %i.fn = trunc i32 %i.fl to i16
  %i.fo = or i16 %i.fm, %i.fn
  store i16 %i.fo, ptr %i.h, align 8, !tbaa !29
  %i.fp = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 12)
  %i.fq = and i32 %i.fp, 65535
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.fs = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 3 uses
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = lshr i8 %i.ft, 1
  %i.fv = and i8 %i.fu, 3                         ; 5 uses
  %.not377 = icmp eq i8 %i.fv, 3
  br i1 %.not377, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fw = and i32 %i.fs, 1
  %i.fx = load i8, ptr %i.k, align 1, !tbaa !35
  %i.fy = zext i8 %i.fx to i32
  %i.fz = shl nuw nsw i8 %i.fv, 3                 ; 3 uses
  %i.ga = zext nneg i8 %i.fz to i32               ; 2 uses
  %i.gb = sub nsw i32 %i.fy, %i.ga
  %i.gc = add nsw i32 %i.gb, 1                    ; 6 uses
  %i.gd = and i32 %i.fs, 248
  %.not378 = icmp eq i32 %i.gd, 0
  br i1 %.not378, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.gf = shl i32 %i.ge, 16
  %i.gg = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.gh = or i32 %i.gf, %i.gg
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2 = phi i32 [ %i.gh, %bb.af ], [ %.0334, %bb.ae ] ; 23 uses
end_hunk_0
begin_hunk_1_@_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj:bb.a

._crit_edge:                                      ; preds = %.lr.ph431, %bb.ah
  %i.gw = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.gx = and i32 %i.gw, 15
  %i.gy = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.gz = lshr i32 %i.gy, 5
  %i.ha = and i32 %i.gz, 7
  %i.hb = and i32 %i.gy, 31                       ; 3 uses
  %.not498 = icmp eq i32 %i.hb, 0
  br i1 %.not498, label %._crit_edge435, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %._crit_edge
  %wide.trip.count537 = zext nneg i32 %i.hb to i64
  br label %.lr.ph434

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %.lr.ph434
  %indvars.iv534 = phi i64 [ 0, %.lr.ph434.preheader ], [ %indvars.iv.next535, %.lr.ph434 ] ; 2 uses
  %i.hc = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.hd = trunc i32 %i.hc to i16
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv534
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !26
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next535, %wide.trip.count537
  br i1 %exitcond538.not, label %._crit_edge435, label %.lr.ph434, !llvm.loop !53

._crit_edge435:                                   ; preds = %.lr.ph434, %._crit_edge
  %.not379 = icmp eq i8 %i.fv, 0                  ; 2 uses
  br i1 %.not379, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !38
  %i.hf = shl nuw nsw i32 %i.ga, 1
  %i.hg = mul i32 %i.hf, %.2
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.hg)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge435
  %i.hh = load i8, ptr %i.n, align 1, !tbaa !40
  %i.hi = zext i8 %i.hh to i32
  %i.hj = zext i8 %i.v to i32                     ; 2 uses
  %i.hk = mul nuw nsw i32 %i.gr, %i.hj
  %i.hl = lshr i32 %i.hk, 2
  %i.hm = load i8, ptr %i.o, align 8, !tbaa !41
  %i.hn = zext i8 %i.hm to i32
  %i.ho = load i16, ptr %i.p, align 2, !tbaa !42
  %i.hp = zext i16 %i.ho to i32
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef %i.hi, i32 noundef %i.hl, i32 noundef %i.hn, i32 noundef %.2, i32 noundef %.2, i32 noundef %i.hp)
  %i.hq = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.hr = call i32 @dyn_decomp(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef %i.hq, i32 noundef %.2, i32 noundef %i.gc, ptr noundef nonnull %i.a) ; 2 uses
  %.not380 = icmp eq i32 %i.hr, 0
  br i1 %.not380, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.hs = and i32 %i.gn, 240
  %i.ht = icmp eq i32 %i.hs, 0
  %i.hu = load ptr, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  br i1 %i.ht, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @unpc_block(ptr noundef %i.hu, ptr noundef %i.hu, i32 noundef %.2, ptr noundef null, i32 noundef 31, i32 noundef %i.gc, i32 noundef 0)
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sink630 = phi ptr [ %i.hv, %bb.al ], [ %i.hu, %bb.ak ]
  %i.hw = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @unpc_block(ptr noundef %.sink630, ptr noundef %i.hw, i32 noundef %.2, ptr noundef nonnull %i.c, i32 noundef %i.gs, i32 noundef %i.gc, i32 noundef %i.go)
  %i.hx = load i8, ptr %i.n, align 1, !tbaa !40
  %i.hy = zext i8 %i.hx to i32
  %i.hz = mul nuw nsw i32 %i.ha, %i.hj
  %i.ia = lshr i32 %i.hz, 2
  %i.ib = load i8, ptr %i.o, align 8, !tbaa !41
  %i.ic = zext i8 %i.ib to i32
  %i.id = load i16, ptr %i.p, align 2, !tbaa !42
  %i.ie = zext i16 %i.id to i32
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef %i.hy, i32 noundef %i.ia, i32 noundef %i.ic, i32 noundef %.2, i32 noundef %.2, i32 noundef %i.ie)
  %i.if = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.ig = call i32 @dyn_decomp(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef %i.if, i32 noundef %.2, i32 noundef %i.gc, ptr noundef nonnull %i.b) ; 2 uses
  %.not381 = icmp eq i32 %i.ig, 0
  br i1 %.not381, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.ih = and i32 %i.gw, 240
  %i.ii = icmp eq i32 %i.ih, 0
  %i.ij = load ptr, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  br i1 %i.ii, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @unpc_block(ptr noundef %i.ij, ptr noundef %i.ij, i32 noundef %.2, ptr noundef null, i32 noundef 31, i32 noundef %i.gc, i32 noundef 0)
  %i.ik = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ag
  %i.il = load i8, ptr %i.k, align 1, !tbaa !35   ; 5 uses
  %i.im = zext i8 %i.il to i32                    ; 2 uses
  %i.in = sub nsw i32 32, %i.im                   ; 6 uses
  %i.io = icmp ult i8 %i.il, 17
  br i1 %i.io, label %.preheader424, label %bb.aq

.preheader424:                                    ; preds = %bb.ap
  %.not496 = icmp eq i32 %.2, 0
  br i1 %.not496, label %.thread400, label %.lr.ph429.preheader

.lr.ph429.preheader:                              ; preds = %.preheader424
  %wide.trip.count527 = zext i32 %.2 to i64
  br label %.lr.ph429

.lr.ph429:                                        ; preds = %.lr.ph429.preheader, %.lr.ph429
  %indvars.iv524 = phi i64 [ 0, %.lr.ph429.preheader ], [ %indvars.iv.next525, %.lr.ph429 ] ; 3 uses
  %i.ip = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.il)
  %i.iq = shl i32 %i.ip, %i.in
  %i.ir = ashr exact i32 %i.iq, %i.in
  %i.is = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv524
  store i32 %i.ir, ptr %i.it, align 4, !tbaa !4
  %i.iu = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.il)
  %i.iv = shl i32 %i.iu, %i.in
  %i.iw = ashr exact i32 %i.iv, %i.in
  %i.ix = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv524
  store i32 %i.iw, ptr %i.iy, align 4, !tbaa !4
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %exitcond528.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count527
  br i1 %exitcond528.not, label %.thread400, label %.lr.ph429, !llvm.loop !54

bb.aq:                                            ; preds = %bb.ap
  %i.iz = add i8 %i.il, -16                       ; 2 uses
  %.not495 = icmp eq i32 %.2, 0
  br i1 %.not495, label %.thread400, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aq
  %wide.trip.count = zext i32 %.2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ja = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.jb = shl i32 %i.ja, 16
  %i.jc = ashr i32 %i.jb, %i.in
  %i.jd = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.iz)
  %i.je = or i32 %i.jc, %i.jd
  %i.jf = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv
  store i32 %i.je, ptr %i.jg, align 4, !tbaa !4
  %i.jh = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.ji = shl i32 %i.jh, 16
  %i.jj = ashr i32 %i.ji, %i.in
  %i.jk = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.iz)
  %i.jl = or i32 %i.jj, %i.jk
  %i.jm = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv
  store i32 %i.jl, ptr %i.jn, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread400, label %.lr.ph, !llvm.loop !55

.thread400:                                       ; preds = %.lr.ph, %.lr.ph429, %bb.aq, %.preheader424
  %i.jo = mul i32 %.2, %i.im                      ; 2 uses
  store i32 %i.jo, ptr %i.a, align 4, !tbaa !4
  store i32 %i.jo, ptr %i.b, align 4, !tbaa !4
  br label %.loopexit423

bb.ar:                                            ; preds = %bb.an, %bb.ao
  %.sink632 = phi ptr [ %i.ik, %bb.ao ], [ %i.ij, %bb.an ]
  %i.jp = load ptr, ptr %i.m, align 8, !tbaa !15
  call void @unpc_block(ptr noundef %.sink632, ptr noundef %i.jp, i32 noundef %.2, ptr noundef nonnull %i.d, i32 noundef %i.hb, i32 noundef %i.gc, i32 noundef %i.gx)
  br i1 %.not379, label %.loopexit423, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jq = shl i32 %.2, 1                          ; 2 uses
  %.not499 = icmp eq i32 %i.jq, 0
  br i1 %.not499, label %.loopexit423, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %bb.as
  %i.jr = zext i32 %i.jq to i64
  br label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.preheader, %.lr.ph438
  %indvars.iv539 = phi i64 [ 0, %.lr.ph438.preheader ], [ %indvars.iv.next540, %.lr.ph438 ] ; 3 uses
  %i.js = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.fz)
  %i.jt = trunc i32 %i.js to i16
  %i.ju = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %indvars.iv539
  store i16 %i.jt, ptr %i.jv, align 2, !tbaa !26
  %i.jw = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.fz)
  %i.jx = trunc i32 %i.jw to i16
  %i.jy = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %indvars.iv539
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 2
  store i16 %i.jx, ptr %i.ka, align 2, !tbaa !26
  %indvars.iv.next540 = add nuw nsw i64 %indvars.iv539, 2 ; 2 uses
  %i.kb = icmp samesign ult i64 %indvars.iv.next540, %i.jr
  br i1 %i.kb, label %.lr.ph438, label %.loopexit423, !llvm.loop !56

.loopexit423:                                     ; preds = %.lr.ph438, %bb.as, %.thread400, %bb.ar
  %.shrunk = phi i8 [ 0, %.thread400 ], [ 0, %bb.ar ], [ %i.fv, %bb.as ], [ %i.fv, %.lr.ph438 ]
  %.0351406 = phi i8 [ 0, %.thread400 ], [ %i.gk, %bb.ar ], [ %i.gk, %bb.as ], [ %i.gk, %.lr.ph438 ] ; 4 uses
  %.0352405 = phi i8 [ 0, %.thread400 ], [ %i.gm, %bb.ar ], [ %i.gm, %bb.as ], [ %i.gm, %.lr.ph438 ] ; 4 uses
  %i.kc = zext nneg i8 %.shrunk to i32            ; 2 uses
  %i.kd = load i8, ptr %i.k, align 1, !tbaa !35
  %i.ke = zext i8 %i.kd to i32
  %9 = add nsw i32 %i.ke, -16                     ; 2 uses
  %i.kf = call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 30)
  switch i32 %i.kf, label %bb.ax [
    i32 0, label %bb.at
    i32 1, label %bb.au
    i32 2, label %bb.av
    i32 4, label %bb.aw
  ]

bb.at:                                            ; preds = %.loopexit423
  %i.kg = zext i32 %.0347 to i64
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.kg
  %i.ki = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.kj = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.kk = zext i8 %.0351406 to i32
  %i.kl = sext i8 %.0352405 to i32
  call void @unmix16(ptr noundef %i.ki, ptr noundef %i.kj, ptr noundef nonnull %i.kh, i32 noundef %4, i32 noundef %.2, i32 noundef %i.kk, i32 noundef %i.kl)
  br label %bb.ax

bb.au:                                            ; preds = %.loopexit423
  %i.km = mul i32 %.0347, 3
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 %i.kn
  %i.kp = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.kq = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.kr = zext i8 %.0351406 to i32
  %i.ks = sext i8 %.0352405 to i32
  call void @unmix20(ptr noundef %i.kp, ptr noundef %i.kq, ptr noundef nonnull %i.ko, i32 noundef %4, i32 noundef %.2, i32 noundef %i.kr, i32 noundef %i.ks)
  br label %bb.ax

bb.av:                                            ; preds = %.loopexit423
  %i.kt = mul i32 %.0347, 3
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 %i.ku
  %i.kw = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.kx = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.ky = zext i8 %.0351406 to i32
  %i.kz = sext i8 %.0352405 to i32
  %i.la = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @unmix24(ptr noundef %i.kw, ptr noundef %i.kx, ptr noundef nonnull %i.kv, i32 noundef %4, i32 noundef %.2, i32 noundef %i.ky, i32 noundef %i.kz, ptr noundef %i.la, i32 noundef %i.kc)
  br label %bb.ax

bb.aw:                                            ; preds = %.loopexit423
  %i.lb = zext i32 %.0347 to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lb
  %i.ld = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.le = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.lf = zext i8 %.0351406 to i32
  %i.lg = sext i8 %.0352405 to i32
  %i.lh = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @unmix32(ptr noundef %i.ld, ptr noundef %i.le, ptr noundef nonnull %i.lc, i32 noundef %4, i32 noundef %.2, i32 noundef %i.lf, i32 noundef %i.lg, ptr noundef %i.lh, i32 noundef %i.kc)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %.loopexit423
  store i32 %.2, ptr %5, align 4, !tbaa !4
  br label %bb.bc

bb.ay:                                            ; preds = %bb.d
  %i.li = call noundef i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nonnull align 8 poison, ptr noundef nonnull %1)
  br label %bb.bc

bb.az:                                            ; preds = %bb.d
  %i.lj = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 2 uses
  %i.lk = zext i8 %i.lj to i32
  %i.ll = icmp eq i8 %i.lj, 15
  br i1 %i.ll, label %bb.ba, label %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit

bb.ba:                                            ; preds = %bb.az
  %i.lm = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 8)
  %i.ln = zext i8 %i.lm to i32
  %i.lo = add nuw nsw i32 %i.ln, 14
  br label %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit

_ZN11ALACDecoder11FillElementEP9BitBuffer.exit:   ; preds = %bb.az, %bb.ba
  %.0.i = phi i32 [ %i.lo, %bb.ba ], [ %i.lk, %bb.az ]
  %i.lp = shl nuw nsw i32 %.0.i, 3
  %i.lq = and i32 %i.lp, 524280
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.lq)
  %i.lr = load ptr, ptr %1, align 8, !tbaa !30
  %i.ls = load ptr, ptr %i.i, align 8, !tbaa !33
  %.not.i = icmp ugt ptr %i.lr, %i.ls
  %..i = select i1 %.not.i, i32 -50, i32 0
  br label %bb.bc

bb.bb:                                            ; preds = %bb.d
  call void @BitBufferByteAlign(ptr noundef nonnull %1, i32 noundef 0)
  br label %.loopexit

bb.bc:                                            ; preds = %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit, %bb.ay, %bb.ax, %.loopexit419, %bb.d
  %.1348 = phi i32 [ %.0347, %bb.d ], [ %i.fg, %.loopexit419 ], [ %i.fh, %bb.ax ], [ %.0347, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %.0347, %bb.ay ] ; 3 uses
  %.3338 = phi i32 [ 0, %bb.d ], [ 0, %.loopexit419 ], [ 0, %bb.ax ], [ %..i, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %i.li, %bb.ay ] ; 2 uses
  %.3 = phi i32 [ %.0334, %bb.d ], [ %.1, %.loopexit419 ], [ %.2, %bb.ax ], [ %.0334, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %.0334, %bb.ay ] ; 2 uses
  %i.lt = icmp ult i32 %.1348, %4
  %i.lu = icmp eq i32 %.3338, 0
  %or.cond5 = and i1 %i.lt, %i.lu
  br i1 %or.cond5, label %bb.c, label %.thread407, !llvm.loop !57

.thread407:                                       ; preds = %bb.d, %bb.d, %bb.bc, %bb.ab
  %.2349 = phi i32 [ %.1348, %bb.bc ], [ %.0347, %bb.ab ], [ %.0347, %bb.d ], [ %.0347, %bb.d ] ; 4 uses
  %.4339 = phi i32 [ %.3338, %bb.bc ], [ 0, %bb.ab ], [ -50, %bb.d ], [ -50, %bb.d ] ; 8 uses
  %.4 = phi i32 [ %.3, %bb.bc ], [ %.0334, %bb.ab ], [ %.0334, %bb.d ], [ %.0334, %bb.d ]
  %i.lv = icmp ult i32 %.2349, %4
  br i1 %i.lv, label %.lr.ph455, label %.loopexit

.lr.ph455:                                        ; preds = %.thread407
  %.4.fr = freeze i32 %.4                         ; 3 uses
  %i.lw = icmp eq i32 %4, 1
  %i.lx = mul i32 %.4.fr, %4                      ; 5 uses
  %.not.i394 = icmp eq i32 %i.lx, 0               ; 3 uses
  %i.ly = zext i32 %.4.fr to i64                  ; 2 uses
  %i.lz = shl nuw nsw i64 %i.ly, 2
  %i.ma = mul i32 %.4.fr, 3                       ; 2 uses
  %i.mb = mul i32 %i.ma, %4                       ; 2 uses
  %i.mc = mul i32 %4, 3
  %i.md = zext i32 %i.ma to i64
  %i.me = shl nuw nsw i64 %i.ly, 1
  br i1 %i.lw, label %.lr.ph455.split.us.preheader, label %.lr.ph455.split

.lr.ph455.split.us.preheader:                     ; preds = %.lr.ph455
  %i.mf = zext i32 %.2349 to i64                  ; 3 uses
  %i.mg = load i8, ptr %i.k, align 1, !tbaa !35
  switch i8 %i.mg, label %.loopexit [
    i8 16, label %bb.bf
    i8 24, label %bb.be
    i8 32, label %bb.bd
  ]

bb.bd:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mf
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mh, i8 0, i64 %i.lz, i1 false)
  br label %.loopexit

bb.be:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.mi = mul nuw nsw i64 %i.mf, 3
  %i.mj = and i64 %i.mi, 4294967295
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 %i.mj
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mk, i8 0, i64 %i.md, i1 false)
  br label %.loopexit

bb.bf:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.mf
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ml, i8 0, i64 %i.me, i1 false)
  br label %.loopexit

.lr.ph455.split:                                  ; preds = %.lr.ph455
  %.not.i391 = icmp eq i32 %i.mb, 0
  br i1 %.not.i391, label %.lr.ph455.split.split.us.split.split, label %.lr.ph455.split.split.preheader

.lr.ph455.split.split.preheader:                  ; preds = %.lr.ph455.split
  %i.mm = zext i32 %.2349 to i64
  %wide.trip.count570 = zext i32 %4 to i64
  br label %.lr.ph455.split.split

.lr.ph455.split.split.us.split.split:             ; preds = %.lr.ph455.split
  br i1 %.not.i394, label %.loopexit, label %.lr.ph455.split.split.us.split.split.split.split.preheader

.lr.ph455.split.split.us.split.split.split.split.preheader: ; preds = %.lr.ph455.split.split.us.split.split
  %i.mn = zext i32 %.2349 to i64
  %wide.trip.count575 = zext i32 %4 to i64
  %.pre = load i8, ptr %i.k, align 1, !tbaa !35
  br label %.lr.ph455.split.split.us.split.split.split.split

.lr.ph455.split.split.us.split.split.split.split: ; preds = %.lr.ph455.split.split.us.split.split.split.split.preheader, %_ZL6Zero16Psjj.exit.us463
  %indvars.iv572 = phi i64 [ %i.mn, %.lr.ph455.split.split.us.split.split.split.split.preheader ], [ %indvars.iv.next573, %_ZL6Zero16Psjj.exit.us463 ] ; 3 uses
  switch i8 %.pre, label %_ZL6Zero16Psjj.exit.us463 [
    i8 16, label %.preheader.i.us460
    i8 32, label %.preheader.i393.us457
  ]

.preheader.i393.us457:                            ; preds = %.lr.ph455.split.split.us.split.split.split.split
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv572
  br label %.lr.ph.i395.us458

.lr.ph.i395.us458:                                ; preds = %.preheader.i393.us457, %.lr.ph.i395.us458
  %.010.i396.us459 = phi i32 [ %i.mr, %.lr.ph.i395.us458 ], [ 0, %.preheader.i393.us457 ] ; 2 uses
  %i.mp = zext i32 %.010.i396.us459 to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.mp
  store i32 0, ptr %i.mq, align 4, !tbaa !4
  %i.mr = add i32 %.010.i396.us459, %4            ; 2 uses
  %i.ms = icmp ult i32 %i.mr, %i.lx
  br i1 %i.ms, label %.lr.ph.i395.us458, label %_ZL6Zero16Psjj.exit.us463, !llvm.loop !58

.preheader.i.us460:                               ; preds = %.lr.ph455.split.split.us.split.split.split.split
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv572
  br label %.lr.ph.i.us461

.lr.ph.i.us461:                                   ; preds = %.preheader.i.us460, %.lr.ph.i.us461
  %.010.i.us462 = phi i32 [ %i.mw, %.lr.ph.i.us461 ], [ 0, %.preheader.i.us460 ] ; 2 uses
  %i.mu = zext i32 %.010.i.us462 to i64
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %i.mu
  store i16 0, ptr %i.mv, align 2, !tbaa !26
  %i.mw = add i32 %.010.i.us462, %4               ; 2 uses
  %i.mx = icmp ult i32 %i.mw, %i.lx
  br i1 %i.mx, label %.lr.ph.i.us461, label %_ZL6Zero16Psjj.exit.us463, !llvm.loop !59

_ZL6Zero16Psjj.exit.us463:                        ; preds = %.lr.ph.i395.us458, %.lr.ph.i.us461, %.lr.ph455.split.split.us.split.split.split.split
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %wide.trip.count575
  br i1 %exitcond576.not, label %.loopexit, label %.lr.ph455.split.split.us.split.split.split.split, !llvm.loop !60

.lr.ph455.split.split:                            ; preds = %.lr.ph455.split.split.preheader, %_ZL6Zero16Psjj.exit
  %indvars.iv567 = phi i64 [ %i.mm, %.lr.ph455.split.split.preheader ], [ %indvars.iv.next568, %_ZL6Zero16Psjj.exit ] ; 4 uses
  %i.my = load i8, ptr %i.k, align 1, !tbaa !35
  switch i8 %i.my, label %_ZL6Zero16Psjj.exit [
    i8 16, label %.preheader.i
    i8 24, label %.preheader.i390
    i8 32, label %.preheader.i393
end_hunk_1
