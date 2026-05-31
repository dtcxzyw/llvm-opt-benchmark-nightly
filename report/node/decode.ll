inline.NumInlined: 20
inline.NumDeleted: 14
begin_hunk_0_@ProcessCommands:bb.a
bb.ar:                                            ; preds = %bb.aq
  %i.pb = load ptr, ptr %i.du, align 8, !tbaa !95 ; 2 uses
  %i.pc = zext i8 %.0361.i to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !48
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 256
  %i.pg = zext i8 %.0365.i to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !48
  %i.pj = or i8 %i.pi, %i.pe
  %i.pk = load ptr, ptr %i.dv, align 8, !tbaa !93
  %i.pl = load ptr, ptr %i.dw, align 8, !tbaa !91
  %i.pm = zext i8 %i.pj to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !48
  %i.pp = zext i8 %i.po to i64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.pp
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !89
  %i.ps = load i64, ptr %i.dp, align 8, !tbaa !50 ; 4 uses
  %i.pt = icmp ult i64 %i.ps, 17
  %.pre372 = load i64, ptr %i.e, align 8, !tbaa !51 ; 2 uses
  br i1 %i.pt, label %bb.as, label %BrotliGet16BitsUnmasked.exit48

bb.as:                                            ; preds = %bb.ar
  %.0.copyload.i.i47 = load i64, ptr %i.ow, align 1
  %i.pu = shl i64 %.0.copyload.i.i47, %i.ps
  %i.pv = or i64 %i.pu, %.pre372
  %i.pw = add nuw nsw i64 %i.ps, 48
  %i.px = getelementptr inbounds nuw i8, ptr %i.ow, i64 6
  store ptr %i.px, ptr %i.j, align 8, !tbaa !44
  br label %BrotliGet16BitsUnmasked.exit48

BrotliGet16BitsUnmasked.exit48:                   ; preds = %bb.ar, %bb.as
  %i.py = phi i64 [ %i.ps, %bb.ar ], [ %i.pw, %bb.as ] ; 2 uses
  %i.pz = phi i64 [ %.pre372, %bb.ar ], [ %i.pv, %bb.as ] ; 3 uses
  %i.qa = and i64 %i.pz, 255
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qa ; 4 uses
  %i.qc = load i8, ptr %i.qb, align 2, !tbaa !66  ; 3 uses
  %i.qd = icmp ugt i8 %i.qc, 8
  br i1 %i.qd, label %BitMask.exit.i.i, label %ReadSymbol.exit

BitMask.exit.i.i:                                 ; preds = %BrotliGet16BitsUnmasked.exit48
  %i.qe = add i64 %i.py, -8
  %i.qf = lshr i64 %i.pz, 8                       ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qb, i64 2
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !68
  %i.qi = zext i16 %i.qh to i64
  %i.qj = zext i8 %i.qc to i64
  %i.qk = add nuw nsw i64 %i.qj, 4294967288
  %i.ql = and i64 %i.qk, 4294967295
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr @kBrotliBitMask, i64 %i.ql
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !29
  %i.qo = and i64 %i.qn, %i.qf
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.qo
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.qi ; 2 uses
  %.pre373 = load i8, ptr %i.qq, align 2, !tbaa !66
  br label %ReadSymbol.exit

ReadSymbol.exit:                                  ; preds = %BrotliGet16BitsUnmasked.exit48, %BitMask.exit.i.i
  %i.qr = phi i64 [ %i.qf, %BitMask.exit.i.i ], [ %i.pz, %BrotliGet16BitsUnmasked.exit48 ]
  %i.qs = phi i64 [ %i.qe, %BitMask.exit.i.i ], [ %i.py, %BrotliGet16BitsUnmasked.exit48 ]
  %i.qt = phi i8 [ %.pre373, %BitMask.exit.i.i ], [ %i.qc, %BrotliGet16BitsUnmasked.exit48 ]
  %.0.i.i17 = phi ptr [ %i.qq, %BitMask.exit.i.i ], [ %i.qb, %BrotliGet16BitsUnmasked.exit48 ]
  %i.qu = zext i8 %i.qt to i64                    ; 2 uses
  %i.qv = sub i64 %i.qs, %i.qu
  store i64 %i.qv, ptr %i.dp, align 8, !tbaa !50
  %i.qw = lshr i64 %i.qr, %i.qu
  store i64 %i.qw, ptr %i.e, align 8, !tbaa !51
  %i.qx = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !68
  %i.qz = trunc i16 %i.qy to i8                   ; 2 uses
  %i.ra = load ptr, ptr %i.ds, align 8, !tbaa !47
  %i.rb = getelementptr inbounds i8, ptr %i.ra, i64 %indvars.iv352
  store i8 %i.qz, ptr %i.rb, align 1, !tbaa !48
  %i.rc = load i64, ptr %i.dq, align 8, !tbaa !29
  %i.rd = add i64 %i.rc, -1
  store i64 %i.rd, ptr %i.dq, align 8, !tbaa !29
  %indvars.iv.next353 = add nsw i64 %indvars.iv352, 1 ; 2 uses
  %i.re = load i32, ptr %i.dr, align 4, !tbaa !114 ; 2 uses
  %i.rf = trunc nsw i64 %indvars.iv.next353 to i32 ; 2 uses
  %i.rg = icmp eq i32 %i.re, %i.rf
  br i1 %i.rg, label %bb.at, label %bb.au, !prof !159

bb.at:                                            ; preds = %ReadSymbol.exit
  store i32 13, ptr %0, align 8, !tbaa !9
  %i.rh = add nsw i32 %.9, -1
  br label %.thread131

bb.au:                                            ; preds = %ReadSymbol.exit
  %i.ri = add nsw i32 %.9, -1                     ; 2 uses
  %.not442.i = icmp eq i32 %i.ri, 0
  br i1 %.not442.i, label %.thread126, label %bb.ao, !llvm.loop !163

.thread126:                                       ; preds = %bb.am, %bb.au
  %.10.i = phi i32 [ %i.rf, %bb.au ], [ %indvars, %bb.am ] ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !58
  %i.rl = icmp slt i32 %i.rk, 1
  br i1 %i.rl, label %bb.av, label %bb.aw, !prof !159

bb.av:                                            ; preds = %.thread126
  store i32 14, ptr %0, align 8, !tbaa !9
  br label %.thread131

bb.aw:                                            ; preds = %.thread126, %ReadCommandInternal.exit, %bb.c
  %.11.i = phi i32 [ %.0320.i.ph, %ReadCommandInternal.exit ], [ %.10.i, %.thread126 ], [ %i.b, %bb.c ] ; 12 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 8 uses
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !154 ; 2 uses
  %i.ro = icmp sgt i32 %i.rn, -1
  br i1 %i.ro, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.not452.i = icmp eq i32 %i.rn, 0
  %i.rp = zext i1 %.not452.i to i32               ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.rp, ptr %i.rq, align 4, !tbaa !155
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !164
  %i.rt = add nsw i32 %i.rs, -1                   ; 2 uses
  store i32 %i.rt, ptr %i.rr, align 4, !tbaa !164
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.rv = and i32 %i.rt, 3
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !5  ; 2 uses
  store i32 %i.ry, ptr %i.rm, align 8, !tbaa !154
  br label %ReadDistanceInternal.exit

bb.ay:                                            ; preds = %bb.aw
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !29
  %i.sb = icmp eq i64 %i.sa, 0
  br i1 %i.sb, label %bb.az, label %bb.ba, !prof !159

bb.az:                                            ; preds = %bb.ay
  tail call fastcc void @DecodeDistanceBlockSwitch(ptr noundef nonnull %0)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !165
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.sg = load i8, ptr %i.sf, align 4, !tbaa !156
  %i.sh = zext i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %i.sh
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !89
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !50 ; 4 uses
  %i.sm = icmp ult i64 %i.sl, 17
  %.pre374 = load i64, ptr %i.e, align 8, !tbaa !51 ; 2 uses
  br i1 %i.sm, label %bb.bb, label %BrotliGet16BitsUnmasked.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.sn = load ptr, ptr %i.j, align 8, !tbaa !44  ; 2 uses
  %.0.copyload.i.i.i53 = load i64, ptr %i.sn, align 1
  %i.so = shl i64 %.0.copyload.i.i.i53, %i.sl
  %i.sp = or i64 %i.so, %.pre374
  %i.sq = add nuw nsw i64 %i.sl, 48
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 6
  store ptr %i.sr, ptr %i.j, align 8, !tbaa !44
  br label %BrotliGet16BitsUnmasked.exit.i

BrotliGet16BitsUnmasked.exit.i:                   ; preds = %bb.bb, %bb.ba
  %i.ss = phi i64 [ %i.sq, %bb.bb ], [ %i.sl, %bb.ba ] ; 2 uses
  %i.st = phi i64 [ %i.sp, %bb.bb ], [ %.pre374, %bb.ba ] ; 3 uses
  %i.su = and i64 %i.st, 255
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.su ; 4 uses
  %i.sw = load i8, ptr %i.sv, align 2, !tbaa !66  ; 3 uses
  %i.sx = icmp ugt i8 %i.sw, 8
  br i1 %i.sx, label %BitMask.exit.i.i.i51, label %ReadSymbol.exit.i49

BitMask.exit.i.i.i51:                             ; preds = %BrotliGet16BitsUnmasked.exit.i
  %i.sy = add i64 %i.ss, -8
  %i.sz = lshr i64 %i.st, 8                       ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sv, i64 2
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !68
  %i.tc = zext i16 %i.tb to i64
  %i.td = zext i8 %i.sw to i64
  %i.te = add nuw nsw i64 %i.td, 4294967288
  %i.tf = and i64 %i.te, 4294967295
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr @kBrotliBitMask, i64 %i.tf
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !29
  %i.ti = and i64 %i.th, %i.sz
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.ti
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.tc ; 2 uses
  %.pre375 = load i8, ptr %i.tk, align 2, !tbaa !66
  br label %ReadSymbol.exit.i49

ReadSymbol.exit.i49:                              ; preds = %BitMask.exit.i.i.i51, %BrotliGet16BitsUnmasked.exit.i
  %i.tl = phi i64 [ %i.sz, %BitMask.exit.i.i.i51 ], [ %i.st, %BrotliGet16BitsUnmasked.exit.i ]
  %i.tm = phi i64 [ %i.sy, %BitMask.exit.i.i.i51 ], [ %i.ss, %BrotliGet16BitsUnmasked.exit.i ]
  %i.tn = phi i8 [ %.pre375, %BitMask.exit.i.i.i51 ], [ %i.sw, %BrotliGet16BitsUnmasked.exit.i ]
  %.0.i.i27.i = phi ptr [ %i.tk, %BitMask.exit.i.i.i51 ], [ %i.sv, %BrotliGet16BitsUnmasked.exit.i ]
  %i.to = zext i8 %i.tn to i64                    ; 2 uses
  %i.tp = sub i64 %i.tm, %i.to                    ; 5 uses
  store i64 %i.tp, ptr %i.sk, align 8, !tbaa !50
  %i.tq = lshr i64 %i.tl, %i.to                   ; 3 uses
  store i64 %i.tq, ptr %i.e, align 8, !tbaa !51
  %i.tr = getelementptr inbounds nuw i8, ptr %.0.i.i27.i, i64 2
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !68 ; 5 uses
  %i.tt = zext i16 %i.ts to i64                   ; 2 uses
  %i.tu = load i64, ptr %i.rz, align 8, !tbaa !29
  %i.tv = add i64 %i.tu, -1
  store i64 %i.tv, ptr %i.rz, align 8, !tbaa !29
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  store i32 0, ptr %i.tw, align 4, !tbaa !155
  %i.tx = icmp ult i16 %i.ts, 16
  br i1 %i.tx, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %ReadSymbol.exit.i49
  %i.ty = zext nneg i16 %i.ts to i32              ; 4 uses
  store i32 %i.ty, ptr %i.rm, align 8, !tbaa !154
  %i.tz = icmp samesign ult i16 %i.ts, 4
  br i1 %i.tz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %.neg.i = xor i32 %i.ty, -1
  %1 = lshr i32 1, %i.ty                          ; 3 uses
  store i32 %1, ptr %i.tw, align 4, !tbaa !155
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !164 ; 2 uses
  %i.ud = add i32 %i.uc, %.neg.i
  %i.ue = and i32 %i.ud, 3
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !5  ; 2 uses
  store i32 %i.uh, ptr %i.rm, align 8, !tbaa !154
  %i.ui = sub nsw i32 %i.uc, %1
  store i32 %i.ui, ptr %i.ub, align 4, !tbaa !164
  br label %ReadDistanceInternal.exit

bb.be:                                            ; preds = %bb.bc
  %i.uj = icmp samesign ult i16 %i.ts, 10         ; 2 uses
  %.020.i = select i1 %i.uj, i32 3, i32 2
  %.0.i54.v = select i1 %i.uj, i32 -4, i32 -10
  %.0.i54 = add nsw i32 %.0.i54.v, %i.ty
  %i.uk = shl nsw i32 %.0.i54, 2
  %i.ul = lshr i32 6312258, %i.uk
  %i.um = and i32 %i.ul, 7
  %i.un = add nsw i32 %i.um, -3
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !164
  %i.ur = add nsw i32 %i.uq, %.020.i
  %i.us = and i32 %i.ur, 3
  %i.ut = zext nneg i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !5
  %i.uw = add nsw i32 %i.un, %i.uv                ; 2 uses
  %i.ux = icmp slt i32 %i.uw, 1
  %storemerge.i = select i1 %i.ux, i32 2147483647, i32 %i.uw ; 2 uses
  store i32 %storemerge.i, ptr %i.rm, align 8, !tbaa !154
  br label %ReadDistanceInternal.exit

bb.bf:                                            ; preds = %ReadSymbol.exit.i49
  %i.uy = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.tt
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !48
  %i.va = zext i8 %i.uz to i64                    ; 3 uses
  %i.vb = icmp ult i64 %i.tp, 33
  br i1 %i.vb, label %BrotliFillBitWindow.exit.i.sink.split, label %BrotliReadBits32.exit

BrotliFillBitWindow.exit.i.sink.split:            ; preds = %bb.bf
  %i.vc = load ptr, ptr %i.j, align 8, !tbaa !44  ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  %i.ve = add nuw nsw i64 %i.tp, 32
  %.0.copyload.i4.i = load i32, ptr %i.vc, align 1
  %i.vf = zext i32 %.0.copyload.i4.i to i64
  %.pn = shl i64 %i.vf, %i.tp
  %.ph521 = or i64 %.pn, %i.tq
  store ptr %i.vd, ptr %i.j, align 8, !tbaa !44
  br label %BrotliReadBits32.exit

BrotliReadBits32.exit:                            ; preds = %BrotliFillBitWindow.exit.i.sink.split, %bb.bf
  %i.vg = phi i64 [ %i.ve, %BrotliFillBitWindow.exit.i.sink.split ], [ %i.tp, %bb.bf ]
  %i.vh = phi i64 [ %.ph521, %BrotliFillBitWindow.exit.i.sink.split ], [ %i.tq, %bb.bf ] ; 2 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr @kBrotliBitMask, i64 %i.va
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !29
  %i.vk = and i64 %i.vj, %i.vh
  %i.vl = sub i64 %i.vg, %i.va
  store i64 %i.vl, ptr %i.sk, align 8, !tbaa !50
  %i.vm = lshr i64 %i.vh, %i.va
  store i64 %i.vm, ptr %i.e, align 8, !tbaa !51
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %i.tt
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !29
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !74
  %i.vs = shl i64 %i.vk, %i.vr
  %i.vt = add i64 %i.vs, %i.vp
  %i.vu = trunc i64 %i.vt to i32                  ; 2 uses
  store i32 %i.vu, ptr %i.rm, align 8, !tbaa !154
  br label %ReadDistanceInternal.exit

ReadDistanceInternal.exit:                        ; preds = %BrotliReadBits32.exit, %bb.bd, %bb.be, %bb.ax
  %i.vv = phi i32 [ 0, %BrotliReadBits32.exit ], [ %1, %bb.bd ], [ 0, %bb.be ], [ %i.rp, %bb.ax ]
  %i.vw = phi i32 [ %i.vu, %BrotliReadBits32.exit ], [ %i.uh, %bb.bd ], [ %storemerge.i, %bb.be ], [ %i.ry, %bb.ax ] ; 6 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !115 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !53 ; 2 uses
  %.not453.i = icmp eq i32 %i.vy, %i.wa
  br i1 %.not453.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %ReadDistanceInternal.exit
  %.11..i = tail call i32 @llvm.smin.i32(i32 %.11.i, i32 %i.wa) ; 2 uses
  store i32 %.11..i, ptr %i.vx, align 8, !tbaa !115
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %ReadDistanceInternal.exit
  %i.wb = phi i32 [ %.11..i, %bb.bg ], [ %i.vy, %ReadDistanceInternal.exit ] ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !158 ; 21 uses
  %i.we = icmp sgt i32 %i.vw, %i.wb
  br i1 %i.we, label %bb.bi, label %bb.co

bb.bi:                                            ; preds = %bb.bh
  %i.wf = icmp sgt i32 %i.vw, 2147483644
  br i1 %i.wf, label %ProcessCommandsInternal.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.wg = sub nsw i32 %i.vw, %i.wb                ; 2 uses
  %.not456.i = icmp sgt i32 %i.wg, %i.i
  br i1 %.not456.i, label %bb.bw, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wh = sub nsw i32 %i.i, %i.wg                 ; 4 uses
  %i.wi = load ptr, ptr %i.f, align 8, !tbaa !30  ; 11 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 216 ; 3 uses
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !38 ; 2 uses
  %.not.i.i = icmp eq i32 %i.wk, -1
  br i1 %.not.i.i, label %.preheader1.i.i, label %EnsureCompoundDictionaryInitialized.exit.i

.preheader1.i.i:                                  ; preds = %bb.bk
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 4 ; 2 uses
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !35 ; 2 uses
  %i.wn = add nsw i32 %i.wm, -1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.preheader1.i.i
  %.020.i.i = phi i32 [ %i.wp, %bb.bl ], [ 8, %.preheader1.i.i ] ; 3 uses
  %i.wo = ashr i32 %i.wn, %.020.i.i
  %.not21.i.i = icmp eq i32 %i.wo, 0
  %i.wp = add nuw nsw i32 %.020.i.i, 1
  br i1 %.not21.i.i, label %bb.bm, label %bb.bl, !llvm.loop !166

bb.bm:                                            ; preds = %bb.bl
  %i.wq = add nsw i32 %.020.i.i, -8               ; 4 uses
  store i32 %i.wq, ptr %i.wj, align 8, !tbaa !38
  %i.wr = icmp sgt i32 %i.wm, 0
  br i1 %i.wr, label %.preheader.lr.ph.i.i, label %EnsureCompoundDictionaryInitialized.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.bm
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wi, i64 152
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wi, i64 220
  %i.wu = shl nuw i32 1, %i.wq
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bo, %.preheader.lr.ph.i.i
  %.03.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.i.i, %bb.bo ]
  %.0192.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.xd, %bb.bo ] ; 3 uses
  %sext.i.i = shl i64 %.03.i.i, 32
  %i.wv = ashr exact i64 %sext.i.i, 32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.wv, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.bn ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.ws, i64 %indvars.iv.next.i.i
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !5
  %i.wy = icmp slt i32 %i.wx, %.0192.i.i
  br i1 %i.wy, label %bb.bn, label %bb.bo, !llvm.loop !167

bb.bo:                                            ; preds = %bb.bn
  %i.wz = trunc i64 %indvars.iv.i.i to i8
  %i.xa = ashr i32 %.0192.i.i, %i.wq
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds i8, ptr %i.wt, i64 %i.xb
  store i8 %i.wz, ptr %i.xc, align 1, !tbaa !48
  %i.xd = add nsw i32 %.0192.i.i, %i.wu           ; 2 uses
  %i.xe = load i32, ptr %i.wl, align 4, !tbaa !35
  %i.xf = icmp slt i32 %i.xd, %i.xe
  br i1 %i.xf, label %.preheader.i.i, label %EnsureCompoundDictionaryInitialized.exit.loopexit.i, !llvm.loop !168

EnsureCompoundDictionaryInitialized.exit.loopexit.i: ; preds = %bb.bo
  %.pre.i = load i32, ptr %i.wj, align 8, !tbaa !38
  br label %EnsureCompoundDictionaryInitialized.exit.i

EnsureCompoundDictionaryInitialized.exit.i:       ; preds = %EnsureCompoundDictionaryInitialized.exit.loopexit.i, %bb.bm, %bb.bk
  %i.xg = phi i32 [ %.pre.i, %EnsureCompoundDictionaryInitialized.exit.loopexit.i ], [ %i.wk, %bb.bk ], [ %i.wq, %bb.bm ]
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wi, i64 220
  %i.xi = ashr i32 %i.wh, %i.xg
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %i.xh, i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !48
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wi, i64 152 ; 2 uses
  %i.xn = zext i8 %i.xl to i64
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %EnsureCompoundDictionaryInitialized.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bp ], [ %i.xn, %EnsureCompoundDictionaryInitialized.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %indvars.iv.next.i
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !5
  %.not.i58 = icmp slt i32 %i.wh, %i.xp
  br i1 %.not.i58, label %bb.bq, label %bb.bp, !llvm.loop !169

bb.bq:                                            ; preds = %bb.bp
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !35
  %i.xs = add nsw i32 %i.wh, %i.wd
  %i.xt = icmp slt i32 %i.xr, %i.xs
  br i1 %i.xt, label %ProcessCommandsInternal.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xu = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.xv = load i32, ptr %i.rm, align 8, !tbaa !154
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !164 ; 2 uses
  %i.xz = and i32 %i.xy, 3
  %i.ya = zext nneg i32 %i.xz to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %i.ya
  store i32 %i.xv, ptr %i.yb, align 4, !tbaa !5
  %i.yc = add nsw i32 %i.xy, 1
  store i32 %i.yc, ptr %i.xx, align 4, !tbaa !164
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !58
  %i.yf = sub nsw i32 %i.ye, %i.wd
  store i32 %i.yf, ptr %i.yd, align 4, !tbaa !58
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  store i32 %i.xu, ptr %i.yg, align 8, !tbaa !117
  %i.yh = and i64 %indvars.iv.i, 4294967295
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.yh
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !5
  %i.yk = sub nsw i32 %i.wh, %i.yj
  %i.yl = getelementptr inbounds nuw i8, ptr %i.wi, i64 12
  store i32 %i.yk, ptr %i.yl, align 4, !tbaa !118
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  store i32 %i.wd, ptr %i.ym, align 8, !tbaa !36
  %i.yn = getelementptr inbounds nuw i8, ptr %i.wi, i64 20
  store i32 0, ptr %i.yn, align 4, !tbaa !37
  %i.yo = load ptr, ptr %i.f, align 8, !tbaa !30  ; 6 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 20 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 8 ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yo, i64 12 ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yo, i64 152
  %.pre.i59 = load i32, ptr %i.yq, align 4, !tbaa !37
  %.pre376.pre = load i32, ptr %i.yv, align 4, !tbaa !114
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bv, %bb.br
  %.pre376 = phi i32 [ %.pre376.pre, %bb.br ], [ %i.aaa, %bb.bv ] ; 2 uses
  %i.yx = phi i32 [ %.pre.i59, %bb.br ], [ %i.zw, %bb.bv ] ; 2 uses
  %.042.i = phi i32 [ %.11.i, %bb.br ], [ %i.zs, %bb.bv ] ; 6 uses
  %i.yy = load i32, ptr %i.yp, align 8, !tbaa !36 ; 2 uses
  %.not.i60 = icmp eq i32 %i.yy, %i.yx
  br i1 %.not.i60, label %CopyFromCompoundDictionary.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.yz = load ptr, ptr %i.yr, align 8, !tbaa !47
  %i.za = sext i32 %.042.i to i64
  %i.zb = getelementptr inbounds i8, ptr %i.yz, i64 %i.za
  %i.zc = load i32, ptr %i.yt, align 8, !tbaa !117
  %i.zd = sext i32 %i.zc to i64                   ; 2 uses
  %i.ze = getelementptr inbounds [8 x i8], ptr %i.ys, i64 %i.zd
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !28
  %i.zg = load i32, ptr %i.yu, align 4, !tbaa !118 ; 2 uses
  %i.zh = sext i32 %i.zg to i64
  %i.zi = getelementptr inbounds i8, ptr %i.zf, i64 %i.zh
  %i.zj = sub nsw i32 %.pre376, %.042.i
  %i.zk = getelementptr [4 x i8], ptr %i.yw, i64 %i.zd ; 2 uses
  %i.zl = getelementptr i8, ptr %i.zk, i64 4
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !5
  %i.zn = load i32, ptr %i.zk, align 4, !tbaa !5
  %i.zo = add i32 %i.zg, %i.zn
  %i.zp = sub i32 %i.zm, %i.zo                    ; 2 uses
  %i.zq = sub nsw i32 %i.yy, %i.yx
  %spec.select.i61 = tail call i32 @llvm.smin.i32(i32 %i.zq, i32 %i.zp)
  %.1.i62 = tail call i32 @llvm.smin.i32(i32 %spec.select.i61, i32 %i.zj) ; 5 uses
  %i.zr = sext i32 %.1.i62 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zb, ptr align 1 %i.zi, i64 %i.zr, i1 false)
  %i.zs = add nsw i32 %.1.i62, %.042.i            ; 3 uses
  %i.zt = load i32, ptr %i.yu, align 4, !tbaa !118
  %i.zu = add nsw i32 %.1.i62, %i.zt
  store i32 %i.zu, ptr %i.yu, align 4, !tbaa !118
  %i.zv = load i32, ptr %i.yq, align 4, !tbaa !37
  %i.zw = add nsw i32 %i.zv, %.1.i62              ; 2 uses
  store i32 %i.zw, ptr %i.yq, align 4, !tbaa !37
  %i.zx = icmp eq i32 %.1.i62, %i.zp
  br i1 %i.zx, label %bb.bu, label %bb.bv

end_hunk_0
begin_hunk_1_@SafeProcessCommands:bb.a
  br i1 %.not441.not.i, label %.thread206.loopexit, label %bb.w

bb.w:                                             ; preds = %SafeReadSymbol.exit.i.thread, %SafeReadSymbol.exit.i
  %.1362.i203 = phi i8 [ %i.kq, %SafeReadSymbol.exit.i.thread ], [ %i.kt, %SafeReadSymbol.exit.i ] ; 2 uses
  %i.ku = load ptr, ptr %i.ew, align 8, !tbaa !47
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 %indvars.iv454
  store i8 %.1362.i203, ptr %i.kv, align 1, !tbaa !48
  %i.kw = load i64, ptr %i.es, align 8, !tbaa !29
  %i.kx = add i64 %i.kw, -1                       ; 2 uses
  store i64 %i.kx, ptr %i.es, align 8, !tbaa !29
  %indvars.iv.next455 = add nsw i64 %indvars.iv454, 1 ; 2 uses
  %i.ky = load i32, ptr %i.ex, align 4, !tbaa !114 ; 2 uses
  %i.kz = trunc nsw i64 %indvars.iv.next455 to i32 ; 2 uses
  %i.la = icmp eq i32 %i.ky, %i.kz
  br i1 %i.la, label %.thread206.thread331, label %.thread218, !prof !159

.thread206.thread331:                             ; preds = %bb.w
  store i32 13, ptr %0, align 8, !tbaa !9
  %i.lb = add nsw i32 %.11, -1
  br label %.thread206

.thread218:                                       ; preds = %bb.w
  %i.lc = add nsw i32 %.11, -1                    ; 2 uses
  %.not442.i = icmp eq i32 %i.lc, 0
  br i1 %.not442.i, label %.thread177, label %bb.t, !llvm.loop !163

.thread177:                                       ; preds = %bb.r, %.thread218
  %.10.i = phi i32 [ %i.kz, %.thread218 ], [ %i.hl, %bb.r ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !58
  %i.lf = icmp slt i32 %i.le, 1
  br i1 %i.lf, label %bb.x, label %bb.y, !prof !159

bb.x:                                             ; preds = %.thread177
  store i32 14, ptr %0, align 8, !tbaa !9
  br label %.thread206

bb.y:                                             ; preds = %.thread177, %bb.j, %GetCompoundDictionarySize.exit
  %.10 = phi i32 [ 0, %bb.j ], [ 0, %.thread177 ], [ %i.h, %GetCompoundDictionarySize.exit ] ; 2 uses
  %.11.i = phi i32 [ %.0320.i.ph, %bb.j ], [ %.10.i, %.thread177 ], [ %i.f, %GetCompoundDictionarySize.exit ] ; 14 uses
  store i32 9, ptr %0, align 8, !tbaa !9
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 8 uses
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !154 ; 2 uses
  %i.li = icmp sgt i32 %i.lh, -1
  br i1 %i.li, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.not452.i = icmp eq i32 %i.lh, 0
  %i.lj = zext i1 %.not452.i to i32               ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !155
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !164
  %i.ln = add nsw i32 %i.lm, -1                   ; 2 uses
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !164
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.lp = and i32 %i.ln, 3
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !5  ; 2 uses
  store i32 %i.ls, ptr %i.lg, align 8, !tbaa !154
  br label %bb.ak

bb.aa:                                            ; preds = %bb.y
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !29
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %bb.ab, label %bb.ac, !prof !159

bb.ab:                                            ; preds = %bb.aa
  %i.lw = tail call fastcc i32 @SafeDecodeDistanceBlockSwitch(ptr noundef nonnull %0)
  %.not450.i = icmp eq i32 %i.lw, 0
  br i1 %.not450.i, label %.thread206, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !165
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.mb = load i8, ptr %i.ma, align 4, !tbaa !156
  %i.mc = zext i8 %i.mb to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !89 ; 2 uses
  %i.mf = load i64, ptr %i.i, align 8, !tbaa !51  ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !50 ; 7 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !44 ; 8 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !45 ; 3 uses
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = ptrtoint ptr %i.mj to i64
  %i.mo = sub i64 %i.mm, %i.mn                    ; 2 uses
  %i.mp = icmp ult i64 %i.mh, 15
  br i1 %i.mp, label %.lr.ph409, label %._crit_edge410

.lr.ph409:                                        ; preds = %bb.ac
  %i.mq = icmp eq ptr %i.mj, %i.ml
  br i1 %i.mq, label %SafeReadSymbol.exit.i34, label %BrotliPullByte.exit.i.i.i40

BrotliPullByte.exit.i.i.i40:                      ; preds = %.lr.ph409
  %i.mr = load i8, ptr %i.mj, align 1, !tbaa !48
  %i.ms = zext i8 %i.mr to i64
  %i.mt = shl nuw nsw i64 %i.ms, %i.mh
  %i.mu = or i64 %i.mt, %i.mf                     ; 3 uses
  store i64 %i.mu, ptr %i.i, align 8, !tbaa !51
  %i.mv = add nuw nsw i64 %i.mh, 8                ; 3 uses
  store i64 %i.mv, ptr %i.mg, align 8, !tbaa !50
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mj, i64 1 ; 3 uses
  store ptr %i.mw, ptr %i.mi, align 8, !tbaa !44
  %i.mx = icmp ult i64 %i.mh, 7
  br i1 %i.mx, label %.lr.ph409.1, label %._crit_edge410

.lr.ph409.1:                                      ; preds = %BrotliPullByte.exit.i.i.i40
  %i.my = icmp eq ptr %i.mw, %i.ml
  br i1 %i.my, label %SafeReadSymbol.exit.i34, label %BrotliPullByte.exit.i.i.i40.1

BrotliPullByte.exit.i.i.i40.1:                    ; preds = %.lr.ph409.1
  %i.mz = load i8, ptr %i.mw, align 1, !tbaa !48
  %i.na = zext i8 %i.mz to i64
  %i.nb = shl nuw nsw i64 %i.na, %i.mv
  %i.nc = or i64 %i.nb, %i.mu                     ; 2 uses
  store i64 %i.nc, ptr %i.i, align 8, !tbaa !51
  %i.nd = or disjoint i64 %i.mh, 16               ; 2 uses
  store i64 %i.nd, ptr %i.mg, align 8, !tbaa !50
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mj, i64 2
  store ptr %i.ne, ptr %i.mi, align 8, !tbaa !44
  br label %._crit_edge410

._crit_edge410:                                   ; preds = %BrotliPullByte.exit.i.i.i40, %BrotliPullByte.exit.i.i.i40.1, %bb.ac
  %i.nf = phi i64 [ %i.mh, %bb.ac ], [ %i.mv, %BrotliPullByte.exit.i.i.i40 ], [ %i.nd, %BrotliPullByte.exit.i.i.i40.1 ] ; 2 uses
  %i.ng = phi i64 [ %i.mf, %bb.ac ], [ %i.mu, %BrotliPullByte.exit.i.i.i40 ], [ %i.nc, %BrotliPullByte.exit.i.i.i40.1 ] ; 3 uses
  %i.nh = and i64 %i.ng, 255
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.nh ; 4 uses
  %i.nj = load i8, ptr %i.ni, align 2, !tbaa !66  ; 3 uses
  %i.nk = icmp ugt i8 %i.nj, 8
  br i1 %i.nk, label %BitMask.exit.i.i39, label %SafeReadSymbol.exit.i34.thread

BitMask.exit.i.i39:                               ; preds = %._crit_edge410
  %i.nl = add i64 %i.nf, -8
  %i.nm = lshr i64 %i.ng, 8                       ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 2
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !68
  %i.np = zext i16 %i.no to i64
  %i.nq = and i64 %i.nm, 127
  %i.nr = zext i8 %i.nj to i64
  %i.ns = add nuw nsw i64 %i.nr, 4294967288
  %i.nt = and i64 %i.ns, 4294967295
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr @kBrotliBitMask, i64 %i.nt
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !29
  %i.nw = and i64 %i.nq, %i.nv
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nw
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.np ; 2 uses
  %.pre472 = load i8, ptr %i.ny, align 2, !tbaa !66
  br label %SafeReadSymbol.exit.i34.thread

SafeReadSymbol.exit.i34.thread:                   ; preds = %._crit_edge410, %BitMask.exit.i.i39
  %i.nz = phi i64 [ %i.nm, %BitMask.exit.i.i39 ], [ %i.ng, %._crit_edge410 ]
  %i.oa = phi i64 [ %i.nl, %BitMask.exit.i.i39 ], [ %i.nf, %._crit_edge410 ]
  %i.ob = phi i8 [ %.pre472, %BitMask.exit.i.i39 ], [ %i.nj, %._crit_edge410 ]
  %.0.i25.i = phi ptr [ %i.ny, %BitMask.exit.i.i39 ], [ %i.ni, %._crit_edge410 ]
  %i.oc = zext i8 %i.ob to i64                    ; 2 uses
  %i.od = sub i64 %i.oa, %i.oc
  store i64 %i.od, ptr %i.mg, align 8, !tbaa !50
  %i.oe = lshr i64 %i.nz, %i.oc
  store i64 %i.oe, ptr %i.i, align 8, !tbaa !51
  %i.of = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !68
  %i.oh = zext i16 %i.og to i64
  br label %bb.ad

SafeReadSymbol.exit.i34:                          ; preds = %.lr.ph409.1, %.lr.ph409
  %i.oi = call fastcc i32 @SafeDecodeSymbol(ptr noundef %i.me, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a)
  %.not23.i = icmp eq i32 %i.oi, 0
  br i1 %.not23.i, label %ReadDistanceInternal.exit.thread, label %SafeReadSymbol.exit.i34._crit_edge

SafeReadSymbol.exit.i34._crit_edge:               ; preds = %SafeReadSymbol.exit.i34
  %.pre473 = load i64, ptr %i.a, align 8, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %SafeReadSymbol.exit.i34._crit_edge, %SafeReadSymbol.exit.i34.thread
  %i.oj = phi i64 [ %.pre473, %SafeReadSymbol.exit.i34._crit_edge ], [ %i.oh, %SafeReadSymbol.exit.i34.thread ] ; 4 uses
  %i.ok = load i64, ptr %i.lt, align 8, !tbaa !29 ; 2 uses
  %i.ol = add i64 %i.ok, -1
  store i64 %i.ol, ptr %i.lt, align 8, !tbaa !29
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  store i32 0, ptr %i.om, align 4, !tbaa !155
  %i.on = and i64 %i.oj, 4294967280
  %i.oo = icmp eq i64 %i.on, 0
  br i1 %i.oo, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.op = trunc i64 %i.oj to i32                  ; 6 uses
  store i32 %i.op, ptr %i.lg, align 8, !tbaa !154
  %i.oq = icmp slt i32 %i.op, 4
  br i1 %i.oq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.neg.i = xor i32 %i.op, -1
  %1 = lshr i32 1, %i.op                          ; 3 uses
  store i32 %1, ptr %i.om, align 4, !tbaa !155
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !164 ; 2 uses
  %i.ou = add i32 %i.ot, %.neg.i
  %i.ov = and i32 %i.ou, 3
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.ow
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !5  ; 2 uses
  store i32 %i.oy, ptr %i.lg, align 8, !tbaa !154
  %i.oz = sub nsw i32 %i.ot, %1
  store i32 %i.oz, ptr %i.os, align 4, !tbaa !164
  br label %ReadDistanceInternal.exit

bb.ag:                                            ; preds = %bb.ae
  %i.pa = icmp samesign ult i32 %i.op, 10         ; 2 uses
  %.020.i = select i1 %i.pa, i32 3, i32 10
  %.0.i43.v = select i1 %i.pa, i32 -4, i32 -10
  %.0.i43 = add nsw i32 %.0.i43.v, %i.op
  %i.pb = shl nsw i32 %.0.i43, 2
  %i.pc = lshr i32 6312258, %i.pb
  %i.pd = and i32 %i.pc, 7
  %i.pe = add nsw i32 %i.pd, -3
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !164
  %i.pi = add i32 %i.ph, %.020.i
  %i.pj = and i32 %i.pi, 3
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !5
  %i.pn = add nsw i32 %i.pe, %i.pm                ; 2 uses
  %i.po = icmp slt i32 %i.pn, 1
  %storemerge.i = select i1 %i.po, i32 2147483647, i32 %i.pn ; 2 uses
  store i32 %storemerge.i, ptr %i.lg, align 8, !tbaa !154
  br label %ReadDistanceInternal.exit

bb.ah:                                            ; preds = %bb.ad
  %i.pp = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.oj
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !48  ; 2 uses
  %i.pr = zext i8 %i.pq to i64                    ; 5 uses
  %.not.i44 = icmp eq i8 %i.pq, 0
  br i1 %.not.i44, label %bb.aj, label %.preheader

.preheader:                                       ; preds = %bb.ah
  %.promoted412 = load i64, ptr %i.mg, align 8, !tbaa !50 ; 3 uses
  %i.ps = icmp ult i64 %.promoted412, %i.pr
  br i1 %i.ps, label %.lr.ph413, label %.preheader.._crit_edge414_crit_edge

.preheader.._crit_edge414_crit_edge:              ; preds = %.preheader
  %.pre474 = load i64, ptr %i.i, align 8, !tbaa !51
  br label %BrotliTakeBits.exit.i46

.lr.ph413:                                        ; preds = %.preheader
  %i.pt = load ptr, ptr %i.mk, align 8, !tbaa !45
  %.promoted416 = load ptr, ptr %i.mi, align 8, !tbaa !44
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph413, %BrotliPullByte.exit.i49
  %i.pu = phi ptr [ %.promoted416, %.lr.ph413 ], [ %i.qd, %BrotliPullByte.exit.i49 ] ; 3 uses
  %i.pv = phi i64 [ %.promoted412, %.lr.ph413 ], [ %i.qc, %BrotliPullByte.exit.i49 ] ; 2 uses
  %i.pw = icmp eq ptr %i.pu, %i.pt
  br i1 %i.pw, label %SafeReadBits32.exit, label %BrotliPullByte.exit.i49

BrotliPullByte.exit.i49:                          ; preds = %bb.ai
  %i.px = load i64, ptr %i.i, align 8, !tbaa !51
  %i.py = load i8, ptr %i.pu, align 1, !tbaa !48
  %i.pz = zext i8 %i.py to i64
  %i.qa = shl i64 %i.pz, %i.pv
  %i.qb = or i64 %i.qa, %i.px                     ; 2 uses
  store i64 %i.qb, ptr %i.i, align 8, !tbaa !51
  %i.qc = add nuw nsw i64 %i.pv, 8                ; 4 uses
  store i64 %i.qc, ptr %i.mg, align 8, !tbaa !50
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pu, i64 1 ; 2 uses
  store ptr %i.qd, ptr %i.mi, align 8, !tbaa !44
  %i.qe = icmp ult i64 %i.qc, %i.pr
  br i1 %i.qe, label %bb.ai, label %BrotliTakeBits.exit.i46, !llvm.loop !181

BrotliTakeBits.exit.i46:                          ; preds = %BrotliPullByte.exit.i49, %.preheader.._crit_edge414_crit_edge
  %i.qf = phi i64 [ %.pre474, %.preheader.._crit_edge414_crit_edge ], [ %i.qb, %BrotliPullByte.exit.i49 ] ; 2 uses
  %.lcssa359 = phi i64 [ %.promoted412, %.preheader.._crit_edge414_crit_edge ], [ %i.qc, %BrotliPullByte.exit.i49 ]
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr @kBrotliBitMask, i64 %i.pr
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !29
  %i.qi = and i64 %i.qh, %i.qf
  %i.qj = sub i64 %.lcssa359, %i.pr
  store i64 %i.qj, ptr %i.mg, align 8, !tbaa !50
  %i.qk = lshr i64 %i.qf, %i.pr
  store i64 %i.qk, ptr %i.i, align 8, !tbaa !51
  br label %bb.aj

SafeReadBits32.exit:                              ; preds = %bb.ai
  store i64 %i.ok, ptr %i.lt, align 8, !tbaa !29
  store i64 %i.mf, ptr %i.i, align 8, !tbaa !51
  store i64 %i.mh, ptr %i.mg, align 8, !tbaa !50
  store ptr %i.mj, ptr %i.mi, align 8, !tbaa !44
  %i.ql = getelementptr i8, ptr %i.mj, i64 %i.mo  ; 2 uses
  store ptr %i.ql, ptr %i.mk, align 8, !tbaa !45
  %i.qm = add i64 %i.mo, -28
  %i.qn = icmp ult i64 %i.qm, -29
  %i.qo = getelementptr i8, ptr %i.ql, i64 -27
  %.sink594 = select i1 %i.qn, ptr %i.qo, ptr %i.mj
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink594, ptr %i.qp, align 8, !tbaa !46
  br label %ReadDistanceInternal.exit.thread

bb.aj:                                            ; preds = %BrotliTakeBits.exit.i46, %bb.ah
  %.6.ph = phi i64 [ 0, %bb.ah ], [ %i.qi, %BrotliTakeBits.exit.i46 ]
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.oj
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !29
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !74
  %i.qv = shl i64 %.6.ph, %i.qu
  %i.qw = add i64 %i.qv, %i.qs
  %i.qx = trunc i64 %i.qw to i32                  ; 2 uses
  store i32 %i.qx, ptr %i.lg, align 8, !tbaa !154
  br label %ReadDistanceInternal.exit

ReadDistanceInternal.exit.thread:                 ; preds = %SafeReadBits32.exit, %SafeReadSymbol.exit.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread206

ReadDistanceInternal.exit:                        ; preds = %bb.ag, %bb.af, %bb.aj
  %i.qy = phi i32 [ 0, %bb.ag ], [ %1, %bb.af ], [ 0, %bb.aj ]
  %i.qz = phi i32 [ %storemerge.i, %bb.ag ], [ %i.oy, %bb.af ], [ %i.qx, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ak

bb.ak:                                            ; preds = %ReadDistanceInternal.exit, %bb.z
  %i.ra = phi i32 [ %i.qy, %ReadDistanceInternal.exit ], [ %i.lj, %bb.z ]
  %i.rb = phi i32 [ %i.qz, %ReadDistanceInternal.exit ], [ %i.ls, %bb.z ] ; 6 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !115 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !53 ; 2 uses
  %.not453.i = icmp eq i32 %i.rd, %i.rf
  br i1 %.not453.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.11..i = tail call i32 @llvm.smin.i32(i32 %.11.i, i32 %i.rf) ; 2 uses
  store i32 %.11..i, ptr %i.rc, align 8, !tbaa !115
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.rg = phi i32 [ %.11..i, %bb.al ], [ %i.rd, %bb.ak ] ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !158 ; 21 uses
  %i.rj = icmp sgt i32 %i.rb, %i.rg
  br i1 %i.rj, label %bb.an, label %bb.bt

bb.an:                                            ; preds = %bb.am
  %i.rk = icmp sgt i32 %i.rb, 2147483644
  br i1 %i.rk, label %ProcessCommandsInternal.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rl = sub nsw i32 %i.rb, %i.rg                ; 2 uses
  %.not456.i = icmp sgt i32 %i.rl, %i.m
  br i1 %.not456.i, label %bb.bb, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.rm = sub nsw i32 %i.m, %i.rl                 ; 4 uses
  %i.rn = load ptr, ptr %i.j, align 8, !tbaa !30  ; 11 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 216 ; 3 uses
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !38 ; 2 uses
  %.not.i.i53 = icmp eq i32 %i.rp, -1
  br i1 %.not.i.i53, label %.preheader1.i.i, label %EnsureCompoundDictionaryInitialized.exit.i

.preheader1.i.i:                                  ; preds = %bb.ap
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 4 ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !35 ; 2 uses
  %i.rs = add nsw i32 %i.rr, -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader1.i.i
  %.020.i.i = phi i32 [ %i.ru, %bb.aq ], [ 8, %.preheader1.i.i ] ; 3 uses
  %i.rt = ashr i32 %i.rs, %.020.i.i
  %.not21.i.i = icmp eq i32 %i.rt, 0
  %i.ru = add nuw nsw i32 %.020.i.i, 1
  br i1 %.not21.i.i, label %bb.ar, label %bb.aq, !llvm.loop !166

bb.ar:                                            ; preds = %bb.aq
  %i.rv = add nsw i32 %.020.i.i, -8               ; 4 uses
  store i32 %i.rv, ptr %i.ro, align 8, !tbaa !38
  %i.rw = icmp sgt i32 %i.rr, 0
  br i1 %i.rw, label %.preheader.lr.ph.i.i, label %EnsureCompoundDictionaryInitialized.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.ar
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rn, i64 152
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rn, i64 220
  %i.rz = shl nuw i32 1, %i.rv
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.at, %.preheader.lr.ph.i.i
  %.03.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.i.i, %bb.at ]
  %.0192.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.si, %bb.at ] ; 3 uses
  %sext.i.i = shl i64 %.03.i.i, 32
  %i.sa = ashr exact i64 %sext.i.i, 32
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.sa, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.as ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %indvars.iv.next.i.i
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !5
  %i.sd = icmp slt i32 %i.sc, %.0192.i.i
  br i1 %i.sd, label %bb.as, label %bb.at, !llvm.loop !167

bb.at:                                            ; preds = %bb.as
  %i.se = trunc i64 %indvars.iv.i.i to i8
  %i.sf = ashr i32 %.0192.i.i, %i.rv
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds i8, ptr %i.ry, i64 %i.sg
  store i8 %i.se, ptr %i.sh, align 1, !tbaa !48
  %i.si = add nsw i32 %.0192.i.i, %i.rz           ; 2 uses
  %i.sj = load i32, ptr %i.rq, align 4, !tbaa !35
  %i.sk = icmp slt i32 %i.si, %i.sj
  br i1 %i.sk, label %.preheader.i.i, label %EnsureCompoundDictionaryInitialized.exit.loopexit.i, !llvm.loop !168

EnsureCompoundDictionaryInitialized.exit.loopexit.i: ; preds = %bb.at
  %.pre.i = load i32, ptr %i.ro, align 8, !tbaa !38
  br label %EnsureCompoundDictionaryInitialized.exit.i

EnsureCompoundDictionaryInitialized.exit.i:       ; preds = %EnsureCompoundDictionaryInitialized.exit.loopexit.i, %bb.ar, %bb.ap
  %i.sl = phi i32 [ %.pre.i, %EnsureCompoundDictionaryInitialized.exit.loopexit.i ], [ %i.rp, %bb.ap ], [ %i.rv, %bb.ar ]
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rn, i64 220
  %i.sn = ashr i32 %i.rm, %i.sl
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds i8, ptr %i.sm, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !48
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rn, i64 152 ; 2 uses
  %i.ss = zext i8 %i.sq to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %EnsureCompoundDictionaryInitialized.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.au ], [ %i.ss, %EnsureCompoundDictionaryInitialized.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %indvars.iv.next.i
  %i.su = load i32, ptr %i.st, align 4, !tbaa !5
  %.not.i54 = icmp slt i32 %i.rm, %i.su
  br i1 %.not.i54, label %bb.av, label %bb.au, !llvm.loop !169

bb.av:                                            ; preds = %bb.au
  %i.sv = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !35
  %i.sx = add nsw i32 %i.rm, %i.ri
  %i.sy = icmp slt i32 %i.sw, %i.sx
  br i1 %i.sy, label %ProcessCommandsInternal.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.sz = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ta = load i32, ptr %i.lg, align 8, !tbaa !154
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !164 ; 2 uses
  %i.te = and i32 %i.td, 3
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.tf
  store i32 %i.ta, ptr %i.tg, align 4, !tbaa !5
  %i.th = add nsw i32 %i.td, 1
  store i32 %i.th, ptr %i.tc, align 4, !tbaa !164
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !58
  %i.tk = sub nsw i32 %i.tj, %i.ri
  store i32 %i.tk, ptr %i.ti, align 4, !tbaa !58
  %i.tl = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store i32 %i.sz, ptr %i.tl, align 8, !tbaa !117
  %i.tm = and i64 %indvars.iv.i, 4294967295
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !5
  %i.tp = sub nsw i32 %i.rm, %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %i.rn, i64 12
  store i32 %i.tp, ptr %i.tq, align 4, !tbaa !118
  %i.tr = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store i32 %i.ri, ptr %i.tr, align 8, !tbaa !36
  %i.ts = getelementptr inbounds nuw i8, ptr %i.rn, i64 20
  store i32 0, ptr %i.ts, align 4, !tbaa !37
  %i.tt = load ptr, ptr %i.j, align 8, !tbaa !30  ; 6 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 20 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tt, i64 8 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tt, i64 12 ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tt, i64 152
  %.pre.i55 = load i32, ptr %i.tv, align 4, !tbaa !37
  %.pre475.pre = load i32, ptr %i.ua, align 4, !tbaa !114
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ba, %bb.aw
  %.pre475 = phi i32 [ %.pre475.pre, %bb.aw ], [ %i.vf, %bb.ba ] ; 2 uses
  %i.uc = phi i32 [ %.pre.i55, %bb.aw ], [ %i.vb, %bb.ba ] ; 2 uses
  %.042.i = phi i32 [ %.11.i, %bb.aw ], [ %i.ux, %bb.ba ] ; 6 uses
  %i.ud = load i32, ptr %i.tu, align 8, !tbaa !36 ; 2 uses
  %.not.i56 = icmp eq i32 %i.ud, %i.uc
  br i1 %.not.i56, label %CopyFromCompoundDictionary.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ue = load ptr, ptr %i.tw, align 8, !tbaa !47
  %i.uf = sext i32 %.042.i to i64
  %i.ug = getelementptr inbounds i8, ptr %i.ue, i64 %i.uf
  %i.uh = load i32, ptr %i.ty, align 8, !tbaa !117
  %i.ui = sext i32 %i.uh to i64                   ; 2 uses
  %i.uj = getelementptr inbounds [8 x i8], ptr %i.tx, i64 %i.ui
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !28
  %i.ul = load i32, ptr %i.tz, align 4, !tbaa !118 ; 2 uses
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds i8, ptr %i.uk, i64 %i.um
  %i.uo = sub nsw i32 %.pre475, %.042.i
  %i.up = getelementptr [4 x i8], ptr %i.ub, i64 %i.ui ; 2 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 4
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !5
  %i.us = load i32, ptr %i.up, align 4, !tbaa !5
  %i.ut = add i32 %i.ul, %i.us
  %i.uu = sub i32 %i.ur, %i.ut                    ; 2 uses
  %i.uv = sub nsw i32 %i.ud, %i.uc
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.uv, i32 %i.uu)
  %.1.i57 = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.uo) ; 5 uses
  %i.uw = sext i32 %.1.i57 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ug, ptr align 1 %i.un, i64 %i.uw, i1 false)
  %i.ux = add nsw i32 %.1.i57, %.042.i            ; 3 uses
  %i.uy = load i32, ptr %i.tz, align 4, !tbaa !118
  %i.uz = add nsw i32 %.1.i57, %i.uy
  store i32 %i.uz, ptr %i.tz, align 4, !tbaa !118
end_hunk_1
