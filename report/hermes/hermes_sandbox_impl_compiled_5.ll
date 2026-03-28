begin_hunk_0
  %.val3419 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rk = getelementptr inbounds nuw i8, ptr %.val3419, i64 %i.rj
  %.0.copyload.i3515 = load i16, ptr %i.rk, align 1
  %.0.copyload.i3515.fr = freeze i16 %.0.copyload.i3515 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3515.fr) #9, !srcloc !24
  %i.rl = icmp ult i16 %.0.copyload.i3515.fr, 160
  br i1 %i.rl, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %.preheader3622
  %4 = zext nneg i16 %.0.copyload.i3515.fr to i32
  %i.rm = add nsw i32 %4, -9                      ; 2 uses
  %i.rn = icmp ugt i32 %i.rm, 23
  br i1 %i.rn, label %switch.early.test, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ro = shl nuw nsw i32 1, %i.rm
  %i.rp = and i32 %i.ro, 8388621
  %.not2974 = icmp eq i32 %i.rp, 0
  br i1 %.not2974, label %switch.early.test, label %bb.dk

bb.di:                                            ; preds = %.preheader3622
  switch i16 %.0.copyload.i3515.fr, label %bb.dj [
end_hunk_0
begin_hunk_1
    i16 -257, label %bb.dk
  ]

bb.dj:                                            ; preds = %bb.di
  %5 = add i16 %.0.copyload.i3515.fr, -8192
  %i.rq = icmp ult i16 %5, 11
  br i1 %i.rq, label %bb.dk, label %switch.early.test

switch.early.test:                                ; preds = %bb.dg, %bb.dh, %bb.dj
  switch i16 %.0.copyload.i3515.fr, label %.loopexit3623 [
    i16 12288, label %bb.dk
    i16 8287, label %bb.dk
end_hunk_1
begin_hunk_2
  %.val3418 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rv = getelementptr inbounds nuw i8, ptr %.val3418, i64 %i.ru
  %.0.copyload.i3516 = load i16, ptr %i.rv, align 1
  %.0.copyload.i3516.fr = freeze i16 %.0.copyload.i3516 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3516.fr) #9, !srcloc !24
  %i.rw = icmp ult i16 %.0.copyload.i3516.fr, 160
  br i1 %i.rw, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %.preheader3621
  %6 = zext nneg i16 %.0.copyload.i3516.fr to i32
  %i.rx = add nsw i32 %6, -9                      ; 2 uses
  %i.ry = icmp ugt i32 %i.rx, 23
  br i1 %i.ry, label %switch.early.test3138, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rz = shl nuw nsw i32 1, %i.rx
  %i.sa = and i32 %i.rz, 8388621
  %.not2977 = icmp eq i32 %i.sa, 0
  br i1 %.not2977, label %switch.early.test3138, label %bb.dp

bb.dn:                                            ; preds = %.preheader3621
  switch i16 %.0.copyload.i3516.fr, label %bb.do [
end_hunk_2
begin_hunk_3
    i16 -257, label %bb.dp
  ]

bb.do:                                            ; preds = %bb.dn
  %7 = add i16 %.0.copyload.i3516.fr, -8192
  %i.sb = icmp ult i16 %7, 11
  br i1 %i.sb, label %bb.dp, label %switch.early.test3138

switch.early.test3138:                            ; preds = %bb.dl, %bb.dm, %bb.do
  switch i16 %.0.copyload.i3516.fr, label %bb.dq [
    i16 12288, label %bb.dp
    i16 8287, label %bb.dp
end_hunk_3
begin_hunk_4
  %i.xr = getelementptr inbounds nuw i8, ptr %.val3404, i64 %i.xq
  %.0.copyload.i3545 = load i16, ptr %i.xr, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3545) #9, !srcloc !24
  %i.xs = zext i16 %.0.copyload.i3545 to i32      ; 2 uses
  %8 = and i16 %.0.copyload.i3545, -4
  %i.xt = icmp eq i16 %8, 48
  %i.xu = and i32 %i.xs, 65532
  %i.xv = icmp eq i32 %i.xu, 52
  %or.cond3125 = or i1 %i.xv, %i.xt
  %i.xw = icmp eq i16 %.0.copyload.i3545, 56
  %or.cond3126 = or i1 %i.xw, %or.cond3125
  %i.xx = and i32 %i.xs, 255
end_hunk_4
begin_hunk_5
  %i.yb = getelementptr inbounds nuw i8, ptr %.val3403, i64 %i.xq
  %.0.copyload.i3547 = load i16, ptr %i.yb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3547) #9, !srcloc !24
  %i.yc = zext i16 %.0.copyload.i3547 to i32      ; 3 uses
  %9 = and i16 %.0.copyload.i3547, -4
  %i.yd = icmp eq i16 %9, 48
  %i.ye = and i32 %i.yc, 65532
  %i.yf = icmp eq i32 %i.ye, 52
  %or.cond3130 = or i1 %i.yf, %i.yd
  %i.yg = icmp eq i16 %.0.copyload.i3547, 56
  %or.cond3131 = or i1 %i.yg, %or.cond3130
  %i.yh = and i32 %i.yc, 255
end_hunk_5
begin_hunk_6
  %i.yl = getelementptr inbounds nuw i8, ptr %.val3402, i64 %i.yk
  %.0.copyload.i3548 = load i16, ptr %i.yl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3548) #9, !srcloc !24
  %i.ym = zext i16 %.0.copyload.i3548 to i32      ; 3 uses
  %10 = and i16 %.0.copyload.i3548, -4
  %i.yn = icmp eq i16 %10, 48
  %i.yo = and i32 %i.ym, 65532
  %i.yp = icmp eq i32 %i.yo, 52
  %or.cond3135 = or i1 %i.yp, %i.yn
  %i.yq = icmp eq i16 %.0.copyload.i3548, 56
  %or.cond3136 = or i1 %i.yq, %or.cond3135
  %i.yr = and i32 %i.ym, 255
end_hunk_6
begin_hunk_7
  %.val2339.us.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val2339.us.peel, i64 %i.ec
  %.0.copyload.i2371.us.peel = load i16, ptr %i.ed, align 1
  %.0.copyload.i2371.us.fr.peel = freeze i16 %.0.copyload.i2371.us.peel ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2371.us.fr.peel) #9, !srcloc !24
  %i.ee = icmp ult i16 %.0.copyload.i2371.us.fr.peel, 160
  br i1 %i.ee, label %bb.v, label %bb.u

end_hunk_7
begin_hunk_8
  ]

bb.v:                                             ; preds = %.split.us.preheader
  %3 = zext nneg i16 %.0.copyload.i2371.us.fr.peel to i32
  %i.ef = add nsw i32 %3, -9                      ; 2 uses
  %i.eg = icmp ugt i32 %i.ef, 23
  br i1 %i.eg, label %switch.early.test.us.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = shl nuw nsw i32 1, %i.ef
  %i.ei = and i32 %i.eh, 8388621
  %.not2120.us.peel = icmp eq i32 %i.ei, 0
  br i1 %.not2120.us.peel, label %switch.early.test.us.peel, label %bb.aa

bb.x:                                             ; preds = %bb.u
  %4 = add i16 %.0.copyload.i2371.us.fr.peel, -8192
  %i.ej = icmp ult i16 %4, 11
  br i1 %i.ej, label %bb.aa, label %switch.early.test.us.peel

switch.early.test.us.peel:                        ; preds = %bb.v, %bb.w, %bb.x
  switch i16 %.0.copyload.i2371.us.fr.peel, label %bb.y [
    i16 12288, label %bb.aa
    i16 8287, label %bb.aa
end_hunk_8
begin_hunk_9
  %.val2339.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val2339.us, i64 %i.en
  %.0.copyload.i2371.us = load i16, ptr %i.eo, align 1
  %.0.copyload.i2371.us.fr = freeze i16 %.0.copyload.i2371.us ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2371.us.fr) #9, !srcloc !24
  %i.ep = icmp ult i16 %.0.copyload.i2371.us.fr, 160
  br i1 %i.ep, label %bb.ac, label %bb.ab

end_hunk_9
begin_hunk_10
  ]

bb.ac:                                            ; preds = %.split.us
  %5 = zext nneg i16 %.0.copyload.i2371.us.fr to i32
  %i.eq = add nsw i32 %5, -9                      ; 2 uses
  %i.er = icmp ugt i32 %i.eq, 23
  br i1 %i.er, label %switch.early.test.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = shl nuw nsw i32 1, %i.eq
  %i.et = and i32 %i.es, 8388621
  %.not2120.us = icmp eq i32 %i.et, 0
  br i1 %.not2120.us, label %switch.early.test.us, label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %6 = add i16 %.0.copyload.i2371.us.fr, -8192
  %i.eu = icmp ult i16 %6, 11
  br i1 %i.eu, label %bb.ah, label %switch.early.test.us

switch.early.test.us:                             ; preds = %bb.ac, %bb.ad, %bb.ae
  switch i16 %.0.copyload.i2371.us.fr, label %bb.af [
    i16 12288, label %bb.ah
    i16 8287, label %bb.ah
end_hunk_10
begin_hunk_11
  %i.fl = zext i32 %.2 to i64
  %.val686 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.fl
  %.0.copyload.i717 = load i16, ptr %i.fm, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i717) #9, !srcloc !24
  %i.fn = zext i16 %.0.copyload.i717 to i32       ; 2 uses
  %i.fo = icmp ult i16 %.0.copyload.i717, 160
  br i1 %i.fo, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.preheader
  %i.fp = add nsw i32 %i.fn, -9                   ; 2 uses
  %i.fq = icmp ugt i32 %i.fp, 23
  br i1 %i.fq, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fr = shl nuw nsw i32 1, %i.fp
  %i.fs = and i32 %i.fr, 8388621
  %.not644 = icmp eq i32 %i.fs, 0
  br i1 %.not644, label %bb.ah, label %bb.ai

bb.ab:                                            ; preds = %.preheader
  switch i16 %.0.copyload.i717, label %bb.ac [
end_hunk_11
begin_hunk_12
    i16 -257, label %bb.ai
  ]

bb.ac:                                            ; preds = %bb.ab
  %5 = add i16 %.0.copyload.i717, -8192
  %i.ft = icmp ult i16 %5, 11
  br i1 %i.ft, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
end_hunk_12
begin_hunk_13
  %.not645 = icmp eq i32 %i.fy, 0
  br i1 %.not645, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.z, %bb.aa, %bb.ag, %bb.ae
  switch i16 %.0.copyload.i717, label %.loopexit [
    i16 10, label %bb.ai
    i16 13, label %bb.ai
end_hunk_13
begin_hunk_14
  %i.ff = zext i32 %.3 to i64
  %.val651 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val651, i64 %i.ff
  %.0.copyload.i680 = load i16, ptr %i.fg, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i680) #9, !srcloc !24
  %i.fh = zext i16 %.0.copyload.i680 to i32       ; 2 uses
  %i.fi = icmp ult i16 %.0.copyload.i680, 160
  br i1 %i.fi, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.preheader
  %i.fj = add nsw i32 %i.fh, -9                   ; 2 uses
  %i.fk = icmp ugt i32 %i.fj, 23
  br i1 %i.fk, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = shl nuw nsw i32 1, %i.fj
  %i.fm = and i32 %i.fl, 8388621
  %.not609 = icmp eq i32 %i.fm, 0
  br i1 %.not609, label %bb.ah, label %bb.ai

bb.ab:                                            ; preds = %.preheader
  switch i16 %.0.copyload.i680, label %bb.ac [
end_hunk_14
begin_hunk_15
    i16 -257, label %bb.ai
  ]

bb.ac:                                            ; preds = %bb.ab
  %5 = add i16 %.0.copyload.i680, -8192
  %i.fn = icmp ult i16 %5, 11
  br i1 %i.fn, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
end_hunk_15
begin_hunk_16
  %.not610 = icmp eq i32 %i.fs, 0
  br i1 %.not610, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.z, %bb.aa, %bb.ag, %bb.ae
  switch i16 %.0.copyload.i680, label %.loopexit [
    i16 10, label %bb.ai
    i16 13, label %bb.ai
end_hunk_16
begin_hunk_17
  %.val836 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val836, i64 %.pre-phi905
  store i64 %i.gp, ptr %i.gq, align 1
  %.not764 = icmp eq i64 %i.gp, -281474976710656
  br i1 %.not764, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
end_hunk_17
begin_hunk_18
  %.val1689.us.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val1689.us.peel, i64 %i.et
  %.0.copyload.i1719.us.peel = load i16, ptr %i.eu, align 1
  %.0.copyload.i1719.us.fr.peel = freeze i16 %.0.copyload.i1719.us.peel ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1719.us.fr.peel) #9, !srcloc !24
  %i.ev = icmp ult i16 %.0.copyload.i1719.us.fr.peel, 160
  br i1 %i.ev, label %bb.x, label %bb.w

end_hunk_18
begin_hunk_19
  ]

bb.x:                                             ; preds = %.split.us.preheader
  %5 = zext nneg i16 %.0.copyload.i1719.us.fr.peel to i32
  %i.ew = add nsw i32 %5, -9                      ; 2 uses
  %i.ex = icmp ugt i32 %i.ew, 23
  br i1 %i.ex, label %switch.early.test.us.peel, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ey = shl nuw nsw i32 1, %i.ew
  %i.ez = and i32 %i.ey, 8388621
  %.not1522.us.peel = icmp eq i32 %i.ez, 0
  br i1 %.not1522.us.peel, label %switch.early.test.us.peel, label %bb.ac

bb.z:                                             ; preds = %bb.w
  %6 = add i16 %.0.copyload.i1719.us.fr.peel, -8192
  %i.fa = icmp ult i16 %6, 11
  br i1 %i.fa, label %bb.ac, label %switch.early.test.us.peel

switch.early.test.us.peel:                        ; preds = %bb.x, %bb.y, %bb.z
  switch i16 %.0.copyload.i1719.us.fr.peel, label %bb.aa [
    i16 12288, label %bb.ac
    i16 8287, label %bb.ac
end_hunk_19
begin_hunk_20
  %.val1689.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.val1689.us, i64 %i.fe
  %.0.copyload.i1719.us = load i16, ptr %i.ff, align 1
  %.0.copyload.i1719.us.fr = freeze i16 %.0.copyload.i1719.us ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1719.us.fr) #9, !srcloc !24
  %i.fg = icmp ult i16 %.0.copyload.i1719.us.fr, 160
  br i1 %i.fg, label %bb.ae, label %bb.ad

end_hunk_20
begin_hunk_21
  ]

bb.ae:                                            ; preds = %.split.us
  %7 = zext nneg i16 %.0.copyload.i1719.us.fr to i32
  %i.fh = add nsw i32 %7, -9                      ; 2 uses
  %i.fi = icmp ugt i32 %i.fh, 23
  br i1 %i.fi, label %switch.early.test.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = shl nuw nsw i32 1, %i.fh
  %i.fk = and i32 %i.fj, 8388621
  %.not1522.us = icmp eq i32 %i.fk, 0
  br i1 %.not1522.us, label %switch.early.test.us, label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  %8 = add i16 %.0.copyload.i1719.us.fr, -8192
  %i.fl = icmp ult i16 %8, 11
  br i1 %i.fl, label %bb.aj, label %switch.early.test.us

switch.early.test.us:                             ; preds = %bb.ae, %bb.af, %bb.ag
  switch i16 %.0.copyload.i1719.us.fr, label %bb.ah [
    i16 12288, label %bb.aj
    i16 8287, label %bb.aj
end_hunk_21
begin_hunk_22
  %.val2204 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %.val2204, i64 %i.gz
  store i64 %i.gy, ptr %i.ha, align 1
  %.not1977 = icmp eq i64 %i.gy, -281474976710656
  br i1 %.not1977, label %bb.ab, label %bb.bh

bb.ab:                                            ; preds = %bb.aa
end_hunk_22
begin_hunk_23
  br i1 %i.cy, label %bb.m, label %.loopexit559

bb.m:                                             ; preds = %bb.l
  %i.cz = and i32 %i.ad, -4
  %i.da = add i32 %.0.copyload.i541, -32
  br label %bb.n

end_hunk_23
begin_hunk_24
  %.val505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val505, i64 %i.ec
  store i64 %.0.copyload.i545, ptr %i.ed, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ee = add nuw i32 %.0461, 4                   ; 2 uses
  %.not472 = icmp eq i32 %i.ee, %i.cz
  br i1 %.not472, label %.loopexit559.loopexit, label %bb.n

.loopexit559.loopexit:                            ; preds = %bb.n
  %5 = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit559

.loopexit559:                                     ; preds = %.loopexit559.loopexit, %bb.l
  %.1464 = phi i32 [ 1, %bb.l ], [ %5, %.loopexit559.loopexit ]
  %.not473 = icmp eq i32 %i.cv, 0
  br i1 %.not473, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit559, %.preheader
  %.1462.a = phi i32 [ %6, %.preheader ], [ %.1464, %.loopexit559 ] ; 2 uses
  %.1462 = phi i32 [ %i.em, %.preheader ], [ 0, %.loopexit559 ]
  %i.ef = shl i32 %.1462.a, 3                     ; 2 uses
  %i.eg = sub i32 %i.co, %i.ef
  %i.eh = sub i32 %i.cx, %i.ef
  %i.ei = zext i32 %i.eh to i64
end_hunk_24
begin_hunk_25
  %.val504 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val504, i64 %i.ek
  store i64 %.0.copyload.i546, ptr %i.el, align 1
  %6 = add i32 %.1462.a, 1
  %i.em = add nuw nsw i32 %.1462, 1               ; 2 uses
  %.not474 = icmp eq i32 %i.em, %i.cv
  br i1 %.not474, label %.loopexit, label %.preheader

end_hunk_25
