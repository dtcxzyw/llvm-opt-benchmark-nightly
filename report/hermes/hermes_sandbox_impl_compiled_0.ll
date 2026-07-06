inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_dlmalloc:bb.a
  %i.qg = getelementptr inbounds nuw i8, ptr %.val3508.25, i64 272284
  store i32 272276, ptr %i.qg, align 1
  %.val3507.25 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qh = getelementptr inbounds nuw i8, ptr %.val3507.25, i64 272288
  store i32 272276, ptr %i.qh, align 1
  %.val3508.26 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qi = getelementptr inbounds nuw i8, ptr %.val3508.26, i64 272292
  store i32 272284, ptr %i.qi, align 1
  %.val3507.26 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qj = getelementptr inbounds nuw i8, ptr %.val3507.26, i64 272296
  store i32 272284, ptr %i.qj, align 1
  %.val3508.27 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qk = getelementptr inbounds nuw i8, ptr %.val3508.27, i64 272300
  store i32 272292, ptr %i.qk, align 1
  %.val3507.27 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ql = getelementptr inbounds nuw i8, ptr %.val3507.27, i64 272304
  store i32 272292, ptr %i.ql, align 1
  %.val3508.28 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qm = getelementptr inbounds nuw i8, ptr %.val3508.28, i64 272308
  store i32 272300, ptr %i.qm, align 1
  %.val3507.28 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qn = getelementptr inbounds nuw i8, ptr %.val3507.28, i64 272312
  store i32 272300, ptr %i.qn, align 1
  %.val3508.29 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qo = getelementptr inbounds nuw i8, ptr %.val3508.29, i64 272316
  store i32 272308, ptr %i.qo, align 1
  %.val3507.29 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qp = getelementptr inbounds nuw i8, ptr %.val3507.29, i64 272320
  store i32 272308, ptr %i.qp, align 1
  %.val3508.30 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qq = getelementptr inbounds nuw i8, ptr %.val3508.30, i64 272324
  store i32 272316, ptr %i.qq, align 1
  %.val3507.30 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qr = getelementptr inbounds nuw i8, ptr %.val3507.30, i64 272328
  store i32 272316, ptr %i.qr, align 1
  %.val3508.31 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qs = getelementptr inbounds nuw i8, ptr %.val3508.31, i64 272332
  store i32 272324, ptr %i.qs, align 1
  %.val3507.31 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.qt = getelementptr inbounds nuw i8, ptr %.val3507.31, i64 272336
  store i32 272324, ptr %i.qt, align 1
  %i.qu = add i32 %.33006, -40                    ; 2 uses
  %i.qv = sub i32 0, %.33034
  %i.qw = and i32 %i.qv, 7
  %i.qx = and i32 %.33034, 7
  %.not3185 = icmp eq i32 %i.qx, 0
  %i.qy = select i1 %.not3185, i32 0, i32 %i.qw   ; 2 uses
  %i.qz = sub i32 %i.qu, %i.qy                    ; 2 uses
  %.val3506 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ra = getelementptr inbounds nuw i8, ptr %.val3506, i64 272048
  store i32 %i.qz, ptr %i.ra, align 1
  %i.rb = add i32 %i.qy, %.33034                  ; 2 uses
  %.val3505 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.rc = getelementptr inbounds nuw i8, ptr %.val3505, i64 272060
  store i32 %i.rb, ptr %i.rc, align 1
  %i.rd = or i32 %i.qz, 1
  %i.re = zext i32 %i.rb to i64
  %.val3504 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.rf = getelementptr inbounds nuw i8, ptr %.val3504, i64 %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  store i32 %i.rd, ptr %i.rg, align 1
  %i.rh = add i32 %i.qu, %.33034
  %i.ri = zext i32 %i.rh to i64
  %.val3503 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.rj = getelementptr inbounds nuw i8, ptr %.val3503, i64 %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  store i32 40, ptr %i.rk, align 1
  %.val3295 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.rl = getelementptr inbounds nuw i8, ptr %.val3295, i64 272524
  %.0.copyload.i3636 = load i32, ptr %i.rl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3636) #16, !srcloc !22
  %.val3502 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.rm = getelementptr inbounds nuw i8, ptr %.val3502, i64 272064
  store i32 %.0.copyload.i3636, ptr %i.rm, align 1
  br label %bb.ec

bb.cm:                                            ; preds = %.preheader
  %.not3187 = icmp ule i32 %.33034, %.0.copyload.i3630
  %i.rn = icmp ugt i32 %.0.copyload.i3631, %.0.copyload.i3630
  %or.cond3226 = select i1 %.not3187, i1 true, i1 %i.rn
  br i1 %or.cond3226, label %.loopexit3716, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.val3294 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ro = getelementptr inbounds nuw i8, ptr %.val3294, i64 %i.nr
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %.0.copyload.i3637 = load i32, ptr %i.rp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3637) #16, !srcloc !22
  %i.rq = and i32 %.0.copyload.i3637, 8
  %.not3188 = icmp eq i32 %i.rq, 0
  br i1 %.not3188, label %bb.co, label %.loopexit3716

bb.co:                                            ; preds = %bb.cn
  %i.rr = add i32 %.0.copyload.i3632, %.33006
  %.val3501 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.rs = getelementptr inbounds nuw i8, ptr %.val3501, i64 %i.nt
  store i32 %i.rr, ptr %i.rs, align 1
  %i.rt = sub i32 0, %.0.copyload.i3630
  %i.ru = and i32 %i.rt, 7
  %i.rv = and i32 %.0.copyload.i3630, 7
  %.not3189 = icmp eq i32 %i.rv, 0
  %i.rw = select i1 %.not3189, i32 0, i32 %i.ru   ; 2 uses
  %i.rx = add i32 %i.rw, %.0.copyload.i3630       ; 2 uses
  %.val3500 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ry = getelementptr inbounds nuw i8, ptr %.val3500, i64 272060
  store i32 %i.rx, ptr %i.ry, align 1
  %.val3293 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.rz = getelementptr inbounds nuw i8, ptr %.val3293, i64 272048
  %.0.copyload.i3638 = load i32, ptr %i.rz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3638) #16, !srcloc !22
  %i.sa = add i32 %.0.copyload.i3638, %.33006     ; 2 uses
  %i.sb = sub i32 %i.sa, %i.rw                    ; 2 uses
  %.val3499 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.sc = getelementptr inbounds nuw i8, ptr %.val3499, i64 272048
  store i32 %i.sb, ptr %i.sc, align 1
  %i.sd = or i32 %i.sb, 1
  %i.se = zext i32 %i.rx to i64
  %.val3498 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.sf = getelementptr inbounds nuw i8, ptr %.val3498, i64 %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  store i32 %i.sd, ptr %i.sg, align 1
  %i.sh = add i32 %i.sa, %.0.copyload.i3630
  %i.si = zext i32 %i.sh to i64
  %.val3497 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.sj = getelementptr inbounds nuw i8, ptr %.val3497, i64 %i.si
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  store i32 40, ptr %i.sk, align 1
  %.val3292 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.sl = getelementptr inbounds nuw i8, ptr %.val3292, i64 272524
  %.0.copyload.i3639 = load i32, ptr %i.sl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3639) #16, !srcloc !22
  %.val3496 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.sm = getelementptr inbounds nuw i8, ptr %.val3496, i64 272064
  store i32 %.0.copyload.i3639, ptr %i.sm, align 1
  br label %bb.ec

.loopexit3716:                                    ; preds = %bb.ci, %bb.cn, %bb.cm
  %.val3291 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.sn = getelementptr inbounds nuw i8, ptr %.val3291, i64 272052
  %.0.copyload.i3640 = load i32, ptr %i.sn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3640) #16, !srcloc !22
  %i.so = icmp ugt i32 %.0.copyload.i3640, %.33034
  br i1 %i.so, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.loopexit3716
  %.val3495 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.sp = getelementptr inbounds nuw i8, ptr %.val3495, i64 272052
  store i32 %.33034, ptr %i.sp, align 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.loopexit3716
  %i.sq = add i32 %.33006, %.33034                ; 4 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cs, %bb.cq
  %.14 = phi i32 [ 272484, %bb.cq ], [ %.0.copyload.i3642, %bb.cs ]
  %i.sr = zext i32 %.14 to i64                    ; 4 uses
  %.val3290 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ss = getelementptr inbounds nuw i8, ptr %.val3290, i64 %i.sr
  %.0.copyload.i3641 = load i32, ptr %i.ss, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3641) #16, !srcloc !22
  %.not3190 = icmp eq i32 %i.sq, %.0.copyload.i3641
  %.val3563 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.st = getelementptr inbounds nuw i8, ptr %.val3563, i64 %i.sr ; 2 uses
  br i1 %.not3190, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %.0.copyload.i3642 = load i32, ptr %i.su, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3642) #16, !srcloc !22
  %.not3211 = icmp eq i32 %.0.copyload.i3642, 0
  br i1 %.not3211, label %.loopexit.preheader, label %bb.cr

bb.ct:                                            ; preds = %bb.cr
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 12
  %.0.copyload.i3643 = load i8, ptr %i.sv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3643) #16, !srcloc !33
  %i.sw = and i8 %.0.copyload.i3643, 8
  %.not3191 = icmp eq i8 %i.sw, 0
  br i1 %.not3191, label %bb.cw, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %bb.cs, %bb.ct
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %bb.cv
  %.15 = phi i32 [ %.0.copyload.i3646, %bb.cv ], [ 272484, %.loopexit.preheader ]
  %i.sx = zext i32 %.15 to i64                    ; 3 uses
  %.val3288 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.sy = getelementptr inbounds nuw i8, ptr %.val3288, i64 %i.sx
  %.0.copyload.i3644 = load i32, ptr %i.sy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3644) #16, !srcloc !22
  %.not3212 = icmp ult i32 %.0.copyload.i3630, %.0.copyload.i3644
  br i1 %.not3212, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.loopexit
  %.val3287 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.sz = getelementptr inbounds nuw i8, ptr %.val3287, i64 %i.sx
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %.0.copyload.i3645 = load i32, ptr %i.ta, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3645) #16, !srcloc !22
  %i.tb = add i32 %.0.copyload.i3645, %.0.copyload.i3644 ; 3 uses
  %i.tc = icmp ugt i32 %i.tb, %.0.copyload.i3630
  br i1 %i.tc, label %bb.dm, label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.loopexit
  %.val3286 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.td = getelementptr inbounds nuw i8, ptr %.val3286, i64 %i.sx
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %.0.copyload.i3646 = load i32, ptr %i.te, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3646) #16, !srcloc !22
  br label %.loopexit

bb.cw:                                            ; preds = %bb.ct
  %.val3494 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.tf = getelementptr inbounds nuw i8, ptr %.val3494, i64 %i.sr
  store i32 %.33034, ptr %i.tf, align 1
  %i.tg = add nuw nsw i64 %i.sr, 4                ; 2 uses
  %.val3285 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.th = getelementptr inbounds nuw i8, ptr %.val3285, i64 %i.tg
  %.0.copyload.i3647 = load i32, ptr %i.th, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3647) #16, !srcloc !22
  %i.ti = add i32 %.0.copyload.i3647, %.33006
  %.val3493 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.tj = getelementptr inbounds nuw i8, ptr %.val3493, i64 %i.tg
  store i32 %i.ti, ptr %i.tj, align 1
  %i.tk = sub i32 0, %.33034
  %i.tl = and i32 %i.tk, 7
  %i.tm = and i32 %.33034, 7
  %.not3192 = icmp eq i32 %i.tm, 0
  %i.tn = select i1 %.not3192, i32 0, i32 %i.tl
  %i.to = add i32 %i.tn, %.33034                  ; 3 uses
  %i.tp = or i32 %.03008, 3
  %i.tq = zext i32 %i.to to i64
  %.val3492 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.tr = getelementptr inbounds nuw i8, ptr %.val3492, i64 %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  store i32 %i.tp, ptr %i.ts, align 1
  %i.tt = sub i32 0, %i.sq
  %i.tu = and i32 %i.tt, 7
  %i.tv = and i32 %i.sq, 7
  %.not3193 = icmp eq i32 %i.tv, 0
  %i.tw = select i1 %.not3193, i32 0, i32 %i.tu
  %i.tx = add i32 %i.tw, %i.sq                    ; 11 uses
  %i.ty = add i32 %i.to, %.03008                  ; 14 uses
  %i.tz = sub i32 %i.tx, %i.ty                    ; 4 uses
  %i.ua = icmp eq i32 %.0.copyload.i3630, %i.tx
  %.val3491 = load ptr, ptr %i.iy, align 8, !tbaa !21 ; 2 uses
  br i1 %i.ua, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ub = getelementptr inbounds nuw i8, ptr %.val3491, i64 272060
  store i32 %i.ty, ptr %i.ub, align 1
  %.val3284 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.uc = getelementptr inbounds nuw i8, ptr %.val3284, i64 272048
  %.0.copyload.i3648 = load i32, ptr %i.uc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3648) #16, !srcloc !22
  %i.ud = add i32 %.0.copyload.i3648, %i.tz       ; 2 uses
  %.val3490 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ue = getelementptr inbounds nuw i8, ptr %.val3490, i64 272048
  store i32 %i.ud, ptr %i.ue, align 1
  %i.uf = or i32 %i.ud, 1
  %i.ug = zext i32 %i.ty to i64
  %.val3489 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.uh = getelementptr inbounds nuw i8, ptr %.val3489, i64 %i.ug
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  store i32 %i.uf, ptr %i.ui, align 1
  br label %bb.fc

bb.cy:                                            ; preds = %bb.cw
  %i.uj = getelementptr inbounds nuw i8, ptr %.val3491, i64 272056
  %.0.copyload.i3649 = load i32, ptr %i.uj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3649) #16, !srcloc !22
  %i.uk = icmp eq i32 %.0.copyload.i3649, %i.tx
  br i1 %i.uk, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %.val3488 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ul = getelementptr inbounds nuw i8, ptr %.val3488, i64 272056
  store i32 %i.ty, ptr %i.ul, align 1
  %.val3282 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.um = getelementptr inbounds nuw i8, ptr %.val3282, i64 272044
  %.0.copyload.i3650 = load i32, ptr %i.um, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3650) #16, !srcloc !22
  %i.un = add i32 %.0.copyload.i3650, %i.tz       ; 3 uses
  %.val3487 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.uo = getelementptr inbounds nuw i8, ptr %.val3487, i64 272044
  store i32 %i.un, ptr %i.uo, align 1
  %i.up = or i32 %i.un, 1
  %i.uq = zext i32 %i.ty to i64
  %.val3486 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ur = getelementptr inbounds nuw i8, ptr %.val3486, i64 %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  store i32 %i.up, ptr %i.us, align 1
  %i.ut = add i32 %.0.copyload.i3650, %i.tx
  %i.uu = zext i32 %i.ut to i64
  %.val3485 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.uv = getelementptr inbounds nuw i8, ptr %.val3485, i64 %i.uu
  store i32 %i.un, ptr %i.uv, align 1
  br label %bb.fc

bb.da:                                            ; preds = %bb.cy
  %i.uw = zext i32 %i.tx to i64                   ; 10 uses
  %.val3281 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ux = getelementptr inbounds nuw i8, ptr %.val3281, i64 %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %.0.copyload.i3651 = load i32, ptr %i.uy, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3651) #16, !srcloc !22
  %i.uz = and i32 %.0.copyload.i3651, 3
  %.not3194 = icmp eq i32 %i.uz, 1
  br i1 %.not3194, label %bb.db, label %bb.ep

bb.db:                                            ; preds = %bb.da
  %i.va = and i32 %.0.copyload.i3651, -8          ; 2 uses
  %i.vb = icmp ult i32 %.0.copyload.i3651, 256
  %.val3280 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.vc = getelementptr inbounds nuw i8, ptr %.val3280, i64 %i.uw ; 2 uses
  br i1 %i.vb, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 12
  %.0.copyload.i3652 = load i32, ptr %i.vd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3652) #16, !srcloc !22
  %.val3279 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ve = getelementptr inbounds nuw i8, ptr %.val3279, i64 %i.uw
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %.0.copyload.i3653 = load i32, ptr %i.vf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3653) #16, !srcloc !22
  %i.vg = icmp eq i32 %.0.copyload.i3652, %.0.copyload.i3653
  br i1 %i.vg, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %.val3278 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.vh = getelementptr inbounds nuw i8, ptr %.val3278, i64 272036
  %.0.copyload.i3654 = load i32, ptr %i.vh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3654) #16, !srcloc !22
  %i.vi = lshr i32 %.0.copyload.i3651, 3
  %i.vj = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %i.vi)
  %i.vk = and i32 %.0.copyload.i3654, %i.vj
  %.val3484 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.vl = getelementptr inbounds nuw i8, ptr %.val3484, i64 272036
  store i32 %i.vk, ptr %i.vl, align 1
  br label %bb.eo

bb.de:                                            ; preds = %bb.dc
  %i.vm = zext i32 %.0.copyload.i3653 to i64
  %.val3483 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.vn = getelementptr inbounds nuw i8, ptr %.val3483, i64 %i.vm
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 12
  store i32 %.0.copyload.i3652, ptr %i.vo, align 1
  %i.vp = zext i32 %.0.copyload.i3652 to i64
  %.val3482 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.vq = getelementptr inbounds nuw i8, ptr %.val3482, i64 %i.vp
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  store i32 %.0.copyload.i3653, ptr %i.vr, align 1
  br label %bb.eo

bb.df:                                            ; preds = %bb.db
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %.0.copyload.i3655 = load i32, ptr %i.vs, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3655) #16, !srcloc !22
  %.val3276 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.vt = getelementptr inbounds nuw i8, ptr %.val3276, i64 %i.uw
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 12
  %.0.copyload.i3656 = load i32, ptr %i.vu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3656) #16, !srcloc !22
  %.not3195 = icmp eq i32 %i.tx, %.0.copyload.i3656
  br i1 %.not3195, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.val3275 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.vv = getelementptr inbounds nuw i8, ptr %.val3275, i64 %i.uw
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %.0.copyload.i3657 = load i32, ptr %i.vw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3657) #16, !srcloc !22
  %i.vx = zext i32 %.0.copyload.i3657 to i64
  %.val3481 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.vy = getelementptr inbounds nuw i8, ptr %.val3481, i64 %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 12
  store i32 %.0.copyload.i3656, ptr %i.vz, align 1
  %i.wa = zext i32 %.0.copyload.i3656 to i64
  %.val3480 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.wb = getelementptr inbounds nuw i8, ptr %.val3480, i64 %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i32 %.0.copyload.i3657, ptr %i.wc, align 1
  br label %bb.ef

bb.dh:                                            ; preds = %bb.df
  %i.wd = add i32 %i.tx, 20                       ; 2 uses
  %i.we = zext i32 %i.wd to i64
  %.val3274 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.wf = getelementptr inbounds nuw i8, ptr %.val3274, i64 %i.we
  %.0.copyload.i3658 = load i32, ptr %i.wf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3658) #16, !srcloc !22
  %.not3196 = icmp eq i32 %.0.copyload.i3658, 0
  br i1 %.not3196, label %bb.di, label %.backedge.preheader

bb.di:                                            ; preds = %bb.dh
  %.val3273 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.wg = getelementptr inbounds nuw i8, ptr %.val3273, i64 %i.uw
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  %.0.copyload.i3659 = load i32, ptr %i.wh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3659) #16, !srcloc !22
  %.not3197 = icmp eq i32 %.0.copyload.i3659, 0
  br i1 %.not3197, label %bb.ef, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wi = add i32 %i.tx, 16
  br label %.backedge.preheader

.backedge.preheader:                              ; preds = %bb.dj, %bb.dh
  %.83046.ph = phi i32 [ %i.wi, %bb.dj ], [ %i.wd, %bb.dh ]
  %.83027.ph = phi i32 [ %.0.copyload.i3659, %bb.dj ], [ %.0.copyload.i3658, %bb.dh ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.backedge.preheader
  %.83046 = phi i32 [ %.83046.ph, %.backedge.preheader ], [ %.83046.be, %.backedge.backedge ]
  %.83027 = phi i32 [ %.83027.ph, %.backedge.preheader ], [ %.83027.be, %.backedge.backedge ] ; 4 uses
  %i.wj = add i32 %.83027, 20                     ; 2 uses
  %i.wk = zext i32 %i.wj to i64
  %.val3272 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.wl = getelementptr inbounds nuw i8, ptr %.val3272, i64 %i.wk
  %.0.copyload.i3660 = load i32, ptr %i.wl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3660) #16, !srcloc !22
  %.not3198 = icmp eq i32 %.0.copyload.i3660, 0
  br i1 %.not3198, label %bb.dk, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.backedge, %bb.dk
  %.83046.be = phi i32 [ %i.wj, %.backedge ], [ %i.wm, %bb.dk ]
  %.83027.be = phi i32 [ %.0.copyload.i3660, %.backedge ], [ %.0.copyload.i3661, %bb.dk ]
  br label %.backedge

bb.dk:                                            ; preds = %.backedge
  %i.wm = add i32 %.83027, 16
  %i.wn = zext i32 %.83027 to i64
  %.val3271 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.wo = getelementptr inbounds nuw i8, ptr %.val3271, i64 %i.wn
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %.0.copyload.i3661 = load i32, ptr %i.wp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3661) #16, !srcloc !22
  %.not3199 = icmp eq i32 %.0.copyload.i3661, 0
  br i1 %.not3199, label %bb.dl, label %.backedge.backedge

bb.dl:                                            ; preds = %bb.dk
  %i.wq = zext i32 %.83046 to i64
  %.val3479 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.wr = getelementptr inbounds nuw i8, ptr %.val3479, i64 %i.wq
  store i32 0, ptr %i.wr, align 1
  br label %bb.ef

bb.dm:                                            ; preds = %bb.cu
  %i.ws = add i32 %.33006, -40                    ; 2 uses
  %i.wt = sub i32 0, %.33034
  %i.wu = and i32 %i.wt, 7
  %i.wv = and i32 %.33034, 7
  %.not3213 = icmp eq i32 %i.wv, 0
  %i.ww = select i1 %.not3213, i32 0, i32 %i.wu   ; 2 uses
  %i.wx = sub i32 %i.ws, %i.ww                    ; 2 uses
  %.val3478 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.wy = getelementptr inbounds nuw i8, ptr %.val3478, i64 272048
  store i32 %i.wx, ptr %i.wy, align 1
  %i.wz = add i32 %i.ww, %.33034                  ; 2 uses
  %.val3477 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xa = getelementptr inbounds nuw i8, ptr %.val3477, i64 272060
  store i32 %i.wz, ptr %i.xa, align 1
  %i.xb = or i32 %i.wx, 1
  %i.xc = zext i32 %i.wz to i64
  %.val3476 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xd = getelementptr inbounds nuw i8, ptr %.val3476, i64 %i.xc
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  store i32 %i.xb, ptr %i.xe, align 1
  %i.xf = add i32 %i.ws, %.33034
  %i.xg = zext i32 %i.xf to i64
  %.val3475 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xh = getelementptr inbounds nuw i8, ptr %.val3475, i64 %i.xg
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  store i32 40, ptr %i.xi, align 1
  %.val3270 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xj = getelementptr inbounds nuw i8, ptr %.val3270, i64 272524
  %.0.copyload.i3662 = load i32, ptr %i.xj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3662) #16, !srcloc !22
  %.val3474 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xk = getelementptr inbounds nuw i8, ptr %.val3474, i64 272064
  store i32 %.0.copyload.i3662, ptr %i.xk, align 1
  %2 = or i32 %i.tb, 7
  %i.xl = add i32 %2, -47                         ; 2 uses
  %i.xm = add i32 %.0.copyload.i3630, 16
  %i.xn = icmp ult i32 %i.xl, %i.xm
  %i.xo = select i1 %i.xn, i32 %.0.copyload.i3630, i32 %i.xl ; 5 uses
  %i.xp = zext i32 %i.xo to i64                   ; 4 uses
  %i.xq = add nuw nsw i64 %i.xp, 4                ; 3 uses
  %.val3473 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xr = getelementptr inbounds nuw i8, ptr %.val3473, i64 %i.xq
  store i32 27, ptr %i.xr, align 1
  %.val3566 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xs = getelementptr inbounds nuw i8, ptr %.val3566, i64 272492
  %.0.copyload.i3663 = load i64, ptr %i.xs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3663) #16, !srcloc !45
  %.val3560 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xt = getelementptr inbounds nuw i8, ptr %.val3560, i64 %i.xp
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  store i64 %.0.copyload.i3663, ptr %i.xu, align 1
  %.val3565 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xv = getelementptr inbounds nuw i8, ptr %.val3565, i64 272484
  %.0.copyload.i3664 = load i64, ptr %i.xv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3664) #16, !srcloc !45
  %.val3559 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xw = getelementptr inbounds nuw i8, ptr %.val3559, i64 %i.xp
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  store i64 %.0.copyload.i3664, ptr %i.xx, align 1
  %i.xy = add i32 %i.xo, 8
  %.val3472 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.xz = getelementptr inbounds nuw i8, ptr %.val3472, i64 272492
  store i32 %i.xy, ptr %i.xz, align 1
  %.val3471 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ya = getelementptr inbounds nuw i8, ptr %.val3471, i64 272488
  store i32 %.33006, ptr %i.ya, align 1
  %.val3470 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.yb = getelementptr inbounds nuw i8, ptr %.val3470, i64 272484
  store i32 %.33034, ptr %i.yb, align 1
  %.val3469 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.yc = getelementptr inbounds nuw i8, ptr %.val3469, i64 272496
  store i32 0, ptr %i.yc, align 1
  %i.yd = add i32 %i.xo, 24
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %bb.dm
  %.16 = phi i32 [ %i.yd, %bb.dm ], [ %i.yi, %bb.dn ] ; 3 uses
  %i.ye = zext i32 %.16 to i64
  %.val3468 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.yf = getelementptr inbounds nuw i8, ptr %.val3468, i64 %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  store i32 7, ptr %i.yg, align 1
  %i.yh = add i32 %.16, 8
  %i.yi = add i32 %.16, 4
  %i.yj = icmp ult i32 %i.yh, %i.tb
  br i1 %i.yj, label %bb.dn, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.yk = icmp eq i32 %i.xo, %.0.copyload.i3630
  br i1 %i.yk, label %bb.ec, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.val3269 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.yl = getelementptr inbounds nuw i8, ptr %.val3269, i64 %i.xq
  %.0.copyload.i3665 = load i32, ptr %i.yl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3665) #16, !srcloc !22
  %i.ym = and i32 %.0.copyload.i3665, -2
  %.val3467 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.yn = getelementptr inbounds nuw i8, ptr %.val3467, i64 %i.xq
  store i32 %i.ym, ptr %i.yn, align 1
  %i.yo = sub i32 %i.xo, %.0.copyload.i3630       ; 10 uses
  %i.yp = or i32 %i.yo, 1
  %i.yq = zext i32 %.0.copyload.i3630 to i64      ; 11 uses
  %.val3466 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.yr = getelementptr inbounds nuw i8, ptr %.val3466, i64 %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  store i32 %i.yp, ptr %i.ys, align 1
  %.val3465 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.yt = getelementptr inbounds nuw i8, ptr %.val3465, i64 %i.xp
  store i32 %i.yo, ptr %i.yt, align 1
  %i.yu = icmp ult i32 %i.yo, 256
  br i1 %i.yu, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %i.yv = and i32 %i.yo, 248                      ; 3 uses
  %i.yw = add nuw nsw i32 %i.yv, 272076           ; 2 uses
  %.val3268 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.yx = getelementptr inbounds nuw i8, ptr %.val3268, i64 272036
  %.0.copyload.i3666 = load i32, ptr %i.yx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3666) #16, !srcloc !22
  %i.yy = lshr i32 %i.yo, 3
  %i.yz = shl nuw i32 1, %i.yy                    ; 2 uses
  %i.za = and i32 %.0.copyload.i3666, %i.yz
  %.not3218 = icmp eq i32 %i.za, 0
  br i1 %.not3218, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.zb = or i32 %.0.copyload.i3666, %i.yz
  %.val3464 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.zc = getelementptr inbounds nuw i8, ptr %.val3464, i64 272036
  store i32 %i.zb, ptr %i.zc, align 1
  %.pre3784 = zext nneg i32 %i.yv to i64
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %.val3267 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.zd = zext nneg i32 %i.yv to i64              ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.val3267, i64 %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 272084
  %.0.copyload.i3667 = load i32, ptr %i.zf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3667) #16, !srcloc !22
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pre-phi3785 = phi i64 [ %i.zd, %bb.ds ], [ %.pre3784, %bb.dr ]
  %.32998 = phi i32 [ %.0.copyload.i3667, %bb.ds ], [ %i.yw, %bb.dr ] ; 2 uses
  %.val3463 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.zg = getelementptr inbounds nuw i8, ptr %.val3463, i64 %.pre-phi3785
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 272084
  store i32 %.0.copyload.i3630, ptr %i.zh, align 1
  %i.zi = zext i32 %.32998 to i64
  %.val3462 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.zj = getelementptr inbounds nuw i8, ptr %.val3462, i64 %i.zi
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 12
  store i32 %.0.copyload.i3630, ptr %i.zk, align 1
  %.val3461 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.zl = getelementptr inbounds nuw i8, ptr %.val3461, i64 %i.yq
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 12
  store i32 %i.yw, ptr %i.zm, align 1
  %.val3460 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.zn = getelementptr inbounds nuw i8, ptr %.val3460, i64 %i.yq
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  store i32 %.32998, ptr %i.zo, align 1
  br label %bb.ec

bb.du:                                            ; preds = %bb.dp
  %i.zp = icmp ult i32 %i.yo, 16777216
  br i1 %i.zp, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.zq = lshr i32 %i.yo, 8
  %i.zr = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.zq, i1 true) ; 2 uses
  %i.zs = sub nuw nsw i32 38, %i.zr
  %i.zt = lshr i32 %i.yo, %i.zs
  %i.zu = and i32 %i.zt, 1
  %i.zv = shl nuw nsw i32 %i.zr, 1
  %reass.sub3753 = sub nsw i32 %i.zu, %i.zv
  %i.zw = add nsw i32 %reass.sub3753, 62
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.17 = phi i32 [ %i.zw, %bb.dv ], [ 31, %bb.du ] ; 5 uses
  %.val3459 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.zx = getelementptr inbounds nuw i8, ptr %.val3459, i64 %i.yq
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 28
  store i32 %.17, ptr %i.zy, align 1
  %.val3558 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.zz = getelementptr inbounds nuw i8, ptr %.val3558, i64 %i.yq
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  store i64 0, ptr %i.aaa, align 1
  %i.aab = shl nuw nsw i32 %.17, 2
  %i.aac = add nuw nsw i32 %i.aab, 272340         ; 3 uses
  %.val3266 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.aad = getelementptr inbounds nuw i8, ptr %.val3266, i64 272040
  %.0.copyload.i3668 = load i32, ptr %i.aad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3668) #16, !srcloc !22
  %i.aae = shl nuw i32 1, %.17                    ; 2 uses
  %i.aaf = and i32 %.0.copyload.i3668, %i.aae
  %.not3215 = icmp eq i32 %i.aaf, 0
  br i1 %.not3215, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aag = or i32 %.0.copyload.i3668, %i.aae
  %.val3458 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.aah = getelementptr inbounds nuw i8, ptr %.val3458, i64 272040
  store i32 %i.aag, ptr %i.aah, align 1
  %i.aai = zext nneg i32 %i.aac to i64
  br label %.loopexit3848

bb.dy:                                            ; preds = %bb.dw
  %i.aaj = lshr i32 %.17, 1
  %i.aak = sub nuw nsw i32 25, %i.aaj
  %.not3216 = icmp eq i32 %.17, 31
  %i.aal = select i1 %.not3216, i32 0, i32 %i.aak
  %i.aam = shl i32 %i.yo, %i.aal
  %i.aan = zext nneg i32 %i.aac to i64
  %.val3265 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.aao = getelementptr inbounds nuw i8, ptr %.val3265, i64 %i.aan
  %.0.copyload.i3669 = load i32, ptr %i.aao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3669) #16, !srcloc !22
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ea, %bb.dy
  %.73017 = phi i32 [ %.0.copyload.i3669, %bb.dy ], [ %.0.copyload.i3671, %bb.ea ] ; 4 uses
  %.18 = phi i32 [ %i.aam, %bb.dy ], [ %i.aav, %bb.ea ] ; 2 uses
  %i.aap = zext i32 %.73017 to i64                ; 2 uses
  %.val3264 = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val3264, i64 %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  %.0.copyload.i3670 = load i32, ptr %i.aar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3670) #16, !srcloc !22
  %i.aas = and i32 %.0.copyload.i3670, -8
  %i.aat = icmp eq i32 %i.aas, %i.yo
  br i1 %i.aat, label %bb.eb, label %bb.ea

end_hunk_0
