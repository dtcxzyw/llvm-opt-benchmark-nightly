inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj:bb.a
  %i.ic = zext i16 %i.ib to i32
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef %i.hw, i32 noundef %i.hy, i32 noundef %i.ia, i32 noundef %.2, i32 noundef %.2, i32 noundef %i.ic)
  %i.id = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.ie = call i32 @dyn_decomp(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef %i.id, i32 noundef %.2, i32 noundef %i.ga, ptr noundef nonnull %i.b) ; 2 uses
  %.not381 = icmp eq i32 %i.ie, 0
  br i1 %.not381, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.if = and i32 %i.gu, 240
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = load ptr, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  br i1 %i.ig, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @unpc_block(ptr noundef %i.ih, ptr noundef %i.ih, i32 noundef %.2, ptr noundef null, i32 noundef 31, i32 noundef %i.ga, i32 noundef 0)
  %i.ii = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ag
  %i.ij = load i8, ptr %i.k, align 1, !tbaa !35   ; 5 uses
  %i.ik = zext i8 %i.ij to i32                    ; 2 uses
  %i.il = sub nsw i32 32, %i.ik                   ; 6 uses
  %i.im = icmp ult i8 %i.ij, 17
  br i1 %i.im, label %.preheader424, label %bb.aq

.preheader424:                                    ; preds = %bb.ap
  %.not496 = icmp eq i32 %.2, 0
  br i1 %.not496, label %.thread400, label %.lr.ph429.preheader

.lr.ph429.preheader:                              ; preds = %.preheader424
  %wide.trip.count527 = zext i32 %.2 to i64
  br label %.lr.ph429

.lr.ph429:                                        ; preds = %.lr.ph429.preheader, %.lr.ph429
  %indvars.iv524 = phi i64 [ 0, %.lr.ph429.preheader ], [ %indvars.iv.next525, %.lr.ph429 ] ; 3 uses
  %i.in = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ij)
  %i.io = shl i32 %i.in, %i.il
  %i.ip = ashr exact i32 %i.io, %i.il
  %i.iq = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv524
  store i32 %i.ip, ptr %i.ir, align 4, !tbaa !4
  %i.is = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ij)
  %i.it = shl i32 %i.is, %i.il
  %i.iu = ashr exact i32 %i.it, %i.il
  %i.iv = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv524
  store i32 %i.iu, ptr %i.iw, align 4, !tbaa !4
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %exitcond528.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count527
  br i1 %exitcond528.not, label %.thread400, label %.lr.ph429, !llvm.loop !54

bb.aq:                                            ; preds = %bb.ap
  %i.ix = add i8 %i.ij, -16                       ; 2 uses
  %.not495 = icmp eq i32 %.2, 0
  br i1 %.not495, label %.thread400, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aq
  %wide.trip.count = zext i32 %.2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.iy = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.iz = shl i32 %i.iy, 16
  %i.ja = ashr i32 %i.iz, %i.il
  %i.jb = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ix)
  %i.jc = or i32 %i.ja, %i.jb
  %i.jd = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv
  store i32 %i.jc, ptr %i.je, align 4, !tbaa !4
  %i.jf = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.jg = shl i32 %i.jf, 16
  %i.jh = ashr i32 %i.jg, %i.il
  %i.ji = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ix)
  %i.jj = or i32 %i.jh, %i.ji
  %i.jk = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread400, label %.lr.ph, !llvm.loop !55

.thread400:                                       ; preds = %.lr.ph, %.lr.ph429, %bb.aq, %.preheader424
  %i.jm = mul i32 %.2, %i.ik                      ; 2 uses
  store i32 %i.jm, ptr %i.a, align 4, !tbaa !4
  store i32 %i.jm, ptr %i.b, align 4, !tbaa !4
  br label %.loopexit423

bb.ar:                                            ; preds = %bb.an, %bb.ao
  %.sink632 = phi ptr [ %i.ii, %bb.ao ], [ %i.ih, %bb.an ]
  %i.jn = load ptr, ptr %i.m, align 8, !tbaa !15
  call void @unpc_block(ptr noundef %.sink632, ptr noundef %i.jn, i32 noundef %.2, ptr noundef nonnull %i.d, i32 noundef %i.gz, i32 noundef %i.ga, i32 noundef %i.gv)
  br i1 %.not379, label %.loopexit423, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jo = shl i32 %.2, 1                          ; 2 uses
  %.not499 = icmp eq i32 %i.jo, 0
  br i1 %.not499, label %.loopexit423, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %bb.as
  %i.jp = zext i32 %i.jo to i64
  br label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.preheader, %.lr.ph438
  %indvars.iv539 = phi i64 [ 0, %.lr.ph438.preheader ], [ %indvars.iv.next540, %.lr.ph438 ] ; 3 uses
  %i.jq = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.fx)
  %i.jr = trunc i32 %i.jq to i16
  %i.js = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv539
  store i16 %i.jr, ptr %i.jt, align 2, !tbaa !26
  %i.ju = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.fx)
  %i.jv = trunc i32 %i.ju to i16
  %i.jw = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %indvars.iv539
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  store i16 %i.jv, ptr %i.jy, align 2, !tbaa !26
  %indvars.iv.next540 = add nuw nsw i64 %indvars.iv539, 2 ; 2 uses
  %i.jz = icmp samesign ult i64 %indvars.iv.next540, %i.jp
  br i1 %i.jz, label %.lr.ph438, label %.loopexit423, !llvm.loop !56

.loopexit423:                                     ; preds = %.lr.ph438, %bb.as, %.thread400, %bb.ar
  %.shrunk = phi i8 [ 0, %.thread400 ], [ 0, %bb.ar ], [ %i.ft, %bb.as ], [ %i.ft, %.lr.ph438 ]
  %.0351406 = phi i8 [ 0, %.thread400 ], [ %i.gi, %bb.ar ], [ %i.gi, %bb.as ], [ %i.gi, %.lr.ph438 ] ; 4 uses
  %.0352405 = phi i8 [ 0, %.thread400 ], [ %i.gk, %bb.ar ], [ %i.gk, %bb.as ], [ %i.gk, %.lr.ph438 ] ; 4 uses
  %i.ka = zext nneg i8 %.shrunk to i32            ; 2 uses
  %i.kb = load i8, ptr %i.k, align 1, !tbaa !35
  switch i8 %i.kb, label %bb.ax [
    i8 16, label %bb.at
    i8 20, label %bb.au
    i8 24, label %bb.av
    i8 32, label %bb.aw
  ]

bb.at:                                            ; preds = %.loopexit423
  %i.kc = zext i32 %.0347 to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.kc
  %i.ke = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.kf = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.kg = zext i8 %.0351406 to i32
  %i.kh = sext i8 %.0352405 to i32
  call void @unmix16(ptr noundef %i.ke, ptr noundef %i.kf, ptr noundef nonnull %i.kd, i32 noundef %4, i32 noundef %.2, i32 noundef %i.kg, i32 noundef %i.kh)
  br label %bb.ax

bb.au:                                            ; preds = %.loopexit423
  %i.ki = mul i32 %.0347, 3
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 %i.kj
  %i.kl = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.km = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.kn = zext i8 %.0351406 to i32
  %i.ko = sext i8 %.0352405 to i32
  call void @unmix20(ptr noundef %i.kl, ptr noundef %i.km, ptr noundef nonnull %i.kk, i32 noundef %4, i32 noundef %.2, i32 noundef %i.kn, i32 noundef %i.ko)
  br label %bb.ax

bb.av:                                            ; preds = %.loopexit423
  %i.kp = mul i32 %.0347, 3
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 %i.kq
  %i.ks = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.kt = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.ku = zext i8 %.0351406 to i32
  %i.kv = sext i8 %.0352405 to i32
  %i.kw = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @unmix24(ptr noundef %i.ks, ptr noundef %i.kt, ptr noundef nonnull %i.kr, i32 noundef %4, i32 noundef %.2, i32 noundef %i.ku, i32 noundef %i.kv, ptr noundef %i.kw, i32 noundef %i.ka)
  br label %bb.ax

bb.aw:                                            ; preds = %.loopexit423
  %i.kx = zext i32 %.0347 to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kx
  %i.kz = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.la = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.lb = zext i8 %.0351406 to i32
  %i.lc = sext i8 %.0352405 to i32
  %i.ld = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @unmix32(ptr noundef %i.kz, ptr noundef %i.la, ptr noundef nonnull %i.ky, i32 noundef %4, i32 noundef %.2, i32 noundef %i.lb, i32 noundef %i.lc, ptr noundef %i.ld, i32 noundef %i.ka)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %.loopexit423
  store i32 %.2, ptr %5, align 4, !tbaa !4
  br label %bb.bc

bb.ay:                                            ; preds = %bb.d
  %i.le = call noundef i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nonnull align 8 poison, ptr noundef nonnull %1)
  br label %bb.bc

bb.az:                                            ; preds = %bb.d
  %i.lf = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 2 uses
  %i.lg = zext i8 %i.lf to i32
  %i.lh = icmp eq i8 %i.lf, 15
  br i1 %i.lh, label %bb.ba, label %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit

bb.ba:                                            ; preds = %bb.az
  %i.li = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 8)
  %i.lj = zext i8 %i.li to i32
  %i.lk = add nuw nsw i32 %i.lj, 14
  br label %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit

_ZN11ALACDecoder11FillElementEP9BitBuffer.exit:   ; preds = %bb.az, %bb.ba
  %.0.i = phi i32 [ %i.lk, %bb.ba ], [ %i.lg, %bb.az ]
  %i.ll = shl nuw nsw i32 %.0.i, 3
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.ll)
  %i.lm = load ptr, ptr %1, align 8, !tbaa !30
  %i.ln = load ptr, ptr %i.i, align 8, !tbaa !33
  %.not.i = icmp ugt ptr %i.lm, %i.ln
  %..i = select i1 %.not.i, i32 -50, i32 0
  br label %bb.bc

bb.bb:                                            ; preds = %bb.d
  call void @BitBufferByteAlign(ptr noundef nonnull %1, i32 noundef 0)
  br label %.loopexit

bb.bc:                                            ; preds = %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit, %bb.ay, %bb.ax, %.loopexit419, %bb.d
  %.1348 = phi i32 [ %.0347, %bb.d ], [ %i.fe, %.loopexit419 ], [ %i.ff, %bb.ax ], [ %.0347, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %.0347, %bb.ay ] ; 3 uses
  %.3338 = phi i32 [ 0, %bb.d ], [ 0, %.loopexit419 ], [ 0, %bb.ax ], [ %..i, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %i.le, %bb.ay ] ; 2 uses
  %.3 = phi i32 [ %.0334, %bb.d ], [ %.1, %.loopexit419 ], [ %.2, %bb.ax ], [ %.0334, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %.0334, %bb.ay ] ; 2 uses
  %i.lo = icmp ult i32 %.1348, %4
  %i.lp = icmp eq i32 %.3338, 0
  %or.cond5 = and i1 %i.lo, %i.lp
  br i1 %or.cond5, label %bb.c, label %.thread407, !llvm.loop !57

.thread407:                                       ; preds = %bb.d, %bb.d, %bb.bc, %bb.ab
  %.2349 = phi i32 [ %.1348, %bb.bc ], [ %.0347, %bb.ab ], [ %.0347, %bb.d ], [ %.0347, %bb.d ] ; 4 uses
  %.4339 = phi i32 [ %.3338, %bb.bc ], [ 0, %bb.ab ], [ -50, %bb.d ], [ -50, %bb.d ] ; 8 uses
  %.4 = phi i32 [ %.3, %bb.bc ], [ %.0334, %bb.ab ], [ %.0334, %bb.d ], [ %.0334, %bb.d ]
  %i.lq = icmp ult i32 %.2349, %4
  br i1 %i.lq, label %.lr.ph455, label %.loopexit

.lr.ph455:                                        ; preds = %.thread407
  %.4.fr = freeze i32 %.4                         ; 3 uses
  %i.lr = icmp eq i32 %4, 1
  %i.ls = mul i32 %.4.fr, %4                      ; 5 uses
  %.not.i394 = icmp eq i32 %i.ls, 0               ; 3 uses
  %i.lt = zext i32 %.4.fr to i64                  ; 2 uses
  %i.lu = shl nuw nsw i64 %i.lt, 2
  %i.lv = mul i32 %.4.fr, 3                       ; 2 uses
  %i.lw = mul i32 %i.lv, %4                       ; 2 uses
  %i.lx = mul i32 %4, 3
  %i.ly = zext i32 %i.lv to i64
  %i.lz = shl nuw nsw i64 %i.lt, 1
  br i1 %i.lr, label %.lr.ph455.split.us.preheader, label %.lr.ph455.split

.lr.ph455.split.us.preheader:                     ; preds = %.lr.ph455
  %i.ma = zext i32 %.2349 to i64                  ; 3 uses
  %i.mb = load i8, ptr %i.k, align 1, !tbaa !35
  switch i8 %i.mb, label %.loopexit [
    i8 16, label %bb.bf
    i8 24, label %bb.be
    i8 32, label %bb.bd
  ]

bb.bd:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ma
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mc, i8 0, i64 %i.lu, i1 false)
  br label %.loopexit

bb.be:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.md = mul nuw nsw i64 %i.ma, 3
  %i.me = and i64 %i.md, 4294967295
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 %i.me
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mf, i8 0, i64 %i.ly, i1 false)
  br label %.loopexit

bb.bf:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ma
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.mg, i8 0, i64 %i.lz, i1 false)
  br label %.loopexit

.lr.ph455.split:                                  ; preds = %.lr.ph455
  %.not.i391 = icmp eq i32 %i.lw, 0
  br i1 %.not.i391, label %.lr.ph455.split.split.us.split.split, label %.lr.ph455.split.split.preheader

.lr.ph455.split.split.preheader:                  ; preds = %.lr.ph455.split
  %i.mh = zext i32 %.2349 to i64
  %wide.trip.count570 = zext i32 %4 to i64
  br label %.lr.ph455.split.split

.lr.ph455.split.split.us.split.split:             ; preds = %.lr.ph455.split
  br i1 %.not.i394, label %.loopexit, label %.lr.ph455.split.split.us.split.split.split.split.preheader

.lr.ph455.split.split.us.split.split.split.split.preheader: ; preds = %.lr.ph455.split.split.us.split.split
  %i.mi = zext i32 %.2349 to i64
  %wide.trip.count575 = zext i32 %4 to i64
  %.pre = load i8, ptr %i.k, align 1, !tbaa !35
  br label %.lr.ph455.split.split.us.split.split.split.split

.lr.ph455.split.split.us.split.split.split.split: ; preds = %.lr.ph455.split.split.us.split.split.split.split.preheader, %_ZL6Zero16Psjj.exit.us463
  %indvars.iv572 = phi i64 [ %i.mi, %.lr.ph455.split.split.us.split.split.split.split.preheader ], [ %indvars.iv.next573, %_ZL6Zero16Psjj.exit.us463 ] ; 3 uses
  switch i8 %.pre, label %_ZL6Zero16Psjj.exit.us463 [
    i8 16, label %.preheader.i.us460
    i8 32, label %.preheader.i393.us457
  ]

.preheader.i393.us457:                            ; preds = %.lr.ph455.split.split.us.split.split.split.split
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv572
  br label %.lr.ph.i395.us458

.lr.ph.i395.us458:                                ; preds = %.preheader.i393.us457, %.lr.ph.i395.us458
  %.010.i396.us459 = phi i32 [ %i.mm, %.lr.ph.i395.us458 ], [ 0, %.preheader.i393.us457 ] ; 2 uses
  %i.mk = zext i32 %.010.i396.us459 to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mk
  store i32 0, ptr %i.ml, align 4, !tbaa !4
  %i.mm = add i32 %.010.i396.us459, %4            ; 2 uses
  %i.mn = icmp ult i32 %i.mm, %i.ls
  br i1 %i.mn, label %.lr.ph.i395.us458, label %_ZL6Zero16Psjj.exit.us463, !llvm.loop !58

.preheader.i.us460:                               ; preds = %.lr.ph455.split.split.us.split.split.split.split
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv572
  br label %.lr.ph.i.us461

.lr.ph.i.us461:                                   ; preds = %.preheader.i.us460, %.lr.ph.i.us461
  %.010.i.us462 = phi i32 [ %i.mr, %.lr.ph.i.us461 ], [ 0, %.preheader.i.us460 ] ; 2 uses
  %i.mp = zext i32 %.010.i.us462 to i64
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mp
  store i16 0, ptr %i.mq, align 2, !tbaa !26
  %i.mr = add i32 %.010.i.us462, %4               ; 2 uses
  %i.ms = icmp ult i32 %i.mr, %i.ls
  br i1 %i.ms, label %.lr.ph.i.us461, label %_ZL6Zero16Psjj.exit.us463, !llvm.loop !59

_ZL6Zero16Psjj.exit.us463:                        ; preds = %.lr.ph.i395.us458, %.lr.ph.i.us461, %.lr.ph455.split.split.us.split.split.split.split
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %wide.trip.count575
  br i1 %exitcond576.not, label %.loopexit, label %.lr.ph455.split.split.us.split.split.split.split, !llvm.loop !60

.lr.ph455.split.split:                            ; preds = %.lr.ph455.split.split.preheader, %_ZL6Zero16Psjj.exit
  %indvars.iv567 = phi i64 [ %i.mh, %.lr.ph455.split.split.preheader ], [ %indvars.iv.next568, %_ZL6Zero16Psjj.exit ] ; 4 uses
  %i.mt = load i8, ptr %i.k, align 1, !tbaa !35
  switch i8 %i.mt, label %_ZL6Zero16Psjj.exit [
    i8 16, label %.preheader.i
    i8 24, label %.preheader.i390
    i8 32, label %.preheader.i393
  ]

.preheader.i:                                     ; preds = %.lr.ph455.split.split
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv567
  br i1 %.not.i394, label %_ZL6Zero16Psjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.010.i = phi i32 [ %i.mx, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.mv = zext i32 %.010.i to i64
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.mu, i64 %i.mv
  store i16 0, ptr %i.mw, align 2, !tbaa !26
  %i.mx = add i32 %.010.i, %4                     ; 2 uses
  %i.my = icmp ult i32 %i.mx, %i.ls
  br i1 %i.my, label %.lr.ph.i, label %_ZL6Zero16Psjj.exit, !llvm.loop !59

.preheader.i390:                                  ; preds = %.lr.ph455.split.split
  %i.mz = mul i64 %indvars.iv567, 3
  %i.na = and i64 %i.mz, 4294967295
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 %i.na ; 3 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.preheader.i390
  %.014.i = phi i32 [ 0, %.preheader.i390 ], [ %i.nk, %bb.bg ] ; 4 uses
  %i.nc = zext i32 %.014.i to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nc
  store i8 0, ptr %i.nd, align 1, !tbaa !17
  %i.ne = add nuw i32 %.014.i, 1
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nf
  store i8 0, ptr %i.ng, align 1, !tbaa !17
  %i.nh = add i32 %.014.i, 2
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.ni
  store i8 0, ptr %i.nj, align 1, !tbaa !17
  %i.nk = add i32 %.014.i, %i.lx                  ; 2 uses
  %i.nl = icmp ult i32 %i.nk, %i.lw
  br i1 %i.nl, label %bb.bg, label %_ZL6Zero16Psjj.exit, !llvm.loop !61

.preheader.i393:                                  ; preds = %.lr.ph455.split.split
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv567
  br i1 %.not.i394, label %_ZL6Zero16Psjj.exit, label %.lr.ph.i395

.lr.ph.i395:                                      ; preds = %.preheader.i393, %.lr.ph.i395
  %.010.i396 = phi i32 [ %i.np, %.lr.ph.i395 ], [ 0, %.preheader.i393 ] ; 2 uses
  %i.nn = zext i32 %.010.i396 to i64
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.nn
  store i32 0, ptr %i.no, align 4, !tbaa !4
  %i.np = add i32 %.010.i396, %4                  ; 2 uses
  %i.nq = icmp ult i32 %i.np, %i.ls
  br i1 %i.nq, label %.lr.ph.i395, label %_ZL6Zero16Psjj.exit, !llvm.loop !58

_ZL6Zero16Psjj.exit:                              ; preds = %.lr.ph.i395, %bb.bg, %.lr.ph.i, %.preheader.i393, %.preheader.i, %.lr.ph455.split.split
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count570
  br i1 %exitcond571.not, label %.loopexit, label %.lr.ph455.split.split, !llvm.loop !60

.loopexit:                                        ; preds = %bb.l, %bb.aj, %bb.am, %bb.c, %bb.e, %bb.f, %bb.ac, %bb.ad, %_ZL6Zero16Psjj.exit, %_ZL6Zero16Psjj.exit.us463, %bb.bf, %bb.be, %bb.bd, %.lr.ph455.split.us.preheader, %.lr.ph455.split.split.us.split.split, %.thread407, %bb.bb, %bb.a
  %.0 = phi i32 [ %.4339, %.thread407 ], [ -50, %bb.a ], [ 0, %bb.bb ], [ %.4339, %bb.bf ], [ %.4339, %_ZL6Zero16Psjj.exit ], [ %.4339, %.lr.ph455.split.split.us.split.split ], [ %.4339, %_ZL6Zero16Psjj.exit.us463 ], [ %.4339, %.lr.ph455.split.us.preheader ], [ %.4339, %bb.bd ], [ %.4339, %bb.be ], [ -50, %bb.ad ], [ -50, %bb.f ], [ -50, %bb.ac ], [ %i.ie, %bb.am ], [ %i.hp, %bb.aj ], [ -50, %bb.c ], [ -50, %bb.e ], [ %i.bs, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i32 %.0
}

declare zeroext i8 @BitBufferReadSmall(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare i32 @BitBufferRead(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @BitBufferAdvance(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @set_ag_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @dyn_decomp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @unpc_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo20(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo24Shift(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo24(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo32Shift(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix16(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix20(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix24(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix32(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -50, 1) i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 4) ; 0 uses
  %i.b = tail call zeroext i8 @BitBufferReadOne(ptr noundef %1)
  %i.c = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8) ; 2 uses
  %i.d = zext i8 %i.c to i32
  %i.e = icmp eq i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8)
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 255
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @BitBufferByteAlign(ptr noundef %1, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = shl nuw nsw i32 %.0, 3
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %.not14 = icmp ugt ptr %i.j, %i.l
  %. = select i1 %.not14, i32 -50, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -50, 1) i32 @_ZN11ALACDecoder11FillElementEP9BitBuffer(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 4) ; 2 uses
  %i.b = zext i8 %i.a to i32
  %i.c = icmp eq i8 %i.a, 15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8)
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  %i.g = shl nuw nsw i32 %.0, 3
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %.not = icmp ugt ptr %i.h, %i.j
  %. = select i1 %.not, i32 -50, i32 0
  ret i32 %.
}

declare void @BitBufferByteAlign(ptr noundef, i32 noundef) local_unnamed_addr #6

declare zeroext i8 @BitBufferReadOne(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 32}
!9 = !{!"_ZTS11ALACDecoder", !10, i64 0, !11, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !14, i64 56}
!10 = !{!"_ZTS18ALACSpecificConfig", !5, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 9, !11, i64 10, !5, i64 12, !5, i64 16, !5, i64 20}
!11 = !{!"short", !6, i64 0}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 short", !13, i64 0}
!15 = !{!9, !12, i64 40}
!16 = !{!9, !12, i64 48}
!17 = !{!6, !6, i64 0}
!18 = !{!10, !5, i64 0}
!19 = !{!10, !6, i64 8}
!20 = !{!10, !6, i64 9}
!21 = !{!10, !11, i64 10}
!22 = !{!10, !6, i64 4}
!23 = !{!10, !5, i64 12}
!24 = !{!10, !5, i64 16}
!25 = !{!10, !5, i64 20}
!26 = !{!11, !11, i64 0}
!27 = !{!9, !5, i64 0}
!28 = !{!9, !14, i64 56}
!29 = !{!9, !11, i64 24}
!30 = !{!31, !32, i64 0}
!31 = !{!"_ZTS9BitBuffer", !32, i64 0, !32, i64 8, !5, i64 16, !5, i64 20}
!32 = !{!"p1 omnipotent char", !13, i64 0}
!33 = !{!31, !32, i64 8}
!34 = !{!9, !6, i64 6}
!35 = !{!9, !6, i64 5}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 4, !4, i64 20, i64 4, !4}
!39 = !{!32, !32, i64 0}
!40 = !{!9, !6, i64 7}
!41 = !{!9, !6, i64 8}
!42 = !{!9, !11, i64 10}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !37}
!45 = distinct !{!45, !37}
!46 = distinct !{!46, !37, !47, !48}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !37, !47}
!52 = distinct !{!52, !37}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !37}
!60 = distinct !{!60, !37}
!61 = distinct !{!61, !37}
end_hunk_0
