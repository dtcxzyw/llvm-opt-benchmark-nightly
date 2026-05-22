inline.NumInlined: 26868
inline.NumDeleted: 24
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.qp = select i1 %i.qo, i32 %.043608, i32 %.043373 ; 3 uses
  %i.qq = add i32 %.043608, 4                     ; 2 uses
  %.not45436 = icmp eq i32 %i.qq, %i.qk
  br i1 %.not45436, label %bb.an, label %.preheader54797

bb.an:                                            ; preds = %bb.am
  %.not45437 = icmp eq i32 %i.qp, 0
  br i1 %.not45437, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.qr = zext i32 %i.qp to i64
  %.val50443 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qs = getelementptr inbounds nuw i8, ptr %.val50443, i64 %i.qr
  store i32 %.043791, ptr %i.qs, align 1
  %i.qt = add nuw nsw i64 %i.qb, 28               ; 2 uses
  %.val49220 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qu = getelementptr inbounds nuw i8, ptr %.val49220, i64 %i.qt
  %.0.copyload.i51293 = load i32, ptr %i.qu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51293) #7, !srcloc !19
  %i.qv = add i32 %.0.copyload.i51293, -1
  %.val50442 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qw = getelementptr inbounds nuw i8, ptr %.val50442, i64 %i.qt
  store i32 %i.qv, ptr %i.qw, align 1
  br label %.loopexit54798

bb.ap:                                            ; preds = %bb.an, %bb.al
  %.val49219 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qx = getelementptr inbounds nuw i8, ptr %.val49219, i64 %i.qb
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 20
  %.0.copyload.i51294 = load i32, ptr %i.qy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51294) #7, !srcloc !19
  %.not45438 = icmp ult i32 %.0.copyload.i51291, %.0.copyload.i51294
  br i1 %.not45438, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.qz = add nuw i32 %.0.copyload.i51291, 1
  %.val50441 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ra = getelementptr inbounds nuw i8, ptr %.val50441, i64 %i.qh
  store i32 %i.qz, ptr %i.ra, align 1
  %i.rb = zext i32 %i.qk to i64
  %.val50440 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rc = getelementptr inbounds nuw i8, ptr %.val50440, i64 %i.rb
  store i32 %.043791, ptr %i.rc, align 1
  br label %.loopexit54798

bb.ar:                                            ; preds = %bb.ap, %bb.ak
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3Ainsert_imp_big0x28void0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.pe, i32 noundef %i.qe, i32 noundef %.043791) #7
  br label %.loopexit54798

.loopexit54798:                                   ; preds = %.preheader54797, %bb.ar, %bb.aq, %bb.ao
  %i.rd = add i32 %.043315, 4                     ; 2 uses
  %.not45439 = icmp eq i32 %i.rd, %i.pm
  br i1 %.not45439, label %.loopexit54799, label %bb.ak

.loopexit54799:                                   ; preds = %.loopexit54798, %bb.ai
  %.val49218 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.re = getelementptr inbounds nuw i8, ptr %.val49218, i64 %i.pg
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %.0.copyload.i51295 = load i32, ptr %i.rf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51295) #7, !srcloc !19
  %.not45440 = icmp eq i32 %.0.copyload.i51295, %i.oz
  br i1 %.not45440, label %.loopexit54800, label %bb.ai

.loopexit54800:                                   ; preds = %.loopexit54799, %bb.ag, %bb.af
  store i32 %i.ot, ptr %i.a, align 8, !tbaa !7
  %i.rg = zext i32 %i.on to i64                   ; 4 uses
  %.val51076 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rh = getelementptr inbounds nuw i8, ptr %.val51076, i64 %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i64 0, ptr %i.ri, align 1
  %.val51075 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rj = getelementptr inbounds nuw i8, ptr %.val51075, i64 %i.rg
  store i64 0, ptr %i.rj, align 1
  %.val50439 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rk = getelementptr inbounds nuw i8, ptr %.val50439, i64 %i.oq
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 88
  store i32 0, ptr %i.rl, align 1
  %i.rm = add nuw nsw i64 %i.oq, 80               ; 3 uses
  %.val51074 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rn = getelementptr inbounds nuw i8, ptr %.val51074, i64 %i.rm
  store i64 0, ptr %i.rn, align 1
  %i.ro = add nuw nsw i64 %i.oq, 72               ; 3 uses
  %.val51073 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rp = getelementptr inbounds nuw i8, ptr %.val51073, i64 %i.ro
  store i64 0, ptr %i.rp, align 1
  %i.rq = add nuw nsw i64 %i.oq, 64               ; 3 uses
  %.val51072 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rr = getelementptr inbounds nuw i8, ptr %.val51072, i64 %i.rq
  store i64 0, ptr %i.rr, align 1
  %i.rs = add nuw nsw i64 %i.e, 548               ; 7 uses
  %.val49217 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rt = getelementptr inbounds nuw i8, ptr %.val49217, i64 %i.rs
  %.0.copyload.i51296 = load i32, ptr %i.rt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51296) #7, !srcloc !19
  %.not45441 = icmp eq i32 %.0.copyload.i51296, 0
  br i1 %.not45441, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.loopexit54800
  %.val49216 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ru = getelementptr inbounds nuw i8, ptr %.val49216, i64 %i.e
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 536
  %.0.copyload.i51297 = load i32, ptr %i.rv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51297) #7, !srcloc !19
  %i.rw = add i32 %.0.copyload.i51296, -1         ; 2 uses
  %i.rx = mul i32 %.0.copyload.i51280, 37
  %i.ry = and i32 %i.rw, %i.rx                    ; 2 uses
  %i.rz = shl i32 %i.ry, 4
  %i.sa = add i32 %.0.copyload.i51297, %i.rz      ; 2 uses
  %i.sb = zext i32 %i.sa to i64                   ; 2 uses
  %.val49215 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sc = getelementptr inbounds nuw i8, ptr %.val49215, i64 %i.sb
  %.0.copyload.i51298 = load i32, ptr %i.sc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51298) #7, !srcloc !19
  %i.sd = icmp eq i32 %.0.copyload.i51298, %.0.copyload.i51280
  br i1 %i.sd, label %.loopexit54796, label %.preheader54795

.preheader54795:                                  ; preds = %bb.as, %bb.au
  %.143792 = phi i32 [ %i.sk, %bb.au ], [ 1, %bb.as ] ; 2 uses
  %.143732 = phi i32 [ %.0.copyload.i51299, %bb.au ], [ %.0.copyload.i51298, %bb.as ] ; 2 uses
  %.143626 = phi i32 [ %i.si, %bb.au ], [ 0, %bb.as ] ; 3 uses
  %.143609 = phi i32 [ %i.sn, %bb.au ], [ %i.sa, %bb.as ] ; 2 uses
  %.143374 = phi i32 [ %i.sl, %bb.au ], [ %i.ry, %bb.as ]
  %i.se = icmp eq i32 %.143732, -1
  %.not45444 = icmp eq i32 %.143626, 0            ; 2 uses
  br i1 %i.se, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.preheader54795
  %i.sf = select i1 %.not45444, i32 %.143609, i32 %.143626
  br label %bb.av

bb.au:                                            ; preds = %.preheader54795
  %i.sg = icmp eq i32 %.143732, -2
  %i.sh = select i1 %i.sg, i1 %.not45444, i1 false
  %i.si = select i1 %i.sh, i32 %.143609, i32 %.143626
  %i.sj = add i32 %.143374, %.143792
  %i.sk = add i32 %.143792, 1
  %i.sl = and i32 %i.sj, %i.rw                    ; 2 uses
  %i.sm = shl i32 %i.sl, 4
  %i.sn = add i32 %i.sm, %.0.copyload.i51297      ; 2 uses
  %i.so = zext i32 %i.sn to i64                   ; 2 uses
  %.val49214 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val49214, i64 %i.so
  %.0.copyload.i51299 = load i32, ptr %i.sp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51299) #7, !srcloc !19
  %.not45443 = icmp eq i32 %.0.copyload.i51299, %.0.copyload.i51280
  br i1 %.not45443, label %.loopexit54796, label %.preheader54795

bb.av:                                            ; preds = %.loopexit54800, %bb.at
  %.243733 = phi i32 [ 0, %.loopexit54800 ], [ %i.sf, %bb.at ]
  %i.sq = add nuw nsw i64 %i.e, 540               ; 6 uses
  %.val49213 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sr = getelementptr inbounds nuw i8, ptr %.val49213, i64 %i.sq
  %.0.copyload.i51300 = load i32, ptr %i.sr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51300) #7, !srcloc !19
  %i.ss = shl i32 %.0.copyload.i51300, 2
  %i.st = add i32 %i.ss, 4
  %.val49212 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.su = getelementptr inbounds nuw i8, ptr %.val49212, i64 %i.rs
  %.0.copyload.i51301 = load i32, ptr %i.su, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51301) #7, !srcloc !19
  %i.sv = mul i32 %.0.copyload.i51301, 3
  %.not45445 = icmp ult i32 %i.st, %i.sv
  br i1 %.not45445, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.sw = shl i32 %.0.copyload.i51301, 1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.sx = xor i32 %.0.copyload.i51300, -1
  %i.sy = add i32 %.0.copyload.i51301, %i.sx
  %.val49211 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sz = getelementptr inbounds nuw i8, ptr %.val49211, i64 %i.e
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 544
  %.0.copyload.i51302 = load i32, ptr %i.ta, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51302) #7, !srcloc !19
  %i.tb = sub i32 %i.sy, %.0.copyload.i51302
  %i.tc = lshr i32 %.0.copyload.i51301, 3
  %i.td = icmp ugt i32 %i.tb, %i.tc
  br i1 %i.td, label %.loopexit54785, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.043936 = phi i32 [ %i.sw, %bb.aw ], [ %.0.copyload.i51301, %bb.ax ]
  %.val49210 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.te = getelementptr inbounds nuw i8, ptr %.val49210, i64 %i.rs
  %.0.copyload.i51303 = load i32, ptr %i.te, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51303) #7, !srcloc !19
  %i.tf = add i32 %.043936, -1
  %i.tg = zext i32 %i.tf to i64                   ; 2 uses
  %i.th = lshr i64 %i.tg, 1
  %i.ti = or i64 %i.th, %i.tg                     ; 2 uses
  %i.tj = lshr i64 %i.ti, 2
  %i.tk = or i64 %i.tj, %i.ti                     ; 2 uses
  %i.tl = lshr i64 %i.tk, 4
  %i.tm = or i64 %i.tl, %i.tk                     ; 2 uses
  %i.tn = lshr i64 %i.tm, 8
  %i.to = or i64 %i.tn, %i.tm                     ; 2 uses
  %i.tp = lshr i64 %i.to, 16
  %i.tq = or i64 %i.tp, %i.to
  %i.tr = trunc nuw i64 %i.tq to i32
  %i.ts = add i32 %i.tr, 1
  %6 = tail call i32 @llvm.umax.i32(i32 %i.ts, i32 64) ; 2 uses
  %.val50438 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tt = getelementptr inbounds nuw i8, ptr %.val50438, i64 %i.rs
  store i32 %6, ptr %i.tt, align 1
  %i.tu = add nuw nsw i64 %i.e, 536               ; 4 uses
  %.val49209 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tv = getelementptr inbounds nuw i8, ptr %.val49209, i64 %i.tu
  %.0.copyload.i51304 = load i32, ptr %i.tv, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51304) #7, !srcloc !19
  %i.tw = shl i32 %6, 4
  %i.tx = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.tw) #7 ; 21 uses
  %.val50437 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ty = getelementptr inbounds nuw i8, ptr %.val50437, i64 %i.tu
  store i32 %i.tx, ptr %i.ty, align 1
  %.not45446 = icmp eq i32 %.0.copyload.i51304, 0
  %.val51071 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tz = getelementptr inbounds nuw i8, ptr %.val51071, i64 %i.sq
  store i64 0, ptr %i.tz, align 1
  %.val49208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ua = getelementptr inbounds nuw i8, ptr %.val49208, i64 %i.rs
  %.0.copyload.i51305 = load i32, ptr %i.ua, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51305) #7
  %.not45456 = icmp eq i32 %.0.copyload.i51305, 0 ; 2 uses
  br i1 %.not45446, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  br i1 %.not45456, label %.loopexit54786, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ub = and i32 %.0.copyload.i51305, 7          ; 7 uses
  %.not45457 = icmp eq i32 %i.ub, 0
  br i1 %.not45457, label %.loopexit54788, label %.preheader54787

.preheader54787:                                  ; preds = %bb.ba
  %i.uc = zext i32 %i.tx to i64
  %.val50436 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ud = getelementptr inbounds nuw i8, ptr %.val50436, i64 %i.uc
  store i32 -1, ptr %i.ud, align 1
  %i.ue = add i32 %i.tx, 16                       ; 2 uses
  %.not45458 = icmp eq i32 %i.ub, 1
  br i1 %.not45458, label %.loopexit54788, label %.preheader54787.1

.preheader54787.1:                                ; preds = %.preheader54787
  %i.uf = zext i32 %i.ue to i64
  %.val50436.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ug = getelementptr inbounds nuw i8, ptr %.val50436.1, i64 %i.uf
  store i32 -1, ptr %i.ug, align 1
  %i.uh = add i32 %i.tx, 32                       ; 2 uses
  %.not45458.1 = icmp eq i32 %i.ub, 2
  br i1 %.not45458.1, label %.loopexit54788, label %.preheader54787.2

.preheader54787.2:                                ; preds = %.preheader54787.1
  %i.ui = zext i32 %i.uh to i64
  %.val50436.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uj = getelementptr inbounds nuw i8, ptr %.val50436.2, i64 %i.ui
  store i32 -1, ptr %i.uj, align 1
  %i.uk = add i32 %i.tx, 48                       ; 2 uses
  %.not45458.2 = icmp eq i32 %i.ub, 3
  br i1 %.not45458.2, label %.loopexit54788, label %.preheader54787.3

.preheader54787.3:                                ; preds = %.preheader54787.2
  %i.ul = zext i32 %i.uk to i64
  %.val50436.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.um = getelementptr inbounds nuw i8, ptr %.val50436.3, i64 %i.ul
  store i32 -1, ptr %i.um, align 1
  %i.un = add i32 %i.tx, 64                       ; 2 uses
  %.not45458.3 = icmp eq i32 %i.ub, 4
  br i1 %.not45458.3, label %.loopexit54788, label %.preheader54787.4

.preheader54787.4:                                ; preds = %.preheader54787.3
  %i.uo = zext i32 %i.un to i64
  %.val50436.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.up = getelementptr inbounds nuw i8, ptr %.val50436.4, i64 %i.uo
  store i32 -1, ptr %i.up, align 1
  %i.uq = add i32 %i.tx, 80                       ; 2 uses
  %.not45458.4 = icmp eq i32 %i.ub, 5
  br i1 %.not45458.4, label %.loopexit54788, label %.preheader54787.5

.preheader54787.5:                                ; preds = %.preheader54787.4
  %i.ur = zext i32 %i.uq to i64
  %.val50436.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.us = getelementptr inbounds nuw i8, ptr %.val50436.5, i64 %i.ur
  store i32 -1, ptr %i.us, align 1
  %i.ut = add i32 %i.tx, 96                       ; 2 uses
  %.not45458.5 = icmp eq i32 %i.ub, 6
  br i1 %.not45458.5, label %.loopexit54788, label %.preheader54787.6

.preheader54787.6:                                ; preds = %.preheader54787.5
  %i.uu = zext i32 %i.ut to i64
  %.val50436.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uv = getelementptr inbounds nuw i8, ptr %.val50436.6, i64 %i.uu
  store i32 -1, ptr %i.uv, align 1
  %i.uw = add i32 %i.tx, 112
  br label %.loopexit54788

.loopexit54788:                                   ; preds = %.preheader54787, %.preheader54787.1, %.preheader54787.2, %.preheader54787.3, %.preheader54787.4, %.preheader54787.5, %.preheader54787.6, %bb.ba
  %.243938 = phi i32 [ %i.tx, %bb.ba ], [ %i.ue, %.preheader54787 ], [ %i.uh, %.preheader54787.1 ], [ %i.uk, %.preheader54787.2 ], [ %i.un, %.preheader54787.3 ], [ %i.uq, %.preheader54787.4 ], [ %i.ut, %.preheader54787.5 ], [ %i.uw, %.preheader54787.6 ]
  %i.ux = add i32 %.0.copyload.i51305, 268435455
  %i.uy = and i32 %i.ux, 268435455
  %i.uz = icmp samesign ult i32 %i.uy, 7
  br i1 %i.uz, label %.loopexit54786, label %bb.bb

bb.bb:                                            ; preds = %.loopexit54788
  %i.va = shl i32 %.0.copyload.i51305, 4
  %i.vb = add i32 %i.va, %i.tx
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %.343939 = phi i32 [ %.243938, %bb.bb ], [ %i.vs, %bb.bc ] ; 2 uses
  %i.vc = zext i32 %.343939 to i64                ; 8 uses
  %.val50435 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vd = getelementptr inbounds nuw i8, ptr %.val50435, i64 %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 112
  store i32 -1, ptr %i.ve, align 1
  %.val50434 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vf = getelementptr inbounds nuw i8, ptr %.val50434, i64 %i.vc
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 96
  store i32 -1, ptr %i.vg, align 1
  %.val50433 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vh = getelementptr inbounds nuw i8, ptr %.val50433, i64 %i.vc
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 80
  store i32 -1, ptr %i.vi, align 1
  %.val50432 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vj = getelementptr inbounds nuw i8, ptr %.val50432, i64 %i.vc
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 64
  store i32 -1, ptr %i.vk, align 1
  %.val50431 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vl = getelementptr inbounds nuw i8, ptr %.val50431, i64 %i.vc
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 48
  store i32 -1, ptr %i.vm, align 1
  %.val50430 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vn = getelementptr inbounds nuw i8, ptr %.val50430, i64 %i.vc
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 32
  store i32 -1, ptr %i.vo, align 1
  %.val50429 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vp = getelementptr inbounds nuw i8, ptr %.val50429, i64 %i.vc
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  store i32 -1, ptr %i.vq, align 1
  %.val50428 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vr = getelementptr inbounds nuw i8, ptr %.val50428, i64 %i.vc
  store i32 -1, ptr %i.vr, align 1
  %i.vs = add i32 %.343939, 128                   ; 2 uses
  %.not45459 = icmp eq i32 %i.vs, %i.vb
  br i1 %.not45459, label %.loopexit54786, label %bb.bc

bb.bd:                                            ; preds = %bb.ay
  br i1 %.not45456, label %.loopexit54792, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.vt = and i32 %.0.copyload.i51305, 7          ; 7 uses
  %.not45448 = icmp eq i32 %i.vt, 0
  br i1 %.not45448, label %.loopexit54794, label %.preheader54793

.preheader54793:                                  ; preds = %bb.be
  %i.vu = zext i32 %i.tx to i64
  %.val50427 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vv = getelementptr inbounds nuw i8, ptr %.val50427, i64 %i.vu
  store i32 -1, ptr %i.vv, align 1
  %i.vw = add i32 %i.tx, 16                       ; 2 uses
  %.not45449 = icmp eq i32 %i.vt, 1
  br i1 %.not45449, label %.loopexit54794, label %.preheader54793.1

.preheader54793.1:                                ; preds = %.preheader54793
  %i.vx = zext i32 %i.vw to i64
  %.val50427.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vy = getelementptr inbounds nuw i8, ptr %.val50427.1, i64 %i.vx
  store i32 -1, ptr %i.vy, align 1
  %i.vz = add i32 %i.tx, 32                       ; 2 uses
  %.not45449.1 = icmp eq i32 %i.vt, 2
  br i1 %.not45449.1, label %.loopexit54794, label %.preheader54793.2

.preheader54793.2:                                ; preds = %.preheader54793.1
  %i.wa = zext i32 %i.vz to i64
  %.val50427.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wb = getelementptr inbounds nuw i8, ptr %.val50427.2, i64 %i.wa
  store i32 -1, ptr %i.wb, align 1
  %i.wc = add i32 %i.tx, 48                       ; 2 uses
  %.not45449.2 = icmp eq i32 %i.vt, 3
  br i1 %.not45449.2, label %.loopexit54794, label %.preheader54793.3

.preheader54793.3:                                ; preds = %.preheader54793.2
  %i.wd = zext i32 %i.wc to i64
  %.val50427.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.we = getelementptr inbounds nuw i8, ptr %.val50427.3, i64 %i.wd
  store i32 -1, ptr %i.we, align 1
  %i.wf = add i32 %i.tx, 64                       ; 2 uses
  %.not45449.3 = icmp eq i32 %i.vt, 4
  br i1 %.not45449.3, label %.loopexit54794, label %.preheader54793.4

.preheader54793.4:                                ; preds = %.preheader54793.3
  %i.wg = zext i32 %i.wf to i64
  %.val50427.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wh = getelementptr inbounds nuw i8, ptr %.val50427.4, i64 %i.wg
  store i32 -1, ptr %i.wh, align 1
  %i.wi = add i32 %i.tx, 80                       ; 2 uses
  %.not45449.4 = icmp eq i32 %i.vt, 5
  br i1 %.not45449.4, label %.loopexit54794, label %.preheader54793.5

.preheader54793.5:                                ; preds = %.preheader54793.4
  %i.wj = zext i32 %i.wi to i64
  %.val50427.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wk = getelementptr inbounds nuw i8, ptr %.val50427.5, i64 %i.wj
  store i32 -1, ptr %i.wk, align 1
  %i.wl = add i32 %i.tx, 96                       ; 2 uses
  %.not45449.5 = icmp eq i32 %i.vt, 6
  br i1 %.not45449.5, label %.loopexit54794, label %.preheader54793.6

.preheader54793.6:                                ; preds = %.preheader54793.5
  %i.wm = zext i32 %i.wl to i64
  %.val50427.6 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.ika = getelementptr inbounds nuw i8, ptr %.val48348, i64 %i.hef
  %i.ikb = getelementptr inbounds nuw i8, ptr %i.ika, i64 4
  %.0.copyload.i52445 = load i32, ptr %i.ikb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52445) #7, !srcloc !19
  %i.ikc = add i32 %.0.copyload.i52444, -1        ; 2 uses
  %i.ikd = lshr i32 %.0.copyload.i52443, 4
  %i.ike = lshr i32 %.0.copyload.i52443, 9
  %i.ikf = xor i32 %i.ikd, %i.ike
  %i.ikg = and i32 %i.ikc, %i.ikf                 ; 2 uses
  %i.ikh = shl i32 %i.ikg, 6
  %i.iki = add i32 %.0.copyload.i52445, %i.ikh    ; 3 uses
  %i.ikj = zext i32 %i.iki to i64
  %.val48347 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ikk = getelementptr inbounds nuw i8, ptr %.val48347, i64 %i.ikj
  %.0.copyload.i52446 = load i32, ptr %i.ikk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52446) #7, !srcloc !19
  %i.ikl = icmp eq i32 %.0.copyload.i52443, %.0.copyload.i52446
  br i1 %i.ikl, label %.loopexit54593, label %.preheader54592

.preheader54592:                                  ; preds = %bb.ahp, %bb.ahq
  %.1144107 = phi i32 [ %i.ikt, %bb.ahq ], [ %i.iki, %bb.ahp ] ; 2 uses
  %.1443499 = phi i32 [ %i.iko, %bb.ahq ], [ 0, %bb.ahp ] ; 3 uses
  %.343245 = phi i32 [ %i.ikq, %bb.ahq ], [ 1, %bb.ahp ] ; 2 uses
  %.143219 = phi i32 [ %.0.copyload.i52447, %bb.ahq ], [ %.0.copyload.i52446, %bb.ahp ] ; 2 uses
  %.043193 = phi i32 [ %i.ikr, %bb.ahq ], [ %i.ikg, %bb.ahp ]
  %.not45899 = icmp eq i32 %.143219, -4
  %.not45900 = icmp eq i32 %.1443499, 0           ; 2 uses
  br i1 %.not45899, label %bb.ahr, label %bb.ahq

bb.ahq:                                           ; preds = %.preheader54592
  %i.ikm = icmp eq i32 %.143219, -8
  %i.ikn = select i1 %i.ikm, i1 %.not45900, i1 false
  %i.iko = select i1 %i.ikn, i32 %.1144107, i32 %.1443499
  %i.ikp = add i32 %.043193, %.343245
  %i.ikq = add i32 %.343245, 1
  %i.ikr = and i32 %i.ikp, %i.ikc                 ; 2 uses
  %i.iks = shl i32 %i.ikr, 6
  %i.ikt = add i32 %i.iks, %.0.copyload.i52445    ; 3 uses
  %i.iku = zext i32 %i.ikt to i64
  %.val48346 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ikv = getelementptr inbounds nuw i8, ptr %.val48346, i64 %i.iku
  %.0.copyload.i52447 = load i32, ptr %i.ikv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52447) #7, !srcloc !19
  %.not45902 = icmp eq i32 %.0.copyload.i52447, %.0.copyload.i52443
  br i1 %.not45902, label %.loopexit54593, label %.preheader54592

bb.ahr:                                           ; preds = %.preheader54592
  %i.ikw = select i1 %.not45900, i32 %.1144107, i32 %.1443499
  br label %bb.ahs

bb.ahs:                                           ; preds = %bb.aho, %bb.ahr
  %.33 = phi i32 [ %i.ikw, %bb.ahr ], [ 0, %bb.aho ]
  %i.ikx = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %i.heg, i32 noundef %.33, i32 noundef %i.ijv) #7
  br label %.loopexit54593

.loopexit54593:                                   ; preds = %bb.ahq, %bb.ahp, %bb.ahs
  %.1244108 = phi i32 [ %i.iki, %bb.ahp ], [ %i.ikx, %bb.ahs ], [ %i.ikt, %bb.ahq ] ; 5 uses
  %i.iky = add i32 %.1244108, 4
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.iky, i32 noundef %.0.copyload.i52442, i32 noundef 0) #7
  %i.ikz = add i32 %.1244108, 16
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.ikz, i32 noundef %.0.copyload.i52442, i32 noundef 0) #7
  %i.ila = add i32 %.1244108, 28
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.ila, i32 noundef %.0.copyload.i52442, i32 noundef 0) #7
  %i.ilb = add i32 %.1244108, 40
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.ilb, i32 noundef %.0.copyload.i52442, i32 noundef 0) #7
  %i.ilc = add i32 %.1244108, 52
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.ilc, i32 noundef %.0.copyload.i52442, i32 noundef 0) #7
  %i.ild = add i32 %.10143935, 4                  ; 2 uses
  %.not45903 = icmp eq i32 %i.ijg, %i.ild
  br i1 %.not45903, label %.preheader54642, label %bb.aho

bb.aht:                                           ; preds = %bb.ahj, %bb.ahi
  %i.ile = add nuw nsw i64 %i.htd, 8              ; 3 uses
  %.val50885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ilf = getelementptr inbounds nuw i8, ptr %.val50885, i64 %i.ile
  store i64 %.0.copyload.i52345, ptr %i.ilf, align 1
  %.val50884 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ilg = getelementptr inbounds nuw i8, ptr %.val50884, i64 %i.htd
  %i.ilh = getelementptr inbounds nuw i8, ptr %i.ilg, i64 376
  store i64 %.0.copyload.i52345, ptr %i.ilh, align 1
  %i.ili = load i32, ptr %i.a, align 8, !tbaa !7  ; 4 uses
  %i.ilj = add i32 %i.ili, -48                    ; 3 uses
  store i32 %i.ilj, ptr %i.a, align 8, !tbaa !7
  %i.ilk = add nuw nsw i64 %i.htd, 12             ; 2 uses
  %.val48345 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ill = getelementptr inbounds nuw i8, ptr %.val48345, i64 %i.ilk
  %.0.copyload.i52448 = load i32, ptr %i.ill, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52448) #7, !srcloc !19
  %.not46345 = icmp eq i32 %.0.copyload.i52448, 0
  br i1 %.not46345, label %..loopexit54619_crit_edge, label %bb.ahu

..loopexit54619_crit_edge:                        ; preds = %bb.aht
  %.pre55896 = zext i32 %i.ilj to i64
  br label %.loopexit54619

bb.ahu:                                           ; preds = %bb.aht
  %.val48344 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ilm = getelementptr inbounds nuw i8, ptr %.val48344, i64 %i.ile
  %.0.copyload.i52449 = load i32, ptr %i.ilm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52449) #7, !srcloc !19
  %i.iln = shl i32 %.0.copyload.i52448, 2
  %i.ilo = add i32 %.0.copyload.i52449, %i.iln
  %i.ilp = add i32 %i.ili, -44
  %i.ilq = zext i32 %i.ilp to i64                 ; 2 uses
  %i.ilr = zext i32 %i.ilj to i64                 ; 2 uses
  br label %bb.ahv

bb.ahv:                                           ; preds = %.loopexit54553, %bb.ahu
  %.4743778 = phi i32 [ %.0.copyload.i52449, %bb.ahu ], [ %i.iyk, %.loopexit54553 ] ; 2 uses
  %i.ils = zext i32 %.4743778 to i64
  %.val48343 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ilt = getelementptr inbounds nuw i8, ptr %.val48343, i64 %i.ils
  %.0.copyload.i52450 = load i32, ptr %i.ilt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52450) #7, !srcloc !19
  %i.ilu = zext i32 %.0.copyload.i52450 to i64
  %.val48342 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ilv = getelementptr inbounds nuw i8, ptr %.val48342, i64 %i.ilu
  %i.ilw = getelementptr inbounds nuw i8, ptr %i.ilv, i64 40
  %.0.copyload.i52451 = load i32, ptr %i.ilw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52451) #7, !srcloc !19
  %i.ilx = add i32 %.0.copyload.i52450, 36        ; 2 uses
  %.not46346 = icmp eq i32 %.0.copyload.i52451, %i.ilx
  br i1 %.not46346, label %.loopexit54553, label %.preheader54552

.preheader54552:                                  ; preds = %bb.ahv, %.loopexit54403
  %.102 = phi i32 [ %.0.copyload.i52515, %.loopexit54403 ], [ %.0.copyload.i52451, %bb.ahv ] ; 4 uses
  %.val48341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ily = getelementptr inbounds nuw i8, ptr %.val48341, i64 %i.hef
  %.0.copyload.i52452 = load i32, ptr %i.ily, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52452) #7, !srcloc !19
  %i.ilz = zext i32 %.0.copyload.i52452 to i64
  %.val48340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ima = getelementptr inbounds nuw i8, ptr %.val48340, i64 %i.ilz
  %i.imb = getelementptr inbounds nuw i8, ptr %i.ima, i64 12
  %.0.copyload.i52453 = load i32, ptr %i.imb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52453) #7, !srcloc !19
  %i.imc = load i32, ptr %i.hdm, align 4, !tbaa !25
  %i.imd = icmp ult i32 %.0.copyload.i52453, %i.imc
  br i1 %i.imd, label %bb.ahw, label %.critedge46778, !prof !26

bb.ahw:                                           ; preds = %.preheader54552
  %i.ime = load ptr, ptr %i.hdl, align 8, !tbaa !27
  %i.imf = zext i32 %.0.copyload.i52453 to i64
  %i.img = getelementptr inbounds nuw [24 x i8], ptr %i.ime, i64 %i.imf ; 3 uses
  %i.imh = getelementptr inbounds nuw i8, ptr %i.img, i64 8
  %i.imi = load ptr, ptr %i.imh, align 8, !tbaa !28 ; 2 uses
  %.not46347 = icmp eq ptr %i.imi, null
  br i1 %.not46347, label %.critedge46778, label %bb.ahx, !prof !30

bb.ahx:                                           ; preds = %bb.ahw
  %i.imj = load ptr, ptr %i.img, align 8, !tbaa !32 ; 4 uses
  %i.imk = icmp eq ptr %i.hes, %i.imj
  br i1 %i.imk, label %func_types_eq.exit52457.thread, label %bb.ahy

bb.ahy:                                           ; preds = %bb.ahx
  %i.iml = icmp ne ptr %i.imj, null
  %or.cond.i52454 = and i1 %i.het, %i.iml
  br i1 %or.cond.i52454, label %func_types_eq.exit52457, label %.critedge46778, !prof !33

func_types_eq.exit52457:                          ; preds = %bb.ahy
  %i.imm = load i128, ptr %i.hes, align 1
  %i.imn = load i128, ptr %i.imj, align 1
  %i.imo = xor i128 %i.imm, %i.imn
  %i.imp = getelementptr i8, ptr %i.hes, i64 16
  %i.imq = getelementptr i8, ptr %i.imj, i64 16
  %i.imr = load i128, ptr %i.imp, align 1
  %i.ims = load i128, ptr %i.imq, align 1
  %i.imt = xor i128 %i.imr, %i.ims
  %i.imu = or i128 %i.imo, %i.imt
  %i.imv = icmp ne i128 %i.imu, 0
  %i.imw = zext i1 %i.imv to i32
  %.not.i52456 = icmp eq i32 %i.imw, 0
  br i1 %.not.i52456, label %func_types_eq.exit52457.thread, label %.critedge46778, !prof !34

.critedge46778:                                   ; preds = %bb.ahy, %bb.ahw, %.preheader54552, %func_types_eq.exit52457
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit52457.thread:                   ; preds = %bb.ahx, %func_types_eq.exit52457
  %i.imx = getelementptr inbounds nuw i8, ptr %i.img, i64 16
  %i.imy = load ptr, ptr %i.imx, align 8, !tbaa !35
  tail call void %i.imi(ptr noundef %i.imy, i32 noundef %i.auf, i32 noundef %.102) #7
  %.not46348 = icmp eq i32 %.102, 0
  br i1 %.not46348, label %.loopexit54403, label %bb.ahz

bb.ahz:                                           ; preds = %func_types_eq.exit52457.thread
  %i.imz = zext i32 %.102 to i64                  ; 6 uses
  %.val51132 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ina = getelementptr inbounds nuw i8, ptr %.val51132, i64 %i.imz
  %i.inb = getelementptr inbounds nuw i8, ptr %i.ina, i64 8
  %.0.copyload.i52458 = load i8, ptr %i.inb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i52458) #7, !srcloc !21
  %.not46349 = icmp eq i8 %.0.copyload.i52458, 33
  br i1 %.not46349, label %bb.aia, label %.loopexit54403

bb.aia:                                           ; preds = %bb.ahz
  %.val48339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inc = getelementptr inbounds nuw i8, ptr %.val48339, i64 %i.hex
  %.0.copyload.i52459 = load i32, ptr %i.inc, align 1 ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52459) #7, !srcloc !19
  %i.ind = add i32 %.0.copyload.i52459, 31        ; 2 uses
  %i.ine = icmp ult i32 %i.ind, 32
  br i1 %i.ine, label %.loopexit54409, label %bb.aib

bb.aib:                                           ; preds = %bb.aia
  %.val48338 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inf = getelementptr inbounds nuw i8, ptr %.val48338, i64 %i.hef
  %i.ing = getelementptr inbounds nuw i8, ptr %i.inf, i64 1100
  %.0.copyload.i52460 = load i32, ptr %i.ing, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52460) #7, !srcloc !19
  %i.inh = zext i32 %.0.copyload.i52460 to i64
  %.val48337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ini = getelementptr inbounds nuw i8, ptr %.val48337, i64 %i.inh
  %.0.copyload.i52461 = load i32, ptr %i.ini, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52461) #7, !srcloc !19
  %.not46350 = icmp eq i32 %.0.copyload.i52461, 0
  br i1 %.not46350, label %bb.aic, label %bb.aiy

bb.aic:                                           ; preds = %bb.aib
  %i.inj = lshr i32 %i.ind, 5                     ; 3 uses
  %wide.trip.count55716 = zext nneg i32 %i.inj to i64
  %exitcond5571757421 = icmp eq i32 %i.inj, 1
  br i1 %exitcond5571757421, label %.loopexit54409, label %.lr.ph57424

bb.aid:                                           ; preds = %.lr.ph57424
  %indvars.iv.next55713 = add nuw nsw i64 %indvars.iv5571257422, 1 ; 2 uses
  %exitcond55717 = icmp eq i64 %indvars.iv.next55713, %wide.trip.count55716
  br i1 %exitcond55717, label %.loopexit54409, label %.lr.ph57424

.lr.ph57424:                                      ; preds = %bb.aic, %bb.aid
  %indvars.iv5571257422 = phi i64 [ %indvars.iv.next55713, %bb.aid ], [ 1, %bb.aic ] ; 3 uses
  %indvars55714 = trunc i64 %indvars.iv5571257422 to i32
  %i.ink = shl i32 %indvars55714, 2
  %i.inl = add i32 %i.ink, %.0.copyload.i52460
  %i.inm = zext i32 %i.inl to i64
  %.val48336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inn = getelementptr inbounds nuw i8, ptr %.val48336, i64 %i.inm
  %.0.copyload.i52462 = load i32, ptr %i.inn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52462) #7, !srcloc !19
  %.not46351 = icmp eq i32 %.0.copyload.i52462, 0
  br i1 %.not46351, label %bb.aid, label %bb.aie

bb.aie:                                           ; preds = %.lr.ph57424
  %7 = trunc nuw nsw i64 %indvars.iv5571257422 to i32
  %i.ino = icmp ugt i32 %i.inj, %7
  br i1 %i.ino, label %bb.aix, label %.loopexit54409

.loopexit54409:                                   ; preds = %bb.aid, %bb.aic, %bb.aie, %bb.aia
  %i.inp = add i32 %.0.copyload.i52459, 1         ; 5 uses
  %.val48335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inq = getelementptr inbounds nuw i8, ptr %.val48335, i64 %i.hey
  %.0.copyload.i52463 = load i32, ptr %i.inq, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52463) #7, !srcloc !19
  %i.inr = shl i32 %.0.copyload.i52463, 5
  %.not46355 = icmp ugt i32 %i.inp, %i.inr
  br i1 %.not46355, label %bb.aif, label %bb.ain

bb.aif:                                           ; preds = %.loopexit54409
  %.val48334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ins = getelementptr inbounds nuw i8, ptr %.val48334, i64 %i.hez
  %.0.copyload.i52464 = load i32, ptr %i.ins, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52464) #7, !srcloc !19
  %i.int = add i32 %.0.copyload.i52459, 32
  %i.inu = lshr i32 %i.int, 5
  %i.inv = shl i32 %.0.copyload.i52463, 1
  %i.inw = tail call i32 @llvm.umax.i32(i32 %i.inv, i32 %i.inu) ; 6 uses
  %i.inx = shl i32 %i.inw, 2
  %i.iny = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52464, i32 noundef %i.inx) #7 ; 5 uses
  %.not46356 = icmp eq i32 %i.iny, 0
  br i1 %.not46356, label %bb.aig, label %bb.aih

bb.aig:                                           ; preds = %bb.aif
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.aih

bb.aih:                                           ; preds = %bb.aig, %bb.aif
  %.val49911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inz = getelementptr inbounds nuw i8, ptr %.val49911, i64 %i.hey
  store i32 %i.inw, ptr %i.inz, align 1
  %.val49910 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ioa = getelementptr inbounds nuw i8, ptr %.val49910, i64 %i.hez
  store i32 %i.iny, ptr %i.ioa, align 1
  %.val48333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iob = getelementptr inbounds nuw i8, ptr %.val48333, i64 %i.hex
  %.0.copyload.i52465 = load i32, ptr %i.iob, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52465) #7, !srcloc !19
  %i.ioc = add i32 %.0.copyload.i52465, 31
  %i.iod = lshr i32 %i.ioc, 5                     ; 4 uses
  %i.ioe = icmp ult i32 %i.iod, %i.inw
  br i1 %i.ioe, label %bb.aii, label %bb.aij

bb.aii:                                           ; preds = %bb.aih
  %i.iof = shl nuw nsw i32 %i.iod, 2
  %i.iog = add i32 %i.iof, %i.iny
  %i.ioh = sub nuw i32 %i.inw, %i.iod
  %i.ioi = shl i32 %i.ioh, 2
  %i.ioj = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.iog, i32 noundef 0, i32 noundef %i.ioi) #7 ; 0 uses
  br label %bb.aij

bb.aij:                                           ; preds = %bb.aii, %bb.aih
  %i.iok = and i32 %.0.copyload.i52465, 31        ; 2 uses
  %.not46357 = icmp eq i32 %i.iok, 0
  br i1 %.not46357, label %bb.ail, label %bb.aik

bb.aik:                                           ; preds = %bb.aij
  %i.iol = shl nuw nsw i32 %i.iod, 2
  %i.iom = add i32 %i.iny, -4
  %i.ion = add i32 %i.iom, %i.iol
  %i.ioo = zext i32 %i.ion to i64                 ; 2 uses
  %.val48332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iop = getelementptr inbounds nuw i8, ptr %.val48332, i64 %i.ioo
  %.0.copyload.i52466 = load i32, ptr %i.iop, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52466) #7, !srcloc !19
  %i.ioq = shl nsw i32 -1, %i.iok
  %i.ior = xor i32 %i.ioq, -1
  %i.ios = and i32 %.0.copyload.i52466, %i.ior
  %.val49909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iot = getelementptr inbounds nuw i8, ptr %.val49909, i64 %i.ioo
  store i32 %i.ios, ptr %i.iot, align 1
  br label %bb.ail

bb.ail:                                           ; preds = %bb.aik, %bb.aij
  %i.iou = icmp eq i32 %.0.copyload.i52463, %i.inw
  br i1 %i.iou, label %bb.ain, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  %i.iov = shl i32 %.0.copyload.i52463, 2
  %i.iow = add i32 %i.iny, %i.iov
  %i.iox = sub i32 %i.inw, %.0.copyload.i52463
  %i.ioy = shl i32 %i.iox, 2
  %i.ioz = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.iow, i32 noundef 0, i32 noundef %i.ioy) #7 ; 0 uses
  br label %bb.ain

bb.ain:                                           ; preds = %bb.ail, %.loopexit54409, %bb.aim
  %.6144312 = phi i32 [ %.0.copyload.i52459, %.loopexit54409 ], [ %.0.copyload.i52465, %bb.ail ], [ %.0.copyload.i52465, %bb.aim ] ; 4 uses
  %.not46358 = icmp ult i32 %.6144312, %i.inp
  br i1 %.not46358, label %bb.aio, label %bb.ais

bb.aio:                                           ; preds = %bb.ain
  %.val48331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipa = getelementptr inbounds nuw i8, ptr %.val48331, i64 %i.hey
  %.0.copyload.i52467 = load i32, ptr %i.ipa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52467) #7, !srcloc !19
  %i.ipb = add i32 %.6144312, 31
  %i.ipc = lshr i32 %i.ipb, 5                     ; 4 uses
  %i.ipd = icmp ugt i32 %.0.copyload.i52467, %i.ipc
  br i1 %i.ipd, label %bb.aip, label %bb.aiq

bb.aip:                                           ; preds = %bb.aio
  %.val48330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipe = getelementptr inbounds nuw i8, ptr %.val48330, i64 %i.hef
  %i.ipf = getelementptr inbounds nuw i8, ptr %i.ipe, i64 1100
  %.0.copyload.i52468 = load i32, ptr %i.ipf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52468) #7, !srcloc !19
  %i.ipg = shl nuw nsw i32 %i.ipc, 2
  %i.iph = add i32 %.0.copyload.i52468, %i.ipg
  %i.ipi = sub nuw i32 %.0.copyload.i52467, %i.ipc
  %i.ipj = shl i32 %i.ipi, 2
  %i.ipk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.iph, i32 noundef 0, i32 noundef %i.ipj) #7 ; 0 uses
  %.val48329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipl = getelementptr inbounds nuw i8, ptr %.val48329, i64 %i.hex
  %.0.copyload.i52469 = load i32, ptr %i.ipl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52469) #7, !srcloc !19
  br label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip, %bb.aio
  %.6244313 = phi i32 [ %.0.copyload.i52469, %bb.aip ], [ %.6144312, %bb.aio ] ; 3 uses
  %i.ipm = and i32 %.6244313, 31                  ; 2 uses
  %.not46359 = icmp eq i32 %i.ipm, 0
  br i1 %.not46359, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %.val48328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipn = getelementptr inbounds nuw i8, ptr %.val48328, i64 %i.hef
  %i.ipo = getelementptr inbounds nuw i8, ptr %i.ipn, i64 1100
  %.0.copyload.i52470 = load i32, ptr %i.ipo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52470) #7, !srcloc !19
  %i.ipp = shl nuw nsw i32 %i.ipc, 2
  %i.ipq = add nsw i32 %i.ipp, -4
  %i.ipr = add i32 %i.ipq, %.0.copyload.i52470
  %i.ips = zext i32 %i.ipr to i64                 ; 2 uses
  %.val48327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipt = getelementptr inbounds nuw i8, ptr %.val48327, i64 %i.ips
  %.0.copyload.i52471 = load i32, ptr %i.ipt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52471) #7, !srcloc !19
  %i.ipu = shl nsw i32 -1, %i.ipm
  %i.ipv = xor i32 %i.ipu, -1
  %i.ipw = and i32 %.0.copyload.i52471, %i.ipv
  %.val49908 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipx = getelementptr inbounds nuw i8, ptr %.val49908, i64 %i.ips
  store i32 %i.ipw, ptr %i.ipx, align 1
  br label %bb.ais

bb.ais:                                           ; preds = %bb.aiq, %bb.ain, %bb.air
  %.6344314 = phi i32 [ %.6144312, %bb.ain ], [ %.6244313, %bb.aiq ], [ %.6244313, %bb.air ]
  %.val49907 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipy = getelementptr inbounds nuw i8, ptr %.val49907, i64 %i.hex
  store i32 %i.inp, ptr %i.ipy, align 1
  %.not46360 = icmp ugt i32 %.6344314, %i.inp
  br i1 %.not46360, label %bb.ait, label %bb.ajd

bb.ait:                                           ; preds = %bb.ais
  %.val48326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipz = getelementptr inbounds nuw i8, ptr %.val48326, i64 %i.hey
  %.0.copyload.i52472 = load i32, ptr %i.ipz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52472) #7, !srcloc !19
  %i.iqa = add i32 %.0.copyload.i52459, 32
  %i.iqb = lshr i32 %i.iqa, 5                     ; 4 uses
  %i.iqc = icmp ugt i32 %.0.copyload.i52472, %i.iqb
  br i1 %i.iqc, label %bb.aiu, label %bb.aiv

bb.aiu:                                           ; preds = %bb.ait
  %.val48325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqd = getelementptr inbounds nuw i8, ptr %.val48325, i64 %i.hef
  %i.iqe = getelementptr inbounds nuw i8, ptr %i.iqd, i64 1100
  %.0.copyload.i52473 = load i32, ptr %i.iqe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52473) #7, !srcloc !19
  %i.iqf = shl nuw nsw i32 %i.iqb, 2
  %i.iqg = add i32 %.0.copyload.i52473, %i.iqf
  %i.iqh = sub nuw i32 %.0.copyload.i52472, %i.iqb
  %i.iqi = shl i32 %i.iqh, 2
  %i.iqj = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.iqg, i32 noundef 0, i32 noundef %i.iqi) #7 ; 0 uses
  %.val48324 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqk = getelementptr inbounds nuw i8, ptr %.val48324, i64 %i.hex
  %.0.copyload.i52474 = load i32, ptr %i.iqk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52474) #7, !srcloc !19
  br label %bb.aiv

bb.aiv:                                           ; preds = %bb.ait, %bb.aiu
  %.34 = phi i32 [ %.0.copyload.i52474, %bb.aiu ], [ %i.inp, %bb.ait ]
  %i.iql = and i32 %.34, 31                       ; 2 uses
  %.not46361 = icmp eq i32 %i.iql, 0
  br i1 %.not46361, label %bb.ajd, label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  %i.iqm = shl nsw i32 -1, %i.iql
  %.val48323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqn = getelementptr inbounds nuw i8, ptr %.val48323, i64 %i.hef
  %i.iqo = getelementptr inbounds nuw i8, ptr %i.iqn, i64 1100
  %.0.copyload.i52475 = load i32, ptr %i.iqo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52475) #7, !srcloc !19
  %i.iqp = shl nuw nsw i32 %i.iqb, 2
  %i.iqq = add nsw i32 %i.iqp, -4
  %i.iqr = add i32 %i.iqq, %.0.copyload.i52475
  br label %bb.ajc
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.443577 = phi i32 [ %i.iwe, %bb.ajs ], [ %i.ivr, %bb.ajq ]
  %.1843358 = phi i32 [ %i.iwd, %bb.ajs ], [ 1, %bb.ajq ] ; 2 uses
  %.1043325 = phi i32 [ %.0.copyload.i52505, %bb.ajs ], [ %.0.copyload.i52504, %bb.ajq ] ; 2 uses
  %i.ivx = icmp eq i32 %.1043325, -4
  %.not46376 = icmp eq i32 %.843799, 0            ; 2 uses
  br i1 %i.ivx, label %bb.ajr, label %bb.ajs

bb.ajr:                                           ; preds = %.preheader54311
  %i.ivy = select i1 %.not46376, i32 %.6544316, i32 %.843799
  br label %bb.ajt

bb.ajs:                                           ; preds = %.preheader54311
  %i.ivz = icmp eq i32 %.1043325, -8
  %i.iwa = select i1 %i.ivz, i1 %.not46376, i1 false
  %i.iwb = select i1 %i.iwa, i32 %.6544316, i32 %.843799
  %i.iwc = add i32 %.1843358, %.443577
  %i.iwd = add i32 %.1843358, 1
  %i.iwe = and i32 %i.iwc, %i.ivn                 ; 2 uses
  %i.iwf = shl i32 %i.iwe, 3
  %i.iwg = add i32 %i.iwf, %.0.copyload.i52503    ; 2 uses
  %i.iwh = zext i32 %i.iwg to i64                 ; 2 uses
  %.val48302 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwi = getelementptr inbounds nuw i8, ptr %.val48302, i64 %i.iwh
  %.0.copyload.i52505 = load i32, ptr %i.iwi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52505) #7, !srcloc !19
  %.not46375 = icmp eq i32 %.0.copyload.i52505, %.0.copyload.i52501
  br i1 %.not46375, label %.loopexit54312, label %.preheader54311

bb.ajt:                                           ; preds = %.preheader54402, %bb.ajr
  %.6644317 = phi i32 [ 0, %.preheader54402 ], [ %i.ivy, %bb.ajr ]
  %.val48301 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwj = getelementptr inbounds nuw i8, ptr %.val48301, i64 %i.hfa
  %.0.copyload.i52506 = load i32, ptr %i.iwj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52506) #7, !srcloc !19
  %i.iwk = shl i32 %.0.copyload.i52506, 2
  %i.iwl = add i32 %i.iwk, 4
  %i.iwm = mul i32 %.0.copyload.i52502, 3
  %.not46377 = icmp ult i32 %i.iwl, %i.iwm
  br i1 %.not46377, label %bb.ajv, label %bb.aju

bb.aju:                                           ; preds = %bb.ajt
  %i.iwn = shl i32 %.0.copyload.i52502, 1
  br label %bb.ajw

bb.ajv:                                           ; preds = %bb.ajt
  %i.iwo = xor i32 %.0.copyload.i52506, -1
  %i.iwp = add i32 %.0.copyload.i52502, %i.iwo
  %.val48300 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwq = getelementptr inbounds nuw i8, ptr %.val48300, i64 %i.hef
  %i.iwr = getelementptr inbounds nuw i8, ptr %i.iwq, i64 1092
  %.0.copyload.i52507 = load i32, ptr %i.iwr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52507) #7, !srcloc !19
  %i.iws = sub i32 %i.iwp, %.0.copyload.i52507
  %i.iwt = lshr i32 %.0.copyload.i52502, 3
  %i.iwu = icmp ugt i32 %i.iws, %i.iwt
  br i1 %i.iwu, label %bb.ajz, label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv, %bb.aju
  %.1344010 = phi i32 [ %i.iwn, %bb.aju ], [ %.0.copyload.i52502, %bb.ajv ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hdh, i32 noundef %.1344010) #7
  %.val48299 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwv = getelementptr inbounds nuw i8, ptr %.val48299, i64 %i.hef
  %i.iww = getelementptr inbounds nuw i8, ptr %i.iwv, i64 1084
  %.0.copyload.i52508 = load i32, ptr %i.iww, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52508) #7, !srcloc !19
  %.val48298 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwx = getelementptr inbounds nuw i8, ptr %.val48298, i64 %i.hev
  %.0.copyload.i52509 = load i32, ptr %i.iwx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52509) #7, !srcloc !19
  %i.iwy = add i32 %.0.copyload.i52509, -1        ; 2 uses
  %i.iwz = lshr i32 %.0.copyload.i52501, 4
  %i.ixa = lshr i32 %.0.copyload.i52501, 9
  %i.ixb = xor i32 %i.iwz, %i.ixa
  %i.ixc = and i32 %i.iwy, %i.ixb                 ; 2 uses
  %i.ixd = shl nuw nsw i32 %i.ixc, 3
  %i.ixe = add i32 %i.ixd, %.0.copyload.i52508    ; 3 uses
  %i.ixf = zext i32 %i.ixe to i64
  %.val48297 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixg = getelementptr inbounds nuw i8, ptr %.val48297, i64 %i.ixf
  %.0.copyload.i52510 = load i32, ptr %i.ixg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52510) #7, !srcloc !19
  %.not46378 = icmp eq i32 %.0.copyload.i52510, %.0.copyload.i52501
  br i1 %.not46378, label %.loopexit54310, label %.preheader54309

.preheader54309:                                  ; preds = %bb.ajw, %bb.ajy
  %.6744318 = phi i32 [ %i.ixq, %bb.ajy ], [ %i.ixe, %bb.ajw ] ; 2 uses
  %.1444011 = phi i32 [ %.0.copyload.i52511, %bb.ajy ], [ %.0.copyload.i52510, %bb.ajw ] ; 2 uses
  %.943800 = phi i32 [ %i.ixn, %bb.ajy ], [ 1, %bb.ajw ] ; 2 uses
  %.543578 = phi i32 [ %i.ixl, %bb.ajy ], [ 0, %bb.ajw ] ; 3 uses
  %.1143326 = phi i32 [ %i.ixo, %bb.ajy ], [ %i.ixc, %bb.ajw ]
  %i.ixh = icmp eq i32 %.1444011, -4
  %.not46381 = icmp eq i32 %.543578, 0            ; 2 uses
  br i1 %i.ixh, label %bb.ajx, label %bb.ajy

bb.ajx:                                           ; preds = %.preheader54309
  %i.ixi = select i1 %.not46381, i32 %.6744318, i32 %.543578
  br label %bb.ajz

bb.ajy:                                           ; preds = %.preheader54309
  %i.ixj = icmp eq i32 %.1444011, -8
  %i.ixk = select i1 %i.ixj, i1 %.not46381, i1 false
  %i.ixl = select i1 %i.ixk, i32 %.6744318, i32 %.543578
  %i.ixm = add i32 %.1143326, %.943800
  %i.ixn = add i32 %.943800, 1
  %i.ixo = and i32 %i.ixm, %i.iwy                 ; 2 uses
  %i.ixp = shl i32 %i.ixo, 3
  %i.ixq = add i32 %i.ixp, %.0.copyload.i52508    ; 3 uses
  %i.ixr = zext i32 %i.ixq to i64
  %.val48296 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixs = getelementptr inbounds nuw i8, ptr %.val48296, i64 %i.ixr
  %.0.copyload.i52511 = load i32, ptr %i.ixs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52511) #7, !srcloc !19
  %.not46380 = icmp eq i32 %.0.copyload.i52501, %.0.copyload.i52511
  br i1 %.not46380, label %.loopexit54310, label %.preheader54309

bb.ajz:                                           ; preds = %bb.ajv, %bb.ajx
  %.6944320 = phi i32 [ %i.ixi, %bb.ajx ], [ %.6644317, %bb.ajv ] ; 2 uses
  %i.ixt = zext i32 %.6944320 to i64
  %.val48295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixu = getelementptr inbounds nuw i8, ptr %.val48295, i64 %i.ixt
  %.0.copyload.i52512 = load i32, ptr %i.ixu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52512) #7, !srcloc !19
  br label %.loopexit54310

.loopexit54310:                                   ; preds = %bb.ajy, %bb.ajw, %bb.ajz
  %.7044321 = phi i32 [ %.6944320, %bb.ajz ], [ %i.ixe, %bb.ajw ], [ %i.ixq, %bb.ajy ]
  %.843137 = phi i32 [ %.0.copyload.i52512, %bb.ajz ], [ %.0.copyload.i52501, %bb.ajw ], [ %.0.copyload.i52501, %bb.ajy ]
  %.val48294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixv = getelementptr inbounds nuw i8, ptr %.val48294, i64 %i.hfa
  %.0.copyload.i52513 = load i32, ptr %i.ixv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52513) #7, !srcloc !19
  %i.ixw = add i32 %.0.copyload.i52513, 1
  %.val49900 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixx = getelementptr inbounds nuw i8, ptr %.val49900, i64 %i.hfa
  store i32 %i.ixw, ptr %i.ixx, align 1
  %.not46382 = icmp eq i32 %.843137, -4
  br i1 %.not46382, label %bb.akb, label %bb.aka

bb.aka:                                           ; preds = %.loopexit54310
  %.val48293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixy = getelementptr inbounds nuw i8, ptr %.val48293, i64 %i.hfb
  %.0.copyload.i52514 = load i32, ptr %i.ixy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52514) #7, !srcloc !19
  %i.ixz = add i32 %.0.copyload.i52514, -1
  %.val49899 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iya = getelementptr inbounds nuw i8, ptr %.val49899, i64 %i.hfb
  store i32 %i.ixz, ptr %i.iya, align 1
  br label %bb.akb

bb.akb:                                           ; preds = %bb.aka, %.loopexit54310
  %i.iyb = zext i32 %.7044321 to i64              ; 3 uses
  %.val49898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyc = getelementptr inbounds nuw i8, ptr %.val49898, i64 %i.iyb
  %i.iyd = getelementptr inbounds nuw i8, ptr %i.iyc, i64 4
  store i32 -1, ptr %i.iyd, align 1
  %.val49897 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iye = getelementptr inbounds nuw i8, ptr %.val49897, i64 %i.iyb
  store i32 %.0.copyload.i52501, ptr %i.iye, align 1
  br label %.loopexit54312

.loopexit54312:                                   ; preds = %bb.ajs, %bb.ajq, %bb.akb
  %.pre-phi55783.a = phi i64 [ %i.iyb, %bb.akb ], [ %i.ivu, %bb.ajq ], [ %i.iwh, %bb.ajs ]
  %.val49896 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyf = getelementptr inbounds nuw i8, ptr %.val49896, i64 %.pre-phi55783.a
  %i.iyg = getelementptr inbounds nuw i8, ptr %i.iyf, i64 4
  store i32 %.3643661, ptr %i.iyg, align 1
  %i.iyh = add nuw nsw i32 %.243302, 1            ; 2 uses
  %.not46383 = icmp eq i32 %i.iyh, %i.ius
  br i1 %.not46383, label %.loopexit54403, label %.preheader54402

.loopexit54403:                                   ; preds = %.loopexit54312, %func_types_eq.exit52457.thread, %.loopexit54407, %bb.ahz
  %.pre-phi55899.a = phi i64 [ %i.imz, %bb.ahz ], [ 0, %func_types_eq.exit52457.thread ], [ %i.imz, %.loopexit54407 ], [ %i.imz, %.loopexit54312 ]
  %.val48292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyi = getelementptr inbounds nuw i8, ptr %.val48292, i64 %.pre-phi55899.a
  %i.iyj = getelementptr inbounds nuw i8, ptr %i.iyi, i64 4
  %.0.copyload.i52515 = load i32, ptr %i.iyj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52515) #7, !srcloc !19
  %.not46384 = icmp eq i32 %.0.copyload.i52515, %i.ilx
  br i1 %.not46384, label %.loopexit54553, label %.preheader54552

.loopexit54553:                                   ; preds = %.loopexit54403, %bb.ahv
  %i.iyk = add i32 %.4743778, 4                   ; 2 uses
  %.not46385 = icmp eq i32 %i.iyk, %i.ilo
  br i1 %.not46385, label %.loopexit54619, label %bb.ahv

.loopexit54619:                                   ; preds = %.loopexit54553, %..loopexit54619_crit_edge
  %.pre-phi55897.a = phi i64 [ %.pre55896, %..loopexit54619_crit_edge ], [ %i.ilr, %.loopexit54553 ] ; 3 uses
  %i.iyl = add nuw nsw i64 %.pre-phi55897.a, 8    ; 7 uses
  %.val50883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iym = getelementptr inbounds nuw i8, ptr %.val50883, i64 %i.iyl
  store i64 34359738368, ptr %i.iym, align 1
  %i.iyn = add i32 %i.ili, -32                    ; 3 uses
  %i.iyo = add nuw nsw i64 %.pre-phi55897.a, 4    ; 4 uses
  %.val49895 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyp = getelementptr inbounds nuw i8, ptr %.val49895, i64 %i.iyo
  store i32 %i.iyn, ptr %i.iyp, align 1
  %.val48291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyq = getelementptr inbounds nuw i8, ptr %.val48291, i64 %i.hfd
  %.0.copyload.i52516 = load i32, ptr %i.iyq, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52516) #7, !srcloc !19
  %i.iyr = add i32 %.0.copyload.i52516, 31        ; 2 uses
  %i.iys = icmp ult i32 %i.iyr, 32
  br i1 %i.iys, label %.loopexit54618, label %bb.akc

bb.akc:                                           ; preds = %.loopexit54619
  %.val48290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyt = getelementptr inbounds nuw i8, ptr %.val48290, i64 %i.hew
  %.0.copyload.i52517 = load i32, ptr %i.iyt, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52517) #7, !srcloc !19
  %i.iyu = zext i32 %.0.copyload.i52517 to i64
  %.val48289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyv = getelementptr inbounds nuw i8, ptr %.val48289, i64 %i.iyu
  %.0.copyload.i52518 = load i32, ptr %i.iyv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52518) #7, !srcloc !19
  %.not46386 = icmp eq i32 %.0.copyload.i52518, 0
  br i1 %.not46386, label %bb.akd, label %bb.akh

bb.akd:                                           ; preds = %bb.akc
  %i.iyw = lshr i32 %i.iyr, 5                     ; 3 uses
  %wide.trip.count55726 = zext nneg i32 %i.iyw to i64
  %exitcond5572757425 = icmp eq i32 %i.iyw, 1
  br i1 %exitcond5572757425, label %.loopexit54618, label %.lr.ph57428.a

bb.ake:                                           ; preds = %.lr.ph57428.a
  %indvars.iv.next55721 = add nuw nsw i64 %indvars.iv5572257426, 1 ; 2 uses
  %exitcond55727 = icmp eq i64 %indvars.iv.next55721, %wide.trip.count55726
  br i1 %exitcond55727, label %.loopexit54618, label %.lr.ph57428.a

.lr.ph57428.a:                                    ; preds = %bb.akd, %bb.ake
  %indvars.iv5572257426 = phi i64 [ %indvars.iv.next55721, %bb.ake ], [ 1, %bb.akd ] ; 3 uses
  %indvars55724 = trunc i64 %indvars.iv5572257426 to i32
  %i.iyx = shl i32 %indvars55724, 2
  %i.iyy = add i32 %i.iyx, %.0.copyload.i52517
  %i.iyz = zext i32 %i.iyy to i64
  %.val48288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iza = getelementptr inbounds nuw i8, ptr %.val48288, i64 %i.iyz
  %.0.copyload.i52519 = load i32, ptr %i.iza, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52519) #7, !srcloc !19
  %.not46387 = icmp eq i32 %.0.copyload.i52519, 0
  br i1 %.not46387, label %bb.ake, label %bb.akf

bb.akf:                                           ; preds = %.lr.ph57428.a
  %8 = trunc nuw nsw i64 %indvars.iv5572257426 to i32
  %i.izb = icmp ugt i32 %i.iyw, %8
  br i1 %i.izb, label %bb.akg, label %.loopexit54618

.loopexit54618:                                   ; preds = %bb.ake, %bb.akd, %bb.akf, %.loopexit54619
  %i.izc = add i32 %.0.copyload.i52516, 1
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.heq, i32 noundef %i.izc, i32 noundef 0) #7
  br label %bb.akl

bb.akg:                                           ; preds = %bb.akf
  %.not46388 = icmp eq i32 %.0.copyload.i52516, 0
  br i1 %.not46388, label %.loopexit54617, label %bb.akh

bb.akh:                                           ; preds = %bb.akg, %bb.akc
  %i.izd = sub i32 0, %.0.copyload.i52516
  %i.ize = and i32 %i.izd, 31
  %i.izf = lshr i32 -1, %i.ize
  %i.izg = add i32 %.0.copyload.i52516, -1
  %i.izh = lshr i32 %i.izg, 5
  %i.izi = zext nneg i32 %i.izh to i64
  br label %bb.aki

bb.aki:                                           ; preds = %bb.akk, %bb.akh
  %indvars.iv55728 = phi i64 [ %indvars.iv.next55729.a, %bb.akk ], [ 0, %bb.akh ] ; 4 uses
  %indvars.iv55728.tr = trunc i64 %indvars.iv55728 to i32
  %i.izj = shl i32 %indvars.iv55728.tr, 2
  %i.izk = add i32 %i.izj, %.0.copyload.i52517
  %i.izl = zext i32 %i.izk to i64
  %.val48287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.izm = getelementptr inbounds nuw i8, ptr %.val48287, i64 %i.izl
  %.0.copyload.i52520 = load i32, ptr %i.izm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52520) #7, !srcloc !19
  %.not46389 = icmp eq i64 %indvars.iv55728, %i.izi ; 2 uses
  %i.izn = select i1 %.not46389, i32 %i.izf, i32 -1
  %i.izo = and i32 %.0.copyload.i52520, %i.izn    ; 2 uses
  %.not46390 = icmp eq i32 %i.izo, 0
  br i1 %.not46390, label %bb.akk, label %bb.akj

bb.akj:                                           ; preds = %bb.aki
  %i.izp = trunc nuw nsw i64 %indvars.iv55728 to i32
  %i.izq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.izo, i1 true)
  %i.izr = shl i32 %i.izp, 5
  %i.izs = or disjoint i32 %i.izq, %i.izr
  br label %.loopexit54617

bb.akk:                                           ; preds = %bb.aki
  %indvars.iv.next55729.a = add nuw nsw i64 %indvars.iv55728, 1
  br i1 %.not46389, label %.loopexit54617, label %bb.aki

.loopexit54617:                                   ; preds = %bb.akk, %bb.akg, %bb.akj
  %.943138 = phi i32 [ %i.izs, %bb.akj ], [ -1, %bb.akg ], [ -1, %bb.akk ] ; 3 uses
  %i.izt = lshr i32 %.943138, 3
  %i.izu = and i32 %i.izt, 536870908
  %i.izv = add i32 %i.izu, %.0.copyload.i52517
  %i.izw = zext i32 %i.izv to i64                 ; 2 uses
  %.val48286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.izx = getelementptr inbounds nuw i8, ptr %.val48286, i64 %i.izw
  %.0.copyload.i52521 = load i32, ptr %i.izx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52521) #7, !srcloc !19
  %i.izy = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %.943138)
  %i.izz = and i32 %.0.copyload.i52521, %i.izy
  %.val49894 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jaa = getelementptr inbounds nuw i8, ptr %.val49894, i64 %i.izw
  store i32 %i.izz, ptr %i.jaa, align 1
  br label %bb.akl

bb.akl:                                           ; preds = %.loopexit54617, %.loopexit54618
  %.043447 = phi i32 [ %.0.copyload.i52516, %.loopexit54618 ], [ %.943138, %.loopexit54617 ]
  %.val48285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jab = getelementptr inbounds nuw i8, ptr %.val48285, i64 %i.ilk
  %.0.copyload.i52522 = load i32, ptr %i.jab, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52522) #7, !srcloc !19
  %.not46391 = icmp eq i32 %.0.copyload.i52522, 0
  br i1 %.not46391, label %.loopexit54616, label %bb.akm

bb.akm:                                           ; preds = %bb.akl
  %.val48284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jac = getelementptr inbounds nuw i8, ptr %.val48284, i64 %i.ile
  %.0.copyload.i52523 = load i32, ptr %i.jac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52523) #7, !srcloc !19
  %i.jad = shl i32 %.0.copyload.i52522, 2
  %i.jae = add i32 %.0.copyload.i52523, %i.jad
  %i.jaf = add i32 %i.ili, -44
  br label %bb.akn

bb.akn:                                           ; preds = %.loopexit54551, %bb.akm
  %.1344109 = phi i32 [ 0, %bb.akm ], [ %.2244118, %.loopexit54551 ] ; 2 uses
  %.4843779 = phi i32 [ 0, %bb.akm ], [ %.5743788, %.loopexit54551 ] ; 2 uses
  %.1243385 = phi i32 [ %i.jae, %bb.akm ], [ %i.jag, %.loopexit54551 ]
  %.043278 = phi i32 [ 0, %bb.akm ], [ %.1043288, %.loopexit54551 ] ; 2 uses
  %i.jag = add i32 %.1243385, -4                  ; 3 uses
  %i.jah = zext i32 %i.jag to i64
  %.val48283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jai = getelementptr inbounds nuw i8, ptr %.val48283, i64 %i.jah
  %.0.copyload.i52524 = load i32, ptr %i.jai, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52524) #7, !srcloc !19
  %i.jaj = zext i32 %.0.copyload.i52524 to i64
  %.val48282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jak = getelementptr inbounds nuw i8, ptr %.val48282, i64 %i.jaj
  %i.jal = getelementptr inbounds nuw i8, ptr %i.jak, i64 36
  %.0.copyload.i52525 = load i32, ptr %i.jal, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52525) #7, !srcloc !19
  %i.jam = add i32 %.0.copyload.i52524, 36        ; 2 uses
  %.not46392 = icmp eq i32 %.0.copyload.i52525, %i.jam
  br i1 %.not46392, label %.loopexit54551, label %.preheader54550

.preheader54550:                                  ; preds = %bb.akn, %.loopexit54392
  %.1444110 = phi i32 [ %.2144117, %.loopexit54392 ], [ %.1344109, %bb.akn ] ; 2 uses
  %.4943780 = phi i32 [ %.5643787, %.loopexit54392 ], [ %.4843779, %bb.akn ] ; 3 uses
  %.3743662 = phi i32 [ %.0.copyload.i52647, %.loopexit54392 ], [ %.0.copyload.i52525, %bb.akn ] ; 2 uses
  %.143279 = phi i32 [ %.943287, %.loopexit54392 ], [ %.043278, %bb.akn ] ; 3 uses
  %i.jan = add i32 %.3743662, 8                   ; 18 uses
  %.val48281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jao = getelementptr inbounds nuw i8, ptr %.val48281, i64 %i.hev
  %.0.copyload.i52526 = load i32, ptr %i.jao, align 1 ; 13 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52526) #7, !srcloc !19
  %.not46393 = icmp eq i32 %.0.copyload.i52526, 0
  br i1 %.not46393, label %bb.akx, label %bb.ako

bb.ako:                                           ; preds = %.preheader54550
  %.val48280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jap = getelementptr inbounds nuw i8, ptr %.val48280, i64 %i.heu
  %.0.copyload.i52527 = load i32, ptr %i.jap, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52527) #7, !srcloc !19
  %i.jaq = add i32 %.0.copyload.i52526, -1        ; 4 uses
  %i.jar = lshr i32 %i.jan, 4
  %i.jas = lshr i32 %i.jan, 9
  %i.jat = xor i32 %i.jar, %i.jas                 ; 2 uses
  %i.jau = and i32 %i.jaq, %i.jat                 ; 4 uses
  %i.jav = shl nuw nsw i32 %i.jau, 3
  %i.jaw = add i32 %.0.copyload.i52527, %i.jav    ; 3 uses
  %i.jax = zext i32 %i.jaw to i64                 ; 2 uses
  %.val48279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jay = getelementptr inbounds nuw i8, ptr %.val48279, i64 %i.jax
  %.0.copyload.i52528 = load i32, ptr %i.jay, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52528) #7, !srcloc !19
  %i.jaz = icmp eq i32 %.0.copyload.i52528, %i.jan
  br i1 %i.jaz, label %.loopexit54400, label %.preheader54401

.preheader54401:                                  ; preds = %bb.ako, %bb.akp
  %.1043801 = phi i32 [ %i.jbd, %bb.akp ], [ %i.jau, %bb.ako ]
  %.643579 = phi i32 [ %i.jbc, %bb.akp ], [ 1, %bb.ako ] ; 2 uses
  %.143414 = phi i32 [ %.0.copyload.i52529, %bb.akp ], [ %.0.copyload.i52528, %bb.ako ]
  %i.jba = icmp eq i32 %.143414, -4
  br i1 %i.jba, label %.preheader54395, label %bb.akp

bb.akp:                                           ; preds = %.preheader54401
  %i.jbb = add i32 %.643579, %.1043801
  %i.jbc = add i32 %.643579, 1
  %i.jbd = and i32 %i.jbb, %i.jaq                 ; 2 uses
  %i.jbe = shl i32 %i.jbd, 3
  %i.jbf = add i32 %i.jbe, %.0.copyload.i52527
  %i.jbg = zext i32 %i.jbf to i64
  %.val48278 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbh = getelementptr inbounds nuw i8, ptr %.val48278, i64 %i.jbg
  %.0.copyload.i52529 = load i32, ptr %i.jbh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52529) #7, !srcloc !19
  %.not46394 = icmp eq i32 %.0.copyload.i52529, %i.jan
  br i1 %.not46394, label %.preheader54399, label %.preheader54401

.preheader54399:                                  ; preds = %bb.akp, %bb.akq
  %.1544012 = phi i32 [ %.0.copyload.i52530, %bb.akq ], [ %.0.copyload.i52528, %bb.akp ] ; 2 uses
  %.103 = phi i32 [ %i.jbn, %bb.akq ], [ %i.jau, %bb.akp ]
  %.243415 = phi i32 [ %i.jbk, %bb.akq ], [ 0, %bb.akp ] ; 4 uses
  %.1943359 = phi i32 [ %i.jbp, %bb.akq ], [ %i.jaw, %bb.akp ] ; 2 uses
  %.1243327 = phi i32 [ %i.jbm, %bb.akq ], [ 1, %bb.akp ] ; 2 uses
  %.not46395 = icmp eq i32 %.1544012, -4
  br i1 %.not46395, label %bb.akr, label %bb.akq

bb.akq:                                           ; preds = %.preheader54399
  %.not46404 = icmp eq i32 %.243415, 0
  %i.jbi = icmp eq i32 %.1544012, -8
  %i.jbj = select i1 %i.jbi, i1 %.not46404, i1 false
  %i.jbk = select i1 %i.jbj, i32 %.1943359, i32 %.243415
  %i.jbl = add i32 %.1243327, %.103
  %i.jbm = add i32 %.1243327, 1
  %i.jbn = and i32 %i.jbl, %i.jaq                 ; 2 uses
  %i.jbo = shl i32 %i.jbn, 3
  %i.jbp = add i32 %i.jbo, %.0.copyload.i52527    ; 2 uses
  %i.jbq = zext i32 %i.jbp to i64                 ; 2 uses
  %.val48277 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbr = getelementptr inbounds nuw i8, ptr %.val48277, i64 %i.jbq
  %.0.copyload.i52530 = load i32, ptr %i.jbr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52530) #7, !srcloc !19
  %.not46405 = icmp eq i32 %.0.copyload.i52530, %i.jan
  br i1 %.not46405, label %.loopexit54400, label %.preheader54399

bb.akr:                                           ; preds = %.preheader54399
  %.val48276 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbs = getelementptr inbounds nuw i8, ptr %.val48276, i64 %i.hfa
  %.0.copyload.i52531 = load i32, ptr %i.jbs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52531) #7, !srcloc !19
  %i.jbt = shl i32 %.0.copyload.i52531, 2
  %i.jbu = add i32 %i.jbt, 4
  %i.jbv = mul i32 %.0.copyload.i52526, 3
  %.not46396 = icmp ult i32 %i.jbu, %i.jbv
  br i1 %.not46396, label %bb.akt, label %bb.aks

bb.aks:                                           ; preds = %bb.akr
  %i.jbw = shl i32 %.0.copyload.i52526, 1
  br label %bb.alg

end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.0.copyload.i52549 = load i32, ptr %i.jfl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52549) #7, !srcloc !19
  %i.jfm = add i32 %.0.copyload.i52549, 1
  %.val49888 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jfn = getelementptr inbounds nuw i8, ptr %.val49888, i64 %i.hfa
  store i32 %i.jfm, ptr %i.jfn, align 1
  %.not46403 = icmp eq i32 %.1243141, -4
  br i1 %.not46403, label %bb.alk, label %bb.alj

bb.alj:                                           ; preds = %.loopexit54398
  %.val48257 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jfo = getelementptr inbounds nuw i8, ptr %.val48257, i64 %i.hfb
  %.0.copyload.i52550 = load i32, ptr %i.jfo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52550) #7, !srcloc !19
  %i.jfp = add i32 %.0.copyload.i52550, -1
  %.val49887 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jfq = getelementptr inbounds nuw i8, ptr %.val49887, i64 %i.hfb
  store i32 %i.jfp, ptr %i.jfq, align 1
  br label %bb.alk

bb.alk:                                           ; preds = %bb.alj, %.loopexit54398
  %i.jfr = zext i32 %.2843368 to i64              ; 3 uses
  %.val49886 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jfs = getelementptr inbounds nuw i8, ptr %.val49886, i64 %i.jfr
  %i.jft = getelementptr inbounds nuw i8, ptr %i.jfs, i64 4
  store i32 -1, ptr %i.jft, align 1
  %.val49885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jfu = getelementptr inbounds nuw i8, ptr %.val49885, i64 %i.jfr
  store i32 %i.jan, ptr %i.jfu, align 1
  br label %.loopexit54400

.loopexit54400:                                   ; preds = %bb.akq, %bb.ako, %bb.alk
  %.pre-phi55781.a = phi i64 [ %i.jfr, %bb.alk ], [ %i.jax, %bb.ako ], [ %i.jbq, %bb.akq ]
  %.val48256 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jfv = getelementptr inbounds nuw i8, ptr %.val48256, i64 %.pre-phi55781.a
  %i.jfw = getelementptr inbounds nuw i8, ptr %i.jfv, i64 4
  %.0.copyload.i52551 = load i32, ptr %i.jfw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52551) #7, !srcloc !19
  %.not46416 = icmp ult i32 %.0.copyload.i52551, %.4943780
  br i1 %.not46416, label %bb.all, label %bb.alp

bb.all:                                           ; preds = %.loopexit54400
  %i.jfx = lshr i32 %.0.copyload.i52551, 3
  %i.jfy = and i32 %i.jfx, 536870908
  %i.jfz = add i32 %i.jfy, %.143279
  %i.jga = zext i32 %i.jfz to i64
  %.val48255 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgb = getelementptr inbounds nuw i8, ptr %.val48255, i64 %i.jga
  %.0.copyload.i52552 = load i32, ptr %i.jgb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52552) #7, !srcloc !19
  %i.jgc = and i32 %.0.copyload.i52551, 31
  %i.jgd = shl nuw i32 1, %i.jgc
  %i.jge = and i32 %.0.copyload.i52552, %i.jgd
  %.not46417 = icmp eq i32 %i.jge, 0
  br i1 %.not46417, label %bb.alp, label %bb.alm

bb.alm:                                           ; preds = %bb.all
  %.val48254 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgf = getelementptr inbounds nuw i8, ptr %.val48254, i64 %i.iyl
  %.0.copyload.i52553 = load i32, ptr %i.jgf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52553) #7, !srcloc !19
  %.val48253 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgg = getelementptr inbounds nuw i8, ptr %.val48253, i64 %.pre-phi55897.a
  %i.jgh = getelementptr inbounds nuw i8, ptr %i.jgg, i64 12
  %.0.copyload.i52554 = load i32, ptr %i.jgh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52554) #7, !srcloc !19
  %.not46418 = icmp ult i32 %.0.copyload.i52553, %.0.copyload.i52554
  br i1 %.not46418, label %bb.alo, label %bb.aln

bb.aln:                                           ; preds = %bb.alm
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.jaf, i32 noundef %i.iyn, i32 noundef 0, i32 noundef 4) #7
  %.val48252 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgi = getelementptr inbounds nuw i8, ptr %.val48252, i64 %i.iyl
  %.0.copyload.i52555 = load i32, ptr %i.jgi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52555) #7, !srcloc !19
  br label %bb.alo

bb.alo:                                           ; preds = %bb.aln, %bb.alm
  %.3043370 = phi i32 [ %.0.copyload.i52555, %bb.aln ], [ %.0.copyload.i52553, %bb.alm ]
  %.val48251 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgj = getelementptr inbounds nuw i8, ptr %.val48251, i64 %i.iyo
  %.0.copyload.i52556 = load i32, ptr %i.jgj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52556) #7, !srcloc !19
  %i.jgk = shl i32 %.3043370, 2
  %i.jgl = add i32 %.0.copyload.i52556, %i.jgk
  %i.jgm = zext i32 %i.jgl to i64
  %.val49884 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgn = getelementptr inbounds nuw i8, ptr %.val49884, i64 %i.jgm
  store i32 %.0.copyload.i52551, ptr %i.jgn, align 1
  %.val48250 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgo = getelementptr inbounds nuw i8, ptr %.val48250, i64 %i.iyl
  %.0.copyload.i52557 = load i32, ptr %i.jgo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52557) #7, !srcloc !19
  %i.jgp = add i32 %.0.copyload.i52557, 1
  %.val49883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgq = getelementptr inbounds nuw i8, ptr %.val49883, i64 %i.iyl
  store i32 %i.jgp, ptr %i.jgq, align 1
  br label %bb.alp

bb.alp:                                           ; preds = %bb.all, %.loopexit54400, %bb.alo, %.loopexit54396
  %i.jgr = zext i32 %.3743662 to i64              ; 3 uses
  %.val48249 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgs = getelementptr inbounds nuw i8, ptr %.val48249, i64 %i.jgr
  %i.jgt = getelementptr inbounds nuw i8, ptr %i.jgs, i64 44
  %.0.copyload.i52558 = load i32, ptr %i.jgt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52558) #7, !srcloc !19
  %.not46419 = icmp eq i32 %.0.copyload.i52558, 0
  br i1 %.not46419, label %.loopexit54392, label %.preheader54391

.preheader54391:                                  ; preds = %bb.alp, %.loopexit54308
  %.1544111 = phi i32 [ %.2044116, %.loopexit54308 ], [ %.1444110, %bb.alp ] ; 19 uses
  %.5043781 = phi i32 [ %.5543786, %.loopexit54308 ], [ %.4943780, %bb.alp ] ; 19 uses
  %.3143371 = phi i32 [ %i.kcf, %.loopexit54308 ], [ 0, %bb.alp ] ; 2 uses
  %.243280 = phi i32 [ %.843286, %.loopexit54308 ], [ %.143279, %bb.alp ] ; 14 uses
  %.val48248 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgu = getelementptr inbounds nuw i8, ptr %.val48248, i64 %i.jgr
  %i.jgv = getelementptr inbounds nuw i8, ptr %i.jgu, i64 40
  %.0.copyload.i52559 = load i32, ptr %i.jgv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52559) #7, !srcloc !19
  %i.jgw = shl i32 %.3143371, 3
  %i.jgx = add i32 %.0.copyload.i52559, %i.jgw
  %i.jgy = zext i32 %i.jgx to i64
  %.val48247 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgz = getelementptr inbounds nuw i8, ptr %.val48247, i64 %i.jgy
  %.0.copyload.i52560 = load i32, ptr %i.jgz, align 1 ; 38 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52560) #7, !srcloc !19
  %i.jha = zext i32 %.0.copyload.i52560 to i64
  %.val51131 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhb = getelementptr inbounds nuw i8, ptr %.val51131, i64 %i.jha
  %.0.copyload.i52561 = load i8, ptr %i.jhb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i52561) #7, !srcloc !21
  %i.jhc = add i8 %.0.copyload.i52561, -109
  %i.jhd = icmp ult i8 %i.jhc, -107
  br i1 %i.jhd, label %.loopexit54308, label %bb.alq

bb.alq:                                           ; preds = %.preheader54391
  %i.jhe = add i32 %.0.copyload.i52560, -8
  %.val48246 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhf = getelementptr inbounds nuw i8, ptr %.val48246, i64 %i.heu
  %.0.copyload.i52562 = load i32, ptr %i.jhf, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52562) #7, !srcloc !19
  %.val48245 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhg = getelementptr inbounds nuw i8, ptr %.val48245, i64 %i.hev
  %.0.copyload.i52563 = load i32, ptr %i.jhg, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52563) #7, !srcloc !19
  %.not46420 = icmp eq i32 %.0.copyload.i52563, 0 ; 2 uses
  br i1 %.not46420, label %.loopexit54307, label %bb.alr

bb.alr:                                           ; preds = %bb.alq
  %i.jhh = add i32 %.0.copyload.i52563, -1        ; 2 uses
  %i.jhi = lshr i32 %.0.copyload.i52560, 4
  %i.jhj = lshr i32 %.0.copyload.i52560, 9
  %i.jhk = xor i32 %i.jhi, %i.jhj
  %i.jhl = and i32 %i.jhh, %i.jhk                 ; 2 uses
  %i.jhm = shl nuw nsw i32 %i.jhl, 3
  %i.jhn = add i32 %i.jhm, %.0.copyload.i52562
  %i.jho = zext i32 %i.jhn to i64
  %.val48244 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhp = getelementptr inbounds nuw i8, ptr %.val48244, i64 %i.jho
  %.0.copyload.i52564 = load i32, ptr %i.jhp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52564) #7, !srcloc !19
  %i.jhq = icmp eq i32 %.0.copyload.i52564, %.0.copyload.i52560
  br i1 %i.jhq, label %.loopexit54308, label %.preheader54306

.preheader54306:                                  ; preds = %bb.alr, %bb.als
  %.943582 = phi i32 [ %i.jhu, %bb.als ], [ %i.jhl, %bb.alr ]
  %.343416 = phi i32 [ %.0.copyload.i52565, %bb.als ], [ %.0.copyload.i52564, %bb.alr ]
  %.1643331 = phi i32 [ %i.jht, %bb.als ], [ 1, %bb.alr ] ; 2 uses
  %i.jhr = icmp eq i32 %.343416, -4
  br i1 %i.jhr, label %.loopexit54307, label %bb.als

bb.als:                                           ; preds = %.preheader54306
  %i.jhs = add i32 %.1643331, %.943582
  %i.jht = add i32 %.1643331, 1
  %i.jhu = and i32 %i.jhs, %i.jhh                 ; 2 uses
  %i.jhv = shl i32 %i.jhu, 3
  %i.jhw = add i32 %i.jhv, %.0.copyload.i52562
  %i.jhx = zext i32 %i.jhw to i64
  %.val48243 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhy = getelementptr inbounds nuw i8, ptr %.val48243, i64 %i.jhx
  %.0.copyload.i52565 = load i32, ptr %i.jhy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52565) #7, !srcloc !19
  %.not46421 = icmp eq i32 %.0.copyload.i52565, %.0.copyload.i52560
  br i1 %.not46421, label %.loopexit54308, label %.preheader54306

.loopexit54307:                                   ; preds = %.preheader54306, %bb.alq
  %i.jhz = zext i32 %i.jhe to i64
  %.val48242 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jia = getelementptr inbounds nuw i8, ptr %.val48242, i64 %i.jhz
  %i.jib = getelementptr inbounds nuw i8, ptr %i.jia, i64 36
  %.0.copyload.i52566 = load i32, ptr %i.jib, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52566) #7, !srcloc !19
  %.not46422 = icmp eq i32 %.0.copyload.i52524, %.0.copyload.i52566
  %.val48218 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not46422, label %bb.ana, label %bb.alt

bb.alt:                                           ; preds = %.loopexit54307
  %i.jic = getelementptr inbounds nuw i8, ptr %.val48218, i64 %i.hex
  %.0.copyload.i52567 = load i32, ptr %i.jic, align 1 ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52567) #7, !srcloc !19
  %i.jid = add i32 %.0.copyload.i52567, 31        ; 2 uses
  %i.jie = icmp ult i32 %i.jid, 32
  br i1 %i.jie, label %.loopexit54305, label %bb.alu

bb.alu:                                           ; preds = %bb.alt
  %.val48240 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jif = getelementptr inbounds nuw i8, ptr %.val48240, i64 %i.hew
  %.0.copyload.i52568 = load i32, ptr %i.jif, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52568) #7, !srcloc !19
  %i.jig = zext i32 %.0.copyload.i52568 to i64
  %.val48239 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jih = getelementptr inbounds nuw i8, ptr %.val48239, i64 %i.jig
  %.0.copyload.i52569 = load i32, ptr %i.jih, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52569) #7, !srcloc !19
  %.not46462 = icmp eq i32 %.0.copyload.i52569, 0
  br i1 %.not46462, label %bb.alv, label %bb.amr

bb.alv:                                           ; preds = %bb.alu
  %i.jii = lshr i32 %i.jid, 5                     ; 3 uses
  %wide.trip.count55736 = zext nneg i32 %i.jii to i64
  %exitcond5573757429 = icmp eq i32 %i.jii, 1
  br i1 %exitcond5573757429, label %.loopexit54305, label %.lr.ph57432

bb.alw:                                           ; preds = %.lr.ph57432
  %indvars.iv.next55729 = add nuw nsw i64 %indvars.iv5573257430, 1 ; 2 uses
  %exitcond55737 = icmp eq i64 %indvars.iv.next55729, %wide.trip.count55736
  br i1 %exitcond55737, label %.loopexit54305, label %.lr.ph57432

.lr.ph57432:                                      ; preds = %bb.alv, %bb.alw
  %indvars.iv5573257430 = phi i64 [ %indvars.iv.next55729, %bb.alw ], [ 1, %bb.alv ] ; 3 uses
  %indvars55734 = trunc i64 %indvars.iv5573257430 to i32
  %i.jij = shl i32 %indvars55734, 2
  %i.jik = add i32 %i.jij, %.0.copyload.i52568
  %i.jil = zext i32 %i.jik to i64
  %.val48238 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jim = getelementptr inbounds nuw i8, ptr %.val48238, i64 %i.jil
  %.0.copyload.i52570 = load i32, ptr %i.jim, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52570) #7, !srcloc !19
  %.not46463 = icmp eq i32 %.0.copyload.i52570, 0
  br i1 %.not46463, label %bb.alw, label %bb.alx

bb.alx:                                           ; preds = %.lr.ph57432
  %9 = trunc nuw nsw i64 %indvars.iv5573257430 to i32
  %i.jin = icmp ugt i32 %i.jii, %9
  br i1 %i.jin, label %bb.amq, label %.loopexit54305

.loopexit54305:                                   ; preds = %bb.alw, %bb.alv, %bb.alx, %bb.alt
  %i.jio = add i32 %.0.copyload.i52567, 1         ; 5 uses
  %.val48237 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jip = getelementptr inbounds nuw i8, ptr %.val48237, i64 %i.hey
  %.0.copyload.i52571 = load i32, ptr %i.jip, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52571) #7, !srcloc !19
  %i.jiq = shl i32 %.0.copyload.i52571, 5
  %.not46467 = icmp ugt i32 %i.jio, %i.jiq
  br i1 %.not46467, label %bb.aly, label %bb.amg

bb.aly:                                           ; preds = %.loopexit54305
  %.val48236 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jir = getelementptr inbounds nuw i8, ptr %.val48236, i64 %i.hew
  %.0.copyload.i52572 = load i32, ptr %i.jir, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52572) #7, !srcloc !19
  %i.jis = add i32 %.0.copyload.i52567, 32
  %i.jit = lshr i32 %i.jis, 5
  %i.jiu = shl i32 %.0.copyload.i52571, 1
  %i.jiv = tail call i32 @llvm.umax.i32(i32 %i.jiu, i32 %i.jit) ; 6 uses
  %i.jiw = shl i32 %i.jiv, 2
  %i.jix = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52572, i32 noundef %i.jiw) #7 ; 5 uses
  %.not46468 = icmp eq i32 %i.jix, 0
  br i1 %.not46468, label %bb.alz, label %bb.ama

bb.alz:                                           ; preds = %bb.aly
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.ama

bb.ama:                                           ; preds = %bb.alz, %bb.aly
  %.val49882 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jiy = getelementptr inbounds nuw i8, ptr %.val49882, i64 %i.hey
  store i32 %i.jiv, ptr %i.jiy, align 1
  %.val49881 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jiz = getelementptr inbounds nuw i8, ptr %.val49881, i64 %i.hef
  %i.jja = getelementptr inbounds nuw i8, ptr %i.jiz, i64 1100
  store i32 %i.jix, ptr %i.jja, align 1
  %.val48235 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjb = getelementptr inbounds nuw i8, ptr %.val48235, i64 %i.hex
  %.0.copyload.i52573 = load i32, ptr %i.jjb, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52573) #7, !srcloc !19
  %i.jjc = add i32 %.0.copyload.i52573, 31
  %i.jjd = lshr i32 %i.jjc, 5                     ; 4 uses
  %i.jje = icmp ult i32 %i.jjd, %i.jiv
  br i1 %i.jje, label %bb.amb, label %bb.amc

bb.amb:                                           ; preds = %bb.ama
  %i.jjf = shl nuw nsw i32 %i.jjd, 2
  %i.jjg = add i32 %i.jjf, %i.jix
  %i.jjh = sub nuw i32 %i.jiv, %i.jjd
  %i.jji = shl i32 %i.jjh, 2
  %i.jjj = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jjg, i32 noundef 0, i32 noundef %i.jji) #7 ; 0 uses
  br label %bb.amc

bb.amc:                                           ; preds = %bb.amb, %bb.ama
  %i.jjk = and i32 %.0.copyload.i52573, 31        ; 2 uses
  %.not46469 = icmp eq i32 %i.jjk, 0
  br i1 %.not46469, label %bb.ame, label %bb.amd

bb.amd:                                           ; preds = %bb.amc
  %i.jjl = shl nuw nsw i32 %i.jjd, 2
  %i.jjm = add i32 %i.jix, -4
  %i.jjn = add i32 %i.jjm, %i.jjl
  %i.jjo = zext i32 %i.jjn to i64                 ; 2 uses
  %.val48234 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjp = getelementptr inbounds nuw i8, ptr %.val48234, i64 %i.jjo
  %.0.copyload.i52574 = load i32, ptr %i.jjp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52574) #7, !srcloc !19
  %i.jjq = shl nsw i32 -1, %i.jjk
  %i.jjr = xor i32 %i.jjq, -1
  %i.jjs = and i32 %.0.copyload.i52574, %i.jjr
  %.val49880 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjt = getelementptr inbounds nuw i8, ptr %.val49880, i64 %i.jjo
  store i32 %i.jjs, ptr %i.jjt, align 1
  br label %bb.ame

bb.ame:                                           ; preds = %bb.amd, %bb.amc
  %i.jju = icmp eq i32 %.0.copyload.i52571, %i.jiv
  br i1 %i.jju, label %bb.amg, label %bb.amf

bb.amf:                                           ; preds = %bb.ame
  %i.jjv = shl i32 %.0.copyload.i52571, 2
  %i.jjw = add i32 %i.jix, %i.jjv
  %i.jjx = sub i32 %i.jiv, %.0.copyload.i52571
  %i.jjy = shl i32 %i.jjx, 2
  %i.jjz = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jjw, i32 noundef 0, i32 noundef %i.jjy) #7 ; 0 uses
  br label %bb.amg

bb.amg:                                           ; preds = %bb.ame, %.loopexit54305, %bb.amf
  %.7544326 = phi i32 [ %.0.copyload.i52567, %.loopexit54305 ], [ %.0.copyload.i52573, %bb.ame ], [ %.0.copyload.i52573, %bb.amf ] ; 4 uses
  %.not46470 = icmp ult i32 %.7544326, %i.jio
  br i1 %.not46470, label %bb.amh, label %bb.aml

bb.amh:                                           ; preds = %bb.amg
  %.val48233 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jka = getelementptr inbounds nuw i8, ptr %.val48233, i64 %i.hey
  %.0.copyload.i52575 = load i32, ptr %i.jka, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52575) #7, !srcloc !19
  %i.jkb = add i32 %.7544326, 31
  %i.jkc = lshr i32 %i.jkb, 5                     ; 4 uses
  %i.jkd = icmp ugt i32 %.0.copyload.i52575, %i.jkc
  br i1 %i.jkd, label %bb.ami, label %bb.amj

bb.ami:                                           ; preds = %bb.amh
  %.val48232 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jke = getelementptr inbounds nuw i8, ptr %.val48232, i64 %i.hef
  %i.jkf = getelementptr inbounds nuw i8, ptr %i.jke, i64 1100
  %.0.copyload.i52576 = load i32, ptr %i.jkf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52576) #7, !srcloc !19
  %i.jkg = shl nuw nsw i32 %i.jkc, 2
  %i.jkh = add i32 %.0.copyload.i52576, %i.jkg
  %i.jki = sub nuw i32 %.0.copyload.i52575, %i.jkc
  %i.jkj = shl i32 %i.jki, 2
  %i.jkk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jkh, i32 noundef 0, i32 noundef %i.jkj) #7 ; 0 uses
  %.val48231 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkl = getelementptr inbounds nuw i8, ptr %.val48231, i64 %i.hex
  %.0.copyload.i52577 = load i32, ptr %i.jkl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52577) #7, !srcloc !19
  br label %bb.amj

bb.amj:                                           ; preds = %bb.ami, %bb.amh
  %.7644327 = phi i32 [ %.0.copyload.i52577, %bb.ami ], [ %.7544326, %bb.amh ] ; 3 uses
  %i.jkm = and i32 %.7644327, 31                  ; 2 uses
  %.not46471 = icmp eq i32 %i.jkm, 0
  br i1 %.not46471, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %bb.amj
  %.val48230 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkn = getelementptr inbounds nuw i8, ptr %.val48230, i64 %i.hew
  %.0.copyload.i52578 = load i32, ptr %i.jkn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52578) #7, !srcloc !19
  %i.jko = shl nuw nsw i32 %i.jkc, 2
  %i.jkp = add nsw i32 %i.jko, -4
  %i.jkq = add i32 %i.jkp, %.0.copyload.i52578
  %i.jkr = zext i32 %i.jkq to i64                 ; 2 uses
  %.val48229 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jks = getelementptr inbounds nuw i8, ptr %.val48229, i64 %i.jkr
  %.0.copyload.i52579 = load i32, ptr %i.jks, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52579) #7, !srcloc !19
  %i.jkt = shl nsw i32 -1, %i.jkm
  %i.jku = xor i32 %i.jkt, -1
  %i.jkv = and i32 %.0.copyload.i52579, %i.jku
  %.val49879 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkw = getelementptr inbounds nuw i8, ptr %.val49879, i64 %i.jkr
  store i32 %i.jkv, ptr %i.jkw, align 1
  br label %bb.aml

bb.aml:                                           ; preds = %bb.amj, %bb.amg, %bb.amk
  %.7744328 = phi i32 [ %.7544326, %bb.amg ], [ %.7644327, %bb.amj ], [ %.7644327, %bb.amk ]
  %.val49878 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkx = getelementptr inbounds nuw i8, ptr %.val49878, i64 %i.hex
  store i32 %i.jio, ptr %i.jkx, align 1
  %.not46472 = icmp ugt i32 %.7744328, %i.jio
  br i1 %.not46472, label %bb.amm, label %bb.amw

bb.amm:                                           ; preds = %bb.aml
  %.val48228 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jky = getelementptr inbounds nuw i8, ptr %.val48228, i64 %i.hey
  %.0.copyload.i52580 = load i32, ptr %i.jky, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52580) #7, !srcloc !19
  %i.jkz = add i32 %.0.copyload.i52567, 32
  %i.jla = lshr i32 %i.jkz, 5                     ; 4 uses
  %i.jlb = icmp ugt i32 %.0.copyload.i52580, %i.jla
  br i1 %i.jlb, label %bb.amn, label %bb.amo

bb.amn:                                           ; preds = %bb.amm
  %.val48227 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlc = getelementptr inbounds nuw i8, ptr %.val48227, i64 %i.hef
  %i.jld = getelementptr inbounds nuw i8, ptr %i.jlc, i64 1100
  %.0.copyload.i52581 = load i32, ptr %i.jld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52581) #7, !srcloc !19
  %i.jle = shl nuw nsw i32 %i.jla, 2
  %i.jlf = add i32 %.0.copyload.i52581, %i.jle
  %i.jlg = sub nuw i32 %.0.copyload.i52580, %i.jla
  %i.jlh = shl i32 %i.jlg, 2
  %i.jli = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jlf, i32 noundef 0, i32 noundef %i.jlh) #7 ; 0 uses
  %.val48226 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlj = getelementptr inbounds nuw i8, ptr %.val48226, i64 %i.hex
  %.0.copyload.i52582 = load i32, ptr %i.jlj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52582) #7, !srcloc !19
  br label %bb.amo

bb.amo:                                           ; preds = %bb.amm, %bb.amn
  %.36 = phi i32 [ %.0.copyload.i52582, %bb.amn ], [ %i.jio, %bb.amm ]
  %i.jlk = and i32 %.36, 31                       ; 2 uses
  %.not46473 = icmp eq i32 %i.jlk, 0
  br i1 %.not46473, label %bb.amw, label %bb.amp

bb.amp:                                           ; preds = %bb.amo
  %i.jll = shl nsw i32 -1, %i.jlk
  %.val48225 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlm = getelementptr inbounds nuw i8, ptr %.val48225, i64 %i.hew
  %.0.copyload.i52583 = load i32, ptr %i.jlm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52583) #7, !srcloc !19
  %i.jln = shl nuw nsw i32 %i.jla, 2
  %i.jlo = add nsw i32 %i.jln, -4
  %i.jlp = add i32 %i.jlo, %.0.copyload.i52583
  br label %bb.amv

end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  br i1 %.not46464, label %.loopexit54304, label %bb.amr

bb.amr:                                           ; preds = %bb.amq, %bb.alu
  %i.jlq = sub i32 0, %.0.copyload.i52567
  %i.jlr = and i32 %i.jlq, 31
  %i.jls = lshr i32 -1, %i.jlr
  %i.jlt = add i32 %.0.copyload.i52567, -1
  %i.jlu = lshr i32 %i.jlt, 5
  %i.jlv = zext nneg i32 %i.jlu to i64
  br label %bb.ams

bb.ams:                                           ; preds = %bb.amu, %bb.amr
  %indvars.iv55738 = phi i64 [ %indvars.iv.next55739, %bb.amu ], [ 0, %bb.amr ] ; 4 uses
  %indvars.iv55738.tr = trunc i64 %indvars.iv55738 to i32
  %i.jlw = shl i32 %indvars.iv55738.tr, 2
  %i.jlx = add i32 %i.jlw, %.0.copyload.i52568
  %i.jly = zext i32 %i.jlx to i64
  %.val48224 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlz = getelementptr inbounds nuw i8, ptr %.val48224, i64 %i.jly
  %.0.copyload.i52584 = load i32, ptr %i.jlz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52584) #7, !srcloc !19
  %.not46465 = icmp eq i64 %indvars.iv55738, %i.jlv ; 2 uses
  %i.jma = select i1 %.not46465, i32 %i.jls, i32 -1
  %i.jmb = and i32 %.0.copyload.i52584, %i.jma    ; 2 uses
  %.not46466 = icmp eq i32 %i.jmb, 0
  br i1 %.not46466, label %bb.amu, label %bb.amt

bb.amt:                                           ; preds = %bb.ams
  %i.jmc = trunc nuw nsw i64 %indvars.iv55738 to i32
  %i.jmd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.jmb, i1 true)
  %i.jme = shl i32 %i.jmc, 5
  %i.jmf = or disjoint i32 %i.jmd, %i.jme
  br label %.loopexit54304

bb.amu:                                           ; preds = %bb.ams
  %indvars.iv.next55739 = add nuw nsw i64 %indvars.iv55738, 1
  br i1 %.not46465, label %.loopexit54304, label %bb.ams

.loopexit54304:                                   ; preds = %bb.amu, %bb.amq, %bb.amt
  %.37 = phi i32 [ %i.jmf, %bb.amt ], [ -1, %bb.amq ], [ -1, %bb.amu ] ; 3 uses
  %i.jmg = and i32 %.37, 31
  %i.jmh = shl nuw i32 1, %i.jmg
  %i.jmi = lshr i32 %.37, 3
  %i.jmj = and i32 %i.jmi, 536870908
  %i.jmk = add i32 %i.jmj, %.0.copyload.i52568
  br label %bb.amv

bb.amv:                                           ; preds = %.loopexit54304, %bb.amp
  %.1944016 = phi i32 [ %.0.copyload.i52567, %bb.amp ], [ %.37, %.loopexit54304 ]
  %.105 = phi i32 [ %i.jll, %bb.amp ], [ %i.jmh, %.loopexit54304 ]
  %.1343142 = phi i32 [ %i.jlp, %bb.amp ], [ %i.jmk, %.loopexit54304 ]
  %i.jml = zext i32 %.1343142 to i64              ; 2 uses
  %.val48223 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmm = getelementptr inbounds nuw i8, ptr %.val48223, i64 %i.jml
  %.0.copyload.i52585 = load i32, ptr %i.jmm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52585) #7, !srcloc !19
  %i.jmn = xor i32 %.105, -1
  %i.jmo = and i32 %.0.copyload.i52585, %i.jmn
  %.val49877 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmp = getelementptr inbounds nuw i8, ptr %.val49877, i64 %i.jml
  store i32 %i.jmo, ptr %i.jmp, align 1
  br label %bb.amw

bb.amw:                                           ; preds = %bb.amo, %bb.aml, %bb.amv
  %.2044017 = phi i32 [ %.0.copyload.i52567, %bb.aml ], [ %.0.copyload.i52567, %bb.amo ], [ %.1944016, %bb.amv ] ; 4 uses
  %.val48222 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmq = getelementptr inbounds nuw i8, ptr %.val48222, i64 %i.hev
  %.0.copyload.i52586 = load i32, ptr %i.jmq, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52586) #7, !srcloc !19
  %.not46474 = icmp eq i32 %.0.copyload.i52586, 0
  br i1 %.not46474, label %bb.apu, label %bb.amx

bb.amx:                                           ; preds = %bb.amw
  %.val48221 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmr = getelementptr inbounds nuw i8, ptr %.val48221, i64 %i.heu
  %.0.copyload.i52587 = load i32, ptr %i.jmr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52587) #7, !srcloc !19
  %i.jms = add i32 %.0.copyload.i52586, -1        ; 2 uses
  %i.jmt = lshr i32 %.0.copyload.i52560, 4
  %i.jmu = lshr i32 %.0.copyload.i52560, 9
  %i.jmv = xor i32 %i.jmt, %i.jmu
  %i.jmw = and i32 %i.jms, %i.jmv                 ; 2 uses
  %i.jmx = shl nuw nsw i32 %i.jmw, 3
  %i.jmy = add i32 %.0.copyload.i52587, %i.jmx    ; 2 uses
  %i.jmz = zext i32 %i.jmy to i64                 ; 2 uses
  %.val48220 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jna = getelementptr inbounds nuw i8, ptr %.val48220, i64 %i.jmz
  %.0.copyload.i52588 = load i32, ptr %i.jna, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52588) #7, !srcloc !19
  %i.jnb = icmp eq i32 %.0.copyload.i52588, %.0.copyload.i52560
  br i1 %i.jnb, label %.loopexit54293, label %.preheader54302

.preheader54302:                                  ; preds = %bb.amx, %bb.amz
  %.106 = phi i32 [ %.0.copyload.i52589, %bb.amz ], [ %.0.copyload.i52588, %bb.amx ] ; 2 uses
  %.1143802 = phi i32 [ %i.jng, %bb.amz ], [ 0, %bb.amx ] ; 3 uses
  %.1043583 = phi i32 [ %i.jnj, %bb.amz ], [ %i.jmw, %bb.amx ]
  %.443417 = phi i32 [ %i.jnl, %bb.amz ], [ %i.jmy, %bb.amx ] ; 2 uses
  %.443397 = phi i32 [ %i.jni, %bb.amz ], [ 1, %bb.amx ] ; 2 uses
  %i.jnc = icmp eq i32 %.106, -4
  %.not46477 = icmp eq i32 %.1143802, 0           ; 2 uses
  br i1 %i.jnc, label %bb.amy, label %bb.amz

bb.amy:                                           ; preds = %.preheader54302
  %i.jnd = select i1 %.not46477, i32 %.443417, i32 %.1143802
  br label %bb.apu

bb.amz:                                           ; preds = %.preheader54302
  %i.jne = icmp eq i32 %.106, -8
  %i.jnf = select i1 %i.jne, i1 %.not46477, i1 false
  %i.jng = select i1 %i.jnf, i32 %.443417, i32 %.1143802
  %i.jnh = add i32 %.443397, %.1043583
  %i.jni = add i32 %.443397, 1
  %i.jnj = and i32 %i.jnh, %i.jms                 ; 2 uses
  %i.jnk = shl i32 %i.jnj, 3
  %i.jnl = add i32 %i.jnk, %.0.copyload.i52587    ; 2 uses
  %i.jnm = zext i32 %i.jnl to i64                 ; 2 uses
  %.val48219 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jnn = getelementptr inbounds nuw i8, ptr %.val48219, i64 %i.jnm
  %.0.copyload.i52589 = load i32, ptr %i.jnn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52589) #7, !srcloc !19
  %.not46476 = icmp eq i32 %.0.copyload.i52589, %.0.copyload.i52560
  br i1 %.not46476, label %.loopexit54293, label %.preheader54302

bb.ana:                                           ; preds = %.loopexit54307
  %i.jno = getelementptr inbounds nuw i8, ptr %.val48218, i64 %i.iyl
  %.0.copyload.i52590 = load i32, ptr %i.jno, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52590) #7, !srcloc !19
  %.not46423 = icmp eq i32 %.0.copyload.i52590, 0
  %.val48213 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not46423, label %bb.anf, label %bb.anb

bb.anb:                                           ; preds = %bb.ana
  %i.jnp = getelementptr inbounds nuw i8, ptr %.val48213, i64 %i.iyo
  %.0.copyload.i52591 = load i32, ptr %i.jnp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52591) #7, !srcloc !19
  %i.jnq = shl i32 %.0.copyload.i52590, 2
  %i.jnr = add i32 %i.jnq, -4
  %i.jns = add i32 %i.jnr, %.0.copyload.i52591
  %i.jnt = zext i32 %i.jns to i64
  %.val48216 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jnu = getelementptr inbounds nuw i8, ptr %.val48216, i64 %i.jnt
  %.0.copyload.i52592 = load i32, ptr %i.jnu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52592) #7, !srcloc !19
  %i.jnv = add i32 %.0.copyload.i52590, -1
  %.val49876 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jnw = getelementptr inbounds nuw i8, ptr %.val49876, i64 %i.iyl
  store i32 %i.jnv, ptr %i.jnw, align 1
  br i1 %.not46420, label %bb.apn, label %bb.anc

bb.anc:                                           ; preds = %bb.anb
  %i.jnx = add i32 %.0.copyload.i52563, -1        ; 2 uses
  %i.jny = lshr i32 %.0.copyload.i52560, 4
  %i.jnz = lshr i32 %.0.copyload.i52560, 9
  %i.joa = xor i32 %i.jny, %i.jnz
  %i.job = and i32 %i.jnx, %i.joa                 ; 2 uses
  %i.joc = shl nuw nsw i32 %i.job, 3
  %i.jod = add i32 %i.joc, %.0.copyload.i52562    ; 2 uses
  %i.joe = zext i32 %i.jod to i64                 ; 2 uses
  %.val48215 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jof = getelementptr inbounds nuw i8, ptr %.val48215, i64 %i.joe
  %.0.copyload.i52593 = load i32, ptr %i.jof, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52593) #7, !srcloc !19
  %i.jog = icmp eq i32 %.0.copyload.i52593, %.0.copyload.i52560
  br i1 %i.jog, label %.loopexit54293, label %.preheader54298

.preheader54298:                                  ; preds = %bb.anc, %bb.ane
  %.1243803 = phi i32 [ %i.jol, %bb.ane ], [ 0, %bb.anc ] ; 3 uses
  %.1143584 = phi i32 [ %.0.copyload.i52594, %bb.ane ], [ %.0.copyload.i52593, %bb.anc ] ; 2 uses
  %.543418 = phi i32 [ %i.joq, %bb.ane ], [ %i.jod, %bb.anc ] ; 2 uses
  %.543398 = phi i32 [ %i.jon, %bb.ane ], [ 1, %bb.anc ] ; 2 uses
  %.1743332 = phi i32 [ %i.joo, %bb.ane ], [ %i.job, %bb.anc ]
  %i.joh = icmp eq i32 %.1143584, -4
  %.not46455 = icmp eq i32 %.1243803, 0           ; 2 uses
  br i1 %i.joh, label %bb.and, label %bb.ane

bb.and:                                           ; preds = %.preheader54298
  %i.joi = select i1 %.not46455, i32 %.543418, i32 %.1243803
  br label %bb.apn

bb.ane:                                           ; preds = %.preheader54298
  %i.joj = icmp eq i32 %.1143584, -8
  %i.jok = select i1 %i.joj, i1 %.not46455, i1 false
  %i.jol = select i1 %i.jok, i32 %.543418, i32 %.1243803
  %i.jom = add i32 %.1743332, %.543398
  %i.jon = add i32 %.543398, 1
  %i.joo = and i32 %i.jom, %i.jnx                 ; 2 uses
  %i.jop = shl i32 %i.joo, 3
  %i.joq = add i32 %i.jop, %.0.copyload.i52562    ; 2 uses
  %i.jor = zext i32 %i.joq to i64                 ; 2 uses
  %.val48214 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jos = getelementptr inbounds nuw i8, ptr %.val48214, i64 %i.jor
  %.0.copyload.i52594 = load i32, ptr %i.jos, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52594) #7, !srcloc !19
  %.not46454 = icmp eq i32 %.0.copyload.i52594, %.0.copyload.i52560
  br i1 %.not46454, label %.loopexit54293, label %.preheader54298

bb.anf:                                           ; preds = %bb.ana
  %i.jot = getelementptr inbounds nuw i8, ptr %.val48213, i64 %i.hex
  %.0.copyload.i52595 = load i32, ptr %i.jot, align 1 ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52595) #7, !srcloc !19
  %i.jou = add i32 %.0.copyload.i52595, 31        ; 2 uses
  %i.jov = icmp ult i32 %i.jou, 32
  br i1 %i.jov, label %.loopexit54295, label %bb.ang

bb.ang:                                           ; preds = %bb.anf
  %.val48212 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jow = getelementptr inbounds nuw i8, ptr %.val48212, i64 %i.hew
  %.0.copyload.i52596 = load i32, ptr %i.jow, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52596) #7, !srcloc !19
  %i.jox = zext i32 %.0.copyload.i52596 to i64
  %.val48211 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.joy = getelementptr inbounds nuw i8, ptr %.val48211, i64 %i.jox
  %.0.copyload.i52597 = load i32, ptr %i.joy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52597) #7, !srcloc !19
  %.not46424 = icmp eq i32 %.0.copyload.i52597, 0
  br i1 %.not46424, label %bb.anh, label %bb.aod

bb.anh:                                           ; preds = %bb.ang
  %i.joz = lshr i32 %i.jou, 5                     ; 3 uses
  %wide.trip.count55746 = zext nneg i32 %i.joz to i64
  %exitcond5574757433 = icmp eq i32 %i.joz, 1
  br i1 %exitcond5574757433, label %.loopexit54295, label %.lr.ph57436

bb.ani:                                           ; preds = %.lr.ph57436
  %indvars.iv.next55737 = add nuw nsw i64 %indvars.iv5574257434, 1 ; 2 uses
  %exitcond55747 = icmp eq i64 %indvars.iv.next55737, %wide.trip.count55746
  br i1 %exitcond55747, label %.loopexit54295, label %.lr.ph57436

.lr.ph57436:                                      ; preds = %bb.anh, %bb.ani
  %indvars.iv5574257434 = phi i64 [ %indvars.iv.next55737, %bb.ani ], [ 1, %bb.anh ] ; 3 uses
  %indvars55744 = trunc i64 %indvars.iv5574257434 to i32
  %i.jpa = shl i32 %indvars55744, 2
  %i.jpb = add i32 %i.jpa, %.0.copyload.i52596
  %i.jpc = zext i32 %i.jpb to i64
  %.val48210 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpd = getelementptr inbounds nuw i8, ptr %.val48210, i64 %i.jpc
  %.0.copyload.i52598 = load i32, ptr %i.jpd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52598) #7, !srcloc !19
  %.not46425 = icmp eq i32 %.0.copyload.i52598, 0
  br i1 %.not46425, label %bb.ani, label %bb.anj

bb.anj:                                           ; preds = %.lr.ph57436
  %10 = trunc nuw nsw i64 %indvars.iv5574257434 to i32
  %i.jpe = icmp ugt i32 %i.joz, %10
  br i1 %i.jpe, label %bb.aoc, label %.loopexit54295

.loopexit54295:                                   ; preds = %bb.ani, %bb.anh, %bb.anj, %bb.anf
  %i.jpf = add i32 %.0.copyload.i52595, 1         ; 5 uses
  %.val48209 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpg = getelementptr inbounds nuw i8, ptr %.val48209, i64 %i.hey
  %.0.copyload.i52599 = load i32, ptr %i.jpg, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52599) #7, !srcloc !19
  %i.jph = shl i32 %.0.copyload.i52599, 5
  %.not46429 = icmp ugt i32 %i.jpf, %i.jph
  br i1 %.not46429, label %bb.ank, label %bb.ans

bb.ank:                                           ; preds = %.loopexit54295
  %.val48208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpi = getelementptr inbounds nuw i8, ptr %.val48208, i64 %i.hew
  %.0.copyload.i52600 = load i32, ptr %i.jpi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52600) #7, !srcloc !19
  %i.jpj = add i32 %.0.copyload.i52595, 32
  %i.jpk = lshr i32 %i.jpj, 5
  %i.jpl = shl i32 %.0.copyload.i52599, 1
  %i.jpm = tail call i32 @llvm.umax.i32(i32 %i.jpl, i32 %i.jpk) ; 6 uses
  %i.jpn = shl i32 %i.jpm, 2
  %i.jpo = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52600, i32 noundef %i.jpn) #7 ; 5 uses
  %.not46430 = icmp eq i32 %i.jpo, 0
  br i1 %.not46430, label %bb.anl, label %bb.anm

bb.anl:                                           ; preds = %bb.ank
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.anm

bb.anm:                                           ; preds = %bb.anl, %bb.ank
  %.val49875 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpp = getelementptr inbounds nuw i8, ptr %.val49875, i64 %i.hey
  store i32 %i.jpm, ptr %i.jpp, align 1
  %.val49874 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpq = getelementptr inbounds nuw i8, ptr %.val49874, i64 %i.hef
  %i.jpr = getelementptr inbounds nuw i8, ptr %i.jpq, i64 1100
  store i32 %i.jpo, ptr %i.jpr, align 1
  %.val48207 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jps = getelementptr inbounds nuw i8, ptr %.val48207, i64 %i.hex
  %.0.copyload.i52601 = load i32, ptr %i.jps, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52601) #7, !srcloc !19
  %i.jpt = add i32 %.0.copyload.i52601, 31
  %i.jpu = lshr i32 %i.jpt, 5                     ; 4 uses
  %i.jpv = icmp ult i32 %i.jpu, %i.jpm
  br i1 %i.jpv, label %bb.ann, label %bb.ano

bb.ann:                                           ; preds = %bb.anm
  %i.jpw = shl nuw nsw i32 %i.jpu, 2
  %i.jpx = add i32 %i.jpw, %i.jpo
  %i.jpy = sub nuw i32 %i.jpm, %i.jpu
  %i.jpz = shl i32 %i.jpy, 2
  %i.jqa = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jpx, i32 noundef 0, i32 noundef %i.jpz) #7 ; 0 uses
  br label %bb.ano

bb.ano:                                           ; preds = %bb.ann, %bb.anm
  %i.jqb = and i32 %.0.copyload.i52601, 31        ; 2 uses
  %.not46431 = icmp eq i32 %i.jqb, 0
  br i1 %.not46431, label %bb.anq, label %bb.anp

bb.anp:                                           ; preds = %bb.ano
  %i.jqc = shl nuw nsw i32 %i.jpu, 2
  %i.jqd = add i32 %i.jpo, -4
  %i.jqe = add i32 %i.jqd, %i.jqc
  %i.jqf = zext i32 %i.jqe to i64                 ; 2 uses
  %.val48206 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqg = getelementptr inbounds nuw i8, ptr %.val48206, i64 %i.jqf
  %.0.copyload.i52602 = load i32, ptr %i.jqg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52602) #7, !srcloc !19
  %i.jqh = shl nsw i32 -1, %i.jqb
  %i.jqi = xor i32 %i.jqh, -1
  %i.jqj = and i32 %.0.copyload.i52602, %i.jqi
  %.val49873 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqk = getelementptr inbounds nuw i8, ptr %.val49873, i64 %i.jqf
  store i32 %i.jqj, ptr %i.jqk, align 1
  br label %bb.anq

bb.anq:                                           ; preds = %bb.anp, %bb.ano
  %i.jql = icmp eq i32 %.0.copyload.i52599, %i.jpm
  br i1 %i.jql, label %bb.ans, label %bb.anr

bb.anr:                                           ; preds = %bb.anq
  %i.jqm = shl i32 %.0.copyload.i52599, 2
  %i.jqn = add i32 %i.jpo, %i.jqm
  %i.jqo = sub i32 %i.jpm, %.0.copyload.i52599
  %i.jqp = shl i32 %i.jqo, 2
  %i.jqq = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jqn, i32 noundef 0, i32 noundef %i.jqp) #7 ; 0 uses
  br label %bb.ans

bb.ans:                                           ; preds = %bb.anq, %.loopexit54295, %bb.anr
  %.8044331 = phi i32 [ %.0.copyload.i52595, %.loopexit54295 ], [ %.0.copyload.i52601, %bb.anq ], [ %.0.copyload.i52601, %bb.anr ] ; 4 uses
  %.not46432 = icmp ult i32 %.8044331, %i.jpf
  br i1 %.not46432, label %bb.ant, label %bb.anx

bb.ant:                                           ; preds = %bb.ans
  %.val48205 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqr = getelementptr inbounds nuw i8, ptr %.val48205, i64 %i.hey
  %.0.copyload.i52603 = load i32, ptr %i.jqr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52603) #7, !srcloc !19
  %i.jqs = add i32 %.8044331, 31
  %i.jqt = lshr i32 %i.jqs, 5                     ; 4 uses
  %i.jqu = icmp ugt i32 %.0.copyload.i52603, %i.jqt
  br i1 %i.jqu, label %bb.anu, label %bb.anv

bb.anu:                                           ; preds = %bb.ant
  %.val48204 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqv = getelementptr inbounds nuw i8, ptr %.val48204, i64 %i.hef
  %i.jqw = getelementptr inbounds nuw i8, ptr %i.jqv, i64 1100
  %.0.copyload.i52604 = load i32, ptr %i.jqw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52604) #7, !srcloc !19
  %i.jqx = shl nuw nsw i32 %i.jqt, 2
  %i.jqy = add i32 %.0.copyload.i52604, %i.jqx
  %i.jqz = sub nuw i32 %.0.copyload.i52603, %i.jqt
  %i.jra = shl i32 %i.jqz, 2
  %i.jrb = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jqy, i32 noundef 0, i32 noundef %i.jra) #7 ; 0 uses
  %.val48203 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrc = getelementptr inbounds nuw i8, ptr %.val48203, i64 %i.hex
  %.0.copyload.i52605 = load i32, ptr %i.jrc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52605) #7, !srcloc !19
  br label %bb.anv

bb.anv:                                           ; preds = %bb.anu, %bb.ant
  %.8144332 = phi i32 [ %.0.copyload.i52605, %bb.anu ], [ %.8044331, %bb.ant ] ; 3 uses
  %i.jrd = and i32 %.8144332, 31                  ; 2 uses
  %.not46433 = icmp eq i32 %i.jrd, 0
  br i1 %.not46433, label %bb.anx, label %bb.anw

bb.anw:                                           ; preds = %bb.anv
  %.val48202 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jre = getelementptr inbounds nuw i8, ptr %.val48202, i64 %i.hew
  %.0.copyload.i52606 = load i32, ptr %i.jre, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52606) #7, !srcloc !19
  %i.jrf = shl nuw nsw i32 %i.jqt, 2
  %i.jrg = add nsw i32 %i.jrf, -4
  %i.jrh = add i32 %i.jrg, %.0.copyload.i52606
  %i.jri = zext i32 %i.jrh to i64                 ; 2 uses
  %.val48201 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrj = getelementptr inbounds nuw i8, ptr %.val48201, i64 %i.jri
  %.0.copyload.i52607 = load i32, ptr %i.jrj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52607) #7, !srcloc !19
  %i.jrk = shl nsw i32 -1, %i.jrd
  %i.jrl = xor i32 %i.jrk, -1
  %i.jrm = and i32 %.0.copyload.i52607, %i.jrl
  %.val49872 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrn = getelementptr inbounds nuw i8, ptr %.val49872, i64 %i.jri
  store i32 %i.jrm, ptr %i.jrn, align 1
  br label %bb.anx

bb.anx:                                           ; preds = %bb.anv, %bb.ans, %bb.anw
  %.8244333 = phi i32 [ %.8044331, %bb.ans ], [ %.8144332, %bb.anv ], [ %.8144332, %bb.anw ]
  %.val49871 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jro = getelementptr inbounds nuw i8, ptr %.val49871, i64 %i.hex
  store i32 %i.jpf, ptr %i.jro, align 1
  %.not46434 = icmp ugt i32 %.8244333, %i.jpf
  br i1 %.not46434, label %bb.any, label %bb.aoi

bb.any:                                           ; preds = %bb.anx
  %.val48200 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrp = getelementptr inbounds nuw i8, ptr %.val48200, i64 %i.hey
  %.0.copyload.i52608 = load i32, ptr %i.jrp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52608) #7, !srcloc !19
  %i.jrq = add i32 %.0.copyload.i52595, 32
  %i.jrr = lshr i32 %i.jrq, 5                     ; 4 uses
  %i.jrs = icmp ugt i32 %.0.copyload.i52608, %i.jrr
  br i1 %i.jrs, label %bb.anz, label %bb.aoa

bb.anz:                                           ; preds = %bb.any
  %.val48199 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrt = getelementptr inbounds nuw i8, ptr %.val48199, i64 %i.hef
  %i.jru = getelementptr inbounds nuw i8, ptr %i.jrt, i64 1100
  %.0.copyload.i52609 = load i32, ptr %i.jru, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52609) #7, !srcloc !19
  %i.jrv = shl nuw nsw i32 %i.jrr, 2
  %i.jrw = add i32 %.0.copyload.i52609, %i.jrv
  %i.jrx = sub nuw i32 %.0.copyload.i52608, %i.jrr
  %i.jry = shl i32 %i.jrx, 2
  %i.jrz = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jrw, i32 noundef 0, i32 noundef %i.jry) #7 ; 0 uses
  %.val48198 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsa = getelementptr inbounds nuw i8, ptr %.val48198, i64 %i.hex
  %.0.copyload.i52610 = load i32, ptr %i.jsa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52610) #7, !srcloc !19
  br label %bb.aoa

bb.aoa:                                           ; preds = %bb.any, %bb.anz
  %.38 = phi i32 [ %.0.copyload.i52610, %bb.anz ], [ %i.jpf, %bb.any ]
  %i.jsb = and i32 %.38, 31                       ; 2 uses
  %.not46435 = icmp eq i32 %i.jsb, 0
  br i1 %.not46435, label %bb.aoi, label %bb.aob

bb.aob:                                           ; preds = %bb.aoa
  %i.jsc = shl nsw i32 -1, %i.jsb
  %.val48197 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsd = getelementptr inbounds nuw i8, ptr %.val48197, i64 %i.hew
  %.0.copyload.i52611 = load i32, ptr %i.jsd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52611) #7, !srcloc !19
  %i.jse = shl nuw nsw i32 %i.jrr, 2
  %i.jsf = add nsw i32 %i.jse, -4
  %i.jsg = add i32 %i.jsf, %.0.copyload.i52611
  br label %bb.aoh

end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i45.i52685) #7, !srcloc !19
  %i.khj = or disjoint i32 %i.khf, 8
  %i.khk = add i32 %i.khj, %.0.copyload.i.i52683
  %i.khl = zext i32 %i.khk to i64
  %.val.i52686 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.khm = getelementptr inbounds nuw i8, ptr %.val.i52686, i64 %i.khl
  %.0.copyload.i46.i52687 = load i32, ptr %i.khm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i46.i52687) #7, !srcloc !19
  %.val44.i52688 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.khn = getelementptr inbounds nuw i8, ptr %.val44.i52688, i64 %i.kdy
  store i32 %.0.copyload.i45.i52685, ptr %i.khn, align 1
  %i.kho = add i32 %.0.copyload.i46.i52687, -8
  %.not.i52689 = icmp eq i32 %.0.copyload.i46.i52687, 0
  %i.khp = select i1 %.not.i52689, i32 0, i32 %i.kho
  %.val43.i52690 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.khq = getelementptr inbounds nuw i8, ptr %.val43.i52690, i64 %i.kdy
  %i.khr = getelementptr inbounds nuw i8, ptr %i.khq, i64 4
  store i32 %i.khp, ptr %i.khr, align 1
  %.val48137 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.khs = getelementptr inbounds nuw i8, ptr %.val48137, i64 %i.heh
  %.0.copyload.i52691 = load i32, ptr %i.khs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52691) #7, !srcloc !19
  %.not45918 = icmp eq i32 %.0.copyload.i52691, 0
  br i1 %.not45918, label %.loopexit54384, label %bb.aqr

bb.aqr:                                           ; preds = %.preheader54534
  %.val48136 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kht = getelementptr inbounds nuw i8, ptr %.val48136, i64 %i.hei
  %.0.copyload.i52692 = load i32, ptr %i.kht, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52692) #7, !srcloc !19
  %i.khu = add i32 %.0.copyload.i52691, -1        ; 2 uses
  %.val48135 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.khv = getelementptr inbounds nuw i8, ptr %.val48135, i64 %i.kea
  %.0.copyload.i52693 = load i32, ptr %i.khv, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52693) #7, !srcloc !19
  %i.khw = lshr i32 %.0.copyload.i52693, 4
  %i.khx = lshr i32 %.0.copyload.i52693, 9
  %i.khy = xor i32 %i.khw, %i.khx
  %i.khz = and i32 %i.khy, %i.khu                 ; 2 uses
  %i.kia = shl i32 %i.khz, 6
  %i.kib = add i32 %i.kia, %.0.copyload.i52692
  %i.kic = zext i32 %i.kib to i64
  %.val48134 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kid = getelementptr inbounds nuw i8, ptr %.val48134, i64 %i.kic
  %.0.copyload.i52694 = load i32, ptr %i.kid, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52694) #7, !srcloc !19
  %.not45919 = icmp eq i32 %.0.copyload.i52694, %.0.copyload.i52693
  br i1 %.not45919, label %.loopexit54387, label %.preheader54385

.preheader54385:                                  ; preds = %bb.aqr, %bb.aqs
  %.3943664 = phi i32 [ %.0.copyload.i52695, %bb.aqs ], [ %.0.copyload.i52694, %bb.aqr ]
  %.443535 = phi i32 [ %i.kig, %bb.aqs ], [ 1, %bb.aqr ] ; 2 uses
  %.1543500 = phi i32 [ %i.kih, %bb.aqs ], [ %i.khz, %bb.aqr ]
  %i.kie = icmp eq i32 %.3943664, -4
  br i1 %i.kie, label %.loopexit54384, label %bb.aqs

bb.aqs:                                           ; preds = %.preheader54385
  %i.kif = add i32 %.1543500, %.443535
  %i.kig = add i32 %.443535, 1
  %i.kih = and i32 %i.kif, %i.khu                 ; 2 uses
  %i.kii = shl i32 %i.kih, 6
  %i.kij = add i32 %i.kii, %.0.copyload.i52692
  %i.kik = zext i32 %i.kij to i64
  %.val48133 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kil = getelementptr inbounds nuw i8, ptr %.val48133, i64 %i.kik
  %.0.copyload.i52695 = load i32, ptr %i.kil, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52695) #7, !srcloc !19
  %.not45920 = icmp eq i32 %.0.copyload.i52695, %.0.copyload.i52693
  br i1 %.not45920, label %.loopexit54387, label %.preheader54385

.loopexit54387:                                   ; preds = %bb.aqs, %bb.aqr
  %.val48132 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kim = getelementptr inbounds nuw i8, ptr %.val48132, i64 %i.kdv
  %.0.copyload.i52696 = load i32, ptr %i.kim, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52696) #7, !srcloc !19
  %.not45921 = icmp eq i32 %.0.copyload.i52696, 0
  br i1 %.not45921, label %.loopexit54384, label %bb.aqt

bb.aqt:                                           ; preds = %.loopexit54387
  %.val48131 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kin = getelementptr inbounds nuw i8, ptr %.val48131, i64 %i.kdw
  %.0.copyload.i52697 = load i32, ptr %i.kin, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52697) #7, !srcloc !19
  %i.kio = shl i32 %.0.copyload.i52696, 2
  %i.kip = add i32 %.0.copyload.i52697, %i.kio
  br label %bb.aqu

bb.aqu:                                           ; preds = %.loopexit54289, %bb.aqt
  %.1643501 = phi i32 [ %.0.copyload.i52697, %bb.aqt ], [ %i.kpc, %.loopexit54289 ] ; 2 uses
  %.val48130 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kiq = getelementptr inbounds nuw i8, ptr %.val48130, i64 %i.hei
  %.0.copyload.i52698 = load i32, ptr %i.kiq, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52698) #7, !srcloc !19
  %i.kir = zext i32 %.1643501 to i64
  %.val48129 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kis = getelementptr inbounds nuw i8, ptr %.val48129, i64 %i.kir
  %.0.copyload.i52699 = load i32, ptr %i.kis, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52699) #7, !srcloc !19
  %.val48128 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kit = getelementptr inbounds nuw i8, ptr %.val48128, i64 %i.heh
  %.0.copyload.i52700 = load i32, ptr %i.kit, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52700) #7, !srcloc !19
  %.not45922 = icmp eq i32 %.0.copyload.i52700, 0
  br i1 %.not45922, label %bb.aqy, label %bb.aqv

bb.aqv:                                           ; preds = %bb.aqu
  %.val48127 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kiu = getelementptr inbounds nuw i8, ptr %.val48127, i64 %i.kea
  %.0.copyload.i52701 = load i32, ptr %i.kiu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52701) #7, !srcloc !19
  %i.kiv = add i32 %.0.copyload.i52700, -1        ; 2 uses
  %i.kiw = lshr i32 %.0.copyload.i52701, 4
  %i.kix = lshr i32 %.0.copyload.i52701, 9
  %i.kiy = xor i32 %i.kiw, %i.kix
  %i.kiz = and i32 %i.kiy, %i.kiv                 ; 2 uses
  %i.kja = shl i32 %i.kiz, 6
  %i.kjb = add i32 %i.kja, %.0.copyload.i52698    ; 2 uses
  %i.kjc = zext i32 %i.kjb to i64                 ; 2 uses
  %.val48126 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kjd = getelementptr inbounds nuw i8, ptr %.val48126, i64 %i.kjc
  %.0.copyload.i52702 = load i32, ptr %i.kjd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52702) #7, !srcloc !19
  %i.kje = icmp eq i32 %.0.copyload.i52701, %.0.copyload.i52702
  br i1 %i.kje, label %.loopexit54289, label %.preheader54288

.preheader54288:                                  ; preds = %bb.aqv, %bb.aqx
  %.2644122 = phi i32 [ %.0.copyload.i52703, %bb.aqx ], [ %.0.copyload.i52702, %bb.aqv ] ; 2 uses
  %.5943790 = phi i32 [ %i.kjo, %bb.aqx ], [ %i.kjb, %bb.aqv ] ; 2 uses
  %.243676 = phi i32 [ %i.kjl, %bb.aqx ], [ 1, %bb.aqv ] ; 2 uses
  %.243469 = phi i32 [ %i.kjj, %bb.aqx ], [ 0, %bb.aqv ] ; 3 uses
  %.1243290 = phi i32 [ %i.kjm, %bb.aqx ], [ %i.kiz, %bb.aqv ]
  %i.kjf = icmp eq i32 %.2644122, -4
  %.not45925 = icmp eq i32 %.243469, 0            ; 2 uses
  br i1 %i.kjf, label %bb.aqw, label %bb.aqx

bb.aqw:                                           ; preds = %.preheader54288
  %i.kjg = select i1 %.not45925, i32 %.5943790, i32 %.243469
  br label %bb.aqy

bb.aqx:                                           ; preds = %.preheader54288
  %i.kjh = icmp eq i32 %.2644122, -8
  %i.kji = select i1 %i.kjh, i1 %.not45925, i1 false
  %i.kjj = select i1 %i.kji, i32 %.5943790, i32 %.243469
  %i.kjk = add i32 %.1243290, %.243676
  %i.kjl = add i32 %.243676, 1
  %i.kjm = and i32 %i.kjk, %i.kiv                 ; 2 uses
  %i.kjn = shl i32 %i.kjm, 6
  %i.kjo = add i32 %i.kjn, %.0.copyload.i52698    ; 2 uses
  %i.kjp = zext i32 %i.kjo to i64                 ; 2 uses
  %.val48125 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kjq = getelementptr inbounds nuw i8, ptr %.val48125, i64 %i.kjp
  %.0.copyload.i52703 = load i32, ptr %i.kjq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52703) #7, !srcloc !19
  %.not45924 = icmp eq i32 %.0.copyload.i52701, %.0.copyload.i52703
  br i1 %.not45924, label %.loopexit54289, label %.preheader54288

bb.aqy:                                           ; preds = %bb.aqu, %bb.aqw
  %.60 = phi i32 [ %i.kjg, %bb.aqw ], [ 0, %bb.aqu ]
  %.val48124 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kjr = getelementptr inbounds nuw i8, ptr %.val48124, i64 %i.hej
  %.0.copyload.i52704 = load i32, ptr %i.kjr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52704) #7, !srcloc !19
  %i.kjs = shl i32 %.0.copyload.i52704, 2
  %i.kjt = add i32 %i.kjs, 4
  %i.kju = mul i32 %.0.copyload.i52700, 3
  %.not45926 = icmp ult i32 %i.kjt, %i.kju
  br i1 %.not45926, label %bb.ara, label %bb.aqz

bb.aqz:                                           ; preds = %bb.aqy
  %i.kjv = shl i32 %.0.copyload.i52700, 1
  br label %bb.arb

bb.ara:                                           ; preds = %bb.aqy
  %i.kjw = xor i32 %.0.copyload.i52704, -1
  %i.kjx = add i32 %.0.copyload.i52700, %i.kjw
  %.val48123 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kjy = getelementptr inbounds nuw i8, ptr %.val48123, i64 %i.hef
  %i.kjz = getelementptr inbounds nuw i8, ptr %i.kjy, i64 12
  %.0.copyload.i52705 = load i32, ptr %i.kjz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52705) #7, !srcloc !19
  %i.kka = sub i32 %i.kjx, %.0.copyload.i52705
  %i.kkb = lshr i32 %.0.copyload.i52700, 3
  %i.kkc = icmp ugt i32 %i.kka, %i.kkb
  br i1 %i.kkc, label %bb.ari, label %bb.arb

bb.arb:                                           ; preds = %bb.ara, %bb.aqz
  %.2744123 = phi i32 [ %i.kjv, %bb.aqz ], [ %.0.copyload.i52700, %bb.ara ]
  %i.kkd = add i32 %.2744123, -1
  %i.kke = zext i32 %i.kkd to i64                 ; 2 uses
  %i.kkf = lshr i64 %i.kke, 1
  %i.kkg = or i64 %i.kkf, %i.kke                  ; 2 uses
  %i.kkh = lshr i64 %i.kkg, 2
  %i.kki = or i64 %i.kkh, %i.kkg                  ; 2 uses
  %i.kkj = lshr i64 %i.kki, 4
  %i.kkk = or i64 %i.kkj, %i.kki                  ; 2 uses
  %i.kkl = lshr i64 %i.kkk, 8
  %i.kkm = or i64 %i.kkl, %i.kkk                  ; 2 uses
  %i.kkn = lshr i64 %i.kkm, 16
  %i.kko = or i64 %i.kkn, %i.kkm
  %i.kkp = trunc nuw i64 %i.kko to i32
  %i.kkq = add i32 %i.kkp, 1
  %11 = tail call i32 @llvm.umax.i32(i32 %i.kkq, i32 64) ; 2 uses
  %.val49853 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kkr = getelementptr inbounds nuw i8, ptr %.val49853, i64 %i.heh
  store i32 %11, ptr %i.kkr, align 1
  %i.kks = shl i32 %11, 6
  %i.kkt = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.kks) #7 ; 13 uses
  %.val49852 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kku = getelementptr inbounds nuw i8, ptr %.val49852, i64 %i.hei
  store i32 %i.kkt, ptr %i.kku, align 1
  %.not45927 = icmp eq i32 %.0.copyload.i52698, 0
  br i1 %.not45927, label %bb.arc, label %bb.arf

bb.arc:                                           ; preds = %bb.arb
  %.val50881 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kkv = getelementptr inbounds nuw i8, ptr %.val50881, i64 %i.hej
  store i64 0, ptr %i.kkv, align 1
  %.val48122 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kkw = getelementptr inbounds nuw i8, ptr %.val48122, i64 %i.heh
  %.0.copyload.i52706 = load i32, ptr %i.kkw, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52706) #7, !srcloc !19
  %i.kkx = add i32 %.0.copyload.i52706, 67108863
  %i.kky = and i32 %i.kkx, 67108863
  %i.kkz = and i32 %.0.copyload.i52706, 7         ; 7 uses
  %.not45928 = icmp eq i32 %i.kkz, 0
  br i1 %.not45928, label %.loopexit54287, label %.preheader54286

.preheader54286:                                  ; preds = %bb.arc
  %i.kla = zext i32 %i.kkt to i64
  %.val49851 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klb = getelementptr inbounds nuw i8, ptr %.val49851, i64 %i.kla
  store i32 -4, ptr %i.klb, align 1
  %i.klc = add i32 %i.kkt, 64                     ; 2 uses
  %.not45929 = icmp eq i32 %i.kkz, 1
  br i1 %.not45929, label %.loopexit54287, label %.preheader54286.1

.preheader54286.1:                                ; preds = %.preheader54286
  %i.kld = zext i32 %i.klc to i64
  %.val49851.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kle = getelementptr inbounds nuw i8, ptr %.val49851.1, i64 %i.kld
  store i32 -4, ptr %i.kle, align 1
  %i.klf = add i32 %i.kkt, 128                    ; 2 uses
  %.not45929.1 = icmp eq i32 %i.kkz, 2
  br i1 %.not45929.1, label %.loopexit54287, label %.preheader54286.2

.preheader54286.2:                                ; preds = %.preheader54286.1
  %i.klg = zext i32 %i.klf to i64
  %.val49851.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klh = getelementptr inbounds nuw i8, ptr %.val49851.2, i64 %i.klg
  store i32 -4, ptr %i.klh, align 1
  %i.kli = add i32 %i.kkt, 192                    ; 2 uses
  %.not45929.2 = icmp eq i32 %i.kkz, 3
  br i1 %.not45929.2, label %.loopexit54287, label %.preheader54286.3

.preheader54286.3:                                ; preds = %.preheader54286.2
  %i.klj = zext i32 %i.kli to i64
  %.val49851.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klk = getelementptr inbounds nuw i8, ptr %.val49851.3, i64 %i.klj
  store i32 -4, ptr %i.klk, align 1
  %i.kll = add i32 %i.kkt, 256                    ; 2 uses
  %.not45929.3 = icmp eq i32 %i.kkz, 4
  br i1 %.not45929.3, label %.loopexit54287, label %.preheader54286.4

.preheader54286.4:                                ; preds = %.preheader54286.3
  %i.klm = zext i32 %i.kll to i64
  %.val49851.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kln = getelementptr inbounds nuw i8, ptr %.val49851.4, i64 %i.klm
  store i32 -4, ptr %i.kln, align 1
  %i.klo = add i32 %i.kkt, 320                    ; 2 uses
  %.not45929.4 = icmp eq i32 %i.kkz, 5
  br i1 %.not45929.4, label %.loopexit54287, label %.preheader54286.5

.preheader54286.5:                                ; preds = %.preheader54286.4
  %i.klp = zext i32 %i.klo to i64
  %.val49851.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klq = getelementptr inbounds nuw i8, ptr %.val49851.5, i64 %i.klp
  store i32 -4, ptr %i.klq, align 1
  %i.klr = add i32 %i.kkt, 384                    ; 2 uses
  %.not45929.5 = icmp eq i32 %i.kkz, 6
  br i1 %.not45929.5, label %.loopexit54287, label %.preheader54286.6

.preheader54286.6:                                ; preds = %.preheader54286.5
  %i.kls = zext i32 %i.klr to i64
  %.val49851.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klt = getelementptr inbounds nuw i8, ptr %.val49851.6, i64 %i.kls
  store i32 -4, ptr %i.klt, align 1
  %i.klu = add i32 %i.kkt, 448
  br label %.loopexit54287

.loopexit54287:                                   ; preds = %.preheader54286, %.preheader54286.1, %.preheader54286.2, %.preheader54286.3, %.preheader54286.4, %.preheader54286.5, %.preheader54286.6, %bb.arc
  %.62 = phi i32 [ %i.kkt, %bb.arc ], [ %i.klc, %.preheader54286 ], [ %i.klf, %.preheader54286.1 ], [ %i.kli, %.preheader54286.2 ], [ %i.kll, %.preheader54286.3 ], [ %i.klo, %.preheader54286.4 ], [ %i.klr, %.preheader54286.5 ], [ %i.klu, %.preheader54286.6 ]
  %i.klv = icmp samesign ult i32 %i.kky, 7
  br i1 %i.klv, label %.loopexit54285, label %bb.ard

bb.ard:                                           ; preds = %.loopexit54287
  %i.klw = shl i32 %.0.copyload.i52706, 6
  %i.klx = add i32 %i.klw, %i.kkt
  br label %bb.are

bb.are:                                           ; preds = %bb.are, %bb.ard
  %.63 = phi i32 [ %.62, %bb.ard ], [ %i.kmo, %bb.are ] ; 2 uses
  %i.kly = zext i32 %.63 to i64                   ; 8 uses
  %.val49850 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klz = getelementptr inbounds nuw i8, ptr %.val49850, i64 %i.kly
  %i.kma = getelementptr inbounds nuw i8, ptr %i.klz, i64 448
  store i32 -4, ptr %i.kma, align 1
  %.val49849 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kmb = getelementptr inbounds nuw i8, ptr %.val49849, i64 %i.kly
  %i.kmc = getelementptr inbounds nuw i8, ptr %i.kmb, i64 384
  store i32 -4, ptr %i.kmc, align 1
  %.val49848 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kmd = getelementptr inbounds nuw i8, ptr %.val49848, i64 %i.kly
  %i.kme = getelementptr inbounds nuw i8, ptr %i.kmd, i64 320
  store i32 -4, ptr %i.kme, align 1
  %.val49847 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kmf = getelementptr inbounds nuw i8, ptr %.val49847, i64 %i.kly
  %i.kmg = getelementptr inbounds nuw i8, ptr %i.kmf, i64 256
  store i32 -4, ptr %i.kmg, align 1
  %.val49846 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kmh = getelementptr inbounds nuw i8, ptr %.val49846, i64 %i.kly
  %i.kmi = getelementptr inbounds nuw i8, ptr %i.kmh, i64 192
  store i32 -4, ptr %i.kmi, align 1
  %.val49845 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kmj = getelementptr inbounds nuw i8, ptr %.val49845, i64 %i.kly
  %i.kmk = getelementptr inbounds nuw i8, ptr %i.kmj, i64 128
  store i32 -4, ptr %i.kmk, align 1
  %.val49844 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kml = getelementptr inbounds nuw i8, ptr %.val49844, i64 %i.kly
  %i.kmm = getelementptr inbounds nuw i8, ptr %i.kml, i64 64
  store i32 -4, ptr %i.kmm, align 1
  %.val49843 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kmn = getelementptr inbounds nuw i8, ptr %.val49843, i64 %i.kly
  store i32 -4, ptr %i.kmn, align 1
  %i.kmo = add i32 %.63, 512                      ; 2 uses
  %.not45930 = icmp eq i32 %i.kmo, %i.klx
  br i1 %.not45930, label %.loopexit54285, label %bb.are

bb.arf:                                           ; preds = %bb.arb
  %i.kmp = shl i32 %.0.copyload.i52700, 6
  %i.kmq = add i32 %i.kmp, %.0.copyload.i52698
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.heg, i32 noundef %.0.copyload.i52698, i32 noundef %i.kmq) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52698) #7
  %.val48121 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kmr = getelementptr inbounds nuw i8, ptr %.val48121, i64 %i.hei
  %.0.copyload.i52707 = load i32, ptr %i.kmr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52707) #7, !srcloc !19
  %.val48120 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kms = getelementptr inbounds nuw i8, ptr %.val48120, i64 %i.heh
  %.0.copyload.i52708 = load i32, ptr %i.kms, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52708) #7, !srcloc !19
  br label %.loopexit54285

.loopexit54285:                                   ; preds = %bb.are, %.loopexit54287, %bb.arf
  %.2844124 = phi i32 [ %i.kkt, %.loopexit54287 ], [ %.0.copyload.i52707, %bb.arf ], [ %i.kkt, %bb.are ] ; 2 uses
  %.543536 = phi i32 [ %.0.copyload.i52706, %.loopexit54287 ], [ %.0.copyload.i52708, %bb.arf ], [ %.0.copyload.i52706, %bb.are ]
  %.val48119 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kmt = getelementptr inbounds nuw i8, ptr %.val48119, i64 %i.kea
  %.0.copyload.i52709 = load i32, ptr %i.kmt, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52709) #7, !srcloc !19
  %i.kmu = add i32 %.543536, -1                   ; 2 uses
  %i.kmv = lshr i32 %.0.copyload.i52709, 4
  %i.kmw = lshr i32 %.0.copyload.i52709, 9
  %i.kmx = xor i32 %i.kmv, %i.kmw
  %i.kmy = and i32 %i.kmx, %i.kmu                 ; 2 uses
  %i.kmz = shl i32 %i.kmy, 6
  %i.kna = add i32 %i.kmz, %.2844124              ; 3 uses
  %i.knb = zext i32 %i.kna to i64
  %.val48118 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.knc = getelementptr inbounds nuw i8, ptr %.val48118, i64 %i.knb
  %.0.copyload.i52710 = load i32, ptr %i.knc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52710) #7, !srcloc !19
  %i.knd = icmp eq i32 %.0.copyload.i52709, %.0.copyload.i52710
  br i1 %i.knd, label %.loopexit54284, label %.preheader54283

.preheader54283:                                  ; preds = %.loopexit54285, %bb.arh
  %.64 = phi i32 [ %i.knn, %bb.arh ], [ %i.kna, %.loopexit54285 ] ; 2 uses
  %.643537 = phi i32 [ %i.knl, %bb.arh ], [ %i.kmy, %.loopexit54285 ]
  %.343470 = phi i32 [ %i.knk, %bb.arh ], [ 1, %.loopexit54285 ] ; 2 uses
  %.743460 = phi i32 [ %.0.copyload.i52711, %bb.arh ], [ %.0.copyload.i52710, %.loopexit54285 ] ; 2 uses
  %.1343291 = phi i32 [ %i.kni, %bb.arh ], [ 0, %.loopexit54285 ] ; 3 uses
  %i.kne = icmp eq i32 %.743460, -4
  %.not45933 = icmp eq i32 %.1343291, 0           ; 2 uses
  br i1 %i.kne, label %bb.arg, label %bb.arh

bb.arg:                                           ; preds = %.preheader54283
  %i.knf = select i1 %.not45933, i32 %.64, i32 %.1343291
  br label %bb.ari

bb.arh:                                           ; preds = %.preheader54283
  %i.kng = icmp eq i32 %.743460, -8
  %i.knh = select i1 %i.kng, i1 %.not45933, i1 false
  %i.kni = select i1 %i.knh, i32 %.64, i32 %.1343291
  %i.knj = add i32 %.343470, %.643537
  %i.knk = add i32 %.343470, 1
  %i.knl = and i32 %i.knj, %i.kmu                 ; 2 uses
  %i.knm = shl i32 %i.knl, 6
  %i.knn = add i32 %i.knm, %.2844124              ; 3 uses
  %i.kno = zext i32 %i.knn to i64
  %.val48117 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.knp = getelementptr inbounds nuw i8, ptr %.val48117, i64 %i.kno
  %.0.copyload.i52711 = load i32, ptr %i.knp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52711) #7, !srcloc !19
  %.not45932 = icmp eq i32 %.0.copyload.i52709, %.0.copyload.i52711
  br i1 %.not45932, label %.loopexit54284, label %.preheader54283

bb.ari:                                           ; preds = %bb.ara, %bb.arg
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.kpi = shl i32 %.68, 4                        ; 2 uses
  %i.kpj = add i32 %.0.copyload.i.i52720, %i.kpi
  %i.kpk = zext i32 %i.kpj to i64
  %.val41.i52721 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kpl = getelementptr inbounds nuw i8, ptr %.val41.i52721, i64 %i.kpk
  %.0.copyload.i45.i52722 = load i32, ptr %i.kpl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i45.i52722) #7, !srcloc !19
  %i.kpm = or disjoint i32 %i.kpi, 8
  %i.kpn = add i32 %i.kpm, %.0.copyload.i.i52720
  %i.kpo = zext i32 %i.kpn to i64
  %.val.i52723 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kpp = getelementptr inbounds nuw i8, ptr %.val.i52723, i64 %i.kpo
  %.0.copyload.i46.i52724 = load i32, ptr %i.kpp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i46.i52724) #7, !srcloc !19
  %.val44.i52725 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kpq = getelementptr inbounds nuw i8, ptr %.val44.i52725, i64 %i.kdy
  store i32 %.0.copyload.i45.i52722, ptr %i.kpq, align 1
  %i.kpr = add i32 %.0.copyload.i46.i52724, -8
  %.not.i52726 = icmp eq i32 %.0.copyload.i46.i52724, 0
  %i.kps = select i1 %.not.i52726, i32 0, i32 %i.kpr
  %.val43.i52727 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kpt = getelementptr inbounds nuw i8, ptr %.val43.i52727, i64 %i.kdy
  %i.kpu = getelementptr inbounds nuw i8, ptr %i.kpt, i64 4
  store i32 %i.kps, ptr %i.kpu, align 1
  %.val48109 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kpv = getelementptr inbounds nuw i8, ptr %.val48109, i64 %i.heh
  %.0.copyload.i52728 = load i32, ptr %i.kpv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52728) #7, !srcloc !19
  %.not45938 = icmp eq i32 %.0.copyload.i52728, 0
  br i1 %.not45938, label %.loopexit54382, label %bb.arl

bb.arl:                                           ; preds = %.preheader54532
  %.val48108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kpw = getelementptr inbounds nuw i8, ptr %.val48108, i64 %i.hei
  %.0.copyload.i52729 = load i32, ptr %i.kpw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52729) #7, !srcloc !19
  %i.kpx = add i32 %.0.copyload.i52728, -1        ; 2 uses
  %.val48107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kpy = getelementptr inbounds nuw i8, ptr %.val48107, i64 %i.kea
  %.0.copyload.i52730 = load i32, ptr %i.kpy, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52730) #7, !srcloc !19
  %i.kpz = lshr i32 %.0.copyload.i52730, 4
  %i.kqa = lshr i32 %.0.copyload.i52730, 9
  %i.kqb = xor i32 %i.kpz, %i.kqa
  %i.kqc = and i32 %i.kqb, %i.kpx                 ; 2 uses
  %i.kqd = shl i32 %i.kqc, 6
  %i.kqe = add i32 %i.kqd, %.0.copyload.i52729
  %i.kqf = zext i32 %i.kqe to i64
  %.val48106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kqg = getelementptr inbounds nuw i8, ptr %.val48106, i64 %i.kqf
  %.0.copyload.i52731 = load i32, ptr %i.kqg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52731) #7, !srcloc !19
  %.not45939 = icmp eq i32 %.0.copyload.i52731, %.0.copyload.i52730
  br i1 %.not45939, label %.loopexit54383, label %.preheader54381

.preheader54381:                                  ; preds = %bb.arl, %bb.arm
  %.2944125 = phi i32 [ %i.kqj, %bb.arm ], [ 1, %bb.arl ] ; 2 uses
  %.443471 = phi i32 [ %.0.copyload.i52732, %bb.arm ], [ %.0.copyload.i52731, %bb.arl ]
  %.843461 = phi i32 [ %i.kqk, %bb.arm ], [ %i.kqc, %bb.arl ]
  %i.kqh = icmp eq i32 %.443471, -4
  br i1 %i.kqh, label %.loopexit54382, label %bb.arm

bb.arm:                                           ; preds = %.preheader54381
  %i.kqi = add i32 %.843461, %.2944125
  %i.kqj = add i32 %.2944125, 1
  %i.kqk = and i32 %i.kqi, %i.kpx                 ; 2 uses
  %i.kql = shl i32 %i.kqk, 6
  %i.kqm = add i32 %i.kql, %.0.copyload.i52729
  %i.kqn = zext i32 %i.kqm to i64
  %.val48105 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kqo = getelementptr inbounds nuw i8, ptr %.val48105, i64 %i.kqn
  %.0.copyload.i52732 = load i32, ptr %i.kqo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52732) #7, !srcloc !19
  %.not45940 = icmp eq i32 %.0.copyload.i52732, %.0.copyload.i52730
  br i1 %.not45940, label %.loopexit54383, label %.preheader54381

.loopexit54383:                                   ; preds = %bb.arm, %bb.arl
  %.val48104 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kqp = getelementptr inbounds nuw i8, ptr %.val48104, i64 %i.kdu
  %i.kqq = getelementptr inbounds nuw i8, ptr %i.kqp, i64 12
  %.0.copyload.i52733 = load i32, ptr %i.kqq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52733) #7, !srcloc !19
  %i.kqr = zext i32 %.0.copyload.i52733 to i64
  %.val51128 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kqs = getelementptr inbounds nuw i8, ptr %.val51128, i64 %i.kqr
  %.0.copyload.i52734 = load i8, ptr %i.kqs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i52734) #7, !srcloc !21
  %i.kqt = add i8 %.0.copyload.i52734, -109
  %i.kqu = icmp ult i8 %i.kqt, -107
  br i1 %i.kqu, label %.loopexit54382, label %bb.arn

bb.arn:                                           ; preds = %.loopexit54383
  %i.kqv = add i32 %.0.copyload.i52733, -8
  %i.kqw = tail call i32 @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetInstructionNumber0x28hermes0x3A0x3AInstruction0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.auf, i32 noundef %i.kqv) ; 2 uses
  %.val48103 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kqx = getelementptr inbounds nuw i8, ptr %.val48103, i64 %i.hei
  %.0.copyload.i52735 = load i32, ptr %i.kqx, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52735) #7, !srcloc !19
  %.val48102 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kqy = getelementptr inbounds nuw i8, ptr %.val48102, i64 %i.heh
  %.0.copyload.i52736 = load i32, ptr %i.kqy, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52736) #7, !srcloc !19
  %.not45941 = icmp eq i32 %.0.copyload.i52736, 0
  br i1 %.not45941, label %bb.arr, label %bb.aro

bb.aro:                                           ; preds = %bb.arn
  %.val48101 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kqz = getelementptr inbounds nuw i8, ptr %.val48101, i64 %i.kea
  %.0.copyload.i52737 = load i32, ptr %i.kqz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52737) #7, !srcloc !19
  %i.kra = add i32 %.0.copyload.i52736, -1        ; 2 uses
  %i.krb = lshr i32 %.0.copyload.i52737, 4
  %i.krc = lshr i32 %.0.copyload.i52737, 9
  %i.krd = xor i32 %i.krb, %i.krc
  %i.kre = and i32 %i.krd, %i.kra                 ; 2 uses
  %i.krf = shl i32 %i.kre, 6
  %i.krg = add i32 %i.krf, %.0.copyload.i52735    ; 2 uses
  %i.krh = zext i32 %i.krg to i64                 ; 2 uses
  %.val48100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kri = getelementptr inbounds nuw i8, ptr %.val48100, i64 %i.krh
  %.0.copyload.i52738 = load i32, ptr %i.kri, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52738) #7, !srcloc !19
  %i.krj = icmp eq i32 %.0.copyload.i52737, %.0.copyload.i52738
  br i1 %i.krj, label %.loopexit54380, label %.preheader54379

.preheader54379:                                  ; preds = %bb.aro, %bb.arq
  %.3044126 = phi i32 [ %.0.copyload.i52739, %bb.arq ], [ %.0.copyload.i52738, %bb.aro ] ; 2 uses
  %.4243667 = phi i32 [ %i.krt, %bb.arq ], [ %i.krg, %bb.aro ] ; 2 uses
  %.1743502 = phi i32 [ %i.krq, %bb.arq ], [ 1, %bb.aro ] ; 2 uses
  %.143337 = phi i32 [ %i.kro, %bb.arq ], [ 0, %bb.aro ] ; 3 uses
  %.1443292 = phi i32 [ %i.krr, %bb.arq ], [ %i.kre, %bb.aro ]
  %i.krk = icmp eq i32 %.3044126, -4
  %.not45944 = icmp eq i32 %.143337, 0            ; 2 uses
  br i1 %i.krk, label %bb.arp, label %bb.arq

bb.arp:                                           ; preds = %.preheader54379
  %i.krl = select i1 %.not45944, i32 %.4243667, i32 %.143337
  br label %bb.arr

bb.arq:                                           ; preds = %.preheader54379
  %i.krm = icmp eq i32 %.3044126, -8
  %i.krn = select i1 %i.krm, i1 %.not45944, i1 false
  %i.kro = select i1 %i.krn, i32 %.4243667, i32 %.143337
  %i.krp = add i32 %.1443292, %.1743502
  %i.krq = add i32 %.1743502, 1
  %i.krr = and i32 %i.krp, %i.kra                 ; 2 uses
  %i.krs = shl i32 %i.krr, 6
  %i.krt = add i32 %i.krs, %.0.copyload.i52735    ; 2 uses
  %i.kru = zext i32 %i.krt to i64                 ; 2 uses
  %.val48099 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.krv = getelementptr inbounds nuw i8, ptr %.val48099, i64 %i.kru
  %.0.copyload.i52739 = load i32, ptr %i.krv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52739) #7, !srcloc !19
  %.not45943 = icmp eq i32 %.0.copyload.i52737, %.0.copyload.i52739
  br i1 %.not45943, label %.loopexit54380, label %.preheader54379

bb.arr:                                           ; preds = %bb.arn, %bb.arp
  %.4343668 = phi i32 [ %i.krl, %bb.arp ], [ 0, %bb.arn ]
  %.val48098 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.krw = getelementptr inbounds nuw i8, ptr %.val48098, i64 %i.hej
  %.0.copyload.i52740 = load i32, ptr %i.krw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52740) #7, !srcloc !19
  %i.krx = shl i32 %.0.copyload.i52740, 2
  %i.kry = add i32 %i.krx, 4
  %i.krz = mul i32 %.0.copyload.i52736, 3
  %.not45945 = icmp ult i32 %i.kry, %i.krz
  br i1 %.not45945, label %bb.art, label %bb.ars

bb.ars:                                           ; preds = %bb.arr
  %i.ksa = shl i32 %.0.copyload.i52736, 1
  br label %bb.aru

bb.art:                                           ; preds = %bb.arr
  %i.ksb = xor i32 %.0.copyload.i52740, -1
  %i.ksc = add i32 %.0.copyload.i52736, %i.ksb
  %.val48097 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ksd = getelementptr inbounds nuw i8, ptr %.val48097, i64 %i.hef
  %i.kse = getelementptr inbounds nuw i8, ptr %i.ksd, i64 12
  %.0.copyload.i52741 = load i32, ptr %i.kse, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52741) #7, !srcloc !19
  %i.ksf = sub i32 %i.ksc, %.0.copyload.i52741
  %i.ksg = lshr i32 %.0.copyload.i52736, 3
  %i.ksh = icmp ugt i32 %i.ksf, %i.ksg
  br i1 %i.ksh, label %bb.asb, label %bb.aru

bb.aru:                                           ; preds = %bb.art, %bb.ars
  %.3144127 = phi i32 [ %i.ksa, %bb.ars ], [ %.0.copyload.i52736, %bb.art ]
  %i.ksi = add i32 %.3144127, -1
  %i.ksj = zext i32 %i.ksi to i64                 ; 2 uses
  %i.ksk = lshr i64 %i.ksj, 1
  %i.ksl = or i64 %i.ksk, %i.ksj                  ; 2 uses
  %i.ksm = lshr i64 %i.ksl, 2
  %i.ksn = or i64 %i.ksm, %i.ksl                  ; 2 uses
  %i.kso = lshr i64 %i.ksn, 4
  %i.ksp = or i64 %i.kso, %i.ksn                  ; 2 uses
  %i.ksq = lshr i64 %i.ksp, 8
  %i.ksr = or i64 %i.ksq, %i.ksp                  ; 2 uses
  %i.kss = lshr i64 %i.ksr, 16
  %i.kst = or i64 %i.kss, %i.ksr
  %i.ksu = trunc nuw i64 %i.kst to i32
  %i.ksv = add i32 %i.ksu, 1
  %12 = tail call i32 @llvm.umax.i32(i32 %i.ksv, i32 64) ; 2 uses
  %.val49837 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ksw = getelementptr inbounds nuw i8, ptr %.val49837, i64 %i.heh
  store i32 %12, ptr %i.ksw, align 1
  %i.ksx = shl i32 %12, 6
  %i.ksy = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ksx) #7 ; 13 uses
  %.val49836 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ksz = getelementptr inbounds nuw i8, ptr %.val49836, i64 %i.hei
  store i32 %i.ksy, ptr %i.ksz, align 1
  %.not45946 = icmp eq i32 %.0.copyload.i52735, 0
  br i1 %.not45946, label %bb.arv, label %bb.ary

bb.arv:                                           ; preds = %bb.aru
  %.val50873 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kta = getelementptr inbounds nuw i8, ptr %.val50873, i64 %i.hej
  store i64 0, ptr %i.kta, align 1
  %.val48096 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ktb = getelementptr inbounds nuw i8, ptr %.val48096, i64 %i.heh
  %.0.copyload.i52742 = load i32, ptr %i.ktb, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52742) #7, !srcloc !19
  %i.ktc = add i32 %.0.copyload.i52742, 67108863
  %i.ktd = and i32 %i.ktc, 67108863
  %i.kte = and i32 %.0.copyload.i52742, 7         ; 7 uses
  %.not45947 = icmp eq i32 %i.kte, 0
  br i1 %.not45947, label %.loopexit54378, label %.preheader54377

.preheader54377:                                  ; preds = %bb.arv
  %i.ktf = zext i32 %i.ksy to i64
  %.val49835 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ktg = getelementptr inbounds nuw i8, ptr %.val49835, i64 %i.ktf
  store i32 -4, ptr %i.ktg, align 1
  %i.kth = add i32 %i.ksy, 64                     ; 2 uses
  %.not45948 = icmp eq i32 %i.kte, 1
  br i1 %.not45948, label %.loopexit54378, label %.preheader54377.1

.preheader54377.1:                                ; preds = %.preheader54377
  %i.kti = zext i32 %i.kth to i64
  %.val49835.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ktj = getelementptr inbounds nuw i8, ptr %.val49835.1, i64 %i.kti
  store i32 -4, ptr %i.ktj, align 1
  %i.ktk = add i32 %i.ksy, 128                    ; 2 uses
  %.not45948.1 = icmp eq i32 %i.kte, 2
  br i1 %.not45948.1, label %.loopexit54378, label %.preheader54377.2

.preheader54377.2:                                ; preds = %.preheader54377.1
  %i.ktl = zext i32 %i.ktk to i64
  %.val49835.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ktm = getelementptr inbounds nuw i8, ptr %.val49835.2, i64 %i.ktl
  store i32 -4, ptr %i.ktm, align 1
  %i.ktn = add i32 %i.ksy, 192                    ; 2 uses
  %.not45948.2 = icmp eq i32 %i.kte, 3
  br i1 %.not45948.2, label %.loopexit54378, label %.preheader54377.3

.preheader54377.3:                                ; preds = %.preheader54377.2
  %i.kto = zext i32 %i.ktn to i64
  %.val49835.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ktp = getelementptr inbounds nuw i8, ptr %.val49835.3, i64 %i.kto
  store i32 -4, ptr %i.ktp, align 1
  %i.ktq = add i32 %i.ksy, 256                    ; 2 uses
  %.not45948.3 = icmp eq i32 %i.kte, 4
  br i1 %.not45948.3, label %.loopexit54378, label %.preheader54377.4

.preheader54377.4:                                ; preds = %.preheader54377.3
  %i.ktr = zext i32 %i.ktq to i64
  %.val49835.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kts = getelementptr inbounds nuw i8, ptr %.val49835.4, i64 %i.ktr
  store i32 -4, ptr %i.kts, align 1
  %i.ktt = add i32 %i.ksy, 320                    ; 2 uses
  %.not45948.4 = icmp eq i32 %i.kte, 5
  br i1 %.not45948.4, label %.loopexit54378, label %.preheader54377.5

.preheader54377.5:                                ; preds = %.preheader54377.4
  %i.ktu = zext i32 %i.ktt to i64
  %.val49835.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ktv = getelementptr inbounds nuw i8, ptr %.val49835.5, i64 %i.ktu
  store i32 -4, ptr %i.ktv, align 1
  %i.ktw = add i32 %i.ksy, 384                    ; 2 uses
  %.not45948.5 = icmp eq i32 %i.kte, 6
  br i1 %.not45948.5, label %.loopexit54378, label %.preheader54377.6

.preheader54377.6:                                ; preds = %.preheader54377.5
  %i.ktx = zext i32 %i.ktw to i64
  %.val49835.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kty = getelementptr inbounds nuw i8, ptr %.val49835.6, i64 %i.ktx
  store i32 -4, ptr %i.kty, align 1
  %i.ktz = add i32 %i.ksy, 448
  br label %.loopexit54378

.loopexit54378:                                   ; preds = %.preheader54377, %.preheader54377.1, %.preheader54377.2, %.preheader54377.3, %.preheader54377.4, %.preheader54377.5, %.preheader54377.6, %bb.arv
  %.4543670 = phi i32 [ %i.ksy, %bb.arv ], [ %i.kth, %.preheader54377 ], [ %i.ktk, %.preheader54377.1 ], [ %i.ktn, %.preheader54377.2 ], [ %i.ktq, %.preheader54377.3 ], [ %i.ktt, %.preheader54377.4 ], [ %i.ktw, %.preheader54377.5 ], [ %i.ktz, %.preheader54377.6 ]
  %i.kua = icmp samesign ult i32 %i.ktd, 7
  br i1 %i.kua, label %.loopexit54376, label %bb.arw

bb.arw:                                           ; preds = %.loopexit54378
  %i.kub = shl i32 %.0.copyload.i52742, 6
  %i.kuc = add i32 %i.kub, %i.ksy
  br label %bb.arx

bb.arx:                                           ; preds = %bb.arx, %bb.arw
  %.4643671 = phi i32 [ %.4543670, %bb.arw ], [ %i.kut, %bb.arx ] ; 2 uses
  %i.kud = zext i32 %.4643671 to i64              ; 8 uses
  %.val49834 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kue = getelementptr inbounds nuw i8, ptr %.val49834, i64 %i.kud
  %i.kuf = getelementptr inbounds nuw i8, ptr %i.kue, i64 448
  store i32 -4, ptr %i.kuf, align 1
  %.val49833 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kug = getelementptr inbounds nuw i8, ptr %.val49833, i64 %i.kud
  %i.kuh = getelementptr inbounds nuw i8, ptr %i.kug, i64 384
  store i32 -4, ptr %i.kuh, align 1
  %.val49832 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kui = getelementptr inbounds nuw i8, ptr %.val49832, i64 %i.kud
  %i.kuj = getelementptr inbounds nuw i8, ptr %i.kui, i64 320
  store i32 -4, ptr %i.kuj, align 1
  %.val49831 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kuk = getelementptr inbounds nuw i8, ptr %.val49831, i64 %i.kud
  %i.kul = getelementptr inbounds nuw i8, ptr %i.kuk, i64 256
  store i32 -4, ptr %i.kul, align 1
  %.val49830 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kum = getelementptr inbounds nuw i8, ptr %.val49830, i64 %i.kud
  %i.kun = getelementptr inbounds nuw i8, ptr %i.kum, i64 192
  store i32 -4, ptr %i.kun, align 1
  %.val49829 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kuo = getelementptr inbounds nuw i8, ptr %.val49829, i64 %i.kud
  %i.kup = getelementptr inbounds nuw i8, ptr %i.kuo, i64 128
  store i32 -4, ptr %i.kup, align 1
  %.val49828 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kuq = getelementptr inbounds nuw i8, ptr %.val49828, i64 %i.kud
  %i.kur = getelementptr inbounds nuw i8, ptr %i.kuq, i64 64
  store i32 -4, ptr %i.kur, align 1
  %.val49827 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kus = getelementptr inbounds nuw i8, ptr %.val49827, i64 %i.kud
  store i32 -4, ptr %i.kus, align 1
  %i.kut = add i32 %.4643671, 512                 ; 2 uses
  %.not45949 = icmp eq i32 %i.kut, %i.kuc
  br i1 %.not45949, label %.loopexit54376, label %bb.arx

bb.ary:                                           ; preds = %bb.aru
  %i.kuu = shl i32 %.0.copyload.i52736, 6
  %i.kuv = add i32 %i.kuu, %.0.copyload.i52735
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.heg, i32 noundef %.0.copyload.i52735, i32 noundef %i.kuv) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52735) #7
  %.val48095 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kuw = getelementptr inbounds nuw i8, ptr %.val48095, i64 %i.hei
  %.0.copyload.i52743 = load i32, ptr %i.kuw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52743) #7, !srcloc !19
  %.val48094 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kux = getelementptr inbounds nuw i8, ptr %.val48094, i64 %i.heh
  %.0.copyload.i52744 = load i32, ptr %i.kux, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52744) #7, !srcloc !19
  br label %.loopexit54376

.loopexit54376:                                   ; preds = %bb.arx, %.loopexit54378, %bb.ary
  %.3244128 = phi i32 [ %i.ksy, %.loopexit54378 ], [ %.0.copyload.i52743, %bb.ary ], [ %i.ksy, %bb.arx ] ; 2 uses
  %.943462 = phi i32 [ %.0.copyload.i52742, %.loopexit54378 ], [ %.0.copyload.i52744, %bb.ary ], [ %.0.copyload.i52742, %bb.arx ]
  %.val48093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kuy = getelementptr inbounds nuw i8, ptr %.val48093, i64 %i.kea
  %.0.copyload.i52745 = load i32, ptr %i.kuy, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52745) #7, !srcloc !19
  %i.kuz = add i32 %.943462, -1                   ; 2 uses
  %i.kva = lshr i32 %.0.copyload.i52745, 4
  %i.kvb = lshr i32 %.0.copyload.i52745, 9
  %i.kvc = xor i32 %i.kva, %i.kvb
  %i.kvd = and i32 %i.kvc, %i.kuz                 ; 2 uses
  %i.kve = shl i32 %i.kvd, 6
  %i.kvf = add i32 %i.kve, %.3244128              ; 3 uses
  %i.kvg = zext i32 %i.kvf to i64
  %.val48092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kvh = getelementptr inbounds nuw i8, ptr %.val48092, i64 %i.kvg
  %.0.copyload.i52746 = load i32, ptr %i.kvh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52746) #7, !srcloc !19
  %i.kvi = icmp eq i32 %.0.copyload.i52745, %.0.copyload.i52746
  br i1 %i.kvi, label %.loopexit54375, label %.preheader54374

.preheader54374:                                  ; preds = %.loopexit54376, %bb.asa
  %.4743672 = phi i32 [ %i.kvs, %bb.asa ], [ %i.kvf, %.loopexit54376 ] ; 2 uses
  %.743538 = phi i32 [ %.0.copyload.i52747, %bb.asa ], [ %.0.copyload.i52746, %.loopexit54376 ] ; 2 uses
  %.1043463 = phi i32 [ %i.kvq, %bb.asa ], [ %i.kvd, %.loopexit54376 ]
  %.243338 = phi i32 [ %i.kvp, %bb.asa ], [ 1, %.loopexit54376 ] ; 2 uses
  %.1543293 = phi i32 [ %i.kvn, %bb.asa ], [ 0, %.loopexit54376 ] ; 3 uses
  %i.kvj = icmp eq i32 %.743538, -4
  %.not45952 = icmp eq i32 %.1543293, 0           ; 2 uses
  br i1 %i.kvj, label %bb.arz, label %bb.asa

bb.arz:                                           ; preds = %.preheader54374
  %i.kvk = select i1 %.not45952, i32 %.4743672, i32 %.1543293
  br label %bb.asb

bb.asa:                                           ; preds = %.preheader54374
  %i.kvl = icmp eq i32 %.743538, -8
  %i.kvm = select i1 %i.kvl, i1 %.not45952, i1 false
  %i.kvn = select i1 %i.kvm, i32 %.4743672, i32 %.1543293
  %i.kvo = add i32 %.243338, %.1043463
  %i.kvp = add i32 %.243338, 1
  %i.kvq = and i32 %i.kvo, %i.kuz                 ; 2 uses
  %i.kvr = shl i32 %i.kvq, 6
  %i.kvs = add i32 %i.kvr, %.3244128              ; 3 uses
  %i.kvt = zext i32 %i.kvs to i64
  %.val48091 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kvu = getelementptr inbounds nuw i8, ptr %.val48091, i64 %i.kvt
  %.0.copyload.i52747 = load i32, ptr %i.kvu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52747) #7, !srcloc !19
  %.not45951 = icmp eq i32 %.0.copyload.i52745, %.0.copyload.i52747
  br i1 %.not45951, label %.loopexit54375, label %.preheader54374

bb.asb:                                           ; preds = %bb.art, %bb.arz
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.lfe = add i32 %i.lfa, %.0.copyload.i52797
  %i.lff = zext i32 %i.lfe to i64
  %.val48037 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfg = getelementptr inbounds nuw i8, ptr %.val48037, i64 %i.lff
  %.0.copyload.i52802 = load i32, ptr %i.lfg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52802) #7, !srcloc !19
  %i.lfh = xor i32 %.0.copyload.i52802, -1
  %i.lfi = and i32 %.0.copyload.i52801, %i.lfh
  %.val49811 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfj = getelementptr inbounds nuw i8, ptr %.val49811, i64 %i.lfc
  store i32 %i.lfi, ptr %i.lfj, align 1
  %indvars.iv.next55670 = add nuw nsw i64 %indvars.iv55669, 2 ; 2 uses
  %indvars55672 = trunc i64 %indvars.iv.next55670 to i32
  %.not45975 = icmp eq i32 %i.leo, %indvars55672
  br i1 %.not45975, label %bb.asx, label %bb.asw

bb.asx:                                           ; preds = %bb.asw
  %i.lfk = and i32 %i.lej, 1
  %.not45976 = icmp eq i32 %i.lfk, 0
  br i1 %.not45976, label %bb.asy, label %.thread54186

.thread54186:                                     ; preds = %bb.asu, %bb.asx
  %.354403254189 = phi i32 [ %i.leo, %bb.asx ], [ 0, %bb.asu ]
  %i.lfl = shl nuw nsw i32 %.354403254189, 2      ; 2 uses
  %i.lfm = add i32 %i.lfl, %.0.copyload.i52798
  %i.lfn = zext i32 %i.lfm to i64                 ; 2 uses
  %.val48036 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfo = getelementptr inbounds nuw i8, ptr %.val48036, i64 %i.lfn
  %.0.copyload.i52803 = load i32, ptr %i.lfo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52803) #7, !srcloc !19
  %i.lfp = add i32 %i.lfl, %.0.copyload.i52797
  %i.lfq = zext i32 %i.lfp to i64
  %.val48035 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfr = getelementptr inbounds nuw i8, ptr %.val48035, i64 %i.lfq
  %.0.copyload.i52804 = load i32, ptr %i.lfr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52804) #7, !srcloc !19
  %i.lfs = xor i32 %.0.copyload.i52804, -1
  %i.lft = and i32 %.0.copyload.i52803, %i.lfs
  %.val49810 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfu = getelementptr inbounds nuw i8, ptr %.val49810, i64 %i.lfn
  store i32 %i.lft, ptr %i.lfu, align 1
  br label %bb.asy

bb.asy:                                           ; preds = %bb.asx, %bb.ast, %.thread54186
  %i.lfv = add i32 %.9344344, 64                  ; 2 uses
  %i.lfw = icmp eq i32 %i.lfv, %i.kzq
  br i1 %i.lfw, label %.loopexit54585, label %.preheader54584

.preheader54584:                                  ; preds = %bb.asy, %bb.asz
  %.3644033 = phi i32 [ %i.lfz, %bb.asz ], [ %i.lfv, %bb.asy ] ; 3 uses
  %i.lfx = zext i32 %.3644033 to i64
  %.val48034 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfy = getelementptr inbounds nuw i8, ptr %.val48034, i64 %i.lfx
  %.0.copyload.i52805 = load i32, ptr %i.lfy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52805) #7, !srcloc !19
  switch i32 %.0.copyload.i52805, label %.loopexit54585 [
    i32 -8, label %bb.asz
    i32 -4, label %bb.asz
  ]

bb.asz:                                           ; preds = %.preheader54584, %.preheader54584
  %i.lfz = add i32 %.3644033, 64                  ; 2 uses
  %.not45977 = icmp eq i32 %i.lfz, %i.kzq
  br i1 %.not45977, label %.loopexit54585, label %.preheader54584

.loopexit54585:                                   ; preds = %bb.asz, %.preheader54584, %bb.asy
  %.9444345 = phi i32 [ %i.kzq, %bb.asy ], [ %i.kzq, %bb.asz ], [ %.3644033, %.preheader54584 ] ; 2 uses
  %.not45978 = icmp eq i32 %.9444345, %i.kzw
  br i1 %.not45978, label %.loopexit54639, label %.preheader54638

.loopexit54639:                                   ; preds = %.loopexit54585, %.loopexit54641
  %i.lga = add nuw nsw i64 %i.htd, 36             ; 2 uses
  %.val48033 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lgb = getelementptr inbounds nuw i8, ptr %.val48033, i64 %i.lga
  %.0.copyload.i52806 = load i32, ptr %i.lgb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52806) #7, !srcloc !19
  %.not45979 = icmp eq i32 %.0.copyload.i52806, 0
  br i1 %.not45979, label %.loopexit54637, label %.preheader55237

.preheader55237:                                  ; preds = %.loopexit54639, %bb.axi
  %.3744034 = phi i32 [ %.0.copyload.i52937, %bb.axi ], [ %.0.copyload.i52806, %.loopexit54639 ]
  %.val48032 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lgc = getelementptr inbounds nuw i8, ptr %.val48032, i64 %i.kzj
  %.0.copyload.i52807 = load i32, ptr %i.lgc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52807) #7, !srcloc !19
  %i.lgd = shl i32 %.3744034, 2
  %i.lge = add i32 %.0.copyload.i52807, %i.lgd
  br label %bb.ata

bb.ata:                                           ; preds = %bb.axh, %.preheader55237
  %.1243465 = phi i32 [ %i.lge, %.preheader55237 ], [ %i.lgf, %bb.axh ]
  %.143194 = phi i32 [ 0, %.preheader55237 ], [ %.443197, %bb.axh ] ; 2 uses
  %i.lgf = add i32 %.1243465, -4                  ; 3 uses
  %i.lgg = zext i32 %i.lgf to i64
  %.val48031 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lgh = getelementptr inbounds nuw i8, ptr %.val48031, i64 %i.lgg
  %.0.copyload.i52808 = load i32, ptr %i.lgh, align 1 ; 14 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52808) #7, !srcloc !19
  %.val48030 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lgi = getelementptr inbounds nuw i8, ptr %.val48030, i64 %i.hei
  %.0.copyload.i52809 = load i32, ptr %i.lgi, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52809) #7, !srcloc !19
  %.val48029 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lgj = getelementptr inbounds nuw i8, ptr %.val48029, i64 %i.heh
  %.0.copyload.i52810 = load i32, ptr %i.lgj, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52810) #7, !srcloc !19
  %.not45980 = icmp eq i32 %.0.copyload.i52810, 0
  br i1 %.not45980, label %bb.ate, label %bb.atb

bb.atb:                                           ; preds = %bb.ata
  %i.lgk = add i32 %.0.copyload.i52810, -1        ; 2 uses
  %i.lgl = lshr i32 %.0.copyload.i52808, 4
  %i.lgm = lshr i32 %.0.copyload.i52808, 9
  %i.lgn = xor i32 %i.lgl, %i.lgm
  %i.lgo = and i32 %i.lgk, %i.lgn                 ; 2 uses
  %i.lgp = shl i32 %i.lgo, 6
  %i.lgq = add i32 %i.lgp, %.0.copyload.i52809    ; 3 uses
  %i.lgr = zext i32 %i.lgq to i64
  %.val48028 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lgs = getelementptr inbounds nuw i8, ptr %.val48028, i64 %i.lgr
  %.0.copyload.i52811 = load i32, ptr %i.lgs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52811) #7, !srcloc !19
  %i.lgt = icmp eq i32 %.0.copyload.i52808, %.0.copyload.i52811
  br i1 %i.lgt, label %.loopexit54529, label %.preheader54528

.preheader54528:                                  ; preds = %bb.atb, %bb.atd
  %.9544346 = phi i32 [ %i.lhb, %bb.atd ], [ %i.lgo, %bb.atb ]
  %.113 = phi i32 [ %i.lha, %bb.atd ], [ 1, %bb.atb ] ; 2 uses
  %.1843809 = phi i32 [ %i.lhd, %bb.atd ], [ %i.lgq, %bb.atb ] ; 2 uses
  %.1943504 = phi i32 [ %i.lgy, %bb.atd ], [ 0, %bb.atb ] ; 3 uses
  %.1343386 = phi i32 [ %.0.copyload.i52812, %bb.atd ], [ %.0.copyload.i52811, %bb.atb ] ; 2 uses
  %i.lgu = icmp eq i32 %.1343386, -4
  %.not45983 = icmp eq i32 %.1943504, 0           ; 2 uses
  br i1 %i.lgu, label %bb.atc, label %bb.atd

bb.atc:                                           ; preds = %.preheader54528
  %i.lgv = select i1 %.not45983, i32 %.1843809, i32 %.1943504
  br label %bb.ate

bb.atd:                                           ; preds = %.preheader54528
  %i.lgw = icmp eq i32 %.1343386, -8
  %i.lgx = select i1 %i.lgw, i1 %.not45983, i1 false
  %i.lgy = select i1 %i.lgx, i32 %.1843809, i32 %.1943504
  %i.lgz = add i32 %.113, %.9544346
  %i.lha = add i32 %.113, 1
  %i.lhb = and i32 %i.lgz, %i.lgk                 ; 2 uses
  %i.lhc = shl i32 %i.lhb, 6
  %i.lhd = add i32 %i.lhc, %.0.copyload.i52809    ; 3 uses
  %i.lhe = zext i32 %i.lhd to i64
  %.val48027 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lhf = getelementptr inbounds nuw i8, ptr %.val48027, i64 %i.lhe
  %.0.copyload.i52812 = load i32, ptr %i.lhf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52812) #7, !srcloc !19
  %.not45982 = icmp eq i32 %.0.copyload.i52808, %.0.copyload.i52812
  br i1 %.not45982, label %.loopexit54529, label %.preheader54528

bb.ate:                                           ; preds = %bb.ata, %bb.atc
  %.1943810 = phi i32 [ %i.lgv, %bb.atc ], [ 0, %bb.ata ]
  %.val48026 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lhg = getelementptr inbounds nuw i8, ptr %.val48026, i64 %i.hej
  %.0.copyload.i52813 = load i32, ptr %i.lhg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52813) #7, !srcloc !19
  %i.lhh = shl i32 %.0.copyload.i52813, 2
  %i.lhi = add i32 %i.lhh, 4
  %i.lhj = mul i32 %.0.copyload.i52810, 3
  %.not45984 = icmp ult i32 %i.lhi, %i.lhj
  br i1 %.not45984, label %bb.atg, label %bb.atf

bb.atf:                                           ; preds = %bb.ate
  %i.lhk = shl i32 %.0.copyload.i52810, 1
  br label %bb.ath

bb.atg:                                           ; preds = %bb.ate
  %i.lhl = xor i32 %.0.copyload.i52813, -1
  %i.lhm = add i32 %.0.copyload.i52810, %i.lhl
  %.val48025 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lhn = getelementptr inbounds nuw i8, ptr %.val48025, i64 %i.hef
  %i.lho = getelementptr inbounds nuw i8, ptr %i.lhn, i64 12
  %.0.copyload.i52814 = load i32, ptr %i.lho, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52814) #7, !srcloc !19
  %i.lhp = sub i32 %i.lhm, %.0.copyload.i52814
  %i.lhq = lshr i32 %.0.copyload.i52810, 3
  %i.lhr = icmp ugt i32 %i.lhp, %i.lhq
  br i1 %i.lhr, label %bb.ato, label %bb.ath

bb.ath:                                           ; preds = %bb.atg, %bb.atf
  %.9644347 = phi i32 [ %i.lhk, %bb.atf ], [ %.0.copyload.i52810, %bb.atg ]
  %i.lhs = add i32 %.9644347, -1
  %i.lht = zext i32 %i.lhs to i64                 ; 2 uses
  %i.lhu = lshr i64 %i.lht, 1
  %i.lhv = or i64 %i.lhu, %i.lht                  ; 2 uses
  %i.lhw = lshr i64 %i.lhv, 2
  %i.lhx = or i64 %i.lhw, %i.lhv                  ; 2 uses
  %i.lhy = lshr i64 %i.lhx, 4
  %i.lhz = or i64 %i.lhy, %i.lhx                  ; 2 uses
  %i.lia = lshr i64 %i.lhz, 8
  %i.lib = or i64 %i.lia, %i.lhz                  ; 2 uses
  %i.lic = lshr i64 %i.lib, 16
  %i.lid = or i64 %i.lic, %i.lib
  %i.lie = trunc nuw i64 %i.lid to i32
  %i.lif = add i32 %i.lie, 1
  %13 = tail call i32 @llvm.umax.i32(i32 %i.lif, i32 64) ; 2 uses
  %.val49809 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lig = getelementptr inbounds nuw i8, ptr %.val49809, i64 %i.heh
  store i32 %13, ptr %i.lig, align 1
  %i.lih = shl i32 %13, 6
  %i.lii = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.lih) #7 ; 13 uses
  %.val49808 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lij = getelementptr inbounds nuw i8, ptr %.val49808, i64 %i.hei
  store i32 %i.lii, ptr %i.lij, align 1
  %.not45985 = icmp eq i32 %.0.copyload.i52809, 0
  br i1 %.not45985, label %bb.ati, label %bb.atl

bb.ati:                                           ; preds = %bb.ath
  %.val50863 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lik = getelementptr inbounds nuw i8, ptr %.val50863, i64 %i.hej
  store i64 0, ptr %i.lik, align 1
  %.val48024 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lil = getelementptr inbounds nuw i8, ptr %.val48024, i64 %i.heh
  %.0.copyload.i52815 = load i32, ptr %i.lil, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52815) #7, !srcloc !19
  %i.lim = add i32 %.0.copyload.i52815, 67108863
  %i.lin = and i32 %i.lim, 67108863
  %i.lio = and i32 %.0.copyload.i52815, 7         ; 7 uses
  %.not45986 = icmp eq i32 %i.lio, 0
  br i1 %.not45986, label %.loopexit54527, label %.preheader54526

.preheader54526:                                  ; preds = %bb.ati
  %i.lip = zext i32 %i.lii to i64
  %.val49807 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.liq = getelementptr inbounds nuw i8, ptr %.val49807, i64 %i.lip
  store i32 -4, ptr %i.liq, align 1
  %i.lir = add i32 %i.lii, 64                     ; 2 uses
  %.not45987 = icmp eq i32 %i.lio, 1
  br i1 %.not45987, label %.loopexit54527, label %.preheader54526.1

.preheader54526.1:                                ; preds = %.preheader54526
  %i.lis = zext i32 %i.lir to i64
  %.val49807.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lit = getelementptr inbounds nuw i8, ptr %.val49807.1, i64 %i.lis
  store i32 -4, ptr %i.lit, align 1
  %i.liu = add i32 %i.lii, 128                    ; 2 uses
  %.not45987.1 = icmp eq i32 %i.lio, 2
  br i1 %.not45987.1, label %.loopexit54527, label %.preheader54526.2

.preheader54526.2:                                ; preds = %.preheader54526.1
  %i.liv = zext i32 %i.liu to i64
  %.val49807.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.liw = getelementptr inbounds nuw i8, ptr %.val49807.2, i64 %i.liv
  store i32 -4, ptr %i.liw, align 1
  %i.lix = add i32 %i.lii, 192                    ; 2 uses
  %.not45987.2 = icmp eq i32 %i.lio, 3
  br i1 %.not45987.2, label %.loopexit54527, label %.preheader54526.3

.preheader54526.3:                                ; preds = %.preheader54526.2
  %i.liy = zext i32 %i.lix to i64
  %.val49807.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.liz = getelementptr inbounds nuw i8, ptr %.val49807.3, i64 %i.liy
  store i32 -4, ptr %i.liz, align 1
  %i.lja = add i32 %i.lii, 256                    ; 2 uses
  %.not45987.3 = icmp eq i32 %i.lio, 4
  br i1 %.not45987.3, label %.loopexit54527, label %.preheader54526.4

.preheader54526.4:                                ; preds = %.preheader54526.3
  %i.ljb = zext i32 %i.lja to i64
  %.val49807.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ljc = getelementptr inbounds nuw i8, ptr %.val49807.4, i64 %i.ljb
  store i32 -4, ptr %i.ljc, align 1
  %i.ljd = add i32 %i.lii, 320                    ; 2 uses
  %.not45987.4 = icmp eq i32 %i.lio, 5
  br i1 %.not45987.4, label %.loopexit54527, label %.preheader54526.5

.preheader54526.5:                                ; preds = %.preheader54526.4
  %i.lje = zext i32 %i.ljd to i64
  %.val49807.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ljf = getelementptr inbounds nuw i8, ptr %.val49807.5, i64 %i.lje
  store i32 -4, ptr %i.ljf, align 1
  %i.ljg = add i32 %i.lii, 384                    ; 2 uses
  %.not45987.5 = icmp eq i32 %i.lio, 6
  br i1 %.not45987.5, label %.loopexit54527, label %.preheader54526.6

.preheader54526.6:                                ; preds = %.preheader54526.5
  %i.ljh = zext i32 %i.ljg to i64
  %.val49807.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lji = getelementptr inbounds nuw i8, ptr %.val49807.6, i64 %i.ljh
  store i32 -4, ptr %i.lji, align 1
  %i.ljj = add i32 %i.lii, 448
  br label %.loopexit54527

.loopexit54527:                                   ; preds = %.preheader54526, %.preheader54526.1, %.preheader54526.2, %.preheader54526.3, %.preheader54526.4, %.preheader54526.5, %.preheader54526.6, %bb.ati
  %.3444130 = phi i32 [ %i.lii, %bb.ati ], [ %i.lir, %.preheader54526 ], [ %i.liu, %.preheader54526.1 ], [ %i.lix, %.preheader54526.2 ], [ %i.lja, %.preheader54526.3 ], [ %i.ljd, %.preheader54526.4 ], [ %i.ljg, %.preheader54526.5 ], [ %i.ljj, %.preheader54526.6 ]
  %i.ljk = icmp samesign ult i32 %i.lin, 7
  br i1 %i.ljk, label %.loopexit54525, label %bb.atj

bb.atj:                                           ; preds = %.loopexit54527
  %i.ljl = shl i32 %.0.copyload.i52815, 6
  %i.ljm = add i32 %i.ljl, %i.lii
  br label %bb.atk

bb.atk:                                           ; preds = %bb.atk, %bb.atj
  %.3544131 = phi i32 [ %.3444130, %bb.atj ], [ %i.lkd, %bb.atk ] ; 2 uses
  %i.ljn = zext i32 %.3544131 to i64              ; 8 uses
  %.val49806 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ljo = getelementptr inbounds nuw i8, ptr %.val49806, i64 %i.ljn
  %i.ljp = getelementptr inbounds nuw i8, ptr %i.ljo, i64 448
  store i32 -4, ptr %i.ljp, align 1
  %.val49805 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ljq = getelementptr inbounds nuw i8, ptr %.val49805, i64 %i.ljn
  %i.ljr = getelementptr inbounds nuw i8, ptr %i.ljq, i64 384
  store i32 -4, ptr %i.ljr, align 1
  %.val49804 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ljs = getelementptr inbounds nuw i8, ptr %.val49804, i64 %i.ljn
  %i.ljt = getelementptr inbounds nuw i8, ptr %i.ljs, i64 320
  store i32 -4, ptr %i.ljt, align 1
  %.val49803 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lju = getelementptr inbounds nuw i8, ptr %.val49803, i64 %i.ljn
  %i.ljv = getelementptr inbounds nuw i8, ptr %i.lju, i64 256
  store i32 -4, ptr %i.ljv, align 1
  %.val49802 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ljw = getelementptr inbounds nuw i8, ptr %.val49802, i64 %i.ljn
  %i.ljx = getelementptr inbounds nuw i8, ptr %i.ljw, i64 192
  store i32 -4, ptr %i.ljx, align 1
  %.val49801 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ljy = getelementptr inbounds nuw i8, ptr %.val49801, i64 %i.ljn
  %i.ljz = getelementptr inbounds nuw i8, ptr %i.ljy, i64 128
  store i32 -4, ptr %i.ljz, align 1
  %.val49800 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lka = getelementptr inbounds nuw i8, ptr %.val49800, i64 %i.ljn
  %i.lkb = getelementptr inbounds nuw i8, ptr %i.lka, i64 64
  store i32 -4, ptr %i.lkb, align 1
  %.val49799 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lkc = getelementptr inbounds nuw i8, ptr %.val49799, i64 %i.ljn
  store i32 -4, ptr %i.lkc, align 1
  %i.lkd = add i32 %.3544131, 512                 ; 2 uses
  %.not45988 = icmp eq i32 %i.lkd, %i.ljm
  br i1 %.not45988, label %.loopexit54525, label %bb.atk

bb.atl:                                           ; preds = %bb.ath
  %i.lke = shl i32 %.0.copyload.i52810, 6
  %i.lkf = add i32 %i.lke, %.0.copyload.i52809
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.heg, i32 noundef %.0.copyload.i52809, i32 noundef %i.lkf) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52809) #7
  %.val48023 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lkg = getelementptr inbounds nuw i8, ptr %.val48023, i64 %i.hei
  %.0.copyload.i52816 = load i32, ptr %i.lkg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52816) #7, !srcloc !19
  %.val48022 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lkh = getelementptr inbounds nuw i8, ptr %.val48022, i64 %i.heh
  %.0.copyload.i52817 = load i32, ptr %i.lkh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52817) #7, !srcloc !19
  br label %.loopexit54525

.loopexit54525:                                   ; preds = %bb.atk, %.loopexit54527, %bb.atl
  %.9744348 = phi i32 [ %i.lii, %.loopexit54527 ], [ %.0.copyload.i52816, %bb.atl ], [ %i.lii, %bb.atk ] ; 2 uses
  %.643680 = phi i32 [ %.0.copyload.i52815, %.loopexit54527 ], [ %.0.copyload.i52817, %bb.atl ], [ %.0.copyload.i52815, %bb.atk ]
  %i.lki = add i32 %.643680, -1                   ; 2 uses
  %i.lkj = lshr i32 %.0.copyload.i52808, 4
  %i.lkk = lshr i32 %.0.copyload.i52808, 9
  %i.lkl = xor i32 %i.lkj, %i.lkk
  %i.lkm = and i32 %i.lki, %i.lkl                 ; 2 uses
  %i.lkn = shl i32 %i.lkm, 6
  %i.lko = add i32 %i.lkn, %.9744348              ; 3 uses
  %i.lkp = zext i32 %i.lko to i64
  %.val48021 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lkq = getelementptr inbounds nuw i8, ptr %.val48021, i64 %i.lkp
  %.0.copyload.i52818 = load i32, ptr %i.lkq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52818) #7, !srcloc !19
  %.not45989 = icmp eq i32 %.0.copyload.i52818, %.0.copyload.i52808
  br i1 %.not45989, label %.loopexit54524, label %.preheader54523

.preheader54523:                                  ; preds = %.loopexit54525, %bb.atn
  %.3644132 = phi i32 [ %.0.copyload.i52819, %bb.atn ], [ %.0.copyload.i52818, %.loopexit54525 ] ; 2 uses
  %.2043811 = phi i32 [ %i.lla, %bb.atn ], [ %i.lko, %.loopexit54525 ] ; 2 uses
  %.743681 = phi i32 [ %i.lkv, %bb.atn ], [ 0, %.loopexit54525 ] ; 3 uses
  %.2043505 = phi i32 [ %i.lkx, %bb.atn ], [ 1, %.loopexit54525 ] ; 2 uses
  %.1543388 = phi i32 [ %i.lky, %bb.atn ], [ %i.lkm, %.loopexit54525 ]
  %i.lkr = icmp eq i32 %.3644132, -4
  %.not45992 = icmp eq i32 %.743681, 0            ; 2 uses
  br i1 %i.lkr, label %bb.atm, label %bb.atn

bb.atm:                                           ; preds = %.preheader54523
  %i.lks = select i1 %.not45992, i32 %.2043811, i32 %.743681
  br label %bb.ato

bb.atn:                                           ; preds = %.preheader54523
  %i.lkt = icmp eq i32 %.3644132, -8
  %i.lku = select i1 %i.lkt, i1 %.not45992, i1 false
  %i.lkv = select i1 %i.lku, i32 %.2043811, i32 %.743681
  %i.lkw = add i32 %.1543388, %.2043505
  %i.lkx = add i32 %.2043505, 1
  %i.lky = and i32 %i.lkw, %i.lki                 ; 2 uses
  %i.lkz = shl i32 %i.lky, 6
  %i.lla = add i32 %i.lkz, %.9744348              ; 3 uses
  %i.llb = zext i32 %i.lla to i64
  %.val48020 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.llc = getelementptr inbounds nuw i8, ptr %.val48020, i64 %i.llb
  %.0.copyload.i52819 = load i32, ptr %i.llc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52819) #7, !srcloc !19
  %.not45991 = icmp eq i32 %.0.copyload.i52808, %.0.copyload.i52819
  br i1 %.not45991, label %.loopexit54524, label %.preheader54523

bb.ato:                                           ; preds = %bb.atg, %bb.atm
  %.2243813 = phi i32 [ %i.lks, %bb.atm ], [ %.1943810, %bb.atg ] ; 2 uses
  %i.lld = zext i32 %.2243813 to i64
  %.val48019 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lle = getelementptr inbounds nuw i8, ptr %.val48019, i64 %i.lld
end_hunk_7
begin_hunk_8_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.llr = getelementptr inbounds nuw i8, ptr %.val50860, i64 %i.lll
  %i.lls = getelementptr inbounds nuw i8, ptr %i.llr, i64 20
  store i64 0, ptr %i.lls, align 1
  %.val50859 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.llt = getelementptr inbounds nuw i8, ptr %.val50859, i64 %i.lll
  %i.llu = getelementptr inbounds nuw i8, ptr %i.llt, i64 28
  store i64 0, ptr %i.llu, align 1
  %.val50858 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.llv = getelementptr inbounds nuw i8, ptr %.val50858, i64 %i.lll
  %i.llw = getelementptr inbounds nuw i8, ptr %i.llv, i64 36
  store i64 0, ptr %i.llw, align 1
  %.val50857 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.llx = getelementptr inbounds nuw i8, ptr %.val50857, i64 %i.lll
  %i.lly = getelementptr inbounds nuw i8, ptr %i.llx, i64 44
  store i64 0, ptr %i.lly, align 1
  %.val50856 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.llz = getelementptr inbounds nuw i8, ptr %.val50856, i64 %i.lll
  %i.lma = getelementptr inbounds nuw i8, ptr %i.llz, i64 52
  store i64 0, ptr %i.lma, align 1
  %.val49795 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lmb = getelementptr inbounds nuw i8, ptr %.val49795, i64 %i.lll
  %i.lmc = getelementptr inbounds nuw i8, ptr %i.lmb, i64 60
  store i32 0, ptr %i.lmc, align 1
  br label %.loopexit54529

.loopexit54529:                                   ; preds = %bb.atd, %bb.atb, %bb.atq
  %.2443815 = phi i32 [ %.2343814, %bb.atq ], [ %i.lgq, %bb.atb ], [ %i.lhd, %bb.atd ] ; 2 uses
  %i.lmd = tail call i32 @w2c_hermes_hermes0x3A0x3ABasicBlock0x3A0x3AgetTerminator0x280x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52808) #7
  %i.lme = tail call i32 @w2c_hermes_hermes0x3A0x3ABasicBlock0x3A0x3AgetTerminator0x280x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52808) #7 ; 2 uses
  %.not45994 = icmp eq i32 %i.lme, 0
  br i1 %.not45994, label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread, label %bb.atr

bb.atr:                                           ; preds = %.loopexit54529
  %i.lmf = zext i32 %i.lme to i64                 ; 3 uses
  %.val29.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lmg = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.lmf
  %i.lmh = getelementptr inbounds nuw i8, ptr %i.lmg, i64 8
  %.0.copyload.i.i52823 = load i8, ptr %i.lmh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i.i52823) #7, !srcloc !21
  switch i8 %.0.copyload.i.i52823, label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit [
    i8 78, label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread
    i8 79, label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread
    i8 80, label %bb.ats
    i8 81, label %bb.atu
    i8 82, label %bb.atu
    i8 83, label %bb.atu
    i8 84, label %bb.atu
    i8 85, label %bb.atu
    i8 86, label %bb.atu
    i8 87, label %bb.att
  ]

bb.ats:                                           ; preds = %bb.atr
  %.val28.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lmi = getelementptr inbounds nuw i8, ptr %.val28.i, i64 %i.lmf
  %i.lmj = getelementptr inbounds nuw i8, ptr %i.lmi, i64 44
  %.0.copyload.i30.i = load i32, ptr %i.lmj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i30.i) #7, !srcloc !19
  %i.lmk = add i32 %.0.copyload.i30.i, -2
  %i.lml = lshr i32 %i.lmk, 1
  %i.lmm = add nuw i32 %i.lml, 1
  br label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit

bb.att:                                           ; preds = %bb.atr
  %.val.i52824 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lmn = getelementptr inbounds nuw i8, ptr %.val.i52824, i64 %i.lmf
  %i.lmo = getelementptr inbounds nuw i8, ptr %i.lmn, i64 44
  %.0.copyload.i31.i = load i32, ptr %i.lmo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i31.i) #7, !srcloc !19
  %i.lmp = add i32 %.0.copyload.i31.i, -4
  %i.lmq = lshr i32 %i.lmp, 1
  %i.lmr = add nuw i32 %i.lmq, 1
  br label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit

bb.atu:                                           ; preds = %bb.atr, %bb.atr, %bb.atr, %bb.atr, %bb.atr, %bb.atr
  br label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit

w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit: ; preds = %bb.atr, %bb.atu, %bb.ats, %bb.att
  %.0.i = phi i32 [ %i.lmm, %bb.ats ], [ %i.lmr, %bb.att ], [ 1, %bb.atr ], [ 2, %bb.atu ]
  %i.lms = zext i32 %.2443815 to i64              ; 10 uses
  %i.lmt = add nuw nsw i64 %i.lms, 48             ; 6 uses
  %i.lmu = add nuw nsw i64 %i.lms, 44             ; 4 uses
  %i.lmv = add nuw nsw i64 %i.lms, 40             ; 3 uses
  br label %bb.atv

w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread: ; preds = %bb.atr, %bb.atr, %.loopexit54529
  %i.lmw = zext i32 %.2443815 to i64              ; 2 uses
  %.val48016 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lmx = getelementptr inbounds nuw i8, ptr %.val48016, i64 %i.lmw
  %i.lmy = getelementptr inbounds nuw i8, ptr %i.lmx, i64 48
  %.0.copyload.i52825 = load i32, ptr %i.lmy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52825) #7, !srcloc !19
  br label %.loopexit54522

bb.atv:                                           ; preds = %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit, %.loopexit54359
  %.543247 = phi i32 [ %i.lzl, %.loopexit54359 ], [ 0, %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit ] ; 2 uses
  %.243195 = phi i32 [ %.343196, %.loopexit54359 ], [ %.143194, %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit ] ; 2 uses
  %i.lmz = tail call i32 @w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetSuccessor0x28unsigned0x20int0x290x20const(ptr noundef %0, i32 noundef %i.lmd, i32 noundef %.543247) ; 11 uses
  %.val48015 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lna = getelementptr inbounds nuw i8, ptr %.val48015, i64 %i.hei
  %.0.copyload.i52826 = load i32, ptr %i.lna, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52826) #7, !srcloc !19
  %.val48014 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lnb = getelementptr inbounds nuw i8, ptr %.val48014, i64 %i.heh
  %.0.copyload.i52827 = load i32, ptr %i.lnb, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52827) #7, !srcloc !19
  %.not45996 = icmp eq i32 %.0.copyload.i52827, 0
  br i1 %.not45996, label %bb.atz, label %bb.atw

bb.atw:                                           ; preds = %bb.atv
  %i.lnc = add i32 %.0.copyload.i52827, -1        ; 2 uses
  %i.lnd = lshr i32 %i.lmz, 4
  %i.lne = lshr i32 %i.lmz, 9
  %i.lnf = xor i32 %i.lnd, %i.lne
  %i.lng = and i32 %i.lnc, %i.lnf                 ; 2 uses
  %i.lnh = shl i32 %i.lng, 6
  %i.lni = add i32 %i.lnh, %.0.copyload.i52826    ; 2 uses
  %i.lnj = zext i32 %i.lni to i64                 ; 2 uses
  %.val48013 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lnk = getelementptr inbounds nuw i8, ptr %.val48013, i64 %i.lnj
  %.0.copyload.i52828 = load i32, ptr %i.lnk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52828) #7, !srcloc !19
  %i.lnl = icmp eq i32 %i.lmz, %.0.copyload.i52828
  br i1 %i.lnl, label %.loopexit54370, label %.preheader54369

.preheader54369:                                  ; preds = %bb.atw, %bb.aty
  %.9844349 = phi i32 [ %i.lnt, %bb.aty ], [ %i.lng, %bb.atw ]
  %.3844035 = phi i32 [ %i.lns, %bb.aty ], [ 1, %bb.atw ] ; 2 uses
  %.114 = phi i32 [ %i.lnq, %bb.aty ], [ 0, %bb.atw ] ; 3 uses
  %.2143506 = phi i32 [ %i.lnv, %bb.aty ], [ %i.lni, %bb.atw ] ; 2 uses
  %.1643389 = phi i32 [ %.0.copyload.i52829, %bb.aty ], [ %.0.copyload.i52828, %bb.atw ] ; 2 uses
  %i.lnm = icmp eq i32 %.1643389, -4
  %.not45999 = icmp eq i32 %.114, 0               ; 2 uses
  br i1 %i.lnm, label %bb.atx, label %bb.aty

bb.atx:                                           ; preds = %.preheader54369
  %i.lnn = select i1 %.not45999, i32 %.2143506, i32 %.114
  br label %bb.atz

bb.aty:                                           ; preds = %.preheader54369
  %i.lno = icmp eq i32 %.1643389, -8
  %i.lnp = select i1 %i.lno, i1 %.not45999, i1 false
  %i.lnq = select i1 %i.lnp, i32 %.2143506, i32 %.114
  %i.lnr = add i32 %.3844035, %.9844349
  %i.lns = add i32 %.3844035, 1
  %i.lnt = and i32 %i.lnr, %i.lnc                 ; 2 uses
  %i.lnu = shl i32 %i.lnt, 6
  %i.lnv = add i32 %i.lnu, %.0.copyload.i52826    ; 2 uses
  %i.lnw = zext i32 %i.lnv to i64                 ; 2 uses
  %.val48012 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lnx = getelementptr inbounds nuw i8, ptr %.val48012, i64 %i.lnw
  %.0.copyload.i52829 = load i32, ptr %i.lnx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52829) #7, !srcloc !19
  %.not45998 = icmp eq i32 %i.lmz, %.0.copyload.i52829
  br i1 %.not45998, label %.loopexit54370, label %.preheader54369

bb.atz:                                           ; preds = %bb.atv, %bb.atx
  %.2243507 = phi i32 [ 0, %bb.atv ], [ %i.lnn, %bb.atx ]
  %.val48011 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lny = getelementptr inbounds nuw i8, ptr %.val48011, i64 %i.hej
  %.0.copyload.i52830 = load i32, ptr %i.lny, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52830) #7, !srcloc !19
  %i.lnz = shl i32 %.0.copyload.i52830, 2
  %i.loa = add i32 %i.lnz, 4
  %i.lob = mul i32 %.0.copyload.i52827, 3
  %.not46000 = icmp ult i32 %i.loa, %i.lob
  br i1 %.not46000, label %bb.aub, label %bb.aua

bb.aua:                                           ; preds = %bb.atz
  %i.loc = shl i32 %.0.copyload.i52827, 1
  br label %bb.auc

bb.aub:                                           ; preds = %bb.atz
  %i.lod = xor i32 %.0.copyload.i52830, -1
  %i.loe = add i32 %.0.copyload.i52827, %i.lod
  %.val48010 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lof = getelementptr inbounds nuw i8, ptr %.val48010, i64 %i.hef
  %i.log = getelementptr inbounds nuw i8, ptr %i.lof, i64 12
  %.0.copyload.i52831 = load i32, ptr %i.log, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52831) #7, !srcloc !19
  %i.loh = sub i32 %i.loe, %.0.copyload.i52831
  %i.loi = lshr i32 %.0.copyload.i52827, 3
  %i.loj = icmp ugt i32 %i.loh, %i.loi
  br i1 %i.loj, label %bb.auj, label %bb.auc

bb.auc:                                           ; preds = %bb.aub, %bb.aua
  %.9944350 = phi i32 [ %i.loc, %bb.aua ], [ %.0.copyload.i52827, %bb.aub ]
  %i.lok = add i32 %.9944350, -1
  %i.lol = zext i32 %i.lok to i64                 ; 2 uses
  %i.lom = lshr i64 %i.lol, 1
  %i.lon = or i64 %i.lom, %i.lol                  ; 2 uses
  %i.loo = lshr i64 %i.lon, 2
  %i.lop = or i64 %i.loo, %i.lon                  ; 2 uses
  %i.loq = lshr i64 %i.lop, 4
  %i.lor = or i64 %i.loq, %i.lop                  ; 2 uses
  %i.los = lshr i64 %i.lor, 8
  %i.lot = or i64 %i.los, %i.lor                  ; 2 uses
  %i.lou = lshr i64 %i.lot, 16
  %i.lov = or i64 %i.lou, %i.lot
  %i.low = trunc nuw i64 %i.lov to i32
  %i.lox = add i32 %i.low, 1
  %14 = tail call i32 @llvm.umax.i32(i32 %i.lox, i32 64) ; 2 uses
  %.val49794 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.loy = getelementptr inbounds nuw i8, ptr %.val49794, i64 %i.heh
  store i32 %14, ptr %i.loy, align 1
  %i.loz = shl i32 %14, 6
  %i.lpa = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.loz) #7 ; 13 uses
  %.val49793 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lpb = getelementptr inbounds nuw i8, ptr %.val49793, i64 %i.hei
  store i32 %i.lpa, ptr %i.lpb, align 1
  %.not46001 = icmp eq i32 %.0.copyload.i52826, 0
  br i1 %.not46001, label %bb.aud, label %bb.aug

bb.aud:                                           ; preds = %bb.auc
  %.val50855 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lpc = getelementptr inbounds nuw i8, ptr %.val50855, i64 %i.hej
  store i64 0, ptr %i.lpc, align 1
  %.val48009 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lpd = getelementptr inbounds nuw i8, ptr %.val48009, i64 %i.heh
  %.0.copyload.i52832 = load i32, ptr %i.lpd, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52832) #7, !srcloc !19
  %i.lpe = add i32 %.0.copyload.i52832, 67108863
  %i.lpf = and i32 %i.lpe, 67108863
  %i.lpg = and i32 %.0.copyload.i52832, 7         ; 7 uses
  %.not46002 = icmp eq i32 %i.lpg, 0
  br i1 %.not46002, label %.loopexit54368, label %.preheader54367

.preheader54367:                                  ; preds = %bb.aud
  %i.lph = zext i32 %i.lpa to i64
  %.val49792 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lpi = getelementptr inbounds nuw i8, ptr %.val49792, i64 %i.lph
  store i32 -4, ptr %i.lpi, align 1
  %i.lpj = add i32 %i.lpa, 64                     ; 2 uses
  %.not46003 = icmp eq i32 %i.lpg, 1
  br i1 %.not46003, label %.loopexit54368, label %.preheader54367.1

.preheader54367.1:                                ; preds = %.preheader54367
  %i.lpk = zext i32 %i.lpj to i64
  %.val49792.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lpl = getelementptr inbounds nuw i8, ptr %.val49792.1, i64 %i.lpk
  store i32 -4, ptr %i.lpl, align 1
  %i.lpm = add i32 %i.lpa, 128                    ; 2 uses
  %.not46003.1 = icmp eq i32 %i.lpg, 2
  br i1 %.not46003.1, label %.loopexit54368, label %.preheader54367.2

.preheader54367.2:                                ; preds = %.preheader54367.1
  %i.lpn = zext i32 %i.lpm to i64
  %.val49792.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lpo = getelementptr inbounds nuw i8, ptr %.val49792.2, i64 %i.lpn
  store i32 -4, ptr %i.lpo, align 1
  %i.lpp = add i32 %i.lpa, 192                    ; 2 uses
  %.not46003.2 = icmp eq i32 %i.lpg, 3
  br i1 %.not46003.2, label %.loopexit54368, label %.preheader54367.3

.preheader54367.3:                                ; preds = %.preheader54367.2
  %i.lpq = zext i32 %i.lpp to i64
  %.val49792.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lpr = getelementptr inbounds nuw i8, ptr %.val49792.3, i64 %i.lpq
  store i32 -4, ptr %i.lpr, align 1
  %i.lps = add i32 %i.lpa, 256                    ; 2 uses
  %.not46003.3 = icmp eq i32 %i.lpg, 4
  br i1 %.not46003.3, label %.loopexit54368, label %.preheader54367.4

.preheader54367.4:                                ; preds = %.preheader54367.3
  %i.lpt = zext i32 %i.lps to i64
  %.val49792.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lpu = getelementptr inbounds nuw i8, ptr %.val49792.4, i64 %i.lpt
  store i32 -4, ptr %i.lpu, align 1
  %i.lpv = add i32 %i.lpa, 320                    ; 2 uses
  %.not46003.4 = icmp eq i32 %i.lpg, 5
  br i1 %.not46003.4, label %.loopexit54368, label %.preheader54367.5

.preheader54367.5:                                ; preds = %.preheader54367.4
  %i.lpw = zext i32 %i.lpv to i64
  %.val49792.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lpx = getelementptr inbounds nuw i8, ptr %.val49792.5, i64 %i.lpw
  store i32 -4, ptr %i.lpx, align 1
  %i.lpy = add i32 %i.lpa, 384                    ; 2 uses
  %.not46003.5 = icmp eq i32 %i.lpg, 6
  br i1 %.not46003.5, label %.loopexit54368, label %.preheader54367.6

.preheader54367.6:                                ; preds = %.preheader54367.5
  %i.lpz = zext i32 %i.lpy to i64
  %.val49792.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqa = getelementptr inbounds nuw i8, ptr %.val49792.6, i64 %i.lpz
  store i32 -4, ptr %i.lqa, align 1
  %i.lqb = add i32 %i.lpa, 448
  br label %.loopexit54368

.loopexit54368:                                   ; preds = %.preheader54367, %.preheader54367.1, %.preheader54367.2, %.preheader54367.3, %.preheader54367.4, %.preheader54367.5, %.preheader54367.6, %bb.aud
  %.3844134 = phi i32 [ %i.lpa, %bb.aud ], [ %i.lpj, %.preheader54367 ], [ %i.lpm, %.preheader54367.1 ], [ %i.lpp, %.preheader54367.2 ], [ %i.lps, %.preheader54367.3 ], [ %i.lpv, %.preheader54367.4 ], [ %i.lpy, %.preheader54367.5 ], [ %i.lqb, %.preheader54367.6 ]
  %i.lqc = icmp samesign ult i32 %i.lpf, 7
  br i1 %i.lqc, label %.loopexit54366, label %bb.aue

bb.aue:                                           ; preds = %.loopexit54368
  %i.lqd = shl i32 %.0.copyload.i52832, 6
  %i.lqe = add i32 %i.lqd, %i.lpa
  br label %bb.auf

bb.auf:                                           ; preds = %bb.auf, %bb.aue
  %.3944135 = phi i32 [ %.3844134, %bb.aue ], [ %i.lqv, %bb.auf ] ; 2 uses
  %i.lqf = zext i32 %.3944135 to i64              ; 8 uses
  %.val49791 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqg = getelementptr inbounds nuw i8, ptr %.val49791, i64 %i.lqf
  %i.lqh = getelementptr inbounds nuw i8, ptr %i.lqg, i64 448
  store i32 -4, ptr %i.lqh, align 1
  %.val49790 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqi = getelementptr inbounds nuw i8, ptr %.val49790, i64 %i.lqf
  %i.lqj = getelementptr inbounds nuw i8, ptr %i.lqi, i64 384
  store i32 -4, ptr %i.lqj, align 1
  %.val49789 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqk = getelementptr inbounds nuw i8, ptr %.val49789, i64 %i.lqf
  %i.lql = getelementptr inbounds nuw i8, ptr %i.lqk, i64 320
  store i32 -4, ptr %i.lql, align 1
  %.val49788 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqm = getelementptr inbounds nuw i8, ptr %.val49788, i64 %i.lqf
  %i.lqn = getelementptr inbounds nuw i8, ptr %i.lqm, i64 256
  store i32 -4, ptr %i.lqn, align 1
  %.val49787 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqo = getelementptr inbounds nuw i8, ptr %.val49787, i64 %i.lqf
  %i.lqp = getelementptr inbounds nuw i8, ptr %i.lqo, i64 192
  store i32 -4, ptr %i.lqp, align 1
  %.val49786 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqq = getelementptr inbounds nuw i8, ptr %.val49786, i64 %i.lqf
  %i.lqr = getelementptr inbounds nuw i8, ptr %i.lqq, i64 128
  store i32 -4, ptr %i.lqr, align 1
  %.val49785 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqs = getelementptr inbounds nuw i8, ptr %.val49785, i64 %i.lqf
  %i.lqt = getelementptr inbounds nuw i8, ptr %i.lqs, i64 64
  store i32 -4, ptr %i.lqt, align 1
  %.val49784 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqu = getelementptr inbounds nuw i8, ptr %.val49784, i64 %i.lqf
  store i32 -4, ptr %i.lqu, align 1
  %i.lqv = add i32 %.3944135, 512                 ; 2 uses
  %.not46004 = icmp eq i32 %i.lqv, %i.lqe
  br i1 %.not46004, label %.loopexit54366, label %bb.auf

bb.aug:                                           ; preds = %bb.auc
  %i.lqw = shl i32 %.0.copyload.i52827, 6
  %i.lqx = add i32 %i.lqw, %.0.copyload.i52826
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.heg, i32 noundef %.0.copyload.i52826, i32 noundef %i.lqx) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52826) #7
  %.val48008 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqy = getelementptr inbounds nuw i8, ptr %.val48008, i64 %i.hei
  %.0.copyload.i52833 = load i32, ptr %i.lqy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52833) #7, !srcloc !19
  %.val48007 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqz = getelementptr inbounds nuw i8, ptr %.val48007, i64 %i.heh
  %.0.copyload.i52834 = load i32, ptr %i.lqz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52834) #7, !srcloc !19
  br label %.loopexit54366

.loopexit54366:                                   ; preds = %bb.auf, %.loopexit54368, %bb.aug
  %.10044351 = phi i32 [ %i.lpa, %.loopexit54368 ], [ %.0.copyload.i52833, %bb.aug ], [ %i.lpa, %bb.auf ] ; 2 uses
  %.843682 = phi i32 [ %.0.copyload.i52832, %.loopexit54368 ], [ %.0.copyload.i52834, %bb.aug ], [ %.0.copyload.i52832, %bb.auf ]
  %i.lra = add i32 %.843682, -1                   ; 2 uses
  %i.lrb = lshr i32 %i.lmz, 4
  %i.lrc = lshr i32 %i.lmz, 9
  %i.lrd = xor i32 %i.lrb, %i.lrc
  %i.lre = and i32 %i.lra, %i.lrd                 ; 2 uses
  %i.lrf = shl i32 %i.lre, 6
  %i.lrg = add i32 %i.lrf, %.10044351             ; 3 uses
  %i.lrh = zext i32 %i.lrg to i64
  %.val48006 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lri = getelementptr inbounds nuw i8, ptr %.val48006, i64 %i.lrh
  %.0.copyload.i52835 = load i32, ptr %i.lri, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52835) #7, !srcloc !19
  %.not46005 = icmp eq i32 %.0.copyload.i52835, %i.lmz
  br i1 %.not46005, label %.loopexit54365, label %.preheader54364

.preheader54364:                                  ; preds = %.loopexit54366, %bb.aui
  %.4044136 = phi i32 [ %.0.copyload.i52836, %bb.aui ], [ %.0.copyload.i52835, %.loopexit54366 ] ; 2 uses
  %.115 = phi i32 [ %i.lrp, %bb.aui ], [ 1, %.loopexit54366 ] ; 2 uses
  %.943683 = phi i32 [ %i.lrn, %bb.aui ], [ 0, %.loopexit54366 ] ; 3 uses
  %.2343508 = phi i32 [ %i.lrs, %bb.aui ], [ %i.lrg, %.loopexit54366 ] ; 2 uses
  %.1843391 = phi i32 [ %i.lrq, %bb.aui ], [ %i.lre, %.loopexit54366 ]
  %i.lrj = icmp eq i32 %.4044136, -4
  %.not46008 = icmp eq i32 %.943683, 0            ; 2 uses
  br i1 %i.lrj, label %bb.auh, label %bb.aui

bb.auh:                                           ; preds = %.preheader54364
  %i.lrk = select i1 %.not46008, i32 %.2343508, i32 %.943683
  br label %bb.auj

bb.aui:                                           ; preds = %.preheader54364
  %i.lrl = icmp eq i32 %.4044136, -8
  %i.lrm = select i1 %i.lrl, i1 %.not46008, i1 false
  %i.lrn = select i1 %i.lrm, i32 %.2343508, i32 %.943683
  %i.lro = add i32 %.1843391, %.115
  %i.lrp = add i32 %.115, 1
  %i.lrq = and i32 %i.lro, %i.lra                 ; 2 uses
  %i.lrr = shl i32 %i.lrq, 6
  %i.lrs = add i32 %i.lrr, %.10044351             ; 3 uses
  %i.lrt = zext i32 %i.lrs to i64
  %.val48005 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lru = getelementptr inbounds nuw i8, ptr %.val48005, i64 %i.lrt
  %.0.copyload.i52836 = load i32, ptr %i.lru, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52836) #7, !srcloc !19
  %.not46007 = icmp eq i32 %i.lmz, %.0.copyload.i52836
  br i1 %.not46007, label %.loopexit54365, label %.preheader54364

bb.auj:                                           ; preds = %bb.aub, %bb.auh
  %.2543510 = phi i32 [ %i.lrk, %bb.auh ], [ %.2243507, %bb.aub ] ; 2 uses
  %i.lrv = zext i32 %.2543510 to i64
  %.val48004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrw = getelementptr inbounds nuw i8, ptr %.val48004, i64 %i.lrv
end_hunk_8
begin_hunk_9_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.pot = ashr i32 %i.pos, 2
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsift_up0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20int0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i53363, i32 noundef %i.por, i32 noundef %.0.copyload.i53396, i32 noundef %i.pot) #7
  br label %bb.bgt

bb.bgt:                                           ; preds = %bb.bgf, %bb.bgs, %bb.bgr
  %.val47433 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pou = getelementptr inbounds nuw i8, ptr %.val47433, i64 %i.one
  %.0.copyload.i53444 = load i32, ptr %i.pou, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53444) #7, !srcloc !19
  %i.pov = add i32 %.0.copyload.i53444, -1
  %.val49668 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pow = getelementptr inbounds nuw i8, ptr %.val49668, i64 %i.one
  store i32 %i.pov, ptr %i.pow, align 1
  %.val47432 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pox = getelementptr inbounds nuw i8, ptr %.val47432, i64 %i.her
  %.0.copyload.i53445 = load i32, ptr %i.pox, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53445) #7, !srcloc !19
  %i.poy = shl i32 %.0.copyload.i53364, 2
  %i.poz = add i32 %.0.copyload.i53445, %i.poy
  %i.ppa = zext i32 %i.poz to i64
  %.val47431 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ppb = getelementptr inbounds nuw i8, ptr %.val47431, i64 %i.ppa
  %.0.copyload.i53446 = load i32, ptr %i.ppb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53446) #7, !srcloc !19
  %i.ppc = add i32 %.0.copyload.i53446, 8
  %.not46320 = icmp eq i32 %.0.copyload.i53446, 0
  %i.ppd = select i1 %.not46320, i32 0, i32 %i.ppc ; 5 uses
  %.val49667 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ppe = getelementptr inbounds nuw i8, ptr %.val49667, i64 %i.htd
  %i.ppf = getelementptr inbounds nuw i8, ptr %i.ppe, i64 396
  store i32 %i.ppd, ptr %i.ppf, align 1
  %.val47430 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ppg = getelementptr inbounds nuw i8, ptr %.val47430, i64 %i.hef
  %i.pph = getelementptr inbounds nuw i8, ptr %i.ppg, i64 1096
  %.0.copyload.i53447 = load i32, ptr %i.pph, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53447) #7, !srcloc !19
  %.not46321 = icmp eq i32 %.0.copyload.i53447, 0
  br i1 %.not46321, label %bb.bhr, label %bb.bgu

bb.bgu:                                           ; preds = %bb.bgt
  %.val47429 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ppi = getelementptr inbounds nuw i8, ptr %.val47429, i64 %i.hef
  %i.ppj = getelementptr inbounds nuw i8, ptr %i.ppi, i64 1084
  %.0.copyload.i53448 = load i32, ptr %i.ppj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53448) #7, !srcloc !19
  %i.ppk = add i32 %.0.copyload.i53447, -1        ; 2 uses
  %i.ppl = lshr i32 %i.ppd, 4
  %i.ppm = lshr i32 %i.ppd, 9
  %i.ppn = xor i32 %i.ppl, %i.ppm
  %i.ppo = and i32 %i.ppk, %i.ppn                 ; 2 uses
  %i.ppp = shl nuw nsw i32 %i.ppo, 3
  %i.ppq = add i32 %.0.copyload.i53448, %i.ppp    ; 2 uses
  %i.ppr = zext i32 %i.ppq to i64                 ; 2 uses
  %.val47428 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pps = getelementptr inbounds nuw i8, ptr %.val47428, i64 %i.ppr
  %.0.copyload.i53449 = load i32, ptr %i.pps, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53449) #7, !srcloc !19
  %i.ppt = icmp eq i32 %.0.copyload.i53449, %i.ppd
  br i1 %i.ppt, label %.loopexit54427, label %.preheader54426

.preheader54426:                                  ; preds = %bb.bgu, %bb.bgw
  %.143 = phi i32 [ %i.pqd, %bb.bgw ], [ %i.ppq, %bb.bgu ] ; 2 uses
  %.3943830 = phi i32 [ %i.ppy, %bb.bgw ], [ 0, %bb.bgu ] ; 3 uses
  %.88 = phi i32 [ %i.pqa, %bb.bgw ], [ 1, %bb.bgu ] ; 2 uses
  %.4543719 = phi i32 [ %.0.copyload.i53450, %bb.bgw ], [ %.0.copyload.i53449, %bb.bgu ] ; 2 uses
  %.2343265 = phi i32 [ %i.pqb, %bb.bgw ], [ %i.ppo, %bb.bgu ]
  %i.ppu = icmp eq i32 %.4543719, -4
  %.not46324 = icmp eq i32 %.3943830, 0           ; 2 uses
  br i1 %i.ppu, label %bb.bgv, label %bb.bgw

bb.bgv:                                           ; preds = %.preheader54426
  %i.ppv = select i1 %.not46324, i32 %.143, i32 %.3943830
  br label %bb.bhr

bb.bgw:                                           ; preds = %.preheader54426
  %i.ppw = icmp eq i32 %.4543719, -8
  %i.ppx = select i1 %i.ppw, i1 %.not46324, i1 false
  %i.ppy = select i1 %i.ppx, i32 %.143, i32 %.3943830
  %i.ppz = add i32 %.2343265, %.88
  %i.pqa = add i32 %.88, 1
  %i.pqb = and i32 %i.ppz, %i.ppk                 ; 2 uses
  %i.pqc = shl i32 %i.pqb, 3
  %i.pqd = add i32 %i.pqc, %.0.copyload.i53448    ; 2 uses
  %i.pqe = zext i32 %i.pqd to i64                 ; 2 uses
  %.val47427 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqf = getelementptr inbounds nuw i8, ptr %.val47427, i64 %i.pqe
  %.0.copyload.i53450 = load i32, ptr %i.pqf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53450) #7, !srcloc !19
  %.not46323 = icmp eq i32 %.0.copyload.i53450, %i.ppd
  br i1 %.not46323, label %.loopexit54427, label %.preheader54426

._crit_edge:                                      ; preds = %.loopexit54429, %func_types_eq.exit53485.thread, %.loopexit54572
  %.0.copyload.i53361.lcssa = phi i32 [ 0, %.loopexit54572 ], [ 0, %func_types_eq.exit53485.thread ], [ %.0.copyload.i5336155203, %.loopexit54429 ] ; 2 uses
  %.val47426 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqg = getelementptr inbounds nuw i8, ptr %.val47426, i64 %i.htd
  %i.pqh = getelementptr inbounds nuw i8, ptr %i.pqg, i64 356
  %.0.copyload.i53451 = load i32, ptr %i.pqh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53451) #7, !srcloc !19
  %.not46261 = icmp eq i32 %.0.copyload.i53451, 0
  br i1 %.not46261, label %.loopexit54570, label %bb.bgx

bb.bgx:                                           ; preds = %._crit_edge
  %.val47425 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqi = getelementptr inbounds nuw i8, ptr %.val47425, i64 %i.ngo
  %.0.copyload.i53452 = load i32, ptr %i.pqi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53452) #7, !srcloc !19
  %i.pqj = add i32 %.0.copyload.i53451, -1        ; 2 uses
  %i.pqk = lshr i32 %.0.copyload.i53347, 4
  %i.pql = lshr i32 %.0.copyload.i53347, 9
  %i.pqm = xor i32 %i.pqk, %i.pql
  %i.pqn = and i32 %i.pqj, %i.pqm                 ; 2 uses
  %i.pqo = shl nuw nsw i32 %i.pqn, 3
  %i.pqp = add i32 %.0.copyload.i53452, %i.pqo
  %i.pqq = zext i32 %i.pqp to i64
  %.val47424 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqr = getelementptr inbounds nuw i8, ptr %.val47424, i64 %i.pqq
  %.0.copyload.i53453 = load i32, ptr %i.pqr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53453) #7, !srcloc !19
  %i.pqs = icmp eq i32 %.0.copyload.i53453, %.0.copyload.i53347
  br i1 %i.pqs, label %.loopexit54571, label %.preheader54569

.preheader54569:                                  ; preds = %bb.bgx, %bb.bgy
  %.11344209 = phi i32 [ %.0.copyload.i53454, %bb.bgy ], [ %.0.copyload.i53453, %bb.bgx ]
  %.8844085 = phi i32 [ %i.pqw, %bb.bgy ], [ %i.pqn, %bb.bgx ]
  %.2443266 = phi i32 [ %i.pqv, %bb.bgy ], [ 1, %bb.bgx ] ; 2 uses
  %i.pqt = icmp eq i32 %.11344209, -4
  br i1 %i.pqt, label %.loopexit54570, label %bb.bgy

bb.bgy:                                           ; preds = %.preheader54569
  %i.pqu = add i32 %.2443266, %.8844085
  %i.pqv = add i32 %.2443266, 1
  %i.pqw = and i32 %i.pqu, %i.pqj                 ; 2 uses
  %i.pqx = shl i32 %i.pqw, 3
  %i.pqy = add i32 %i.pqx, %.0.copyload.i53452
  %i.pqz = zext i32 %i.pqy to i64
  %.val47423 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pra = getelementptr inbounds nuw i8, ptr %.val47423, i64 %i.pqz
  %.0.copyload.i53454 = load i32, ptr %i.pra, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53454) #7, !srcloc !19
  %.not46262 = icmp eq i32 %.0.copyload.i53454, %.0.copyload.i53347
  br i1 %.not46262, label %.loopexit54571, label %.preheader54569

.loopexit54570:                                   ; preds = %.preheader54569, %._crit_edge
  %i.prb = add i32 %.0.copyload.i53347, 8
  %.not46263 = icmp eq i32 %.0.copyload.i53347, 0
  %i.prc = select i1 %.not46263, i32 0, i32 %i.prb ; 9 uses
  %.val47422 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prd = getelementptr inbounds nuw i8, ptr %.val47422, i64 %i.heu
  %.0.copyload.i53455 = load i32, ptr %i.prd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53455) #7, !srcloc !19
  %.val47421 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pre = getelementptr inbounds nuw i8, ptr %.val47421, i64 %i.hev
  %.0.copyload.i53456 = load i32, ptr %i.pre, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53456) #7, !srcloc !19
  %.not46264 = icmp eq i32 %.0.copyload.i53456, 0
  br i1 %.not46264, label %.loopexit54567, label %bb.bgz

bb.bgz:                                           ; preds = %.loopexit54570
  %i.prf = add i32 %.0.copyload.i53456, -1        ; 2 uses
  %i.prg = lshr i32 %i.prc, 4
  %i.prh = lshr i32 %i.prc, 9
  %i.pri = xor i32 %i.prg, %i.prh
  %i.prj = and i32 %i.prf, %i.pri                 ; 2 uses
  %i.prk = shl nuw nsw i32 %i.prj, 3
  %i.prl = add i32 %i.prk, %.0.copyload.i53455
  %i.prm = zext i32 %i.prl to i64
  %.val47420 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prn = getelementptr inbounds nuw i8, ptr %.val47420, i64 %i.prm
  %.0.copyload.i53457 = load i32, ptr %i.prn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53457) #7, !srcloc !19
  %i.pro = icmp eq i32 %.0.copyload.i53457, %i.prc
  br i1 %i.pro, label %.loopexit54568, label %.preheader54566

.preheader54566:                                  ; preds = %bb.bgz, %bb.bha
  %.11444210 = phi i32 [ %.0.copyload.i53458, %bb.bha ], [ %.0.copyload.i53457, %bb.bgz ]
  %.8944086 = phi i32 [ %i.prs, %bb.bha ], [ %i.prj, %bb.bgz ]
  %.2543267 = phi i32 [ %i.prr, %bb.bha ], [ 1, %bb.bgz ] ; 2 uses
  %i.prp = icmp eq i32 %.11444210, -4
  br i1 %i.prp, label %.loopexit54567, label %bb.bha

bb.bha:                                           ; preds = %.preheader54566
  %i.prq = add i32 %.2543267, %.8944086
  %i.prr = add i32 %.2543267, 1
  %i.prs = and i32 %i.prq, %i.prf                 ; 2 uses
  %i.prt = shl i32 %i.prs, 3
  %i.pru = add i32 %i.prt, %.0.copyload.i53455
  %i.prv = zext i32 %i.pru to i64
  %.val47419 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prw = getelementptr inbounds nuw i8, ptr %.val47419, i64 %i.prv
  %.0.copyload.i53458 = load i32, ptr %i.prw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53458) #7, !srcloc !19
  %.not46265 = icmp eq i32 %.0.copyload.i53458, %i.prc
  br i1 %.not46265, label %.loopexit54568, label %.preheader54566

.loopexit54567:                                   ; preds = %.preheader54566, %.loopexit54570
  %.val47418 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prx = getelementptr inbounds nuw i8, ptr %.val47418, i64 %i.hef
  %i.pry = getelementptr inbounds nuw i8, ptr %i.prx, i64 1108
  %.0.copyload.i53459 = load i32, ptr %i.pry, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53459) #7, !srcloc !19
  %i.prz = add i32 %.0.copyload.i53459, 31        ; 2 uses
  %i.psa = icmp ult i32 %i.prz, 32
  br i1 %i.psa, label %.loopexit54565, label %bb.bhb

bb.bhb:                                           ; preds = %.loopexit54567
  %.val47417 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psb = getelementptr inbounds nuw i8, ptr %.val47417, i64 %i.hew
  %.0.copyload.i53460 = load i32, ptr %i.psb, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53460) #7, !srcloc !19
  %i.psc = zext i32 %.0.copyload.i53460 to i64
  %.val47416 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psd = getelementptr inbounds nuw i8, ptr %.val47416, i64 %i.psc
  %.0.copyload.i53461 = load i32, ptr %i.psd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53461) #7, !srcloc !19
  %.not46266 = icmp eq i32 %.0.copyload.i53461, 0
  br i1 %.not46266, label %bb.bhc, label %bb.bhg

bb.bhc:                                           ; preds = %bb.bhb
  %i.pse = lshr i32 %i.prz, 5                     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.pse to i64
  %exitcond57417 = icmp eq i32 %i.pse, 1
  br i1 %exitcond57417, label %.loopexit54565, label %.lr.ph57420

bb.bhd:                                           ; preds = %.lr.ph57420
  %indvars.iv.next55705 = add nuw nsw i64 %indvars.iv5570457418, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next55705, %wide.trip.count
  br i1 %exitcond, label %.loopexit54565, label %.lr.ph57420

.lr.ph57420:                                      ; preds = %bb.bhc, %bb.bhd
  %indvars.iv5570457418 = phi i64 [ %indvars.iv.next55705, %bb.bhd ], [ 1, %bb.bhc ] ; 3 uses
  %indvars55706 = trunc i64 %indvars.iv5570457418 to i32
  %i.psf = shl i32 %indvars55706, 2
  %i.psg = add i32 %i.psf, %.0.copyload.i53460
  %i.psh = zext i32 %i.psg to i64
  %.val47415 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psi = getelementptr inbounds nuw i8, ptr %.val47415, i64 %i.psh
  %.0.copyload.i53462 = load i32, ptr %i.psi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53462) #7, !srcloc !19
  %.not46267 = icmp eq i32 %.0.copyload.i53462, 0
  br i1 %.not46267, label %bb.bhd, label %bb.bhe

bb.bhe:                                           ; preds = %.lr.ph57420
  %15 = trunc nuw nsw i64 %indvars.iv5570457418 to i32
  %i.psj = icmp ugt i32 %i.pse, %15
  br i1 %i.psj, label %bb.bhf, label %.loopexit54565

.loopexit54565:                                   ; preds = %bb.bhd, %bb.bhc, %bb.bhe, %.loopexit54567
  %i.psk = add i32 %.0.copyload.i53459, 1
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.heq, i32 noundef %i.psk, i32 noundef 0) #7
  %.val47414 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psl = getelementptr inbounds nuw i8, ptr %.val47414, i64 %i.hev
  %.0.copyload.i53463 = load i32, ptr %i.psl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53463) #7, !srcloc !19
  %.val47413 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psm = getelementptr inbounds nuw i8, ptr %.val47413, i64 %i.heu
  %.0.copyload.i53464 = load i32, ptr %i.psm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53464) #7, !srcloc !19
  br label %bb.bhk

bb.bhf:                                           ; preds = %bb.bhe
  %.not46268 = icmp eq i32 %.0.copyload.i53459, 0
  br i1 %.not46268, label %.loopexit54564, label %bb.bhg

bb.bhg:                                           ; preds = %bb.bhf, %bb.bhb
  %i.psn = sub i32 0, %.0.copyload.i53459
  %i.pso = and i32 %i.psn, 31
  %i.psp = lshr i32 -1, %i.pso
  %i.psq = add i32 %.0.copyload.i53459, -1
  %i.psr = lshr i32 %i.psq, 5
  %i.pss = zext nneg i32 %i.psr to i64
  br label %bb.bhh

bb.bhh:                                           ; preds = %bb.bhj, %bb.bhg
  %indvars.iv55708 = phi i64 [ %indvars.iv.next55709, %bb.bhj ], [ 0, %bb.bhg ] ; 4 uses
  %indvars.iv55708.tr = trunc i64 %indvars.iv55708 to i32
  %i.pst = shl i32 %indvars.iv55708.tr, 2
  %i.psu = add i32 %i.pst, %.0.copyload.i53460
  %i.psv = zext i32 %i.psu to i64
  %.val47412 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psw = getelementptr inbounds nuw i8, ptr %.val47412, i64 %i.psv
  %.0.copyload.i53465 = load i32, ptr %i.psw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53465) #7, !srcloc !19
  %.not46269 = icmp eq i64 %indvars.iv55708, %i.pss ; 2 uses
  %i.psx = select i1 %.not46269, i32 %i.psp, i32 -1
  %i.psy = and i32 %.0.copyload.i53465, %i.psx    ; 2 uses
  %.not46270 = icmp eq i32 %i.psy, 0
  br i1 %.not46270, label %bb.bhj, label %bb.bhi

bb.bhi:                                           ; preds = %bb.bhh
  %i.psz = trunc nuw nsw i64 %indvars.iv55708 to i32
  %i.pta = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.psy, i1 true)
  %i.ptb = shl i32 %i.psz, 5
  %i.ptc = or disjoint i32 %i.pta, %i.ptb
  br label %.loopexit54564

bb.bhj:                                           ; preds = %bb.bhh
  %indvars.iv.next55709 = add nuw nsw i64 %indvars.iv55708, 1
  br i1 %.not46269, label %.loopexit54564, label %bb.bhh

.loopexit54564:                                   ; preds = %bb.bhj, %bb.bhf, %bb.bhi
  %.3043159 = phi i32 [ %i.ptc, %bb.bhi ], [ -1, %bb.bhf ], [ -1, %bb.bhj ] ; 3 uses
  %i.ptd = lshr i32 %.3043159, 3
  %i.pte = and i32 %i.ptd, 536870908
  %i.ptf = add i32 %i.pte, %.0.copyload.i53460
  %i.ptg = zext i32 %i.ptf to i64                 ; 2 uses
  %.val47411 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pth = getelementptr inbounds nuw i8, ptr %.val47411, i64 %i.ptg
  %.0.copyload.i53466 = load i32, ptr %i.pth, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53466) #7, !srcloc !19
  %i.pti = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %.3043159)
  %i.ptj = and i32 %.0.copyload.i53466, %i.pti
  %.val49666 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptk = getelementptr inbounds nuw i8, ptr %.val49666, i64 %i.ptg
  store i32 %i.ptj, ptr %i.ptk, align 1
  br label %bb.bhk

bb.bhk:                                           ; preds = %.loopexit54564, %.loopexit54565
  %.9044087 = phi i32 [ %.0.copyload.i53459, %.loopexit54565 ], [ %.3043159, %.loopexit54564 ]
  %.4043831 = phi i32 [ %.0.copyload.i53464, %.loopexit54565 ], [ %.0.copyload.i53455, %.loopexit54564 ] ; 2 uses
  %.1543233 = phi i32 [ %.0.copyload.i53463, %.loopexit54565 ], [ %.0.copyload.i53456, %.loopexit54564 ] ; 2 uses
  %.val49665 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptl = getelementptr inbounds nuw i8, ptr %.val49665, i64 %i.htd
  %i.ptm = getelementptr inbounds nuw i8, ptr %i.ptl, i64 396
  store i32 %i.prc, ptr %i.ptm, align 1
  %.not46271 = icmp eq i32 %.1543233, 0
  br i1 %.not46271, label %bb.bho, label %bb.bhl

bb.bhl:                                           ; preds = %bb.bhk
  %i.ptn = add i32 %.1543233, -1                  ; 2 uses
  %i.pto = lshr i32 %i.prc, 4
  %i.ptp = lshr i32 %i.prc, 9
  %i.ptq = xor i32 %i.pto, %i.ptp
  %i.ptr = and i32 %i.ptn, %i.ptq                 ; 2 uses
  %i.pts = shl nuw nsw i32 %i.ptr, 3
  %i.ptt = add i32 %i.pts, %.4043831              ; 2 uses
  %i.ptu = zext i32 %i.ptt to i64                 ; 2 uses
  %.val47410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptv = getelementptr inbounds nuw i8, ptr %.val47410, i64 %i.ptu
  %.0.copyload.i53467 = load i32, ptr %i.ptv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53467) #7, !srcloc !19
  %i.ptw = icmp eq i32 %.0.copyload.i53467, %i.prc
  br i1 %i.ptw, label %.loopexit54563, label %.preheader54562

.preheader54562:                                  ; preds = %bb.bhl, %bb.bhn
  %.11744213 = phi i32 [ %i.pug, %bb.bhn ], [ %i.ptt, %bb.bhl ] ; 2 uses
  %.144 = phi i32 [ %.0.copyload.i53468, %bb.bhn ], [ %.0.copyload.i53467, %bb.bhl ] ; 2 uses
  %.90 = phi i32 [ %i.pud, %bb.bhn ], [ 1, %bb.bhl ] ; 2 uses
  %.2643268 = phi i32 [ %i.pue, %bb.bhn ], [ %i.ptr, %bb.bhl ]
  %.1743210 = phi i32 [ %i.pub, %bb.bhn ], [ 0, %bb.bhl ] ; 3 uses
  %i.ptx = icmp eq i32 %.144, -4
  %.not46274 = icmp eq i32 %.1743210, 0           ; 2 uses
  br i1 %i.ptx, label %bb.bhm, label %bb.bhn

bb.bhm:                                           ; preds = %.preheader54562
  %i.pty = select i1 %.not46274, i32 %.11744213, i32 %.1743210
  br label %bb.bho

bb.bhn:                                           ; preds = %.preheader54562
  %i.ptz = icmp eq i32 %.144, -8
  %i.pua = select i1 %i.ptz, i1 %.not46274, i1 false
  %i.pub = select i1 %i.pua, i32 %.11744213, i32 %.1743210
  %i.puc = add i32 %.2643268, %.90
  %i.pud = add i32 %.90, 1
  %i.pue = and i32 %i.puc, %i.ptn                 ; 2 uses
  %i.puf = shl i32 %i.pue, 3
  %i.pug = add i32 %i.puf, %.4043831              ; 2 uses
  %i.puh = zext i32 %i.pug to i64                 ; 2 uses
  %.val47409 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pui = getelementptr inbounds nuw i8, ptr %.val47409, i64 %i.puh
  %.0.copyload.i53468 = load i32, ptr %i.pui, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53468) #7, !srcloc !19
  %.not46273 = icmp eq i32 %.0.copyload.i53468, %i.prc
  br i1 %.not46273, label %.loopexit54563, label %.preheader54562

bb.bho:                                           ; preds = %bb.bhk, %bb.bhm
  %.11844214 = phi i32 [ %i.pty, %bb.bhm ], [ 0, %bb.bhk ]
  %i.puj = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AValue0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %i.hdh, i32 noundef %.11844214, i32 noundef %i.onj) #7
  %.pre55788 = zext i32 %i.puj to i64
  br label %.loopexit54563

.loopexit54563:                                   ; preds = %bb.bhn, %bb.bhl, %bb.bho
  %.pre-phi55789 = phi i64 [ %.pre55788, %bb.bho ], [ %i.ptu, %bb.bhl ], [ %i.puh, %bb.bhn ]
  %.val49664 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puk = getelementptr inbounds nuw i8, ptr %.val49664, i64 %.pre-phi55789
  %i.pul = getelementptr inbounds nuw i8, ptr %i.puk, i64 4
  store i32 %.9044087, ptr %i.pul, align 1
  %.val47408 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pum = getelementptr inbounds nuw i8, ptr %.val47408, i64 %i.one
  %.0.copyload.i53469 = load i32, ptr %i.pum, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53469) #7, !srcloc !19
  br label %.loopexit54568

.loopexit54568:                                   ; preds = %bb.bha, %bb.bgz, %.loopexit54563
  %.91 = phi i32 [ %.0.copyload.i53469, %.loopexit54563 ], [ %.0.copyload.i53361.lcssa, %bb.bgz ], [ %.0.copyload.i53361.lcssa, %bb.bha ] ; 2 uses
  %.val47407 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pun = getelementptr inbounds nuw i8, ptr %.val47407, i64 %i.htd
  %i.puo = getelementptr inbounds nuw i8, ptr %i.pun, i64 56
  %.0.copyload.i53470 = load i32, ptr %i.puo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53470) #7, !srcloc !19
  %.not46275 = icmp ugt i32 %.0.copyload.i53470, %.91
  br i1 %.not46275, label %bb.bhq, label %bb.bhp

bb.bhp:                                           ; preds = %.loopexit54568
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.onk, i32 noundef %i.ong, i32 noundef 0, i32 noundef 4) #7
  %.val47406 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pup = getelementptr inbounds nuw i8, ptr %.val47406, i64 %i.one
  %.0.copyload.i53471 = load i32, ptr %i.pup, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53471) #7, !srcloc !19
  br label %bb.bhq

bb.bhq:                                           ; preds = %bb.bhp, %.loopexit54568
  %.92 = phi i32 [ %.0.copyload.i53471, %bb.bhp ], [ %.91, %.loopexit54568 ]
  %.val47405 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puq = getelementptr inbounds nuw i8, ptr %.val47405, i64 %i.onh
  %.0.copyload.i53472 = load i32, ptr %i.puq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53472) #7, !srcloc !19
  %i.pur = shl i32 %.92, 2
  %i.pus = add i32 %.0.copyload.i53472, %i.pur
  %i.put = zext i32 %i.pus to i64
  %.val49663 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puu = getelementptr inbounds nuw i8, ptr %.val49663, i64 %i.put
  store i32 %.0.copyload.i53258, ptr %i.puu, align 1
  %.val47404 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puv = getelementptr inbounds nuw i8, ptr %.val47404, i64 %i.one
  %.0.copyload.i53473 = load i32, ptr %i.puv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53473) #7, !srcloc !19
  %i.puw = add i32 %.0.copyload.i53473, 1         ; 3 uses
  %.val49662 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pux = getelementptr inbounds nuw i8, ptr %.val49662, i64 %i.one
  store i32 %i.puw, ptr %i.pux, align 1
  %.val47403 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puy = getelementptr inbounds nuw i8, ptr %.val47403, i64 %i.onh
  %.0.copyload.i53474 = load i32, ptr %i.puy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53474) #7, !srcloc !19
  %i.puz = shl i32 %i.puw, 2
  %i.pva = add i32 %.0.copyload.i53474, %i.puz
  %.val47402 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvb = getelementptr inbounds nuw i8, ptr %.val47402, i64 %i.onc
  %.0.copyload.i53475 = load i32, ptr %i.pvb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53475) #7, !srcloc !19
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsift_up0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20int0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i53474, i32 noundef %i.pva, i32 noundef %.0.copyload.i53475, i32 noundef %i.puw) #7
  br label %.loopexit54571

.loopexit54571:                                   ; preds = %bb.bgy, %bb.bgx, %bb.bhq
end_hunk_9
begin_hunk_10_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a
  %i.zal = getelementptr inbounds nuw i8, ptr %.val80097, i64 %i.jr
  %.0.copyload.i90169 = load i32, ptr %i.zal, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90169) #7, !srcloc !19
  %i.zam = mul i32 %.2375417, 12
  %i.zan = add i32 %.0.copyload.i90169, %i.zam
  %i.zao = add i32 %.775384, 8
  %i.zap = zext i32 %i.zan to i64                 ; 3 uses
  %.val82552 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zaq = getelementptr inbounds nuw i8, ptr %.val82552, i64 %i.zap
  %i.zar = getelementptr inbounds nuw i8, ptr %i.zaq, i64 8
  store i32 %i.zao, ptr %i.zar, align 1
  %.val82551 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zas = getelementptr inbounds nuw i8, ptr %.val82551, i64 %i.zap
  %i.zat = getelementptr inbounds nuw i8, ptr %i.zas, i64 4
  store i32 6, ptr %i.zat, align 1
  %.val82550 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zau = getelementptr inbounds nuw i8, ptr %.val82550, i64 %i.zap
  store i32 %i.yyb, ptr %i.zau, align 1
  %.val80096 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zav = getelementptr inbounds nuw i8, ptr %.val80096, i64 %i.jn
  %.0.copyload.i90170 = load i32, ptr %i.zav, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90170) #7, !srcloc !19
  %i.zaw = add i32 %.0.copyload.i90170, 1
  %.val82549 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zax = getelementptr inbounds nuw i8, ptr %.val82549, i64 %i.jn
  store i32 %i.zaw, ptr %i.zax, align 1
  %.val80095 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zay = getelementptr inbounds nuw i8, ptr %.val80095, i64 %i.ytk
  %.0.copyload.i90171 = load i32, ptr %i.zay, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90171) #7, !srcloc !19
  %i.zaz = zext i32 %.0.copyload.i90171 to i64
  %.val80094 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zba = getelementptr inbounds nuw i8, ptr %.val80094, i64 %i.zaz
  %i.zbb = getelementptr inbounds nuw i8, ptr %i.zba, i64 40
  %.0.copyload.i90172 = load i32, ptr %i.zbb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90172) #7, !srcloc !19
  %i.zbc = zext i32 %.0.copyload.i90172 to i64
  %.val80093 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zbd = getelementptr inbounds nuw i8, ptr %.val80093, i64 %i.zbc
  %i.zbe = getelementptr inbounds nuw i8, ptr %i.zbd, i64 8
  %.0.copyload.i90173 = load i32, ptr %i.zbe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90173) #7, !srcloc !19
  %i.zbf = add nuw nsw i64 %i.ytj, 4              ; 2 uses
  %.val80092 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zbg = getelementptr inbounds nuw i8, ptr %.val80092, i64 %i.zbf
  %.0.copyload.i90174 = load i32, ptr %i.zbg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90174) #7, !srcloc !19
  %.val80091 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zbh = getelementptr inbounds nuw i8, ptr %.val80091, i64 %i.ytj
  %.0.copyload.i90175 = load i32, ptr %i.zbh, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90175) #7, !srcloc !19
  %.not78122 = icmp eq i32 %.0.copyload.i90174, %.0.copyload.i90175
  br i1 %.not78122, label %bb.enc, label %bb.emy

bb.emy:                                           ; preds = %bb.emx
  %i.zbi = sub i32 %.0.copyload.i90174, %.0.copyload.i90175 ; 3 uses
  %i.zbj = icmp slt i32 %i.zbi, 0
  br i1 %i.zbj, label %.loopexit91567, label %bb.emz

bb.emz:                                           ; preds = %bb.emy
  %i.zbk = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.zbi) #7 ; 3 uses
  br label %bb.ena

bb.ena:                                           ; preds = %bb.ena, %bb.emz
  %.2475418 = phi i32 [ %.0.copyload.i90175, %bb.emz ], [ %i.zbq, %bb.ena ] ; 2 uses
  %.875385 = phi i32 [ %i.zbk, %bb.emz ], [ %i.zbp, %bb.ena ] ; 2 uses
  %i.zbl = zext i32 %.2475418 to i64
  %.val80090 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zbm = getelementptr inbounds nuw i8, ptr %.val80090, i64 %i.zbl
  %.0.copyload.i90176 = load i32, ptr %i.zbm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90176) #7, !srcloc !19
  %i.zbn = zext i32 %.875385 to i64
  %.val82548 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zbo = getelementptr inbounds nuw i8, ptr %.val82548, i64 %i.zbn
  store i32 %.0.copyload.i90176, ptr %i.zbo, align 1
  %i.zbp = add i32 %.875385, 4                    ; 2 uses
  %i.zbq = add i32 %.2475418, 4                   ; 2 uses
  %.not78123 = icmp eq i32 %i.zbq, %.0.copyload.i90174
  br i1 %.not78123, label %bb.enb, label %bb.ena

bb.enb:                                           ; preds = %bb.ena
  %i.zbr = and i32 %i.zbi, 2147483644
  %i.zbs = add i32 %i.zbk, %i.zbr
  br label %bb.enc

bb.enc:                                           ; preds = %bb.enb, %bb.emx
  %.975386 = phi i32 [ %i.zbp, %bb.enb ], [ 0, %bb.emx ]
  %.575262 = phi i32 [ %i.zbk, %bb.enb ], [ 0, %bb.emx ]
  %.075195 = phi i32 [ %i.zbs, %bb.enb ], [ 0, %bb.emx ]
  %i.zbt = add i32 %.0.copyload.i90173, -8
  %.not78124 = icmp eq i32 %.0.copyload.i90173, 0
  %i.zbu = select i1 %.not78124, i32 0, i32 %i.zbt
  %.val80089 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zbv = getelementptr inbounds nuw i8, ptr %.val80089, i64 %i.f
  %i.zbw = getelementptr inbounds nuw i8, ptr %i.zbv, i64 208
  %.0.copyload.i90177 = load i32, ptr %i.zbw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90177) #7, !srcloc !19
  %.not78125 = icmp eq i32 %.0.copyload.i90177, 0
  br i1 %.not78125, label %bb.eng, label %bb.end

bb.end:                                           ; preds = %bb.enc
  %.val80088 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zbx = getelementptr inbounds nuw i8, ptr %.val80088, i64 %i.f
  %i.zby = getelementptr inbounds nuw i8, ptr %i.zbx, i64 196
  %.0.copyload.i90178 = load i32, ptr %i.zby, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90178) #7, !srcloc !19
  %i.zbz = add i32 %.0.copyload.i90177, -1        ; 2 uses
  %i.zca = lshr i32 %.0.copyload.i90171, 4
  %i.zcb = lshr i32 %.0.copyload.i90171, 9
  %i.zcc = xor i32 %i.zca, %i.zcb
  %i.zcd = and i32 %i.zbz, %i.zcc                 ; 2 uses
  %i.zce = mul i32 %i.zcd, 24
  %i.zcf = add i32 %.0.copyload.i90178, %i.zce    ; 2 uses
  %i.zcg = zext i32 %i.zcf to i64                 ; 2 uses
  %.val80087 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zch = getelementptr inbounds nuw i8, ptr %.val80087, i64 %i.zcg
  %.0.copyload.i90179 = load i32, ptr %i.zch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90179) #7, !srcloc !19
  %i.zci = icmp eq i32 %.0.copyload.i90171, %.0.copyload.i90179
  br i1 %i.zci, label %.loopexit91670, label %.preheader91669

.preheader91669:                                  ; preds = %bb.end, %bb.enf
  %.15975775 = phi i32 [ %i.zcn, %bb.enf ], [ 0, %bb.end ] ; 3 uses
  %.14775597 = phi i32 [ %i.zcq, %bb.enf ], [ %i.zcd, %bb.end ]
  %.2575419 = phi i32 [ %i.zcs, %bb.enf ], [ %i.zcf, %bb.end ] ; 2 uses
  %.375302 = phi i32 [ %i.zcp, %bb.enf ], [ 1, %bb.end ] ; 2 uses
  %.375180 = phi i32 [ %.0.copyload.i90180, %bb.enf ], [ %.0.copyload.i90179, %bb.end ] ; 2 uses
  %i.zcj = icmp eq i32 %.375180, -4
  %.not78128 = icmp eq i32 %.15975775, 0          ; 2 uses
  br i1 %i.zcj, label %bb.ene, label %bb.enf

bb.ene:                                           ; preds = %.preheader91669
  %i.zck = select i1 %.not78128, i32 %.2575419, i32 %.15975775
  br label %bb.eng

bb.enf:                                           ; preds = %.preheader91669
  %i.zcl = icmp eq i32 %.375180, -8
  %i.zcm = select i1 %i.zcl, i1 %.not78128, i1 false
  %i.zcn = select i1 %i.zcm, i32 %.2575419, i32 %.15975775
  %i.zco = add i32 %.375302, %.14775597
  %i.zcp = add i32 %.375302, 1
  %i.zcq = and i32 %i.zco, %i.zbz                 ; 2 uses
  %i.zcr = mul i32 %i.zcq, 24
  %i.zcs = add i32 %i.zcr, %.0.copyload.i90178    ; 2 uses
  %i.zct = zext i32 %i.zcs to i64                 ; 2 uses
  %.val80086 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zcu = getelementptr inbounds nuw i8, ptr %.val80086, i64 %i.zct
  %.0.copyload.i90180 = load i32, ptr %i.zcu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90180) #7, !srcloc !19
  %.not78127 = icmp eq i32 %.0.copyload.i90171, %.0.copyload.i90180
  br i1 %.not78127, label %.loopexit91670, label %.preheader91669

bb.eng:                                           ; preds = %bb.enc, %bb.ene
  %.14875598 = phi i32 [ 0, %bb.enc ], [ %i.zck, %bb.ene ]
  %.val80085 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zcv = getelementptr inbounds nuw i8, ptr %.val80085, i64 %i.jw
  %.0.copyload.i90181 = load i32, ptr %i.zcv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90181) #7, !srcloc !19
  %i.zcw = shl i32 %.0.copyload.i90181, 2
  %i.zcx = add i32 %i.zcw, 4
  %.val80084 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zcy = getelementptr inbounds nuw i8, ptr %.val80084, i64 %i.jx
  %.0.copyload.i90182 = load i32, ptr %i.zcy, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90182) #7, !srcloc !19
  %i.zcz = mul i32 %.0.copyload.i90182, 3
  %.not78129 = icmp ult i32 %i.zcx, %i.zcz
  br i1 %.not78129, label %bb.eni, label %bb.enh

bb.enh:                                           ; preds = %bb.eng
  %i.zda = shl i32 %.0.copyload.i90182, 1
  br label %bb.enj

bb.eni:                                           ; preds = %bb.eng
  %i.zdb = xor i32 %.0.copyload.i90181, -1
  %i.zdc = add i32 %.0.copyload.i90182, %i.zdb
  %.val80083 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zdd = getelementptr inbounds nuw i8, ptr %.val80083, i64 %i.jv
  %i.zde = getelementptr inbounds nuw i8, ptr %i.zdd, i64 8
  %.0.copyload.i90183 = load i32, ptr %i.zde, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90183) #7, !srcloc !19
  %i.zdf = sub i32 %i.zdc, %.0.copyload.i90183
  %i.zdg = lshr i32 %.0.copyload.i90182, 3
  %i.zdh = icmp ugt i32 %i.zdf, %i.zdg
  br i1 %i.zdh, label %bb.enq, label %bb.enj

bb.enj:                                           ; preds = %bb.eni, %bb.enh
  %.16075776 = phi i32 [ %i.zda, %bb.enh ], [ %.0.copyload.i90182, %bb.eni ]
  %i.zdi = add i32 %.16075776, -1
  %i.zdj = zext i32 %i.zdi to i64                 ; 2 uses
  %i.zdk = lshr i64 %i.zdj, 1
  %i.zdl = or i64 %i.zdk, %i.zdj                  ; 2 uses
  %i.zdm = lshr i64 %i.zdl, 2
  %i.zdn = or i64 %i.zdm, %i.zdl                  ; 2 uses
  %i.zdo = lshr i64 %i.zdn, 4
  %i.zdp = or i64 %i.zdo, %i.zdn                  ; 2 uses
  %i.zdq = lshr i64 %i.zdp, 8
  %i.zdr = or i64 %i.zdq, %i.zdp                  ; 2 uses
  %i.zds = lshr i64 %i.zdr, 16
  %i.zdt = or i64 %i.zds, %i.zdr
  %i.zdu = trunc nuw i64 %i.zdt to i32
  %i.zdv = add i32 %i.zdu, 1
  %2 = tail call i32 @llvm.umax.i32(i32 %i.zdv, i32 64) ; 2 uses
  %.val82547 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zdw = getelementptr inbounds nuw i8, ptr %.val82547, i64 %i.jx
  store i32 %2, ptr %i.zdw, align 1
  %.val80082 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zdx = getelementptr inbounds nuw i8, ptr %.val80082, i64 %i.jv
  %.0.copyload.i90184 = load i32, ptr %i.zdx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90184) #7, !srcloc !19
  %i.zdy = mul i32 %2, 24
  %i.zdz = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.zdy) #7 ; 13 uses
  %.val82546 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zea = getelementptr inbounds nuw i8, ptr %.val82546, i64 %i.jv
  store i32 %i.zdz, ptr %i.zea, align 1
  %.not78130 = icmp eq i32 %.0.copyload.i90184, 0
  br i1 %.not78130, label %bb.enk, label %bb.enn

bb.enk:                                           ; preds = %bb.enj
  %.val85765 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zeb = getelementptr inbounds nuw i8, ptr %.val85765, i64 %i.jw
  store i64 0, ptr %i.zeb, align 1
  %.val80081 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zec = getelementptr inbounds nuw i8, ptr %.val80081, i64 %i.jx
  %.0.copyload.i90185 = load i32, ptr %i.zec, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90185) #7, !srcloc !19
  %i.zed = mul i32 %.0.copyload.i90185, 24        ; 2 uses
  %i.zee = add i32 %i.zed, -24                    ; 2 uses
  %i.zef = udiv i32 %i.zee, 24
  %i.zeg = add nuw nsw i32 %i.zef, 1
  %i.zeh = and i32 %i.zeg, 7                      ; 7 uses
  %.not78131 = icmp eq i32 %i.zeh, 0
  br i1 %.not78131, label %.loopexit91668, label %.preheader91667

.preheader91667:                                  ; preds = %bb.enk
  %i.zei = zext i32 %i.zdz to i64
  %.val82545 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zej = getelementptr inbounds nuw i8, ptr %.val82545, i64 %i.zei
  store i32 -4, ptr %i.zej, align 1
  %i.zek = add i32 %i.zdz, 24                     ; 2 uses
  %.not78132 = icmp eq i32 %i.zeh, 1
  br i1 %.not78132, label %.loopexit91668, label %.preheader91667.1

.preheader91667.1:                                ; preds = %.preheader91667
  %i.zel = zext i32 %i.zek to i64
  %.val82545.1 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zem = getelementptr inbounds nuw i8, ptr %.val82545.1, i64 %i.zel
  store i32 -4, ptr %i.zem, align 1
  %i.zen = add i32 %i.zdz, 48                     ; 2 uses
  %.not78132.1 = icmp eq i32 %i.zeh, 2
  br i1 %.not78132.1, label %.loopexit91668, label %.preheader91667.2

.preheader91667.2:                                ; preds = %.preheader91667.1
  %i.zeo = zext i32 %i.zen to i64
  %.val82545.2 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zep = getelementptr inbounds nuw i8, ptr %.val82545.2, i64 %i.zeo
  store i32 -4, ptr %i.zep, align 1
  %i.zeq = add i32 %i.zdz, 72                     ; 2 uses
  %.not78132.2 = icmp eq i32 %i.zeh, 3
  br i1 %.not78132.2, label %.loopexit91668, label %.preheader91667.3

.preheader91667.3:                                ; preds = %.preheader91667.2
  %i.zer = zext i32 %i.zeq to i64
  %.val82545.3 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zes = getelementptr inbounds nuw i8, ptr %.val82545.3, i64 %i.zer
  store i32 -4, ptr %i.zes, align 1
  %i.zet = add i32 %i.zdz, 96                     ; 2 uses
  %.not78132.3 = icmp eq i32 %i.zeh, 4
  br i1 %.not78132.3, label %.loopexit91668, label %.preheader91667.4

.preheader91667.4:                                ; preds = %.preheader91667.3
  %i.zeu = zext i32 %i.zet to i64
  %.val82545.4 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zev = getelementptr inbounds nuw i8, ptr %.val82545.4, i64 %i.zeu
  store i32 -4, ptr %i.zev, align 1
  %i.zew = add i32 %i.zdz, 120                    ; 2 uses
  %.not78132.4 = icmp eq i32 %i.zeh, 5
  br i1 %.not78132.4, label %.loopexit91668, label %.preheader91667.5

.preheader91667.5:                                ; preds = %.preheader91667.4
  %i.zex = zext i32 %i.zew to i64
  %.val82545.5 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zey = getelementptr inbounds nuw i8, ptr %.val82545.5, i64 %i.zex
  store i32 -4, ptr %i.zey, align 1
  %i.zez = add i32 %i.zdz, 144                    ; 2 uses
  %.not78132.5 = icmp eq i32 %i.zeh, 6
  br i1 %.not78132.5, label %.loopexit91668, label %.preheader91667.6

.preheader91667.6:                                ; preds = %.preheader91667.5
  %i.zfa = zext i32 %i.zez to i64
  %.val82545.6 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfb = getelementptr inbounds nuw i8, ptr %.val82545.6, i64 %i.zfa
  store i32 -4, ptr %i.zfb, align 1
  %i.zfc = add i32 %i.zdz, 168
  br label %.loopexit91668

.loopexit91668:                                   ; preds = %.preheader91667, %.preheader91667.1, %.preheader91667.2, %.preheader91667.3, %.preheader91667.4, %.preheader91667.5, %.preheader91667.6, %bb.enk
  %.15075600 = phi i32 [ %i.zdz, %bb.enk ], [ %i.zek, %.preheader91667 ], [ %i.zen, %.preheader91667.1 ], [ %i.zeq, %.preheader91667.2 ], [ %i.zet, %.preheader91667.3 ], [ %i.zew, %.preheader91667.4 ], [ %i.zez, %.preheader91667.5 ], [ %i.zfc, %.preheader91667.6 ]
  %i.zfd = icmp ult i32 %i.zee, 168
  br i1 %i.zfd, label %.loopexit91666, label %bb.enl

bb.enl:                                           ; preds = %.loopexit91668
  %i.zfe = add i32 %i.zed, %i.zdz
  br label %bb.enm

bb.enm:                                           ; preds = %bb.enm, %bb.enl
  %.15175601 = phi i32 [ %.15075600, %bb.enl ], [ %i.zfv, %bb.enm ] ; 2 uses
  %i.zff = zext i32 %.15175601 to i64             ; 8 uses
  %.val82544 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfg = getelementptr inbounds nuw i8, ptr %.val82544, i64 %i.zff
  %i.zfh = getelementptr inbounds nuw i8, ptr %i.zfg, i64 168
  store i32 -4, ptr %i.zfh, align 1
  %.val82543 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfi = getelementptr inbounds nuw i8, ptr %.val82543, i64 %i.zff
  %i.zfj = getelementptr inbounds nuw i8, ptr %i.zfi, i64 144
  store i32 -4, ptr %i.zfj, align 1
  %.val82542 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfk = getelementptr inbounds nuw i8, ptr %.val82542, i64 %i.zff
  %i.zfl = getelementptr inbounds nuw i8, ptr %i.zfk, i64 120
  store i32 -4, ptr %i.zfl, align 1
  %.val82541 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfm = getelementptr inbounds nuw i8, ptr %.val82541, i64 %i.zff
  %i.zfn = getelementptr inbounds nuw i8, ptr %i.zfm, i64 96
  store i32 -4, ptr %i.zfn, align 1
  %.val82540 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfo = getelementptr inbounds nuw i8, ptr %.val82540, i64 %i.zff
  %i.zfp = getelementptr inbounds nuw i8, ptr %i.zfo, i64 72
  store i32 -4, ptr %i.zfp, align 1
  %.val82539 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfq = getelementptr inbounds nuw i8, ptr %.val82539, i64 %i.zff
  %i.zfr = getelementptr inbounds nuw i8, ptr %i.zfq, i64 48
  store i32 -4, ptr %i.zfr, align 1
  %.val82538 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfs = getelementptr inbounds nuw i8, ptr %.val82538, i64 %i.zff
  %i.zft = getelementptr inbounds nuw i8, ptr %i.zfs, i64 24
  store i32 -4, ptr %i.zft, align 1
  %.val82537 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfu = getelementptr inbounds nuw i8, ptr %.val82537, i64 %i.zff
  store i32 -4, ptr %i.zfu, align 1
  %i.zfv = add i32 %.15175601, 192                ; 2 uses
  %.not78133 = icmp eq i32 %i.zfv, %i.zfe
  br i1 %.not78133, label %.loopexit91666, label %bb.enm

bb.enn:                                           ; preds = %bb.enj
  %i.zfw = mul i32 %.0.copyload.i90182, 24
  %i.zfx = add i32 %.0.copyload.i90184, %i.zfw
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ASwitchImmInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x3E0x2C0x20hermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ASwitchImmInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.ju, i32 noundef %.0.copyload.i90184, i32 noundef %i.zfx) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90184) #7
  %.val80080 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfy = getelementptr inbounds nuw i8, ptr %.val80080, i64 %i.jv
  %.0.copyload.i90186 = load i32, ptr %i.zfy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90186) #7, !srcloc !19
  %.val80079 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zfz = getelementptr inbounds nuw i8, ptr %.val80079, i64 %i.jx
  %.0.copyload.i90187 = load i32, ptr %i.zfz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90187) #7, !srcloc !19
  br label %.loopexit91666

.loopexit91666:                                   ; preds = %bb.enm, %.loopexit91668, %bb.enn
  %.16175777 = phi i32 [ %i.zdz, %.loopexit91668 ], [ %.0.copyload.i90186, %bb.enn ], [ %i.zdz, %bb.enm ] ; 2 uses
  %.475181 = phi i32 [ %.0.copyload.i90185, %.loopexit91668 ], [ %.0.copyload.i90187, %bb.enn ], [ %.0.copyload.i90185, %bb.enm ]
  %.val80078 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zga = getelementptr inbounds nuw i8, ptr %.val80078, i64 %i.ytk
  %.0.copyload.i90188 = load i32, ptr %i.zga, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90188) #7, !srcloc !19
  %i.zgb = add i32 %.475181, -1                   ; 2 uses
  %i.zgc = lshr i32 %.0.copyload.i90188, 4
  %i.zgd = lshr i32 %.0.copyload.i90188, 9
  %i.zge = xor i32 %i.zgc, %i.zgd
  %i.zgf = and i32 %i.zge, %i.zgb                 ; 2 uses
  %i.zgg = mul i32 %i.zgf, 24
  %i.zgh = add i32 %i.zgg, %.16175777             ; 3 uses
  %i.zgi = zext i32 %i.zgh to i64
  %.val80077 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zgj = getelementptr inbounds nuw i8, ptr %.val80077, i64 %i.zgi
  %.0.copyload.i90189 = load i32, ptr %i.zgj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90189) #7, !srcloc !19
  %i.zgk = icmp eq i32 %.0.copyload.i90188, %.0.copyload.i90189
  br i1 %i.zgk, label %.loopexit91665, label %.preheader91664

.preheader91664:                                  ; preds = %.loopexit91666, %bb.enp
  %.15275602 = phi i32 [ %i.zgu, %bb.enp ], [ %i.zgh, %.loopexit91666 ] ; 2 uses
  %.375352 = phi i32 [ %i.zgr, %bb.enp ], [ 1, %.loopexit91666 ] ; 2 uses
  %.475303 = phi i32 [ %.0.copyload.i90190, %bb.enp ], [ %.0.copyload.i90189, %.loopexit91666 ] ; 2 uses
  %.275198 = phi i32 [ %i.zgp, %bb.enp ], [ 0, %.loopexit91666 ] ; 3 uses
  %.575182 = phi i32 [ %i.zgs, %bb.enp ], [ %i.zgf, %.loopexit91666 ]
  %i.zgl = icmp eq i32 %.475303, -4
  %.not78136 = icmp eq i32 %.275198, 0            ; 2 uses
  br i1 %i.zgl, label %bb.eno, label %bb.enp

bb.eno:                                           ; preds = %.preheader91664
  %i.zgm = select i1 %.not78136, i32 %.15275602, i32 %.275198
  br label %bb.enq

bb.enp:                                           ; preds = %.preheader91664
  %i.zgn = icmp eq i32 %.475303, -8
  %i.zgo = select i1 %i.zgn, i1 %.not78136, i1 false
  %i.zgp = select i1 %i.zgo, i32 %.15275602, i32 %.275198
  %i.zgq = add i32 %.575182, %.375352
  %i.zgr = add i32 %.375352, 1
  %i.zgs = and i32 %i.zgq, %i.zgb                 ; 2 uses
  %i.zgt = mul i32 %i.zgs, 24
  %i.zgu = add i32 %i.zgt, %.16175777             ; 3 uses
  %i.zgv = zext i32 %i.zgu to i64
  %.val80076 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zgw = getelementptr inbounds nuw i8, ptr %.val80076, i64 %i.zgv
  %.0.copyload.i90190 = load i32, ptr %i.zgw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90190) #7, !srcloc !19
  %.not78135 = icmp eq i32 %.0.copyload.i90188, %.0.copyload.i90190
  br i1 %.not78135, label %.loopexit91665, label %.preheader91664

end_hunk_10
begin_hunk_11_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a
  br label %bb.fol

bb.fol:                                           ; preds = %.outer91654, %w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3A0x3AupdateJumpTarget0x28unsigned0x20int0x2C0x20int0x2C0x20int0x29.exit91205
  %.475200 = phi i32 [ %i.afmk, %w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3A0x3AupdateJumpTarget0x28unsigned0x20int0x2C0x20int0x2C0x20int0x29.exit91205 ], [ %.475200.ph, %.outer91654 ] ; 3 uses
  %i.aeez = zext i32 %.475200 to i64              ; 4 uses
  %.val79723 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aefa = getelementptr inbounds nuw i8, ptr %.val79723, i64 %i.aeez
  %.0.copyload.i91122 = load i32, ptr %i.aefa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91122) #7, !srcloc !19
  %i.aefb = sub i32 %.0.copyload.i91122, %.475374.ph ; 12 uses
  %.val82245 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aefc = getelementptr inbounds nuw i8, ptr %.val82245, i64 %i.aeez
  store i32 %i.aefb, ptr %i.aefc, align 1
  %.val79722 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aefd = getelementptr inbounds nuw i8, ptr %.val79722, i64 %i.aeez
  %i.aefe = getelementptr inbounds nuw i8, ptr %i.aefd, i64 8
  %.0.copyload.i91123 = load i32, ptr %i.aefe, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91123) #7, !srcloc !19
  %i.aeff = add nuw nsw i64 %i.aeez, 4            ; 2 uses
  %.val79721 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aefg = getelementptr inbounds nuw i8, ptr %.val79721, i64 %i.aeff
  %.0.copyload.i91124 = load i32, ptr %i.aefg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91124) #7, !srcloc !19
  switch i32 %.0.copyload.i91124, label %w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3A0x3AupdateJumpTarget0x28unsigned0x20int0x2C0x20int0x2C0x20int0x29.exit91205 [
    i32 0, label %bb.fra
    i32 1, label %bb.fom
    i32 2, label %bb.frn
    i32 3, label %bb.fqj
    i32 6, label %bb.foq
  ]

bb.fom:                                           ; preds = %bb.fol
  %i.aefh = add i32 %.0.copyload.i91123, -8
  %.not79214 = icmp eq i32 %.0.copyload.i91123, 0
  %i.aefi = select i1 %.not79214, i32 0, i32 %i.aefh ; 11 uses
  %.val79720 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aefj = getelementptr inbounds nuw i8, ptr %.val79720, i64 %i.aeer
  %.0.copyload.i91125 = load i32, ptr %i.aefj, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91125) #7, !srcloc !19
  %.not79215 = icmp eq i32 %.0.copyload.i91125, 0
  br i1 %.not79215, label %bb.fsa, label %bb.fon

bb.fon:                                           ; preds = %bb.fom
  %.val79719 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aefk = getelementptr inbounds nuw i8, ptr %.val79719, i64 %i.f
  %i.aefl = getelementptr inbounds nuw i8, ptr %i.aefk, i64 20
  %.0.copyload.i91126 = load i32, ptr %i.aefl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91126) #7, !srcloc !19
  %i.aefm = add i32 %.0.copyload.i91125, -1       ; 2 uses
  %i.aefn = lshr i32 %i.aefi, 4
  %i.aefo = lshr i32 %i.aefi, 9
  %i.aefp = xor i32 %i.aefn, %i.aefo
  %i.aefq = and i32 %i.aefm, %i.aefp              ; 2 uses
  %i.aefr = mul nuw i32 %i.aefq, 12
  %i.aefs = add i32 %.0.copyload.i91126, %i.aefr  ; 2 uses
  %i.aeft = zext i32 %i.aefs to i64               ; 2 uses
  %.val79718 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aefu = getelementptr inbounds nuw i8, ptr %.val79718, i64 %i.aeft
  %.0.copyload.i91127 = load i32, ptr %i.aefu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91127) #7, !srcloc !19
  %i.aefv = icmp eq i32 %i.aefi, %.0.copyload.i91127
  br i1 %i.aefv, label %.loopexit91623, label %.preheader91622

.preheader91622:                                  ; preds = %bb.fon, %bb.fop
  %.20075816 = phi i32 [ %i.aegd, %bb.fop ], [ %i.aefq, %bb.fon ]
  %.575354 = phi i32 [ %i.aegc, %bb.fop ], [ 1, %bb.fon ] ; 2 uses
  %.1375317 = phi i32 [ %i.aega, %bb.fop ], [ 0, %bb.fon ] ; 3 uses
  %.775210 = phi i32 [ %.0.copyload.i91128, %bb.fop ], [ %.0.copyload.i91127, %bb.fon ] ; 2 uses
  %.0 = phi i32 [ %i.aegf, %bb.fop ], [ %i.aefs, %bb.fon ] ; 2 uses
  %i.aefw = icmp eq i32 %.775210, -4
  %.not79218 = icmp eq i32 %.1375317, 0           ; 2 uses
  br i1 %i.aefw, label %bb.foo, label %bb.fop

bb.foo:                                           ; preds = %.preheader91622
  %i.aefx = select i1 %.not79218, i32 %.0, i32 %.1375317
  br label %bb.fsa

bb.fop:                                           ; preds = %.preheader91622
  %i.aefy = icmp eq i32 %.775210, -8
  %i.aefz = select i1 %i.aefy, i1 %.not79218, i1 false
  %i.aega = select i1 %i.aefz, i32 %.0, i32 %.1375317
  %i.aegb = add i32 %.575354, %.20075816
  %i.aegc = add i32 %.575354, 1
  %i.aegd = and i32 %i.aegb, %i.aefm              ; 2 uses
  %i.aege = mul i32 %i.aegd, 12
  %i.aegf = add i32 %i.aege, %.0.copyload.i91126  ; 2 uses
  %i.aegg = zext i32 %i.aegf to i64               ; 2 uses
  %.val79717 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aegh = getelementptr inbounds nuw i8, ptr %.val79717, i64 %i.aegg
  %.0.copyload.i91128 = load i32, ptr %i.aegh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91128) #7, !srcloc !19
  %.not79217 = icmp eq i32 %i.aefi, %.0.copyload.i91128
  br i1 %.not79217, label %.loopexit91623, label %.preheader91622

bb.foq:                                           ; preds = %bb.fol
  %i.aegi = add i32 %.0.copyload.i91123, -8
  %.not79149 = icmp eq i32 %.0.copyload.i91123, 0
  %i.aegj = select i1 %.not79149, i32 0, i32 %i.aegi ; 22 uses
  %.val79716 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aegk = getelementptr inbounds nuw i8, ptr %.val79716, i64 %i.aeen
  %.0.copyload.i91129 = load i32, ptr %i.aegk, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91129) #7, !srcloc !19
  %.val79715 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aegl = getelementptr inbounds nuw i8, ptr %.val79715, i64 %i.aeeo
  %.0.copyload.i91130 = load i32, ptr %i.aegl, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91130) #7, !srcloc !19
  %.not79150 = icmp eq i32 %.0.copyload.i91130, 0
  br i1 %.not79150, label %bb.fou, label %bb.for

bb.for:                                           ; preds = %bb.foq
  %i.aegm = add i32 %.0.copyload.i91130, -1       ; 2 uses
  %i.aegn = lshr i32 %i.aegj, 4
  %i.aego = lshr i32 %i.aegj, 9
  %i.aegp = xor i32 %i.aegn, %i.aego
  %i.aegq = and i32 %i.aegm, %i.aegp              ; 2 uses
  %i.aegr = mul i32 %i.aegq, 24
  %i.aegs = add i32 %i.aegr, %.0.copyload.i91129  ; 2 uses
  %i.aegt = zext i32 %i.aegs to i64               ; 2 uses
  %.val79714 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aegu = getelementptr inbounds nuw i8, ptr %.val79714, i64 %i.aegt
  %.0.copyload.i91131 = load i32, ptr %i.aegu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91131) #7, !srcloc !19
  %i.aegv = icmp eq i32 %i.aegj, %.0.copyload.i91131
  br i1 %i.aegv, label %.loopexit91652, label %.preheader91651

.preheader91651:                                  ; preds = %bb.for, %bb.fot
  %.20175817 = phi i32 [ %.0.copyload.i91132, %bb.fot ], [ %.0.copyload.i91131, %bb.for ] ; 2 uses
  %.675355 = phi i32 [ %i.aehc, %bb.fot ], [ 1, %bb.for ] ; 2 uses
  %.1475318 = phi i32 [ %i.aeha, %bb.fot ], [ 0, %bb.for ] ; 3 uses
  %.675276 = phi i32 [ %i.aehd, %bb.fot ], [ %i.aegq, %bb.for ]
  %.1 = phi i32 [ %i.aehf, %bb.fot ], [ %i.aegs, %bb.for ] ; 2 uses
  %i.aegw = icmp eq i32 %.20175817, -4
  %.not79153 = icmp eq i32 %.1475318, 0           ; 2 uses
  br i1 %i.aegw, label %bb.fos, label %bb.fot

bb.fos:                                           ; preds = %.preheader91651
  %i.aegx = select i1 %.not79153, i32 %.1, i32 %.1475318
  br label %bb.fou

bb.fot:                                           ; preds = %.preheader91651
  %i.aegy = icmp eq i32 %.20175817, -8
  %i.aegz = select i1 %i.aegy, i1 %.not79153, i1 false
  %i.aeha = select i1 %i.aegz, i32 %.1, i32 %.1475318
  %i.aehb = add i32 %.675276, %.675355
  %i.aehc = add i32 %.675355, 1
  %i.aehd = and i32 %i.aehb, %i.aegm              ; 2 uses
  %i.aehe = mul i32 %i.aehd, 24
  %i.aehf = add i32 %i.aehe, %.0.copyload.i91129  ; 2 uses
  %i.aehg = zext i32 %i.aehf to i64               ; 2 uses
  %.val79713 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aehh = getelementptr inbounds nuw i8, ptr %.val79713, i64 %i.aehg
  %.0.copyload.i91132 = load i32, ptr %i.aehh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91132) #7, !srcloc !19
  %.not79152 = icmp eq i32 %i.aegj, %.0.copyload.i91132
  br i1 %.not79152, label %.loopexit91652, label %.preheader91651

bb.fou:                                           ; preds = %bb.foq, %bb.fos
  %.2 = phi i32 [ 0, %bb.foq ], [ %i.aegx, %bb.fos ]
  %.val79712 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aehi = getelementptr inbounds nuw i8, ptr %.val79712, i64 %i.aeep
  %.0.copyload.i91133 = load i32, ptr %i.aehi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91133) #7, !srcloc !19
  %i.aehj = shl i32 %.0.copyload.i91133, 2
  %i.aehk = add i32 %i.aehj, 4
  %i.aehl = mul i32 %.0.copyload.i91130, 3
  %.not79154 = icmp ult i32 %i.aehk, %i.aehl
  br i1 %.not79154, label %bb.fow, label %bb.fov

bb.fov:                                           ; preds = %bb.fou
  %i.aehm = shl i32 %.0.copyload.i91130, 1
  br label %bb.fox

bb.fow:                                           ; preds = %bb.fou
  %i.aehn = xor i32 %.0.copyload.i91133, -1
  %i.aeho = add i32 %.0.copyload.i91130, %i.aehn
  %.val79711 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aehp = getelementptr inbounds nuw i8, ptr %.val79711, i64 %i.f
  %i.aehq = getelementptr inbounds nuw i8, ptr %i.aehp, i64 204
  %.0.copyload.i91134 = load i32, ptr %i.aehq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91134) #7, !srcloc !19
  %i.aehr = sub i32 %i.aeho, %.0.copyload.i91134
  %i.aehs = lshr i32 %.0.copyload.i91130, 3
  %i.aeht = icmp ugt i32 %i.aehr, %i.aehs
  br i1 %i.aeht, label %bb.fpe, label %bb.fox

bb.fox:                                           ; preds = %bb.fow, %bb.fov
  %.775277 = phi i32 [ %i.aehm, %bb.fov ], [ %.0.copyload.i91130, %bb.fow ]
  %i.aehu = add i32 %.775277, -1
  %i.aehv = zext i32 %i.aehu to i64               ; 2 uses
  %i.aehw = lshr i64 %i.aehv, 1
  %i.aehx = or i64 %i.aehw, %i.aehv               ; 2 uses
  %i.aehy = lshr i64 %i.aehx, 2
  %i.aehz = or i64 %i.aehy, %i.aehx               ; 2 uses
  %i.aeia = lshr i64 %i.aehz, 4
  %i.aeib = or i64 %i.aeia, %i.aehz               ; 2 uses
  %i.aeic = lshr i64 %i.aeib, 8
  %i.aeid = or i64 %i.aeic, %i.aeib               ; 2 uses
  %i.aeie = lshr i64 %i.aeid, 16
  %i.aeif = or i64 %i.aeie, %i.aeid
  %i.aeig = trunc nuw i64 %i.aeif to i32
  %i.aeih = add i32 %i.aeig, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.aeih, i32 64) ; 2 uses
  %.val82244 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeii = getelementptr inbounds nuw i8, ptr %.val82244, i64 %i.aeeo
  store i32 %3, ptr %i.aeii, align 1
  %i.aeij = mul i32 %3, 24
  %i.aeik = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.aeij) #7 ; 13 uses
  %.val82243 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeil = getelementptr inbounds nuw i8, ptr %.val82243, i64 %i.aeen
  store i32 %i.aeik, ptr %i.aeil, align 1
  %.not79155 = icmp eq i32 %.0.copyload.i91129, 0
  br i1 %.not79155, label %bb.foy, label %bb.fpb

bb.foy:                                           ; preds = %bb.fox
  %.val85762 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeim = getelementptr inbounds nuw i8, ptr %.val85762, i64 %i.aeep
  store i64 0, ptr %i.aeim, align 1
  %.val79710 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aein = getelementptr inbounds nuw i8, ptr %.val79710, i64 %i.aeeo
  %.0.copyload.i91135 = load i32, ptr %i.aein, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91135) #7, !srcloc !19
  %i.aeio = mul i32 %.0.copyload.i91135, 24       ; 2 uses
  %i.aeip = add i32 %i.aeio, -24                  ; 2 uses
  %i.aeiq = udiv i32 %i.aeip, 24
  %i.aeir = add nuw nsw i32 %i.aeiq, 1
  %i.aeis = and i32 %i.aeir, 7                    ; 7 uses
  %.not79156 = icmp eq i32 %i.aeis, 0
  br i1 %.not79156, label %.loopexit91650, label %.preheader91649

.preheader91649:                                  ; preds = %bb.foy
  %i.aeit = zext i32 %i.aeik to i64
  %.val82242 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeiu = getelementptr inbounds nuw i8, ptr %.val82242, i64 %i.aeit
  store i32 -4, ptr %i.aeiu, align 1
  %i.aeiv = add i32 %i.aeik, 24                   ; 2 uses
  %.not79157 = icmp eq i32 %i.aeis, 1
  br i1 %.not79157, label %.loopexit91650, label %.preheader91649.1

.preheader91649.1:                                ; preds = %.preheader91649
  %i.aeiw = zext i32 %i.aeiv to i64
  %.val82242.1 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeix = getelementptr inbounds nuw i8, ptr %.val82242.1, i64 %i.aeiw
  store i32 -4, ptr %i.aeix, align 1
  %i.aeiy = add i32 %i.aeik, 48                   ; 2 uses
  %.not79157.1 = icmp eq i32 %i.aeis, 2
  br i1 %.not79157.1, label %.loopexit91650, label %.preheader91649.2

.preheader91649.2:                                ; preds = %.preheader91649.1
  %i.aeiz = zext i32 %i.aeiy to i64
  %.val82242.2 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeja = getelementptr inbounds nuw i8, ptr %.val82242.2, i64 %i.aeiz
  store i32 -4, ptr %i.aeja, align 1
  %i.aejb = add i32 %i.aeik, 72                   ; 2 uses
  %.not79157.2 = icmp eq i32 %i.aeis, 3
  br i1 %.not79157.2, label %.loopexit91650, label %.preheader91649.3

.preheader91649.3:                                ; preds = %.preheader91649.2
  %i.aejc = zext i32 %i.aejb to i64
  %.val82242.3 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aejd = getelementptr inbounds nuw i8, ptr %.val82242.3, i64 %i.aejc
  store i32 -4, ptr %i.aejd, align 1
  %i.aeje = add i32 %i.aeik, 96                   ; 2 uses
  %.not79157.3 = icmp eq i32 %i.aeis, 4
  br i1 %.not79157.3, label %.loopexit91650, label %.preheader91649.4

.preheader91649.4:                                ; preds = %.preheader91649.3
  %i.aejf = zext i32 %i.aeje to i64
  %.val82242.4 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aejg = getelementptr inbounds nuw i8, ptr %.val82242.4, i64 %i.aejf
  store i32 -4, ptr %i.aejg, align 1
  %i.aejh = add i32 %i.aeik, 120                  ; 2 uses
  %.not79157.4 = icmp eq i32 %i.aeis, 5
  br i1 %.not79157.4, label %.loopexit91650, label %.preheader91649.5

.preheader91649.5:                                ; preds = %.preheader91649.4
  %i.aeji = zext i32 %i.aejh to i64
  %.val82242.5 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aejj = getelementptr inbounds nuw i8, ptr %.val82242.5, i64 %i.aeji
  store i32 -4, ptr %i.aejj, align 1
  %i.aejk = add i32 %i.aeik, 144                  ; 2 uses
  %.not79157.5 = icmp eq i32 %i.aeis, 6
  br i1 %.not79157.5, label %.loopexit91650, label %.preheader91649.6

.preheader91649.6:                                ; preds = %.preheader91649.5
  %i.aejl = zext i32 %i.aejk to i64
  %.val82242.6 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aejm = getelementptr inbounds nuw i8, ptr %.val82242.6, i64 %i.aejl
  store i32 -4, ptr %i.aejm, align 1
  %i.aejn = add i32 %i.aeik, 168
  br label %.loopexit91650

.loopexit91650:                                   ; preds = %.preheader91649, %.preheader91649.1, %.preheader91649.2, %.preheader91649.3, %.preheader91649.4, %.preheader91649.5, %.preheader91649.6, %bb.foy
  %.4 = phi i32 [ %i.aeik, %bb.foy ], [ %i.aeiv, %.preheader91649 ], [ %i.aeiy, %.preheader91649.1 ], [ %i.aejb, %.preheader91649.2 ], [ %i.aeje, %.preheader91649.3 ], [ %i.aejh, %.preheader91649.4 ], [ %i.aejk, %.preheader91649.5 ], [ %i.aejn, %.preheader91649.6 ]
  %i.aejo = icmp ult i32 %i.aeip, 168
  br i1 %i.aejo, label %.loopexit91648, label %bb.foz

bb.foz:                                           ; preds = %.loopexit91650
  %i.aejp = add i32 %i.aeio, %i.aeik
  br label %bb.fpa

bb.fpa:                                           ; preds = %bb.fpa, %bb.foz
  %.5 = phi i32 [ %.4, %bb.foz ], [ %i.aekg, %bb.fpa ] ; 2 uses
  %i.aejq = zext i32 %.5 to i64                   ; 8 uses
  %.val82241 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aejr = getelementptr inbounds nuw i8, ptr %.val82241, i64 %i.aejq
  %i.aejs = getelementptr inbounds nuw i8, ptr %i.aejr, i64 168
  store i32 -4, ptr %i.aejs, align 1
  %.val82240 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aejt = getelementptr inbounds nuw i8, ptr %.val82240, i64 %i.aejq
  %i.aeju = getelementptr inbounds nuw i8, ptr %i.aejt, i64 144
  store i32 -4, ptr %i.aeju, align 1
  %.val82239 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aejv = getelementptr inbounds nuw i8, ptr %.val82239, i64 %i.aejq
  %i.aejw = getelementptr inbounds nuw i8, ptr %i.aejv, i64 120
  store i32 -4, ptr %i.aejw, align 1
  %.val82238 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aejx = getelementptr inbounds nuw i8, ptr %.val82238, i64 %i.aejq
  %i.aejy = getelementptr inbounds nuw i8, ptr %i.aejx, i64 96
  store i32 -4, ptr %i.aejy, align 1
  %.val82237 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aejz = getelementptr inbounds nuw i8, ptr %.val82237, i64 %i.aejq
  %i.aeka = getelementptr inbounds nuw i8, ptr %i.aejz, i64 72
  store i32 -4, ptr %i.aeka, align 1
  %.val82236 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aekb = getelementptr inbounds nuw i8, ptr %.val82236, i64 %i.aejq
  %i.aekc = getelementptr inbounds nuw i8, ptr %i.aekb, i64 48
  store i32 -4, ptr %i.aekc, align 1
  %.val82235 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aekd = getelementptr inbounds nuw i8, ptr %.val82235, i64 %i.aejq
  %i.aeke = getelementptr inbounds nuw i8, ptr %i.aekd, i64 24
  store i32 -4, ptr %i.aeke, align 1
  %.val82234 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aekf = getelementptr inbounds nuw i8, ptr %.val82234, i64 %i.aejq
  store i32 -4, ptr %i.aekf, align 1
  %i.aekg = add i32 %.5, 192                      ; 2 uses
  %.not79158 = icmp eq i32 %i.aekg, %i.aejp
  br i1 %.not79158, label %.loopexit91648, label %bb.fpa

bb.fpb:                                           ; preds = %bb.fox
  %i.aekh = mul i32 %.0.copyload.i91130, 24
  %i.aeki = add i32 %i.aekh, %.0.copyload.i91129
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ASwitchImmInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x3E0x2C0x20hermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ASwitchImmInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.aeei, i32 noundef %.0.copyload.i91129, i32 noundef %i.aeki) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i91129) #7
  %.val79709 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aekj = getelementptr inbounds nuw i8, ptr %.val79709, i64 %i.aeen
  %.0.copyload.i91136 = load i32, ptr %i.aekj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91136) #7, !srcloc !19
  %.val79708 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aekk = getelementptr inbounds nuw i8, ptr %.val79708, i64 %i.aeeo
  %.0.copyload.i91137 = load i32, ptr %i.aekk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91137) #7, !srcloc !19
  br label %.loopexit91648

.loopexit91648:                                   ; preds = %bb.fpa, %.loopexit91650, %bb.fpb
  %.20275818 = phi i32 [ %i.aeik, %.loopexit91650 ], [ %.0.copyload.i91136, %bb.fpb ], [ %i.aeik, %bb.fpa ] ; 2 uses
  %.875278 = phi i32 [ %.0.copyload.i91135, %.loopexit91650 ], [ %.0.copyload.i91137, %bb.fpb ], [ %.0.copyload.i91135, %bb.fpa ]
  %i.aekl = add i32 %.875278, -1                  ; 2 uses
  %i.aekm = lshr i32 %i.aegj, 4
  %i.aekn = lshr i32 %i.aegj, 9
  %i.aeko = xor i32 %i.aekm, %i.aekn
  %i.aekp = and i32 %i.aekl, %i.aeko              ; 2 uses
  %i.aekq = mul i32 %i.aekp, 24
  %i.aekr = add i32 %i.aekq, %.20275818           ; 3 uses
  %i.aeks = zext i32 %i.aekr to i64
  %.val79707 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aekt = getelementptr inbounds nuw i8, ptr %.val79707, i64 %i.aeks
  %.0.copyload.i91138 = load i32, ptr %i.aekt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91138) #7, !srcloc !19
  %.not79159 = icmp eq i32 %.0.copyload.i91138, %i.aegj
  br i1 %.not79159, label %.loopexit91647, label %.preheader91646

.preheader91646:                                  ; preds = %.loopexit91648, %bb.fpd
  %.1575319 = phi i32 [ %i.aela, %bb.fpd ], [ 1, %.loopexit91648 ] ; 2 uses
  %.975279 = phi i32 [ %i.aeky, %bb.fpd ], [ 0, %.loopexit91648 ] ; 3 uses
  %.675233 = phi i32 [ %.0.copyload.i91139, %bb.fpd ], [ %.0.copyload.i91138, %.loopexit91648 ] ; 2 uses
  %.875211 = phi i32 [ %i.aelb, %bb.fpd ], [ %i.aekp, %.loopexit91648 ]
  %.6 = phi i32 [ %i.aeld, %bb.fpd ], [ %i.aekr, %.loopexit91648 ] ; 2 uses
  %i.aeku = icmp eq i32 %.675233, -4
  %.not79162 = icmp eq i32 %.975279, 0            ; 2 uses
  br i1 %i.aeku, label %bb.fpc, label %bb.fpd

bb.fpc:                                           ; preds = %.preheader91646
  %i.aekv = select i1 %.not79162, i32 %.6, i32 %.975279
  br label %bb.fpe

bb.fpd:                                           ; preds = %.preheader91646
  %i.aekw = icmp eq i32 %.675233, -8
  %i.aekx = select i1 %i.aekw, i1 %.not79162, i1 false
  %i.aeky = select i1 %i.aekx, i32 %.6, i32 %.975279
  %i.aekz = add i32 %.875211, %.1575319
  %i.aela = add i32 %.1575319, 1
  %i.aelb = and i32 %i.aekz, %i.aekl              ; 2 uses
  %i.aelc = mul i32 %i.aelb, 24
  %i.aeld = add i32 %i.aelc, %.20275818           ; 3 uses
  %i.aele = zext i32 %i.aeld to i64
  %.val79706 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aelf = getelementptr inbounds nuw i8, ptr %.val79706, i64 %i.aele
  %.0.copyload.i91139 = load i32, ptr %i.aelf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91139) #7, !srcloc !19
  %.not79161 = icmp eq i32 %i.aegj, %.0.copyload.i91139
  br i1 %.not79161, label %.loopexit91647, label %.preheader91646

bb.fpe:                                           ; preds = %bb.fow, %bb.fpc
  %.8 = phi i32 [ %i.aekv, %bb.fpc ], [ %.2, %bb.fow ] ; 2 uses
  %i.aelg = zext i32 %.8 to i64
  %.val79705 = load ptr, ptr %i.e, align 8, !tbaa !18
end_hunk_11
begin_hunk_12_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a

.loopexit91643:                                   ; preds = %bb.fpp, %bb.fpn, %bb.fpq
  %.1275239 = phi i32 [ %.1175238, %bb.fpq ], [ %i.aens, %bb.fpn ], [ %i.aeoe, %bb.fpp ]
  %.14375155 = phi i32 [ %.0.copyload.i91154, %bb.fpq ], [ %.0.copyload.i91143, %bb.fpn ], [ %.0.copyload.i91143, %bb.fpp ]
  %.val79690 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeoj = getelementptr inbounds nuw i8, ptr %.val79690, i64 %i.aees
  %.0.copyload.i91155 = load i32, ptr %i.aeoj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91155) #7, !srcloc !19
  %i.aeok = add i32 %.0.copyload.i91155, 1
  %.val82229 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeol = getelementptr inbounds nuw i8, ptr %.val82229, i64 %i.aees
  store i32 %i.aeok, ptr %i.aeol, align 1
  %.not79173 = icmp eq i32 %.14375155, -4
  br i1 %.not79173, label %bb.fps, label %bb.fpr

bb.fpr:                                           ; preds = %.loopexit91643
  %.val79689 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeom = getelementptr inbounds nuw i8, ptr %.val79689, i64 %i.aeet
  %.0.copyload.i91156 = load i32, ptr %i.aeom, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91156) #7, !srcloc !19
  %i.aeon = add i32 %.0.copyload.i91156, -1
  %.val82228 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeoo = getelementptr inbounds nuw i8, ptr %.val82228, i64 %i.aeet
  store i32 %i.aeon, ptr %i.aeoo, align 1
  br label %bb.fps

bb.fps:                                           ; preds = %bb.fpr, %.loopexit91643
  %i.aeop = zext i32 %.1275239 to i64             ; 3 uses
  %.val85759 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeoq = getelementptr inbounds nuw i8, ptr %.val85759, i64 %i.aeop
  %i.aeor = getelementptr inbounds nuw i8, ptr %i.aeoq, i64 4
  store i64 0, ptr %i.aeor, align 1
  %.val82227 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeos = getelementptr inbounds nuw i8, ptr %.val82227, i64 %i.aeop
  store i32 %.0.copyload.i91143, ptr %i.aeos, align 1
  br label %.loopexit91645

.loopexit91645:                                   ; preds = %bb.fpj, %bb.fph, %bb.fps
  %.pre-phi91961 = phi i64 [ %i.aeop, %bb.fps ], [ %i.aemi, %bb.fph ], [ %i.aemv, %bb.fpj ]
  %.val79688 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeot = getelementptr inbounds nuw i8, ptr %.val79688, i64 %i.f
  %i.aeou = getelementptr inbounds nuw i8, ptr %i.aeot, i64 4
  %.0.copyload.i91157 = load i32, ptr %i.aeou, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91157) #7, !srcloc !19
  %i.aeov = add i32 %i.aefb, 6                    ; 4 uses
  %.val79687 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeow = getelementptr inbounds nuw i8, ptr %.val79687, i64 %.pre-phi91961
  %i.aeox = getelementptr inbounds nuw i8, ptr %i.aeow, i64 4
  %.0.copyload.i91158 = load i32, ptr %i.aeox, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91158) #7, !srcloc !19
  %i.aeoy = sub i32 %.0.copyload.i91158, %i.aefb  ; 4 uses
  %i.aeoz = zext i32 %.0.copyload.i91157 to i64   ; 4 uses
  %.val117.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aepa = getelementptr inbounds nuw i8, ptr %.val117.i, i64 %i.aeoz
  %.0.copyload.i124.i = load i32, ptr %i.aepa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124.i) #7, !srcloc !19
  %i.aepb = add i32 %.0.copyload.i124.i, %i.aeov
  %i.aepc = zext i32 %i.aepb to i64
  %.val122.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aepd = trunc i32 %i.aeoy to i8
  %i.aepe = getelementptr inbounds nuw i8, ptr %.val122.i, i64 %i.aepc
  store i8 %i.aepd, ptr %i.aepe, align 1
  %.val116.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aepf = getelementptr inbounds nuw i8, ptr %.val116.i, i64 %i.aeoz
  %.0.copyload.i125.i = load i32, ptr %i.aepf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i125.i) #7, !srcloc !19
  %i.aepg = add i32 %.0.copyload.i125.i, %i.aeov
  %i.aeph = lshr i32 %i.aeoy, 8
  %i.aepi = zext i32 %i.aepg to i64
  %.val121.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aepj = trunc i32 %i.aeph to i8
  %i.aepk = getelementptr inbounds nuw i8, ptr %.val121.i, i64 %i.aepi
  %i.aepl = getelementptr inbounds nuw i8, ptr %i.aepk, i64 1
  store i8 %i.aepj, ptr %i.aepl, align 1
  %.val115.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aepm = getelementptr inbounds nuw i8, ptr %.val115.i, i64 %i.aeoz
  %.0.copyload.i126.i = load i32, ptr %i.aepm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i126.i) #7, !srcloc !19
  %i.aepn = add i32 %.0.copyload.i126.i, %i.aeov
  %i.aepo = lshr i32 %i.aeoy, 16
  %i.aepp = zext i32 %i.aepn to i64
  %.val120.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aepq = trunc i32 %i.aepo to i8
  %i.aepr = getelementptr inbounds nuw i8, ptr %.val120.i, i64 %i.aepp
  %i.aeps = getelementptr inbounds nuw i8, ptr %i.aepr, i64 2
  store i8 %i.aepq, ptr %i.aeps, align 1
  %.val.i91159 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aept = getelementptr inbounds nuw i8, ptr %.val.i91159, i64 %i.aeoz
  %.0.copyload.i127.i = load i32, ptr %i.aept, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i127.i) #7, !srcloc !19
  %i.aepu = add i32 %.0.copyload.i127.i, %i.aeov
  %i.aepv = lshr i32 %i.aeoy, 24
  %i.aepw = zext i32 %i.aepu to i64
  %.val119.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aepx = trunc nuw i32 %i.aepv to i8
  %i.aepy = getelementptr inbounds nuw i8, ptr %.val119.i, i64 %i.aepw
  %i.aepz = getelementptr inbounds nuw i8, ptr %i.aepy, i64 3
  store i8 %i.aepx, ptr %i.aepz, align 1
  %.val79686 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeqa = getelementptr inbounds nuw i8, ptr %.val79686, i64 %i.aeen
  %.0.copyload.i91160 = load i32, ptr %i.aeqa, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91160) #7, !srcloc !19
  %.val79685 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeqb = getelementptr inbounds nuw i8, ptr %.val79685, i64 %i.aeeo
  %.0.copyload.i91161 = load i32, ptr %i.aeqb, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91161) #7, !srcloc !19
  %.not79174 = icmp eq i32 %.0.copyload.i91161, 0
  br i1 %.not79174, label %bb.fpw, label %bb.fpt

bb.fpt:                                           ; preds = %.loopexit91645
  %i.aeqc = add i32 %.0.copyload.i91161, -1       ; 2 uses
  %i.aeqd = lshr i32 %i.aegj, 4
  %i.aeqe = lshr i32 %i.aegj, 9
  %i.aeqf = xor i32 %i.aeqd, %i.aeqe
  %i.aeqg = and i32 %i.aeqc, %i.aeqf              ; 2 uses
  %i.aeqh = mul i32 %i.aeqg, 24
  %i.aeqi = add i32 %i.aeqh, %.0.copyload.i91160  ; 2 uses
  %i.aeqj = zext i32 %i.aeqi to i64               ; 2 uses
  %.val79684 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeqk = getelementptr inbounds nuw i8, ptr %.val79684, i64 %i.aeqj
  %.0.copyload.i91162 = load i32, ptr %i.aeqk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91162) #7, !srcloc !19
  %i.aeql = icmp eq i32 %i.aegj, %.0.copyload.i91162
  br i1 %i.aeql, label %.loopexit91641, label %.preheader91640

.preheader91640:                                  ; preds = %bb.fpt, %bb.fpv
  %.20575821 = phi i32 [ %.0.copyload.i91163, %bb.fpv ], [ %.0.copyload.i91162, %bb.fpt ] ; 2 uses
  %.975358 = phi i32 [ %i.aeqs, %bb.fpv ], [ 1, %bb.fpt ] ; 2 uses
  %.1875322 = phi i32 [ %i.aeqq, %bb.fpv ], [ 0, %bb.fpt ] ; 3 uses
  %.1175281 = phi i32 [ %i.aeqt, %bb.fpv ], [ %i.aeqg, %bb.fpt ]
  %.11 = phi i32 [ %i.aeqv, %bb.fpv ], [ %i.aeqi, %bb.fpt ] ; 2 uses
  %i.aeqm = icmp eq i32 %.20575821, -4
  %.not79177 = icmp eq i32 %.1875322, 0           ; 2 uses
  br i1 %i.aeqm, label %bb.fpu, label %bb.fpv

bb.fpu:                                           ; preds = %.preheader91640
  %i.aeqn = select i1 %.not79177, i32 %.11, i32 %.1875322
  br label %bb.fpw

bb.fpv:                                           ; preds = %.preheader91640
  %i.aeqo = icmp eq i32 %.20575821, -8
  %i.aeqp = select i1 %i.aeqo, i1 %.not79177, i1 false
  %i.aeqq = select i1 %i.aeqp, i32 %.11, i32 %.1875322
  %i.aeqr = add i32 %.1175281, %.975358
  %i.aeqs = add i32 %.975358, 1
  %i.aeqt = and i32 %i.aeqr, %i.aeqc              ; 2 uses
  %i.aequ = mul i32 %i.aeqt, 24
  %i.aeqv = add i32 %i.aequ, %.0.copyload.i91160  ; 2 uses
  %i.aeqw = zext i32 %i.aeqv to i64               ; 2 uses
  %.val79683 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeqx = getelementptr inbounds nuw i8, ptr %.val79683, i64 %i.aeqw
  %.0.copyload.i91163 = load i32, ptr %i.aeqx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91163) #7, !srcloc !19
  %.not79176 = icmp eq i32 %i.aegj, %.0.copyload.i91163
  br i1 %.not79176, label %.loopexit91641, label %.preheader91640

bb.fpw:                                           ; preds = %.loopexit91645, %bb.fpu
  %.12 = phi i32 [ %i.aeqn, %bb.fpu ], [ 0, %.loopexit91645 ]
  %.val79682 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeqy = getelementptr inbounds nuw i8, ptr %.val79682, i64 %i.aeep
  %.0.copyload.i91164 = load i32, ptr %i.aeqy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91164) #7, !srcloc !19
  %i.aeqz = shl i32 %.0.copyload.i91164, 2
  %i.aera = add i32 %i.aeqz, 4
  %i.aerb = mul i32 %.0.copyload.i91161, 3
  %.not79178 = icmp ult i32 %i.aera, %i.aerb
  br i1 %.not79178, label %bb.fpy, label %bb.fpx

bb.fpx:                                           ; preds = %bb.fpw
  %i.aerc = shl i32 %.0.copyload.i91161, 1
  br label %bb.fpz

bb.fpy:                                           ; preds = %bb.fpw
  %i.aerd = xor i32 %.0.copyload.i91164, -1
  %i.aere = add i32 %.0.copyload.i91161, %i.aerd
  %.val79681 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aerf = getelementptr inbounds nuw i8, ptr %.val79681, i64 %i.f
  %i.aerg = getelementptr inbounds nuw i8, ptr %i.aerf, i64 204
  %.0.copyload.i91165 = load i32, ptr %i.aerg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91165) #7, !srcloc !19
  %i.aerh = sub i32 %i.aere, %.0.copyload.i91165
  %i.aeri = lshr i32 %.0.copyload.i91161, 3
  %i.aerj = icmp ugt i32 %i.aerh, %i.aeri
  br i1 %i.aerj, label %bb.fqg, label %bb.fpz

bb.fpz:                                           ; preds = %bb.fpy, %bb.fpx
  %.1275282 = phi i32 [ %i.aerc, %bb.fpx ], [ %.0.copyload.i91161, %bb.fpy ]
  %i.aerk = add i32 %.1275282, -1
  %i.aerl = zext i32 %i.aerk to i64               ; 2 uses
  %i.aerm = lshr i64 %i.aerl, 1
  %i.aern = or i64 %i.aerm, %i.aerl               ; 2 uses
  %i.aero = lshr i64 %i.aern, 2
  %i.aerp = or i64 %i.aero, %i.aern               ; 2 uses
  %i.aerq = lshr i64 %i.aerp, 4
  %i.aerr = or i64 %i.aerq, %i.aerp               ; 2 uses
  %i.aers = lshr i64 %i.aerr, 8
  %i.aert = or i64 %i.aers, %i.aerr               ; 2 uses
  %i.aeru = lshr i64 %i.aert, 16
  %i.aerv = or i64 %i.aeru, %i.aert
  %i.aerw = trunc nuw i64 %i.aerv to i32
  %i.aerx = add i32 %i.aerw, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.aerx, i32 64) ; 2 uses
  %.val82226 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aery = getelementptr inbounds nuw i8, ptr %.val82226, i64 %i.aeeo
  store i32 %4, ptr %i.aery, align 1
  %i.aerz = mul i32 %4, 24
  %i.aesa = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.aerz) #7 ; 13 uses
  %.val82225 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aesb = getelementptr inbounds nuw i8, ptr %.val82225, i64 %i.aeen
  store i32 %i.aesa, ptr %i.aesb, align 1
  %.not79179 = icmp eq i32 %.0.copyload.i91160, 0
  br i1 %.not79179, label %bb.fqa, label %bb.fqd

bb.fqa:                                           ; preds = %bb.fpz
  %.val85758 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aesc = getelementptr inbounds nuw i8, ptr %.val85758, i64 %i.aeep
  store i64 0, ptr %i.aesc, align 1
  %.val79680 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aesd = getelementptr inbounds nuw i8, ptr %.val79680, i64 %i.aeeo
  %.0.copyload.i91166 = load i32, ptr %i.aesd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91166) #7, !srcloc !19
  %i.aese = mul i32 %.0.copyload.i91166, 24       ; 2 uses
  %i.aesf = add i32 %i.aese, -24                  ; 2 uses
  %i.aesg = udiv i32 %i.aesf, 24
  %i.aesh = add nuw nsw i32 %i.aesg, 1
  %i.aesi = and i32 %i.aesh, 7                    ; 7 uses
  %.not79180 = icmp eq i32 %i.aesi, 0
  br i1 %.not79180, label %.loopexit91639, label %.preheader91638

.preheader91638:                                  ; preds = %bb.fqa
  %i.aesj = zext i32 %i.aesa to i64
  %.val82224 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aesk = getelementptr inbounds nuw i8, ptr %.val82224, i64 %i.aesj
  store i32 -4, ptr %i.aesk, align 1
  %i.aesl = add i32 %i.aesa, 24                   ; 2 uses
  %.not79181 = icmp eq i32 %i.aesi, 1
  br i1 %.not79181, label %.loopexit91639, label %.preheader91638.1

.preheader91638.1:                                ; preds = %.preheader91638
  %i.aesm = zext i32 %i.aesl to i64
  %.val82224.1 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aesn = getelementptr inbounds nuw i8, ptr %.val82224.1, i64 %i.aesm
  store i32 -4, ptr %i.aesn, align 1
  %i.aeso = add i32 %i.aesa, 48                   ; 2 uses
  %.not79181.1 = icmp eq i32 %i.aesi, 2
  br i1 %.not79181.1, label %.loopexit91639, label %.preheader91638.2

.preheader91638.2:                                ; preds = %.preheader91638.1
  %i.aesp = zext i32 %i.aeso to i64
  %.val82224.2 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aesq = getelementptr inbounds nuw i8, ptr %.val82224.2, i64 %i.aesp
  store i32 -4, ptr %i.aesq, align 1
  %i.aesr = add i32 %i.aesa, 72                   ; 2 uses
  %.not79181.2 = icmp eq i32 %i.aesi, 3
  br i1 %.not79181.2, label %.loopexit91639, label %.preheader91638.3

.preheader91638.3:                                ; preds = %.preheader91638.2
  %i.aess = zext i32 %i.aesr to i64
  %.val82224.3 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aest = getelementptr inbounds nuw i8, ptr %.val82224.3, i64 %i.aess
  store i32 -4, ptr %i.aest, align 1
  %i.aesu = add i32 %i.aesa, 96                   ; 2 uses
  %.not79181.3 = icmp eq i32 %i.aesi, 4
  br i1 %.not79181.3, label %.loopexit91639, label %.preheader91638.4

.preheader91638.4:                                ; preds = %.preheader91638.3
  %i.aesv = zext i32 %i.aesu to i64
  %.val82224.4 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aesw = getelementptr inbounds nuw i8, ptr %.val82224.4, i64 %i.aesv
  store i32 -4, ptr %i.aesw, align 1
  %i.aesx = add i32 %i.aesa, 120                  ; 2 uses
  %.not79181.4 = icmp eq i32 %i.aesi, 5
  br i1 %.not79181.4, label %.loopexit91639, label %.preheader91638.5

.preheader91638.5:                                ; preds = %.preheader91638.4
  %i.aesy = zext i32 %i.aesx to i64
  %.val82224.5 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aesz = getelementptr inbounds nuw i8, ptr %.val82224.5, i64 %i.aesy
  store i32 -4, ptr %i.aesz, align 1
  %i.aeta = add i32 %i.aesa, 144                  ; 2 uses
  %.not79181.5 = icmp eq i32 %i.aesi, 6
  br i1 %.not79181.5, label %.loopexit91639, label %.preheader91638.6

.preheader91638.6:                                ; preds = %.preheader91638.5
  %i.aetb = zext i32 %i.aeta to i64
  %.val82224.6 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aetc = getelementptr inbounds nuw i8, ptr %.val82224.6, i64 %i.aetb
  store i32 -4, ptr %i.aetc, align 1
  %i.aetd = add i32 %i.aesa, 168
  br label %.loopexit91639

.loopexit91639:                                   ; preds = %.preheader91638, %.preheader91638.1, %.preheader91638.2, %.preheader91638.3, %.preheader91638.4, %.preheader91638.5, %.preheader91638.6, %bb.fqa
  %.14 = phi i32 [ %i.aesa, %bb.fqa ], [ %i.aesl, %.preheader91638 ], [ %i.aeso, %.preheader91638.1 ], [ %i.aesr, %.preheader91638.2 ], [ %i.aesu, %.preheader91638.3 ], [ %i.aesx, %.preheader91638.4 ], [ %i.aeta, %.preheader91638.5 ], [ %i.aetd, %.preheader91638.6 ]
  %i.aete = icmp ult i32 %i.aesf, 168
  br i1 %i.aete, label %.loopexit91637, label %bb.fqb

bb.fqb:                                           ; preds = %.loopexit91639
  %i.aetf = add i32 %i.aese, %i.aesa
  br label %bb.fqc

bb.fqc:                                           ; preds = %bb.fqc, %bb.fqb
  %.15 = phi i32 [ %.14, %bb.fqb ], [ %i.aetw, %bb.fqc ] ; 2 uses
  %i.aetg = zext i32 %.15 to i64                  ; 8 uses
  %.val82223 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeth = getelementptr inbounds nuw i8, ptr %.val82223, i64 %i.aetg
  %i.aeti = getelementptr inbounds nuw i8, ptr %i.aeth, i64 168
  store i32 -4, ptr %i.aeti, align 1
  %.val82222 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aetj = getelementptr inbounds nuw i8, ptr %.val82222, i64 %i.aetg
  %i.aetk = getelementptr inbounds nuw i8, ptr %i.aetj, i64 144
  store i32 -4, ptr %i.aetk, align 1
  %.val82221 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aetl = getelementptr inbounds nuw i8, ptr %.val82221, i64 %i.aetg
  %i.aetm = getelementptr inbounds nuw i8, ptr %i.aetl, i64 120
  store i32 -4, ptr %i.aetm, align 1
  %.val82220 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aetn = getelementptr inbounds nuw i8, ptr %.val82220, i64 %i.aetg
  %i.aeto = getelementptr inbounds nuw i8, ptr %i.aetn, i64 96
  store i32 -4, ptr %i.aeto, align 1
  %.val82219 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aetp = getelementptr inbounds nuw i8, ptr %.val82219, i64 %i.aetg
  %i.aetq = getelementptr inbounds nuw i8, ptr %i.aetp, i64 72
  store i32 -4, ptr %i.aetq, align 1
  %.val82218 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aetr = getelementptr inbounds nuw i8, ptr %.val82218, i64 %i.aetg
  %i.aets = getelementptr inbounds nuw i8, ptr %i.aetr, i64 48
  store i32 -4, ptr %i.aets, align 1
  %.val82217 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aett = getelementptr inbounds nuw i8, ptr %.val82217, i64 %i.aetg
  %i.aetu = getelementptr inbounds nuw i8, ptr %i.aett, i64 24
  store i32 -4, ptr %i.aetu, align 1
  %.val82216 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aetv = getelementptr inbounds nuw i8, ptr %.val82216, i64 %i.aetg
  store i32 -4, ptr %i.aetv, align 1
  %i.aetw = add i32 %.15, 192                     ; 2 uses
  %.not79182 = icmp eq i32 %i.aetw, %i.aetf
  br i1 %.not79182, label %.loopexit91637, label %bb.fqc

bb.fqd:                                           ; preds = %bb.fpz
  %i.aetx = mul i32 %.0.copyload.i91161, 24
  %i.aety = add i32 %i.aetx, %.0.copyload.i91160
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ASwitchImmInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x3E0x2C0x20hermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ASwitchImmInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.aeei, i32 noundef %.0.copyload.i91160, i32 noundef %i.aety) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i91160) #7
  %.val79679 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aetz = getelementptr inbounds nuw i8, ptr %.val79679, i64 %i.aeen
  %.0.copyload.i91167 = load i32, ptr %i.aetz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91167) #7, !srcloc !19
  %.val79678 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeua = getelementptr inbounds nuw i8, ptr %.val79678, i64 %i.aeeo
  %.0.copyload.i91168 = load i32, ptr %i.aeua, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91168) #7, !srcloc !19
  br label %.loopexit91637

.loopexit91637:                                   ; preds = %bb.fqc, %.loopexit91639, %bb.fqd
  %.20675822 = phi i32 [ %i.aesa, %.loopexit91639 ], [ %.0.copyload.i91167, %bb.fqd ], [ %i.aesa, %bb.fqc ] ; 2 uses
  %.1375283 = phi i32 [ %.0.copyload.i91166, %.loopexit91639 ], [ %.0.copyload.i91168, %bb.fqd ], [ %.0.copyload.i91166, %bb.fqc ]
  %i.aeub = add i32 %.1375283, -1                 ; 2 uses
  %i.aeuc = lshr i32 %i.aegj, 4
  %i.aeud = lshr i32 %i.aegj, 9
  %i.aeue = xor i32 %i.aeuc, %i.aeud
  %i.aeuf = and i32 %i.aeub, %i.aeue              ; 2 uses
  %i.aeug = mul i32 %i.aeuf, 24
  %i.aeuh = add i32 %i.aeug, %.20675822           ; 3 uses
  %i.aeui = zext i32 %i.aeuh to i64
  %.val79677 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeuj = getelementptr inbounds nuw i8, ptr %.val79677, i64 %i.aeui
  %.0.copyload.i91169 = load i32, ptr %i.aeuj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91169) #7, !srcloc !19
  %.not79183 = icmp eq i32 %.0.copyload.i91169, %i.aegj
  br i1 %.not79183, label %.loopexit91636, label %.preheader91635

.preheader91635:                                  ; preds = %.loopexit91637, %bb.fqf
  %.1975323 = phi i32 [ %i.aeuq, %bb.fqf ], [ 1, %.loopexit91637 ] ; 2 uses
  %.1475284 = phi i32 [ %i.aeuo, %bb.fqf ], [ 0, %.loopexit91637 ] ; 3 uses
  %.1575242 = phi i32 [ %.0.copyload.i91170, %bb.fqf ], [ %.0.copyload.i91169, %.loopexit91637 ] ; 2 uses
  %.1175214 = phi i32 [ %i.aeur, %bb.fqf ], [ %i.aeuf, %.loopexit91637 ]
  %.16 = phi i32 [ %i.aeut, %bb.fqf ], [ %i.aeuh, %.loopexit91637 ] ; 2 uses
  %i.aeuk = icmp eq i32 %.1575242, -4
  %.not79186 = icmp eq i32 %.1475284, 0           ; 2 uses
  br i1 %i.aeuk, label %bb.fqe, label %bb.fqf

bb.fqe:                                           ; preds = %.preheader91635
  %i.aeul = select i1 %.not79186, i32 %.16, i32 %.1475284
  br label %bb.fqg

bb.fqf:                                           ; preds = %.preheader91635
  %i.aeum = icmp eq i32 %.1575242, -8
  %i.aeun = select i1 %i.aeum, i1 %.not79186, i1 false
  %i.aeuo = select i1 %i.aeun, i32 %.16, i32 %.1475284
  %i.aeup = add i32 %.1175214, %.1975323
  %i.aeuq = add i32 %.1975323, 1
  %i.aeur = and i32 %i.aeup, %i.aeub              ; 2 uses
  %i.aeus = mul i32 %i.aeur, 24
  %i.aeut = add i32 %i.aeus, %.20675822           ; 3 uses
  %i.aeuu = zext i32 %i.aeut to i64
  %.val79676 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeuv = getelementptr inbounds nuw i8, ptr %.val79676, i64 %i.aeuu
  %.0.copyload.i91170 = load i32, ptr %i.aeuv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91170) #7, !srcloc !19
  %.not79185 = icmp eq i32 %i.aegj, %.0.copyload.i91170
  br i1 %.not79185, label %.loopexit91636, label %.preheader91635

bb.fqg:                                           ; preds = %bb.fpy, %bb.fqe
  %.18 = phi i32 [ %i.aeul, %bb.fqe ], [ %.12, %bb.fpy ] ; 2 uses
  %i.aeuw = zext i32 %.18 to i64
  %.val79675 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeux = getelementptr inbounds nuw i8, ptr %.val79675, i64 %i.aeuw
  %.0.copyload.i91171 = load i32, ptr %i.aeux, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91171) #7, !srcloc !19
  br label %.loopexit91636

.loopexit91636:                                   ; preds = %bb.fqf, %.loopexit91637, %bb.fqg
  %.14475156 = phi i32 [ %.0.copyload.i91171, %bb.fqg ], [ %i.aegj, %.loopexit91637 ], [ %i.aegj, %bb.fqf ]
  %.19 = phi i32 [ %.18, %bb.fqg ], [ %i.aeuh, %.loopexit91637 ], [ %i.aeut, %bb.fqf ]
  %.val79674 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeuy = getelementptr inbounds nuw i8, ptr %.val79674, i64 %i.aeep
  %.0.copyload.i91172 = load i32, ptr %i.aeuy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91172) #7, !srcloc !19
  %i.aeuz = add i32 %.0.copyload.i91172, 1
  %.val82215 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeva = getelementptr inbounds nuw i8, ptr %.val82215, i64 %i.aeep
  store i32 %i.aeuz, ptr %i.aeva, align 1
  %.not79187 = icmp eq i32 %.14475156, -4
  br i1 %.not79187, label %bb.fqi, label %bb.fqh

bb.fqh:                                           ; preds = %.loopexit91636
  %.val79673 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aevb = getelementptr inbounds nuw i8, ptr %.val79673, i64 %i.aeeq
  %.0.copyload.i91173 = load i32, ptr %i.aevb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91173) #7, !srcloc !19
  %i.aevc = add i32 %.0.copyload.i91173, -1
  %.val82214 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aevd = getelementptr inbounds nuw i8, ptr %.val82214, i64 %i.aeeq
  store i32 %i.aevc, ptr %i.aevd, align 1
  br label %bb.fqi

bb.fqi:                                           ; preds = %bb.fqh, %.loopexit91636
  %i.aeve = zext i32 %.19 to i64                  ; 5 uses
  %.val85757 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aevf = getelementptr inbounds nuw i8, ptr %.val85757, i64 %i.aeve
  %i.aevg = getelementptr inbounds nuw i8, ptr %i.aevf, i64 4
  store i64 0, ptr %i.aevg, align 1
  %.val82213 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aevh = getelementptr inbounds nuw i8, ptr %.val82213, i64 %i.aeve
  store i32 %i.aegj, ptr %i.aevh, align 1
  %.val85756 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aevi = getelementptr inbounds nuw i8, ptr %.val85756, i64 %i.aeve
  %i.aevj = getelementptr inbounds nuw i8, ptr %i.aevi, i64 12
  store i64 0, ptr %i.aevj, align 1
  %.val82212 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aevk = getelementptr inbounds nuw i8, ptr %.val82212, i64 %i.aeve
  %i.aevl = getelementptr inbounds nuw i8, ptr %i.aevk, i64 20
  store i32 0, ptr %i.aevl, align 1
  br label %.loopexit91641

.loopexit91641:                                   ; preds = %bb.fpv, %bb.fpt, %bb.fqi
  %.pre-phi91962 = phi i64 [ %i.aeve, %bb.fqi ], [ %i.aeqj, %bb.fpt ], [ %i.aeqw, %bb.fpv ]
  %.val82211 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aevm = getelementptr inbounds nuw i8, ptr %.val82211, i64 %.pre-phi91962
  %i.aevn = getelementptr inbounds nuw i8, ptr %i.aevm, i64 4
  store i32 %i.aefb, ptr %i.aevn, align 1
  br label %w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3A0x3AupdateJumpTarget0x28unsigned0x20int0x2C0x20int0x2C0x20int0x29.exit91205

bb.fqj:                                           ; preds = %bb.fol
  %i.aevo = add i32 %.0.copyload.i91123, -8
  %.not79188 = icmp eq i32 %.0.copyload.i91123, 0
  %i.aevp = select i1 %.not79188, i32 0, i32 %i.aevo ; 11 uses
  %.val79672 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aevq = getelementptr inbounds nuw i8, ptr %.val79672, i64 %i.aeeu
  %.0.copyload.i91174 = load i32, ptr %i.aevq, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91174) #7, !srcloc !19
  %.val79671 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aevr = getelementptr inbounds nuw i8, ptr %.val79671, i64 %i.aeev
  %.0.copyload.i91175 = load i32, ptr %i.aevr, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91175) #7, !srcloc !19
  %.not79189 = icmp eq i32 %.0.copyload.i91175, 0
  br i1 %.not79189, label %bb.fqn, label %bb.fqk

bb.fqk:                                           ; preds = %bb.fqj
  %i.aevs = add i32 %.0.copyload.i91175, -1       ; 2 uses
  %i.aevt = lshr i32 %i.aevp, 4
  %i.aevu = lshr i32 %i.aevp, 9
  %i.aevv = xor i32 %i.aevt, %i.aevu
  %i.aevw = and i32 %i.aevs, %i.aevv              ; 2 uses
  %i.aevx = mul i32 %i.aevw, 56
  %i.aevy = add i32 %i.aevx, %.0.copyload.i91174  ; 2 uses
  %i.aevz = zext i32 %i.aevy to i64               ; 2 uses
  %.val79670 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aewa = getelementptr inbounds nuw i8, ptr %.val79670, i64 %i.aevz
  %.0.copyload.i91176 = load i32, ptr %i.aewa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91176) #7, !srcloc !19
  %i.aewb = icmp eq i32 %i.aevp, %.0.copyload.i91176
  br i1 %i.aewb, label %.loopexit91634, label %.preheader91633

.preheader91633:                                  ; preds = %bb.fqk, %bb.fqm
  %.20775823 = phi i32 [ %.0.copyload.i91177, %bb.fqm ], [ %.0.copyload.i91176, %bb.fqk ] ; 2 uses
  %.1075359 = phi i32 [ %i.aewi, %bb.fqm ], [ 1, %bb.fqk ] ; 2 uses
  %.2075324 = phi i32 [ %i.aewg, %bb.fqm ], [ 0, %bb.fqk ] ; 3 uses
  %.1575285 = phi i32 [ %i.aewj, %bb.fqm ], [ %i.aevw, %bb.fqk ]
  %.21 = phi i32 [ %i.aewl, %bb.fqm ], [ %i.aevy, %bb.fqk ] ; 2 uses
  %i.aewc = icmp eq i32 %.20775823, -4
  %.not79192 = icmp eq i32 %.2075324, 0           ; 2 uses
  br i1 %i.aewc, label %bb.fql, label %bb.fqm

bb.fql:                                           ; preds = %.preheader91633
  %i.aewd = select i1 %.not79192, i32 %.21, i32 %.2075324
  br label %bb.fqn

bb.fqm:                                           ; preds = %.preheader91633
  %i.aewe = icmp eq i32 %.20775823, -8
  %i.aewf = select i1 %i.aewe, i1 %.not79192, i1 false
  %i.aewg = select i1 %i.aewf, i32 %.21, i32 %.2075324
  %i.aewh = add i32 %.1575285, %.1075359
  %i.aewi = add i32 %.1075359, 1
  %i.aewj = and i32 %i.aewh, %i.aevs              ; 2 uses
  %i.aewk = mul i32 %i.aewj, 56
  %i.aewl = add i32 %i.aewk, %.0.copyload.i91174  ; 2 uses
  %i.aewm = zext i32 %i.aewl to i64               ; 2 uses
  %.val79669 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aewn = getelementptr inbounds nuw i8, ptr %.val79669, i64 %i.aewm
  %.0.copyload.i91177 = load i32, ptr %i.aewn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91177) #7, !srcloc !19
  %.not79191 = icmp eq i32 %i.aevp, %.0.copyload.i91177
  br i1 %.not79191, label %.loopexit91634, label %.preheader91633

bb.fqn:                                           ; preds = %bb.fqj, %bb.fql
  %.22 = phi i32 [ 0, %bb.fqj ], [ %i.aewd, %bb.fql ]
  %.val79668 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aewo = getelementptr inbounds nuw i8, ptr %.val79668, i64 %i.aeew
  %.0.copyload.i91178 = load i32, ptr %i.aewo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91178) #7, !srcloc !19
  %i.aewp = shl i32 %.0.copyload.i91178, 2
  %i.aewq = add i32 %i.aewp, 4
  %i.aewr = mul i32 %.0.copyload.i91175, 3
  %.not79193 = icmp ult i32 %i.aewq, %i.aewr
  br i1 %.not79193, label %bb.fqp, label %bb.fqo

bb.fqo:                                           ; preds = %bb.fqn
  %i.aews = shl i32 %.0.copyload.i91175, 1
  br label %bb.fqq

bb.fqp:                                           ; preds = %bb.fqn
  %i.aewt = xor i32 %.0.copyload.i91178, -1
  %i.aewu = add i32 %.0.copyload.i91175, %i.aewt
  %.val79667 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aewv = getelementptr inbounds nuw i8, ptr %.val79667, i64 %i.f
  %i.aeww = getelementptr inbounds nuw i8, ptr %i.aewv, i64 184
  %.0.copyload.i91179 = load i32, ptr %i.aeww, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91179) #7, !srcloc !19
  %i.aewx = sub i32 %i.aewu, %.0.copyload.i91179
  %i.aewy = lshr i32 %.0.copyload.i91175, 3
  %i.aewz = icmp ugt i32 %i.aewx, %i.aewy
  br i1 %i.aewz, label %bb.fqx, label %bb.fqq

bb.fqq:                                           ; preds = %bb.fqp, %bb.fqo
  %.1675286 = phi i32 [ %i.aews, %bb.fqo ], [ %.0.copyload.i91175, %bb.fqp ]
  %i.aexa = add i32 %.1675286, -1
  %i.aexb = zext i32 %i.aexa to i64               ; 2 uses
  %i.aexc = lshr i64 %i.aexb, 1
  %i.aexd = or i64 %i.aexc, %i.aexb               ; 2 uses
  %i.aexe = lshr i64 %i.aexd, 2
  %i.aexf = or i64 %i.aexe, %i.aexd               ; 2 uses
  %i.aexg = lshr i64 %i.aexf, 4
  %i.aexh = or i64 %i.aexg, %i.aexf               ; 2 uses
  %i.aexi = lshr i64 %i.aexh, 8
  %i.aexj = or i64 %i.aexi, %i.aexh               ; 2 uses
  %i.aexk = lshr i64 %i.aexj, 16
  %i.aexl = or i64 %i.aexk, %i.aexj
  %i.aexm = trunc nuw i64 %i.aexl to i32
  %i.aexn = add i32 %i.aexm, 1
  %5 = tail call i32 @llvm.umax.i32(i32 %i.aexn, i32 64) ; 2 uses
  %.val82210 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aexo = getelementptr inbounds nuw i8, ptr %.val82210, i64 %i.aeev
  store i32 %5, ptr %i.aexo, align 1
  %i.aexp = mul i32 %5, 56
  %i.aexq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.aexp) #7 ; 13 uses
  %.val82209 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aexr = getelementptr inbounds nuw i8, ptr %.val82209, i64 %i.aeeu
  store i32 %i.aexq, ptr %i.aexr, align 1
  %.not79194 = icmp eq i32 %.0.copyload.i91174, 0
  br i1 %.not79194, label %bb.fqr, label %bb.fqu

bb.fqr:                                           ; preds = %bb.fqq
  %.val85755 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aexs = getelementptr inbounds nuw i8, ptr %.val85755, i64 %i.aeew
  store i64 0, ptr %i.aexs, align 1
  %.val79666 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aext = getelementptr inbounds nuw i8, ptr %.val79666, i64 %i.aeev
  %.0.copyload.i91180 = load i32, ptr %i.aext, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91180) #7, !srcloc !19
  %i.aexu = mul i32 %.0.copyload.i91180, 56       ; 2 uses
  %i.aexv = add i32 %i.aexu, -56                  ; 2 uses
  %i.aexw = udiv i32 %i.aexv, 56
  %i.aexx = add nuw nsw i32 %i.aexw, 1
  %i.aexy = and i32 %i.aexx, 7                    ; 7 uses
  %.not79195 = icmp eq i32 %i.aexy, 0
  br i1 %.not79195, label %.loopexit91632, label %.preheader91631

.preheader91631:                                  ; preds = %bb.fqr
  %i.aexz = zext i32 %i.aexq to i64
  %.val82208 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeya = getelementptr inbounds nuw i8, ptr %.val82208, i64 %i.aexz
  store i32 -4, ptr %i.aeya, align 1
  %i.aeyb = add i32 %i.aexq, 56                   ; 2 uses
  %.not79196 = icmp eq i32 %i.aexy, 1
  br i1 %.not79196, label %.loopexit91632, label %.preheader91631.1

.preheader91631.1:                                ; preds = %.preheader91631
  %i.aeyc = zext i32 %i.aeyb to i64
  %.val82208.1 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeyd = getelementptr inbounds nuw i8, ptr %.val82208.1, i64 %i.aeyc
  store i32 -4, ptr %i.aeyd, align 1
  %i.aeye = add i32 %i.aexq, 112                  ; 2 uses
  %.not79196.1 = icmp eq i32 %i.aexy, 2
  br i1 %.not79196.1, label %.loopexit91632, label %.preheader91631.2

.preheader91631.2:                                ; preds = %.preheader91631.1
  %i.aeyf = zext i32 %i.aeye to i64
  %.val82208.2 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeyg = getelementptr inbounds nuw i8, ptr %.val82208.2, i64 %i.aeyf
  store i32 -4, ptr %i.aeyg, align 1
  %i.aeyh = add i32 %i.aexq, 168                  ; 2 uses
  %.not79196.2 = icmp eq i32 %i.aexy, 3
  br i1 %.not79196.2, label %.loopexit91632, label %.preheader91631.3

.preheader91631.3:                                ; preds = %.preheader91631.2
  %i.aeyi = zext i32 %i.aeyh to i64
  %.val82208.3 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeyj = getelementptr inbounds nuw i8, ptr %.val82208.3, i64 %i.aeyi
  store i32 -4, ptr %i.aeyj, align 1
  %i.aeyk = add i32 %i.aexq, 224                  ; 2 uses
  %.not79196.3 = icmp eq i32 %i.aexy, 4
  br i1 %.not79196.3, label %.loopexit91632, label %.preheader91631.4

.preheader91631.4:                                ; preds = %.preheader91631.3
  %i.aeyl = zext i32 %i.aeyk to i64
  %.val82208.4 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeym = getelementptr inbounds nuw i8, ptr %.val82208.4, i64 %i.aeyl
  store i32 -4, ptr %i.aeym, align 1
  %i.aeyn = add i32 %i.aexq, 280                  ; 2 uses
  %.not79196.4 = icmp eq i32 %i.aexy, 5
  br i1 %.not79196.4, label %.loopexit91632, label %.preheader91631.5

.preheader91631.5:                                ; preds = %.preheader91631.4
  %i.aeyo = zext i32 %i.aeyn to i64
  %.val82208.5 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeyp = getelementptr inbounds nuw i8, ptr %.val82208.5, i64 %i.aeyo
  store i32 -4, ptr %i.aeyp, align 1
  %i.aeyq = add i32 %i.aexq, 336                  ; 2 uses
  %.not79196.5 = icmp eq i32 %i.aexy, 6
  br i1 %.not79196.5, label %.loopexit91632, label %.preheader91631.6

.preheader91631.6:                                ; preds = %.preheader91631.5
  %i.aeyr = zext i32 %i.aeyq to i64
  %.val82208.6 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeys = getelementptr inbounds nuw i8, ptr %.val82208.6, i64 %i.aeyr
  store i32 -4, ptr %i.aeys, align 1
  %i.aeyt = add i32 %i.aexq, 392
  br label %.loopexit91632

.loopexit91632:                                   ; preds = %.preheader91631, %.preheader91631.1, %.preheader91631.2, %.preheader91631.3, %.preheader91631.4, %.preheader91631.5, %.preheader91631.6, %bb.fqr
  %.24 = phi i32 [ %i.aexq, %bb.fqr ], [ %i.aeyb, %.preheader91631 ], [ %i.aeye, %.preheader91631.1 ], [ %i.aeyh, %.preheader91631.2 ], [ %i.aeyk, %.preheader91631.3 ], [ %i.aeyn, %.preheader91631.4 ], [ %i.aeyq, %.preheader91631.5 ], [ %i.aeyt, %.preheader91631.6 ]
  %i.aeyu = icmp ult i32 %i.aexv, 392
  br i1 %i.aeyu, label %.loopexit91630, label %bb.fqs

bb.fqs:                                           ; preds = %.loopexit91632
  %i.aeyv = add i32 %i.aexu, %i.aexq
  br label %bb.fqt

bb.fqt:                                           ; preds = %bb.fqt, %bb.fqs
  %.25 = phi i32 [ %.24, %bb.fqs ], [ %i.aezm, %bb.fqt ] ; 2 uses
  %i.aeyw = zext i32 %.25 to i64                  ; 8 uses
  %.val82207 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeyx = getelementptr inbounds nuw i8, ptr %.val82207, i64 %i.aeyw
  %i.aeyy = getelementptr inbounds nuw i8, ptr %i.aeyx, i64 392
  store i32 -4, ptr %i.aeyy, align 1
  %.val82206 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aeyz = getelementptr inbounds nuw i8, ptr %.val82206, i64 %i.aeyw
  %i.aeza = getelementptr inbounds nuw i8, ptr %i.aeyz, i64 336
  store i32 -4, ptr %i.aeza, align 1
  %.val82205 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aezb = getelementptr inbounds nuw i8, ptr %.val82205, i64 %i.aeyw
  %i.aezc = getelementptr inbounds nuw i8, ptr %i.aezb, i64 280
  store i32 -4, ptr %i.aezc, align 1
  %.val82204 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aezd = getelementptr inbounds nuw i8, ptr %.val82204, i64 %i.aeyw
  %i.aeze = getelementptr inbounds nuw i8, ptr %i.aezd, i64 224
  store i32 -4, ptr %i.aeze, align 1
  %.val82203 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aezf = getelementptr inbounds nuw i8, ptr %.val82203, i64 %i.aeyw
  %i.aezg = getelementptr inbounds nuw i8, ptr %i.aezf, i64 168
  store i32 -4, ptr %i.aezg, align 1
  %.val82202 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aezh = getelementptr inbounds nuw i8, ptr %.val82202, i64 %i.aeyw
  %i.aezi = getelementptr inbounds nuw i8, ptr %i.aezh, i64 112
  store i32 -4, ptr %i.aezi, align 1
  %.val82201 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aezj = getelementptr inbounds nuw i8, ptr %.val82201, i64 %i.aeyw
  %i.aezk = getelementptr inbounds nuw i8, ptr %i.aezj, i64 56
  store i32 -4, ptr %i.aezk, align 1
  %.val82200 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aezl = getelementptr inbounds nuw i8, ptr %.val82200, i64 %i.aeyw
  store i32 -4, ptr %i.aezl, align 1
  %i.aezm = add i32 %.25, 448                     ; 2 uses
  %.not79197 = icmp eq i32 %i.aezm, %i.aeyv
  br i1 %.not79197, label %.loopexit91630, label %bb.fqt

bb.fqu:                                           ; preds = %bb.fqq
  %i.aezn = mul i32 %.0.copyload.i91175, 56
  %i.aezo = add i32 %i.aezn, %.0.copyload.i91174
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x2C0x20hermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.aeeg, i32 noundef %.0.copyload.i91174, i32 noundef %i.aezo) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i91174) #7
  %.val79665 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aezp = getelementptr inbounds nuw i8, ptr %.val79665, i64 %i.aeeu
  %.0.copyload.i91181 = load i32, ptr %i.aezp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91181) #7, !srcloc !19
  %.val79664 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aezq = getelementptr inbounds nuw i8, ptr %.val79664, i64 %i.aeev
  %.0.copyload.i91182 = load i32, ptr %i.aezq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91182) #7, !srcloc !19
  br label %.loopexit91630

.loopexit91630:                                   ; preds = %bb.fqt, %.loopexit91632, %bb.fqu
  %.20875824 = phi i32 [ %i.aexq, %.loopexit91632 ], [ %.0.copyload.i91181, %bb.fqu ], [ %i.aexq, %bb.fqt ] ; 2 uses
  %.1775287 = phi i32 [ %.0.copyload.i91180, %.loopexit91632 ], [ %.0.copyload.i91182, %bb.fqu ], [ %.0.copyload.i91180, %bb.fqt ]
  %i.aezr = add i32 %.1775287, -1                 ; 2 uses
  %i.aezs = lshr i32 %i.aevp, 4
  %i.aezt = lshr i32 %i.aevp, 9
  %i.aezu = xor i32 %i.aezs, %i.aezt
  %i.aezv = and i32 %i.aezr, %i.aezu              ; 2 uses
  %i.aezw = mul i32 %i.aezv, 56
  %i.aezx = add i32 %i.aezw, %.20875824           ; 3 uses
  %i.aezy = zext i32 %i.aezx to i64
  %.val79663 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aezz = getelementptr inbounds nuw i8, ptr %.val79663, i64 %i.aezy
  %.0.copyload.i91183 = load i32, ptr %i.aezz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91183) #7, !srcloc !19
  %.not79198 = icmp eq i32 %.0.copyload.i91183, %i.aevp
  br i1 %.not79198, label %.loopexit91629, label %.preheader91628

.preheader91628:                                  ; preds = %.loopexit91630, %bb.fqw
  %.2175325 = phi i32 [ %i.afag, %bb.fqw ], [ 1, %.loopexit91630 ] ; 2 uses
  %.1875288 = phi i32 [ %i.afae, %bb.fqw ], [ 0, %.loopexit91630 ] ; 3 uses
  %.1775244 = phi i32 [ %.0.copyload.i91184, %bb.fqw ], [ %.0.copyload.i91183, %.loopexit91630 ] ; 2 uses
  %.1275215 = phi i32 [ %i.afah, %bb.fqw ], [ %i.aezv, %.loopexit91630 ]
  %.26 = phi i32 [ %i.afaj, %bb.fqw ], [ %i.aezx, %.loopexit91630 ] ; 2 uses
  %i.afaa = icmp eq i32 %.1775244, -4
  %.not79201 = icmp eq i32 %.1875288, 0           ; 2 uses
  br i1 %i.afaa, label %bb.fqv, label %bb.fqw

bb.fqv:                                           ; preds = %.preheader91628
  %i.afab = select i1 %.not79201, i32 %.26, i32 %.1875288
  br label %bb.fqx

bb.fqw:                                           ; preds = %.preheader91628
  %i.afac = icmp eq i32 %.1775244, -8
  %i.afad = select i1 %i.afac, i1 %.not79201, i1 false
  %i.afae = select i1 %i.afad, i32 %.26, i32 %.1875288
  %i.afaf = add i32 %.1275215, %.2175325
  %i.afag = add i32 %.2175325, 1
  %i.afah = and i32 %i.afaf, %i.aezr              ; 2 uses
  %i.afai = mul i32 %i.afah, 56
  %i.afaj = add i32 %i.afai, %.20875824           ; 3 uses
  %i.afak = zext i32 %i.afaj to i64
  %.val79662 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.afal = getelementptr inbounds nuw i8, ptr %.val79662, i64 %i.afak
  %.0.copyload.i91184 = load i32, ptr %i.afal, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91184) #7, !srcloc !19
  %.not79200 = icmp eq i32 %i.aevp, %.0.copyload.i91184
  br i1 %.not79200, label %.loopexit91629, label %.preheader91628

bb.fqx:                                           ; preds = %bb.fqp, %bb.fqv
  %.28 = phi i32 [ %i.afab, %bb.fqv ], [ %.22, %bb.fqp ] ; 2 uses
  %i.afam = zext i32 %.28 to i64
  %.val79661 = load ptr, ptr %i.e, align 8, !tbaa !18
end_hunk_12
begin_hunk_13_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AobtainFileAndSourceMapId0x28hermes0x3A0x3ASourceErrorManager0x260x2C0x20unsigned0x20int0x29:bb.a
  %.val1500 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1500, i64 %i.e
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 56
  store i64 %.0.copyload.i1574, ptr %i.kg, align 1
  %i.kh = add i32 %i.b, -88
  %i.ki = load i32, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.kj = add i32 %i.ki, -16                      ; 2 uses
  store i32 %i.kj, ptr %i.a, align 8, !tbaa !7
  %i.kk = zext i32 %.0.copyload.i1569 to i64
  %.val.i1575 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %.val.i1575, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %.0.copyload.i.i1576 = load i32, ptr %i.km, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i1576) #7, !srcloc !19
  %i.kn = zext i32 %i.kh to i64
  %.val62.i1577 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ko = getelementptr inbounds nuw i8, ptr %.val62.i1577, i64 %i.kn
  %.0.copyload.i67.i1578 = load i64, ptr %i.ko, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i67.i1578) #7, !srcloc !20
  %i.kp = zext i32 %i.kj to i64                   ; 3 uses
  %.val66.i1579 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.val66.i1579, i64 %i.kp
  store i64 %.0.copyload.i67.i1578, ptr %i.kq, align 1
  %.val65.i1580 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kr = getelementptr inbounds nuw i8, ptr %.val65.i1580, i64 %i.kp
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i64 %.0.copyload.i67.i1578, ptr %i.ks, align 1
  %i.kt = load i32, ptr %i.a, align 8, !tbaa !7
  %i.ku = add i32 %i.kt, -16                      ; 3 uses
  store i32 %i.ku, ptr %i.a, align 8, !tbaa !7
  %.val61.i1581 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %.val61.i1581, i64 %i.kp
  %.0.copyload.i68.i1582 = load i64, ptr %i.kv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i68.i1582) #7, !srcloc !20
  %i.kw = zext i32 %i.ku to i64                   ; 2 uses
  %.val64.i1583 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kx = getelementptr inbounds nuw i8, ptr %.val64.i1583, i64 %i.kw
  store i64 %.0.copyload.i68.i1582, ptr %i.kx, align 1
  %.val63.i1584 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ky = getelementptr inbounds nuw i8, ptr %.val63.i1584, i64 %i.kw
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i64 %.0.copyload.i68.i1582, ptr %i.kz, align 1
  %i.la = add i32 %.0.copyload.i.i1576, 328
  %i.lb = tail call i32 @w2c_hermes_hermes0x3A0x3AStringSetVector0x3A0x3Ainsert0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %i.la, i32 noundef %i.ku)
  store i32 %i.ki, ptr %i.a, align 8, !tbaa !7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.t, %bb.s, %bb.aa
  %.11317 = phi i32 [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.z ], [ %i.lb, %bb.aa ]
  %.val1404 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw i8, ptr %.val1404, i64 %i.o
  %.0.copyload.i1585 = load i32, ptr %i.lc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1585) #7, !srcloc !19
  %.val1468 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ld = getelementptr inbounds nuw i8, ptr %.val1468, i64 %i.e
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 36
  store i32 %.11317, ptr %i.le, align 1
  %i.lf = add nuw nsw i64 %i.e, 32                ; 2 uses
  %.val1467 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lg = getelementptr inbounds nuw i8, ptr %.val1467, i64 %i.lf
  store i32 %i.gx, ptr %i.lg, align 1
  %i.lh = add i32 %i.b, -4                        ; 3 uses
  %i.li = add i32 %.0.copyload.i1585, 8           ; 3 uses
  %i.lj = zext i32 %.0.copyload.i1585 to i64      ; 23 uses
  %i.lk = add nuw nsw i64 %i.lj, 12               ; 8 uses
  %.val1403 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ll = getelementptr inbounds nuw i8, ptr %.val1403, i64 %i.lk
  %.0.copyload.i1586 = load i32, ptr %i.ll, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1586) #7, !srcloc !19
  %.val1509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lm = getelementptr inbounds nuw i8, ptr %.val1509, i64 %i.lj
  %.0.copyload.i1587 = load i8, ptr %i.lm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1587) #7, !srcloc !21
  %i.ln = and i8 %.0.copyload.i1587, 1
  %.not1362 = icmp eq i8 %i.ln, 0                 ; 2 uses
  %i.lo = select i1 %.not1362, i32 %.0.copyload.i1586, i32 4 ; 3 uses
  %.not1363 = icmp eq i32 %i.lo, 0
  br i1 %.not1363, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lp = zext i32 %i.lh to i64
  %.val1402 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.val1402, i64 %i.lp
  %.0.copyload.i1588 = load i32, ptr %i.lq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1588) #7, !srcloc !19
  %.val1401 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %.val1401, i64 %i.lj
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %.0.copyload.i1589 = load i32, ptr %i.ls, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1589) #7, !srcloc !19
  %i.lt = select i1 %.not1362, i32 %.0.copyload.i1589, i32 %i.li ; 3 uses
  %i.lu = add i32 %i.lo, -1                       ; 2 uses
  %i.lv = mul i32 %.0.copyload.i1588, 37
  %i.lw = and i32 %i.lv, %i.lu                    ; 2 uses
  %i.lx = mul i32 %i.lw, 12
  %i.ly = add i32 %i.lt, %i.lx                    ; 3 uses
  %i.lz = zext i32 %i.ly to i64
  %.val1400 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %.val1400, i64 %i.lz
  %.0.copyload.i1590 = load i32, ptr %i.ma, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1590) #7, !srcloc !19
  %.not1364 = icmp eq i32 %.0.copyload.i1588, %.0.copyload.i1590
  br i1 %.not1364, label %.loopexit1625, label %.preheader1624

.preheader1624:                                   ; preds = %bb.ac, %bb.ae
  %.21318 = phi i32 [ %i.mf, %bb.ae ], [ 0, %bb.ac ] ; 3 uses
  %.11313 = phi i32 [ %i.mk, %bb.ae ], [ %i.ly, %bb.ac ] ; 2 uses
  %.21309 = phi i32 [ %.0.copyload.i1591, %bb.ae ], [ %.0.copyload.i1590, %bb.ac ] ; 2 uses
  %.31304 = phi i32 [ %i.mi, %bb.ae ], [ %i.lw, %bb.ac ]
  %.01296 = phi i32 [ %i.mh, %bb.ae ], [ 1, %bb.ac ] ; 2 uses
  %i.mb = icmp eq i32 %.21309, -1
  %.not1367 = icmp eq i32 %.21318, 0              ; 2 uses
  br i1 %i.mb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader1624
  %i.mc = select i1 %.not1367, i32 %.11313, i32 %.21318
  br label %bb.af

bb.ae:                                            ; preds = %.preheader1624
  %i.md = icmp eq i32 %.21309, -2
  %i.me = select i1 %i.md, i1 %.not1367, i1 false
  %i.mf = select i1 %i.me, i32 %.11313, i32 %.21318
  %i.mg = add i32 %.01296, %.31304
  %i.mh = add i32 %.01296, 1
  %i.mi = and i32 %i.mg, %i.lu                    ; 2 uses
  %i.mj = mul i32 %i.mi, 12
  %i.mk = add i32 %i.mj, %i.lt                    ; 3 uses
  %i.ml = zext i32 %i.mk to i64
  %.val1399 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1399, i64 %i.ml
  %.0.copyload.i1591 = load i32, ptr %i.mm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1591) #7, !srcloc !19
  %.not1366 = icmp eq i32 %.0.copyload.i1588, %.0.copyload.i1591
  br i1 %.not1366, label %.loopexit1625, label %.preheader1624

.loopexit1625:                                    ; preds = %bb.ae, %bb.ac
  %.21314 = phi i32 [ %i.ly, %bb.ac ], [ %i.mk, %bb.ae ]
  %i.mn = mul i32 %i.lo, 12
  %i.mo = add i32 %i.lt, %i.mn
  br label %bb.bf

bb.af:                                            ; preds = %bb.ab, %bb.ad
  %.31319 = phi i32 [ %i.mc, %bb.ad ], [ 0, %bb.ab ]
  %.val1398 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mp = getelementptr inbounds nuw i8, ptr %.val1398, i64 %i.lj
  %.0.copyload.i1592 = load i32, ptr %i.mp, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1592) #7, !srcloc !19
  %i.mq = lshr i32 %.0.copyload.i1592, 1          ; 2 uses
  %i.mr = shl i32 %i.mq, 2
  %i.ms = add i32 %i.mr, 4
  %.val1397 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mt = getelementptr inbounds nuw i8, ptr %.val1397, i64 %i.lk
  %.0.copyload.i1593 = load i32, ptr %i.mt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1593) #7, !srcloc !19
  %i.mu = and i32 %.0.copyload.i1592, 1           ; 2 uses
  %.not1368 = icmp eq i32 %i.mu, 0
  %i.mv = select i1 %.not1368, i32 %.0.copyload.i1593, i32 4 ; 5 uses
  %i.mw = mul i32 %i.mv, 3
  %.not1369 = icmp ult i32 %i.ms, %i.mw
  br i1 %.not1369, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mx = shl i32 %i.mv, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.my = xor i32 %i.mq, -1
  %i.mz = add i32 %i.mv, %i.my
  %.val1396 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.na = getelementptr inbounds nuw i8, ptr %.val1396, i64 %i.lj
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %.0.copyload.i1594 = load i32, ptr %i.nb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1594) #7, !srcloc !19
  %i.nc = sub i32 %i.mz, %.0.copyload.i1594
  %i.nd = lshr i32 %i.mv, 3
  %i.ne = icmp ugt i32 %i.nc, %i.nd
  br i1 %i.ne, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.31310 = phi i32 [ %i.mx, %bb.ag ], [ %i.mv, %bb.ah ] ; 3 uses
  %i.nf = load i32, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.ng = add i32 %i.nf, -48                      ; 4 uses
  store i32 %i.ng, ptr %i.a, align 8, !tbaa !7
  %i.nh = icmp ugt i32 %.31310, 3
  br i1 %i.nh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ni = add i32 %.31310, -1
  %i.nj = zext i32 %i.ni to i64                   ; 2 uses
  %i.nk = lshr i64 %i.nj, 1
  %i.nl = or i64 %i.nk, %i.nj                     ; 2 uses
  %i.nm = lshr i64 %i.nl, 2
  %i.nn = or i64 %i.nm, %i.nl                     ; 2 uses
  %i.no = lshr i64 %i.nn, 4
  %i.np = or i64 %i.no, %i.nn                     ; 2 uses
  %i.nq = lshr i64 %i.np, 8
  %i.nr = or i64 %i.nq, %i.np                     ; 2 uses
  %i.ns = lshr i64 %i.nr, 16
  %i.nt = or i64 %i.ns, %i.nr
  %i.nu = trunc nuw i64 %i.nt to i32
  %i.nv = add i32 %i.nu, 1
  %5 = tail call i32 @llvm.umax.i32(i32 %i.nv, i32 64)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.41311 = phi i32 [ %5, %bb.aj ], [ %.31310, %bb.ai ] ; 6 uses
  %.val1395 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nw = getelementptr inbounds nuw i8, ptr %.val1395, i64 %i.lj
  %.0.copyload.i1595 = load i32, ptr %i.nw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1595) #7, !srcloc !19
  %i.nx = and i32 %.0.copyload.i1595, 1
  %.not1370 = icmp eq i32 %i.nx, 0
  br i1 %.not1370, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ny = icmp ult i32 %.41311, 4
  br i1 %i.ny, label %bb.az, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.nz = add nuw nsw i64 %i.lj, 8                ; 2 uses
  %.val1394 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oa = getelementptr inbounds nuw i8, ptr %.val1394, i64 %i.nz
  %.0.copyload.i1596 = load i32, ptr %i.oa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1596) #7, !srcloc !19
  %i.ob = icmp ult i32 %.0.copyload.i1596, -2
  br i1 %i.ob, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.oc = zext i32 %i.ng to i64                   ; 2 uses
  %.val1466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.od = getelementptr inbounds nuw i8, ptr %.val1466, i64 %i.oc
  store i32 %.0.copyload.i1596, ptr %i.od, align 1
  %.val1487 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oe = getelementptr inbounds nuw i8, ptr %.val1487, i64 %i.lk
  %.0.copyload.i1597 = load i64, ptr %i.oe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1597) #7, !srcloc !20
  %.val1499 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.of = getelementptr inbounds nuw i8, ptr %.val1499, i64 %i.oc
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  store i64 %.0.copyload.i1597, ptr %i.og, align 1
  %i.oh = add i32 %i.nf, -36
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.41320 = phi i32 [ %i.oh, %bb.an ], [ %i.ng, %bb.am ] ; 3 uses
  %.val1393 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oi = getelementptr inbounds nuw i8, ptr %.val1393, i64 %i.lj
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 20
  %.0.copyload.i1598 = load i32, ptr %i.oj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1598) #7, !srcloc !19
  %i.ok = icmp ult i32 %.0.copyload.i1598, -2
  br i1 %i.ok, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ol = zext i32 %.41320 to i64                 ; 2 uses
  %.val1465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.om = getelementptr inbounds nuw i8, ptr %.val1465, i64 %i.ol
  store i32 %.0.copyload.i1598, ptr %i.om, align 1
  %.val1486 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.on = getelementptr inbounds nuw i8, ptr %.val1486, i64 %i.lj
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %.0.copyload.i1599 = load i64, ptr %i.oo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1599) #7, !srcloc !20
  %.val1498 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.op = getelementptr inbounds nuw i8, ptr %.val1498, i64 %i.ol
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  store i64 %.0.copyload.i1599, ptr %i.oq, align 1
  %i.or = add i32 %.41320, 12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.51321 = phi i32 [ %i.or, %bb.ap ], [ %.41320, %bb.ao ] ; 3 uses
  %.val1392 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.os = getelementptr inbounds nuw i8, ptr %.val1392, i64 %i.lj
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %.0.copyload.i1600 = load i32, ptr %i.ot, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1600) #7, !srcloc !19
  %i.ou = icmp ult i32 %.0.copyload.i1600, -2
  br i1 %i.ou, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ov = zext i32 %.51321 to i64                 ; 2 uses
  %.val1464 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ow = getelementptr inbounds nuw i8, ptr %.val1464, i64 %i.ov
  store i32 %.0.copyload.i1600, ptr %i.ow, align 1
  %.val1485 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ox = getelementptr inbounds nuw i8, ptr %.val1485, i64 %i.lj
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 36
  %.0.copyload.i1601 = load i64, ptr %i.oy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1601) #7, !srcloc !20
  %.val1497 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oz = getelementptr inbounds nuw i8, ptr %.val1497, i64 %i.ov
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  store i64 %.0.copyload.i1601, ptr %i.pa, align 1
  %i.pb = add i32 %.51321, 12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.6 = phi i32 [ %i.pb, %bb.ar ], [ %.51321, %bb.aq ] ; 3 uses
  %.val1391 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pc = getelementptr inbounds nuw i8, ptr %.val1391, i64 %i.lj
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 44
  %.0.copyload.i1602 = load i32, ptr %i.pd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1602) #7, !srcloc !19
  %i.pe = icmp ult i32 %.0.copyload.i1602, -2
  br i1 %i.pe, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.pf = zext i32 %.6 to i64                     ; 2 uses
  %.val1463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pg = getelementptr inbounds nuw i8, ptr %.val1463, i64 %i.pf
  store i32 %.0.copyload.i1602, ptr %i.pg, align 1
  %.val1484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ph = getelementptr inbounds nuw i8, ptr %.val1484, i64 %i.lj
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 48
  %.0.copyload.i1603 = load i64, ptr %i.pi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1603) #7, !srcloc !20
  %.val1496 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pj = getelementptr inbounds nuw i8, ptr %.val1496, i64 %i.pf
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  store i64 %.0.copyload.i1603, ptr %i.pk, align 1
  %i.pl = add i32 %.6, 12
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.7 = phi i32 [ %i.pl, %bb.at ], [ %.6, %bb.as ]
  %.val1390 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pm = getelementptr inbounds nuw i8, ptr %.val1390, i64 %i.lj
  %.0.copyload.i1604 = load i32, ptr %i.pm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1604) #7, !srcloc !19
  %i.pn = and i32 %.0.copyload.i1604, -2
  %.val1462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.po = getelementptr inbounds nuw i8, ptr %.val1462, i64 %i.lj
  store i32 %i.pn, ptr %i.po, align 1
  %i.pp = mul i32 %.41311, 12
  %i.pq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.pp) #7
  %.val1461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pr = getelementptr inbounds nuw i8, ptr %.val1461, i64 %i.lk
  store i32 %.41311, ptr %i.pr, align 1
  %.val1460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ps = getelementptr inbounds nuw i8, ptr %.val1460, i64 %i.nz
  store i32 %i.pq, ptr %i.ps, align 1
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x3E0x3E0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1585, i32 noundef %i.ng, i32 noundef %.7) #7
  br label %bb.az

bb.av:                                            ; preds = %bb.ak
  %.val1389 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pt = getelementptr inbounds nuw i8, ptr %.val1389, i64 %i.lk
  %.0.copyload.i1605 = load i32, ptr %i.pt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1605) #7, !srcloc !19
  %i.pu = add nuw nsw i64 %i.lj, 8                ; 2 uses
  %.val1388 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pv = getelementptr inbounds nuw i8, ptr %.val1388, i64 %i.pu
  %.0.copyload.i1606 = load i32, ptr %i.pv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1606) #7, !srcloc !19
  %i.pw = icmp ult i32 %.41311, 5
  br i1 %i.pw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.px = or disjoint i32 %.0.copyload.i1595, 1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.py = mul i32 %.41311, 12
  %i.pz = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.py) #7
  %.val1458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qa = getelementptr inbounds nuw i8, ptr %.val1458, i64 %i.lk
  store i32 %.41311, ptr %i.qa, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sink1669 = phi i64 [ %i.pu, %bb.ax ], [ %i.lj, %bb.aw ]
  %.sink1667 = phi i32 [ %i.pz, %bb.ax ], [ %i.px, %bb.aw ]
  %.val1457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qb = getelementptr inbounds nuw i8, ptr %.val1457, i64 %.sink1669
  store i32 %.sink1667, ptr %i.qb, align 1
  %i.qc = mul i32 %.0.copyload.i1605, 12
  %i.qd = add i32 %.0.copyload.i1606, %i.qc
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x3E0x3E0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AFileAndSourceMapId0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1585, i32 noundef %.0.copyload.i1606, i32 noundef %i.qd) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1606) #7
  br label %bb.az

bb.az:                                            ; preds = %bb.al, %bb.ay, %bb.au
  store i32 %i.nf, ptr %i.a, align 8, !tbaa !7
  %.val1387 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qe = getelementptr inbounds nuw i8, ptr %.val1387, i64 %i.lk
  %.0.copyload.i1607 = load i32, ptr %i.qe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1607) #7, !srcloc !19
  %.val1386 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qf = getelementptr inbounds nuw i8, ptr %.val1386, i64 %i.lj
  %.0.copyload.i1608 = load i32, ptr %i.qf, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1608) #7, !srcloc !19
  %i.qg = and i32 %.0.copyload.i1608, 1           ; 5 uses
  %.not1371 = icmp eq i32 %i.qg, 0                ; 2 uses
  %i.qh = select i1 %.not1371, i32 %.0.copyload.i1607, i32 4 ; 2 uses
  %.not1372 = icmp eq i32 %i.qh, 0
  br i1 %.not1372, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qi = zext i32 %i.lh to i64
  %.val1385 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qj = getelementptr inbounds nuw i8, ptr %.val1385, i64 %i.qi
  %.0.copyload.i1609 = load i32, ptr %i.qj, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1609) #7, !srcloc !19
  %.val1384 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qk = getelementptr inbounds nuw i8, ptr %.val1384, i64 %i.lj
end_hunk_13
begin_hunk_14_@w2c_hermes_hermes0x3A0x3AconstructCatchMap0x28hermes0x3A0x3AFunction0x2A0x2C0x20llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x260x2C0x20llvh0x3A0x3ASmallVectorImpl0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x260x2C0x20llvh0x3A0x3ASmallPtrSetImpl0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x260x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20unsigned0x20int0x29:bb.a
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef %i.am, i32 noundef 0, i32 noundef 4) #7
  %.val1825 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1825, i64 %i.ak
  %.0.copyload.i1913 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1913) #7, !srcloc !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.01619 = phi i32 [ %.0.copyload.i1913, %bb.d ], [ %.0.copyload.i1911, %bb.c ]
  %.val1824 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val1824, i64 %i.an
  %.0.copyload.i1914 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1914) #7, !srcloc !19
  %i.bf = shl i32 %.01619, 2
  %i.bg = add i32 %.0.copyload.i1914, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %.val1878 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1878, i64 %i.bh
  store i32 %6, ptr %i.bi, align 1
  %.val1823 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1823, i64 %i.ak
  %.0.copyload.i1915 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1915) #7, !srcloc !19
  %i.bk = add i32 %.0.copyload.i1915, 1           ; 3 uses
  %.val1877 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1877, i64 %i.ak
  store i32 %i.bk, ptr %i.bl, align 1
  %.not1675 = icmp eq i32 %i.bk, 0
  br i1 %.not1675, label %..loopexit2037_crit_edge, label %bb.f

..loopexit2037_crit_edge:                         ; preds = %bb.e
  %.pre2071 = add i32 %i.b, -64
  br label %.loopexit2037

bb.f:                                             ; preds = %bb.e
  %i.bm = add i32 %7, -1
  %i.bn = add i32 %4, 12
  %i.bo = zext i32 %4 to i64                      ; 4 uses
  %i.bp = add nuw nsw i64 %i.bo, 4                ; 8 uses
  %i.bq = zext i32 %3 to i64                      ; 9 uses
  %i.br = add nuw nsw i64 %i.bq, 12               ; 4 uses
  %i.bs = add nuw nsw i64 %i.bq, 4                ; 4 uses
  %i.bt = add nuw nsw i64 %i.bq, 8                ; 2 uses
  %i.bu = add nuw nsw i64 %i.aj, 60               ; 2 uses
  %i.bv = add i32 %i.b, -68
  %i.bw = add nuw nsw i64 %i.aj, 56               ; 2 uses
  %i.bx = add nuw nsw i64 %i.aj, 24               ; 2 uses
  %i.by = add nuw nsw i64 %i.aj, 20               ; 2 uses
  %i.bz = zext i32 %5 to i64                      ; 9 uses
  %i.ca = add nuw nsw i64 %i.bz, 12               ; 4 uses
  %i.cb = add nuw nsw i64 %i.bz, 16               ; 4 uses
  %i.cc = add i32 %i.b, -120                      ; 2 uses
  %i.cd = add i32 %i.b, -28                       ; 3 uses
  %i.ce = add nuw nsw i64 %i.aj, 76               ; 2 uses
  %i.cf = add i32 %i.b, -64                       ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread, %bb.f
  %.0 = phi i32 [ %i.bk, %bb.f ], [ %.0.copyload.i2011, %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread ] ; 2 uses
  %.val1822 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1822, i64 %i.an
  %.0.copyload.i1916 = load i32, ptr %i.cg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1916) #7, !srcloc !19
  %i.ch = shl i32 %.0, 2
  %i.ci = add i32 %i.ch, -4
  %i.cj = add i32 %i.ci, %.0.copyload.i1916
  %i.ck = zext i32 %i.cj to i64
  %.val1821 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1821, i64 %i.ck
  %.0.copyload.i1917 = load i32, ptr %i.cl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1917) #7, !srcloc !19
  %i.cm = add i32 %.0, -1
  %.val1876 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1876, i64 %i.ak
  store i32 %i.cm, ptr %i.cn, align 1
  %.val1820 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val1820, i64 %i.bp
  %.0.copyload.i1918 = load i32, ptr %i.co, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1918) #7, !srcloc !19
  %.not1676 = icmp eq i32 %.0.copyload.i1918, 0
  br i1 %.not1676, label %.loopexit2036, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val1819 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1819, i64 %i.bo
  %.0.copyload.i1919 = load i32, ptr %i.cp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1919) #7, !srcloc !19
  %i.cq = shl i32 %.0.copyload.i1918, 2
  %i.cr = add i32 %.0.copyload.i1919, %i.cq
  br label %bb.i

bb.i:                                             ; preds = %bb.aa, %bb.h
  %.11620 = phi i32 [ %.0.copyload.i1919, %bb.h ], [ %i.jo, %bb.aa ] ; 4 uses
  %.val1818 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1818, i64 %i.bq
  %.0.copyload.i1920 = load i32, ptr %i.cs, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1920) #7, !srcloc !19
  %.val1817 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1817, i64 %i.br
  %.0.copyload.i1921 = load i32, ptr %i.ct, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1921) #7, !srcloc !19
  %.not1677 = icmp eq i32 %.0.copyload.i1921, 0
  br i1 %.not1677, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cu = zext i32 %.11620 to i64
  %.val1816 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1816, i64 %i.cu
  %.0.copyload.i1922 = load i32, ptr %i.cv, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1922) #7, !srcloc !19
  %i.cw = add i32 %.0.copyload.i1921, -1          ; 2 uses
  %i.cx = lshr i32 %.0.copyload.i1922, 4
  %i.cy = lshr i32 %.0.copyload.i1922, 9
  %i.cz = xor i32 %i.cx, %i.cy
  %i.da = and i32 %i.cz, %i.cw                    ; 2 uses
  %i.db = mul i32 %i.da, 56
  %i.dc = add i32 %i.db, %.0.copyload.i1920       ; 3 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %.val1815 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val1815, i64 %i.dd
  %.0.copyload.i1923 = load i32, ptr %i.de, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1923) #7, !srcloc !19
  %i.df = icmp eq i32 %.0.copyload.i1922, %.0.copyload.i1923
  br i1 %i.df, label %.loopexit2028, label %.preheader2027

.preheader2027:                                   ; preds = %bb.j, %bb.l
  %.01628 = phi i32 [ %.0.copyload.i1924, %bb.l ], [ %.0.copyload.i1923, %bb.j ] ; 2 uses
  %.01610 = phi i32 [ %i.dn, %bb.l ], [ %i.da, %bb.j ]
  %.01606 = phi i32 [ %i.dk, %bb.l ], [ 0, %bb.j ] ; 3 uses
  %.01605 = phi i32 [ %i.dm, %bb.l ], [ 1, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %i.dp, %bb.l ], [ %i.dc, %bb.j ] ; 2 uses
  %i.dg = icmp eq i32 %.01628, -4
  %.not1680 = icmp eq i32 %.01606, 0              ; 2 uses
  br i1 %i.dg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader2027
  %i.dh = select i1 %.not1680, i32 %.1, i32 %.01606
  br label %bb.m

bb.l:                                             ; preds = %.preheader2027
  %i.di = icmp eq i32 %.01628, -8
  %i.dj = select i1 %i.di, i1 %.not1680, i1 false
  %i.dk = select i1 %i.dj, i32 %.1, i32 %.01606
  %i.dl = add i32 %.01605, %.01610
  %i.dm = add i32 %.01605, 1
  %i.dn = and i32 %i.dl, %i.cw                    ; 2 uses
  %i.do = mul i32 %i.dn, 56
  %i.dp = add i32 %i.do, %.0.copyload.i1920       ; 3 uses
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %.val1814 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1814, i64 %i.dq
  %.0.copyload.i1924 = load i32, ptr %i.dr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1924) #7, !srcloc !19
  %.not1679 = icmp eq i32 %.0.copyload.i1922, %.0.copyload.i1924
  br i1 %.not1679, label %.loopexit2028, label %.preheader2027

bb.m:                                             ; preds = %bb.i, %bb.k
  %.2 = phi i32 [ %i.dh, %bb.k ], [ 0, %bb.i ]
  %.val1813 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val1813, i64 %i.bs
  %.0.copyload.i1925 = load i32, ptr %i.ds, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1925) #7, !srcloc !19
  %i.dt = shl i32 %.0.copyload.i1925, 2
  %i.du = add i32 %i.dt, 4
  %i.dv = mul i32 %.0.copyload.i1921, 3
  %.not1681 = icmp ult i32 %i.du, %i.dv
  br i1 %.not1681, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = shl i32 %.0.copyload.i1921, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dx = xor i32 %.0.copyload.i1925, -1
  %i.dy = add i32 %.0.copyload.i1921, %i.dx
  %.val1812 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1812, i64 %i.bq
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.0.copyload.i1926 = load i32, ptr %i.ea, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1926) #7, !srcloc !19
  %i.eb = sub i32 %i.dy, %.0.copyload.i1926
  %i.ec = lshr i32 %.0.copyload.i1921, 3
  %i.ed = icmp ugt i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.11629 = phi i32 [ %i.dw, %bb.n ], [ %.0.copyload.i1921, %bb.o ]
  %i.ee = add i32 %.11629, -1
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = lshr i64 %i.ef, 1
  %i.eh = or i64 %i.eg, %i.ef                     ; 2 uses
  %i.ei = lshr i64 %i.eh, 2
  %i.ej = or i64 %i.ei, %i.eh                     ; 2 uses
  %i.ek = lshr i64 %i.ej, 4
  %i.el = or i64 %i.ek, %i.ej                     ; 2 uses
  %i.em = lshr i64 %i.el, 8
  %i.en = or i64 %i.em, %i.el                     ; 2 uses
  %i.eo = lshr i64 %i.en, 16
  %i.ep = or i64 %i.eo, %i.en
  %i.eq = trunc nuw i64 %i.ep to i32
  %i.er = add i32 %i.eq, 1
  %8 = tail call i32 @llvm.umax.i32(i32 %i.er, i32 64) ; 2 uses
  %.val1875 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %.val1875, i64 %i.br
  store i32 %8, ptr %i.es, align 1
  %i.et = mul i32 %8, 56
  %i.eu = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.et) #7 ; 13 uses
  %.val1874 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val1874, i64 %i.bq
  store i32 %i.eu, ptr %i.ev, align 1
  %.not1682 = icmp eq i32 %.0.copyload.i1920, 0
  br i1 %.not1682, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.val1897 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %.val1897, i64 %i.bs
  store i64 0, ptr %i.ew, align 1
  %.val1811 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val1811, i64 %i.br
  %.0.copyload.i1927 = load i32, ptr %i.ex, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1927) #7, !srcloc !19
  %i.ey = mul i32 %.0.copyload.i1927, 56          ; 2 uses
  %i.ez = add i32 %i.ey, -56                      ; 2 uses
  %i.fa = udiv i32 %i.ez, 56
  %i.fb = add nuw nsw i32 %i.fa, 1
  %i.fc = and i32 %i.fb, 7                        ; 7 uses
  %.not1683 = icmp eq i32 %i.fc, 0
  br i1 %.not1683, label %.loopexit2026, label %.preheader2025

.preheader2025:                                   ; preds = %bb.q
  %i.fd = zext i32 %i.eu to i64
  %.val1873 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val1873, i64 %i.fd
  store i32 -4, ptr %i.fe, align 1
  %i.ff = add i32 %i.eu, 56                       ; 2 uses
  %.not1684 = icmp eq i32 %i.fc, 1
  br i1 %.not1684, label %.loopexit2026, label %.preheader2025.1

.preheader2025.1:                                 ; preds = %.preheader2025
  %i.fg = zext i32 %i.ff to i64
  %.val1873.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val1873.1, i64 %i.fg
  store i32 -4, ptr %i.fh, align 1
  %i.fi = add i32 %i.eu, 112                      ; 2 uses
  %.not1684.1 = icmp eq i32 %i.fc, 2
  br i1 %.not1684.1, label %.loopexit2026, label %.preheader2025.2

.preheader2025.2:                                 ; preds = %.preheader2025.1
  %i.fj = zext i32 %i.fi to i64
  %.val1873.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val1873.2, i64 %i.fj
  store i32 -4, ptr %i.fk, align 1
  %i.fl = add i32 %i.eu, 168                      ; 2 uses
  %.not1684.2 = icmp eq i32 %i.fc, 3
  br i1 %.not1684.2, label %.loopexit2026, label %.preheader2025.3

.preheader2025.3:                                 ; preds = %.preheader2025.2
  %i.fm = zext i32 %i.fl to i64
  %.val1873.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1873.3, i64 %i.fm
  store i32 -4, ptr %i.fn, align 1
  %i.fo = add i32 %i.eu, 224                      ; 2 uses
  %.not1684.3 = icmp eq i32 %i.fc, 4
  br i1 %.not1684.3, label %.loopexit2026, label %.preheader2025.4

.preheader2025.4:                                 ; preds = %.preheader2025.3
  %i.fp = zext i32 %i.fo to i64
  %.val1873.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1873.4, i64 %i.fp
  store i32 -4, ptr %i.fq, align 1
  %i.fr = add i32 %i.eu, 280                      ; 2 uses
  %.not1684.4 = icmp eq i32 %i.fc, 5
  br i1 %.not1684.4, label %.loopexit2026, label %.preheader2025.5

.preheader2025.5:                                 ; preds = %.preheader2025.4
  %i.fs = zext i32 %i.fr to i64
  %.val1873.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1873.5, i64 %i.fs
  store i32 -4, ptr %i.ft, align 1
  %i.fu = add i32 %i.eu, 336                      ; 2 uses
  %.not1684.5 = icmp eq i32 %i.fc, 6
  br i1 %.not1684.5, label %.loopexit2026, label %.preheader2025.6

.preheader2025.6:                                 ; preds = %.preheader2025.5
  %i.fv = zext i32 %i.fu to i64
  %.val1873.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1873.6, i64 %i.fv
  store i32 -4, ptr %i.fw, align 1
  %i.fx = add i32 %i.eu, 392
  br label %.loopexit2026

.loopexit2026:                                    ; preds = %.preheader2025, %.preheader2025.1, %.preheader2025.2, %.preheader2025.3, %.preheader2025.4, %.preheader2025.5, %.preheader2025.6, %bb.q
  %.4 = phi i32 [ %i.eu, %bb.q ], [ %i.ff, %.preheader2025 ], [ %i.fi, %.preheader2025.1 ], [ %i.fl, %.preheader2025.2 ], [ %i.fo, %.preheader2025.3 ], [ %i.fr, %.preheader2025.4 ], [ %i.fu, %.preheader2025.5 ], [ %i.fx, %.preheader2025.6 ]
  %i.fy = icmp ult i32 %i.ez, 392
  br i1 %i.fy, label %.loopexit2024, label %bb.r

bb.r:                                             ; preds = %.loopexit2026
  %i.fz = add i32 %i.ey, %i.eu
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.5 = phi i32 [ %.4, %bb.r ], [ %i.gq, %bb.s ]  ; 2 uses
  %i.ga = zext i32 %.5 to i64                     ; 8 uses
  %.val1872 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1872, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 392
  store i32 -4, ptr %i.gc, align 1
  %.val1871 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1871, i64 %i.ga
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 336
  store i32 -4, ptr %i.ge, align 1
  %.val1870 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1870, i64 %i.ga
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 280
  store i32 -4, ptr %i.gg, align 1
  %.val1869 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1869, i64 %i.ga
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 224
  store i32 -4, ptr %i.gi, align 1
  %.val1868 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1868, i64 %i.ga
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 168
  store i32 -4, ptr %i.gk, align 1
  %.val1867 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1867, i64 %i.ga
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 112
  store i32 -4, ptr %i.gm, align 1
  %.val1866 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1866, i64 %i.ga
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  store i32 -4, ptr %i.go, align 1
  %.val1865 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %.val1865, i64 %i.ga
  store i32 -4, ptr %i.gp, align 1
  %i.gq = add i32 %.5, 448                        ; 2 uses
  %.not1685 = icmp eq i32 %i.gq, %i.fz
  br i1 %.not1685, label %.loopexit2024, label %bb.s

bb.t:                                             ; preds = %bb.p
  %i.gr = mul i32 %.0.copyload.i1921, 56
  %i.gs = add i32 %i.gr, %.0.copyload.i1920
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x2C0x20hermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0.copyload.i1920, i32 noundef %i.gs) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1920) #7
  %.val1810 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1810, i64 %i.bq
  %.0.copyload.i1928 = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1928) #7, !srcloc !19
  %.val1809 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1809, i64 %i.br
  %.0.copyload.i1929 = load i32, ptr %i.gu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1929) #7, !srcloc !19
  br label %.loopexit2024

.loopexit2024:                                    ; preds = %bb.s, %.loopexit2026, %bb.t
  %.21630 = phi i32 [ %i.eu, %.loopexit2026 ], [ %.0.copyload.i1928, %bb.t ], [ %i.eu, %bb.s ] ; 2 uses
  %.01613 = phi i32 [ %.0.copyload.i1927, %.loopexit2026 ], [ %.0.copyload.i1929, %bb.t ], [ %.0.copyload.i1927, %bb.s ]
  %i.gv = zext i32 %.11620 to i64
  %.val1808 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1808, i64 %i.gv
  %.0.copyload.i1930 = load i32, ptr %i.gw, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1930) #7, !srcloc !19
  %i.gx = add i32 %.01613, -1                     ; 2 uses
  %i.gy = lshr i32 %.0.copyload.i1930, 4
  %i.gz = lshr i32 %.0.copyload.i1930, 9
  %i.ha = xor i32 %i.gy, %i.gz
  %i.hb = and i32 %i.ha, %i.gx                    ; 2 uses
  %i.hc = mul i32 %i.hb, 56
  %i.hd = add i32 %i.hc, %.21630                  ; 3 uses
  %i.he = zext i32 %i.hd to i64
  %.val1807 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1807, i64 %i.he
  %.0.copyload.i1931 = load i32, ptr %i.hf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1931) #7, !srcloc !19
  %i.hg = icmp eq i32 %.0.copyload.i1930, %.0.copyload.i1931
  br i1 %i.hg, label %.loopexit2023, label %.preheader2022

.preheader2022:                                   ; preds = %.loopexit2024, %bb.v
  %.11614 = phi i32 [ %i.ho, %bb.v ], [ %i.hb, %.loopexit2024 ]
  %.11611 = phi i32 [ %.0.copyload.i1932, %bb.v ], [ %.0.copyload.i1931, %.loopexit2024 ] ; 2 uses
  %.01608 = phi i32 [ %i.hl, %bb.v ], [ 0, %.loopexit2024 ] ; 3 uses
  %.11607 = phi i32 [ %i.hn, %bb.v ], [ 1, %.loopexit2024 ] ; 2 uses
  %.6 = phi i32 [ %i.hq, %bb.v ], [ %i.hd, %.loopexit2024 ] ; 2 uses
  %i.hh = icmp eq i32 %.11611, -4
  %.not1688 = icmp eq i32 %.01608, 0              ; 2 uses
  br i1 %i.hh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.preheader2022
  %i.hi = select i1 %.not1688, i32 %.6, i32 %.01608
  br label %bb.w

bb.v:                                             ; preds = %.preheader2022
  %i.hj = icmp eq i32 %.11611, -8
  %i.hk = select i1 %i.hj, i1 %.not1688, i1 false
  %i.hl = select i1 %i.hk, i32 %.6, i32 %.01608
  %i.hm = add i32 %.11607, %.11614
  %i.hn = add i32 %.11607, 1
  %i.ho = and i32 %i.hm, %i.gx                    ; 2 uses
  %i.hp = mul i32 %i.ho, 56
  %i.hq = add i32 %i.hp, %.21630                  ; 3 uses
  %i.hr = zext i32 %i.hq to i64
  %.val1806 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1806, i64 %i.hr
  %.0.copyload.i1932 = load i32, ptr %i.hs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1932) #7, !srcloc !19
  %.not1687 = icmp eq i32 %.0.copyload.i1930, %.0.copyload.i1932
  br i1 %.not1687, label %.loopexit2023, label %.preheader2022
end_hunk_14
begin_hunk_15_@w2c_hermes_hermes0x3A0x3ALowerCondBranch0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %.0.copyload.i984 = load i32, ptr %i.jp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i984) #7, !srcloc !19
  %.not843 = icmp eq i32 %.0.copyload.i984, %i.q
  br i1 %.not843, label %.loopexit996, label %bb.b

.loopexit996:                                     ; preds = %bb.ak, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ %.5764, %bb.ak ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3ALowerAllocObject0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = add i32 %i.b, -96                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 444 uses
  %i.e = zext i32 %i.c to i64                     ; 6 uses
  %i.f = add nuw nsw i64 %i.e, 88                 ; 4 uses
  %.val4299 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val4299, i64 %i.f
  store i64 0, ptr %i.g, align 1
  %i.h = add nuw nsw i64 %i.e, 80                 ; 9 uses
  %.val4298 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val4298, i64 %i.h
  store i64 0, ptr %i.i, align 1
  %i.j = zext i32 %2 to i64
  %.val4145 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val4145, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %.0.copyload.i = load i32, ptr %i.l, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.m = add i32 %2, 48                           ; 2 uses
  %.not = icmp eq i32 %.0.copyload.i, %i.m
  %.pre4720 = add nuw nsw i64 %i.e, 92            ; 8 uses
  br i1 %.not, label %.loopexit4649, label %.preheader4648

.preheader4648:                                   ; preds = %bb.a
  %i.n = add nuw nsw i64 %i.e, 84                 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader4648, %.loopexit4647
  %.03592 = phi i32 [ %.0.copyload.i4394, %.loopexit4647 ], [ %.0.copyload.i, %.preheader4648 ] ; 11 uses
  %i.o = zext i32 %.03592 to i64                  ; 2 uses
  %.val4144 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val4144, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.0.copyload.i4316 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4316) #7, !srcloc !19
  %i.r = add i32 %.03592, 36                      ; 2 uses
  %.not3776 = icmp eq i32 %.0.copyload.i4316, %i.r
  br i1 %.not3776, label %.loopexit4647, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = lshr i32 %.03592, 4
  %i.t = lshr i32 %.03592, 9
  %i.u = xor i32 %i.s, %i.t                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit4646, %bb.c
  %.03589 = phi i32 [ %.0.copyload.i4316, %bb.c ], [ %.0.copyload.i4393, %.loopexit4646 ] ; 3 uses
  %i.v = zext i32 %.03589 to i64                  ; 4 uses
  %i.w = add nuw nsw i64 %i.v, 44                 ; 2 uses
  %.val4143 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val4143, i64 %i.w
  %.0.copyload.i4317 = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4317) #7, !srcloc !19
  %.not3777 = icmp eq i32 %.0.copyload.i4317, 0
  br i1 %.not3777, label %.loopexit4646, label %.preheader4645

.preheader4645:                                   ; preds = %bb.d
  %i.y = add nuw nsw i64 %i.v, 40                 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader4645, %bb.bs
  %.03588 = phi i32 [ %i.uh, %bb.bs ], [ 0, %.preheader4645 ] ; 2 uses
  %.val4142 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val4142, i64 %i.y
  %.0.copyload.i4318 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4318) #7, !srcloc !19
  %i.aa = shl i32 %.03588, 3
  %i.ab = add i32 %.0.copyload.i4318, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %.val4141 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4141, i64 %i.ac
  %.0.copyload.i4319 = load i32, ptr %i.ad, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4319) #7, !srcloc !19
  %i.ae = zext i32 %.0.copyload.i4319 to i64
  %.val4314 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val4314, i64 %i.ae
  %.0.copyload.i4320 = load i8, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4320) #7, !srcloc !21
  %.not3778 = icmp eq i8 %.0.copyload.i4320, 53
  br i1 %.not3778, label %bb.f, label %bb.bs

bb.f:                                             ; preds = %bb.e
  %i.ag = add i32 %.0.copyload.i4319, -8          ; 11 uses
  %.val4140 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4140, i64 %i.h
  %.0.copyload.i4321 = load i32, ptr %i.ah, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4321) #7, !srcloc !19
  %.val4139 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val4139, i64 %.pre4720
  %.0.copyload.i4322 = load i32, ptr %i.ai, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4322) #7, !srcloc !19
  %.not3779 = icmp eq i32 %.0.copyload.i4322, 0
  br i1 %.not3779, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add i32 %.0.copyload.i4322, -1          ; 2 uses
  %i.ak = lshr i32 %i.ag, 4
  %i.al = lshr i32 %i.ag, 9
  %i.am = xor i32 %i.ak, %i.al
  %i.an = and i32 %i.aj, %i.am                    ; 2 uses
  %i.ao = mul i32 %i.an, 20
  %i.ap = add i32 %i.ao, %.0.copyload.i4321       ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.val4138 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val4138, i64 %i.aq
  %.0.copyload.i4323 = load i32, ptr %i.ar, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4323) #7, !srcloc !19
  %i.as = icmp eq i32 %i.ag, %.0.copyload.i4323
  br i1 %i.as, label %.loopexit4644, label %.preheader4643

.preheader4643:                                   ; preds = %bb.g, %bb.i
  %.03642 = phi i32 [ %i.ba, %bb.i ], [ %i.an, %bb.g ]
  %.03627 = phi i32 [ %i.az, %bb.i ], [ 1, %bb.g ] ; 2 uses
  %.03613 = phi i32 [ %.0.copyload.i4324, %bb.i ], [ %.0.copyload.i4323, %bb.g ] ; 2 uses
  %.03595 = phi i32 [ %i.ax, %bb.i ], [ 0, %bb.g ] ; 3 uses
  %.0 = phi i32 [ %i.bc, %bb.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.at = icmp eq i32 %.03613, -4
  %.not3782 = icmp eq i32 %.03595, 0              ; 2 uses
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader4643
  %i.au = select i1 %.not3782, i32 %.0, i32 %.03595
  br label %bb.j

bb.i:                                             ; preds = %.preheader4643
  %i.av = icmp eq i32 %.03613, -8
  %i.aw = select i1 %i.av, i1 %.not3782, i1 false
  %i.ax = select i1 %i.aw, i32 %.0, i32 %.03595
  %i.ay = add i32 %.03627, %.03642
  %i.az = add i32 %.03627, 1
  %i.ba = and i32 %i.ay, %i.aj                    ; 2 uses
  %i.bb = mul i32 %i.ba, 20
  %i.bc = add i32 %i.bb, %.0.copyload.i4321       ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %.val4137 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val4137, i64 %i.bd
  %.0.copyload.i4324 = load i32, ptr %i.be, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4324) #7, !srcloc !19
  %.not3781 = icmp eq i32 %i.ag, %.0.copyload.i4324
  br i1 %.not3781, label %.loopexit4644, label %.preheader4643

bb.j:                                             ; preds = %bb.f, %bb.h
  %.1 = phi i32 [ %i.au, %bb.h ], [ 0, %bb.f ]
  %.val4136 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val4136, i64 %i.n
  %.0.copyload.i4325 = load i32, ptr %i.bf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4325) #7, !srcloc !19
  %i.bg = shl i32 %.0.copyload.i4325, 2
  %i.bh = add i32 %i.bg, 4
  %i.bi = mul i32 %.0.copyload.i4322, 3
  %.not3783 = icmp ult i32 %i.bh, %i.bi
  br i1 %.not3783, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = shl i32 %.0.copyload.i4322, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bk = xor i32 %.0.copyload.i4325, -1
  %i.bl = add i32 %.0.copyload.i4322, %i.bk
  %.val4135 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val4135, i64 %i.f
  %.0.copyload.i4326 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4326) #7, !srcloc !19
  %i.bn = sub i32 %i.bl, %.0.copyload.i4326
  %i.bo = lshr i32 %.0.copyload.i4322, 3
  %i.bp = icmp ugt i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.ah, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.13643 = phi i32 [ %i.bj, %bb.k ], [ %.0.copyload.i4322, %bb.l ]
  %i.bq = add i32 %.13643, -1
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 1
  %i.bt = or i64 %i.bs, %i.br                     ; 2 uses
  %i.bu = lshr i64 %i.bt, 2
  %i.bv = or i64 %i.bu, %i.bt                     ; 2 uses
  %i.bw = lshr i64 %i.bv, 4
  %i.bx = or i64 %i.bw, %i.bv                     ; 2 uses
  %i.by = lshr i64 %i.bx, 8
  %i.bz = or i64 %i.by, %i.bx                     ; 2 uses
  %i.ca = lshr i64 %i.bz, 16
  %i.cb = or i64 %i.ca, %i.bz
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = add i32 %i.cc, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.cd, i32 64) ; 2 uses
  %.val4268 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val4268, i64 %.pre4720
  store i32 %3, ptr %i.ce, align 1
  %i.cf = mul i32 %3, 20
  %i.cg = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cf) #7 ; 13 uses
  %.val4267 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val4267, i64 %i.h
  store i32 %i.cg, ptr %i.ch, align 1
  %.not3784 = icmp eq i32 %.0.copyload.i4321, 0
  br i1 %.not3784, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.val4297 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val4297, i64 %i.n
  store i64 0, ptr %i.ci, align 1
  %.val4134 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val4134, i64 %.pre4720
  %.0.copyload.i4327 = load i32, ptr %i.cj, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4327) #7, !srcloc !19
  %i.ck = mul i32 %.0.copyload.i4327, 20          ; 2 uses
  %i.cl = add i32 %i.ck, -20                      ; 2 uses
  %i.cm = udiv i32 %i.cl, 20
  %i.cn = add nuw nsw i32 %i.cm, 1
  %i.co = and i32 %i.cn, 7                        ; 7 uses
  %.not3796 = icmp eq i32 %i.co, 0
  br i1 %.not3796, label %.loopexit4637, label %.preheader4636

.preheader4636:                                   ; preds = %bb.n
  %i.cp = zext i32 %i.cg to i64
  %.val4266 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val4266, i64 %i.cp
  store i32 -4, ptr %i.cq, align 1
  %i.cr = add i32 %i.cg, 20                       ; 2 uses
  %.not3797 = icmp eq i32 %i.co, 1
  br i1 %.not3797, label %.loopexit4637, label %.preheader4636.1

.preheader4636.1:                                 ; preds = %.preheader4636
  %i.cs = zext i32 %i.cr to i64
  %.val4266.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val4266.1, i64 %i.cs
  store i32 -4, ptr %i.ct, align 1
  %i.cu = add i32 %i.cg, 40                       ; 2 uses
  %.not3797.1 = icmp eq i32 %i.co, 2
  br i1 %.not3797.1, label %.loopexit4637, label %.preheader4636.2

.preheader4636.2:                                 ; preds = %.preheader4636.1
  %i.cv = zext i32 %i.cu to i64
  %.val4266.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val4266.2, i64 %i.cv
  store i32 -4, ptr %i.cw, align 1
  %i.cx = add i32 %i.cg, 60                       ; 2 uses
  %.not3797.2 = icmp eq i32 %i.co, 3
  br i1 %.not3797.2, label %.loopexit4637, label %.preheader4636.3

.preheader4636.3:                                 ; preds = %.preheader4636.2
  %i.cy = zext i32 %i.cx to i64
  %.val4266.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val4266.3, i64 %i.cy
  store i32 -4, ptr %i.cz, align 1
  %i.da = add i32 %i.cg, 80                       ; 2 uses
  %.not3797.3 = icmp eq i32 %i.co, 4
  br i1 %.not3797.3, label %.loopexit4637, label %.preheader4636.4

.preheader4636.4:                                 ; preds = %.preheader4636.3
  %i.db = zext i32 %i.da to i64
  %.val4266.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val4266.4, i64 %i.db
  store i32 -4, ptr %i.dc, align 1
  %i.dd = add i32 %i.cg, 100                      ; 2 uses
  %.not3797.4 = icmp eq i32 %i.co, 5
  br i1 %.not3797.4, label %.loopexit4637, label %.preheader4636.5

.preheader4636.5:                                 ; preds = %.preheader4636.4
  %i.de = zext i32 %i.dd to i64
  %.val4266.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val4266.5, i64 %i.de
  store i32 -4, ptr %i.df, align 1
  %i.dg = add i32 %i.cg, 120                      ; 2 uses
  %.not3797.5 = icmp eq i32 %i.co, 6
  br i1 %.not3797.5, label %.loopexit4637, label %.preheader4636.6

.preheader4636.6:                                 ; preds = %.preheader4636.5
  %i.dh = zext i32 %i.dg to i64
  %.val4266.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val4266.6, i64 %i.dh
  store i32 -4, ptr %i.di, align 1
  %i.dj = add i32 %i.cg, 140
  br label %.loopexit4637

.loopexit4637:                                    ; preds = %.preheader4636, %.preheader4636.1, %.preheader4636.2, %.preheader4636.3, %.preheader4636.4, %.preheader4636.5, %.preheader4636.6, %bb.n
  %.13672 = phi i32 [ %i.cg, %bb.n ], [ %i.cr, %.preheader4636 ], [ %i.cu, %.preheader4636.1 ], [ %i.cx, %.preheader4636.2 ], [ %i.da, %.preheader4636.3 ], [ %i.dd, %.preheader4636.4 ], [ %i.dg, %.preheader4636.5 ], [ %i.dj, %.preheader4636.6 ]
  %i.dk = icmp ult i32 %i.cl, 140
  br i1 %i.dk, label %.loopexit4635, label %bb.o

bb.o:                                             ; preds = %.loopexit4637
  %i.dl = add i32 %i.ck, %i.cg
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.23673 = phi i32 [ %.13672, %bb.o ], [ %i.ec, %bb.p ] ; 2 uses
  %i.dm = zext i32 %.23673 to i64                 ; 8 uses
  %.val4265 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val4265, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 140
  store i32 -4, ptr %i.do, align 1
  %.val4264 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val4264, i64 %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 120
  store i32 -4, ptr %i.dq, align 1
  %.val4263 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val4263, i64 %i.dm
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 100
  store i32 -4, ptr %i.ds, align 1
  %.val4262 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val4262, i64 %i.dm
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  store i32 -4, ptr %i.du, align 1
  %.val4261 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val4261, i64 %i.dm
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 60
  store i32 -4, ptr %i.dw, align 1
  %.val4260 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val4260, i64 %i.dm
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store i32 -4, ptr %i.dy, align 1
  %.val4259 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val4259, i64 %i.dm
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  store i32 -4, ptr %i.ea, align 1
  %.val4258 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val4258, i64 %i.dm
  store i32 -4, ptr %i.eb, align 1
  %i.ec = add i32 %.23673, 160                    ; 2 uses
  %.not3798 = icmp eq i32 %i.ec, %i.dl
  br i1 %.not3798, label %.loopexit4635, label %bb.p

bb.q:                                             ; preds = %bb.m
  %i.ed = mul i32 %.0.copyload.i4322, 20          ; 2 uses
  %i.ee = add i32 %i.ed, %.0.copyload.i4321
  %.val4296 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val4296, i64 %i.n
  store i64 0, ptr %i.ef, align 1
  %.val4133 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %.val4133, i64 %.pre4720
  %.0.copyload.i4328 = load i32, ptr %i.eg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4328) #7, !srcloc !19
  %.not3785 = icmp eq i32 %.0.copyload.i4328, 0
  br i1 %.not3785, label %.loopexit4640, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val4132 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val4132, i64 %i.h
  %.0.copyload.i4329 = load i32, ptr %i.eh, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4329) #7, !srcloc !19
  %i.ei = mul i32 %.0.copyload.i4328, 20          ; 2 uses
  %i.ej = add i32 %i.ei, -20                      ; 2 uses
  %i.ek = udiv i32 %i.ej, 20
  %i.el = add nuw nsw i32 %i.ek, 1
  %i.em = and i32 %i.el, 7                        ; 7 uses
  %.not3786 = icmp eq i32 %i.em, 0
  br i1 %.not3786, label %.loopexit4642, label %.preheader4641

.preheader4641:                                   ; preds = %bb.r
  %i.en = zext i32 %.0.copyload.i4329 to i64
  %.val4257 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val4257, i64 %i.en
  store i32 -4, ptr %i.eo, align 1
  %i.ep = add i32 %.0.copyload.i4329, 20          ; 2 uses
  %.not3787 = icmp eq i32 %i.em, 1
  br i1 %.not3787, label %.loopexit4642, label %.preheader4641.1

.preheader4641.1:                                 ; preds = %.preheader4641
  %i.eq = zext i32 %i.ep to i64
  %.val4257.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val4257.1, i64 %i.eq
  store i32 -4, ptr %i.er, align 1
  %i.es = add i32 %.0.copyload.i4329, 40          ; 2 uses
  %.not3787.1 = icmp eq i32 %i.em, 2
  br i1 %.not3787.1, label %.loopexit4642, label %.preheader4641.2

.preheader4641.2:                                 ; preds = %.preheader4641.1
  %i.et = zext i32 %i.es to i64
  %.val4257.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val4257.2, i64 %i.et
  store i32 -4, ptr %i.eu, align 1
  %i.ev = add i32 %.0.copyload.i4329, 60          ; 2 uses
  %.not3787.2 = icmp eq i32 %i.em, 3
  br i1 %.not3787.2, label %.loopexit4642, label %.preheader4641.3

.preheader4641.3:                                 ; preds = %.preheader4641.2
  %i.ew = zext i32 %i.ev to i64
  %.val4257.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val4257.3, i64 %i.ew
  store i32 -4, ptr %i.ex, align 1
  %i.ey = add i32 %.0.copyload.i4329, 80          ; 2 uses
  %.not3787.3 = icmp eq i32 %i.em, 4
  br i1 %.not3787.3, label %.loopexit4642, label %.preheader4641.4

.preheader4641.4:                                 ; preds = %.preheader4641.3
  %i.ez = zext i32 %i.ey to i64
  %.val4257.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val4257.4, i64 %i.ez
  store i32 -4, ptr %i.fa, align 1
  %i.fb = add i32 %.0.copyload.i4329, 100         ; 2 uses
end_hunk_15
begin_hunk_16_@w2c_hermes_hermes0x3A0x3ALowerAllocObject0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %.13614 = phi i32 [ %i.cg, %.loopexit4637 ], [ %.0.copyload.i4345, %.loopexit4639 ], [ %i.cg, %bb.p ] ; 2 uses
  %i.io = add i32 %.33645, -1                     ; 2 uses
  %i.ip = lshr i32 %i.ag, 4
  %i.iq = lshr i32 %i.ag, 9
  %i.ir = xor i32 %i.ip, %i.iq
  %i.is = and i32 %i.io, %i.ir                    ; 2 uses
  %i.it = mul i32 %i.is, 20
  %i.iu = add i32 %i.it, %.13614                  ; 3 uses
  %i.iv = zext i32 %i.iu to i64
  %.val4114 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val4114, i64 %i.iv
  %.0.copyload.i4347 = load i32, ptr %i.iw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4347) #7, !srcloc !19
  %.not3799 = icmp eq i32 %.0.copyload.i4347, %i.ag
  br i1 %.not3799, label %.loopexit4634, label %.preheader4633

.preheader4633:                                   ; preds = %.loopexit4635, %bb.ag
  %.43675 = phi i32 [ %.0.copyload.i4348, %bb.ag ], [ %.0.copyload.i4347, %.loopexit4635 ] ; 2 uses
  %.13655 = phi i32 [ %i.jb, %bb.ag ], [ 0, %.loopexit4635 ] ; 3 uses
  %.03604 = phi i32 [ %i.je, %bb.ag ], [ %i.is, %.loopexit4635 ]
  %.13596 = phi i32 [ %i.jd, %bb.ag ], [ 1, %.loopexit4635 ] ; 2 uses
  %.4 = phi i32 [ %i.jg, %bb.ag ], [ %i.iu, %.loopexit4635 ] ; 2 uses
  %i.ix = icmp eq i32 %.43675, -4
  %.not3802 = icmp eq i32 %.13655, 0              ; 2 uses
  br i1 %i.ix, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.preheader4633
  %i.iy = select i1 %.not3802, i32 %.4, i32 %.13655
  br label %bb.ah

bb.ag:                                            ; preds = %.preheader4633
  %i.iz = icmp eq i32 %.43675, -8
  %i.ja = select i1 %i.iz, i1 %.not3802, i1 false
  %i.jb = select i1 %i.ja, i32 %.4, i32 %.13655
  %i.jc = add i32 %.13596, %.03604
  %i.jd = add i32 %.13596, 1
  %i.je = and i32 %i.jc, %i.io                    ; 2 uses
  %i.jf = mul i32 %i.je, 20
  %i.jg = add i32 %i.jf, %.13614                  ; 3 uses
  %i.jh = zext i32 %i.jg to i64
  %.val4113 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ji = getelementptr inbounds nuw i8, ptr %.val4113, i64 %i.jh
  %.0.copyload.i4348 = load i32, ptr %i.ji, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4348) #7, !srcloc !19
  %.not3801 = icmp eq i32 %i.ag, %.0.copyload.i4348
  br i1 %.not3801, label %.loopexit4634, label %.preheader4633

bb.ah:                                            ; preds = %bb.l, %bb.af
  %.6 = phi i32 [ %i.iy, %bb.af ], [ %.1, %bb.l ] ; 2 uses
  %i.jj = zext i32 %.6 to i64
  %.val4112 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.val4112, i64 %i.jj
  %.0.copyload.i4349 = load i32, ptr %i.jk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4349) #7, !srcloc !19
  br label %.loopexit4634

.loopexit4634:                                    ; preds = %bb.ag, %.loopexit4635, %bb.ah
  %.13583 = phi i32 [ %.0.copyload.i4349, %bb.ah ], [ %i.ag, %.loopexit4635 ], [ %i.ag, %bb.ag ]
  %.7 = phi i32 [ %.6, %bb.ah ], [ %i.iu, %.loopexit4635 ], [ %i.jg, %bb.ag ]
  %.val4111 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val4111, i64 %i.n
  %.0.copyload.i4350 = load i32, ptr %i.jl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4350) #7, !srcloc !19
  %i.jm = add i32 %.0.copyload.i4350, 1
  %.val4238 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val4238, i64 %i.n
  store i32 %i.jm, ptr %i.jn, align 1
  %.not3803 = icmp eq i32 %.13583, -4
  br i1 %.not3803, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit4634
  %.val4110 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jo = getelementptr inbounds nuw i8, ptr %.val4110, i64 %i.f
  %.0.copyload.i4351 = load i32, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4351) #7, !srcloc !19
  %i.jp = add i32 %.0.copyload.i4351, -1
  %.val4237 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.val4237, i64 %i.f
  store i32 %i.jp, ptr %i.jq, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit4634
  %i.jr = zext i32 %.7 to i64                     ; 4 uses
  %.val4293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.js = getelementptr inbounds nuw i8, ptr %.val4293, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store i64 0, ptr %i.jt, align 1
  %.val4236 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ju = getelementptr inbounds nuw i8, ptr %.val4236, i64 %i.jr
  store i32 %i.ag, ptr %i.ju, align 1
  %.val4292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.val4292, i64 %i.jr
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store i64 0, ptr %i.jw, align 1
  br label %.loopexit4644

.loopexit4644:                                    ; preds = %bb.i, %bb.g, %bb.aj
  %.pre-phi4714 = phi i64 [ %i.jr, %bb.aj ], [ %i.aq, %bb.g ], [ %i.bd, %bb.i ] ; 5 uses
  %i.jx = add nuw nsw i64 %.pre-phi4714, 4        ; 5 uses
  %.val4109 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.val4109, i64 %i.jx
  %.0.copyload.i4352 = load i32, ptr %i.jy, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4352) #7, !srcloc !19
  %i.jz = add nuw nsw i64 %.pre-phi4714, 16       ; 6 uses
  %.val4108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val4108, i64 %i.jz
  %.0.copyload.i4353 = load i32, ptr %i.ka, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4353) #7, !srcloc !19
  %.not3804 = icmp eq i32 %.0.copyload.i4353, 0
  br i1 %.not3804, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %.loopexit4644
  %i.kb = add i32 %.0.copyload.i4353, -1          ; 2 uses
  %i.kc = and i32 %i.kb, %i.u                     ; 2 uses
  %i.kd = shl i32 %i.kc, 5
  %i.ke = add i32 %i.kd, %.0.copyload.i4352       ; 3 uses
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %.val4107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.val4107, i64 %i.kf
  %.0.copyload.i4354 = load i32, ptr %i.kg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4354) #7, !srcloc !19
  %i.kh = icmp eq i32 %.03592, %.0.copyload.i4354
  br i1 %i.kh, label %.loopexit4632, label %.preheader4631

.preheader4631:                                   ; preds = %bb.ak, %bb.am
  %.53676 = phi i32 [ %i.kr, %bb.am ], [ %i.ke, %bb.ak ] ; 2 uses
  %.23656 = phi i32 [ %i.kp, %bb.am ], [ %i.kc, %bb.ak ]
  %.43646 = phi i32 [ %.0.copyload.i4355, %bb.am ], [ %.0.copyload.i4354, %bb.ak ] ; 2 uses
  %.63633 = phi i32 [ %i.km, %bb.am ], [ 0, %bb.ak ] ; 3 uses
  %.23597 = phi i32 [ %i.ko, %bb.am ], [ 1, %bb.ak ] ; 2 uses
  %i.ki = icmp eq i32 %.43646, -4
  %.not3807 = icmp eq i32 %.63633, 0              ; 2 uses
  br i1 %i.ki, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.preheader4631
  %i.kj = select i1 %.not3807, i32 %.53676, i32 %.63633
  br label %bb.an

bb.am:                                            ; preds = %.preheader4631
  %i.kk = icmp eq i32 %.43646, -8
  %i.kl = select i1 %i.kk, i1 %.not3807, i1 false
  %i.km = select i1 %i.kl, i32 %.53676, i32 %.63633
  %i.kn = add i32 %.23597, %.23656
  %i.ko = add i32 %.23597, 1
  %i.kp = and i32 %i.kn, %i.kb                    ; 2 uses
  %i.kq = shl i32 %i.kp, 5
  %i.kr = add i32 %i.kq, %.0.copyload.i4352       ; 3 uses
  %i.ks = zext i32 %i.kr to i64                   ; 2 uses
  %.val4106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kt = getelementptr inbounds nuw i8, ptr %.val4106, i64 %i.ks
  %.0.copyload.i4355 = load i32, ptr %i.kt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4355) #7, !srcloc !19
  %.not3806 = icmp eq i32 %.03592, %.0.copyload.i4355
  br i1 %.not3806, label %.loopexit4632, label %.preheader4631

bb.an:                                            ; preds = %.loopexit4644, %bb.al
  %.63677 = phi i32 [ %i.kj, %bb.al ], [ 0, %.loopexit4644 ]
  %i.ku = add nuw nsw i64 %.pre-phi4714, 8        ; 7 uses
  %.val4105 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %.val4105, i64 %i.ku
  %.0.copyload.i4356 = load i32, ptr %i.kv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4356) #7, !srcloc !19
  %i.kw = shl i32 %.0.copyload.i4356, 2
  %i.kx = add i32 %i.kw, 4
  %i.ky = mul i32 %.0.copyload.i4353, 3
  %.not3808 = icmp ult i32 %i.kx, %i.ky
  br i1 %.not3808, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kz = shl i32 %.0.copyload.i4353, 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.la = xor i32 %.0.copyload.i4356, -1
  %i.lb = add i32 %.0.copyload.i4353, %i.la
  %.val4104 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw i8, ptr %.val4104, i64 %.pre-phi4714
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  %.0.copyload.i4357 = load i32, ptr %i.ld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4357) #7, !srcloc !19
  %i.le = sub i32 %i.lb, %.0.copyload.i4357
  %i.lf = lshr i32 %.0.copyload.i4353, 3
  %i.lg = icmp ugt i32 %i.le, %i.lf
  br i1 %i.lg, label %bb.bh, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.33657 = phi i32 [ %i.kz, %bb.ao ], [ %.0.copyload.i4353, %bb.ap ]
  %i.lh = add i32 %.33657, -1
  %i.li = zext i32 %i.lh to i64                   ; 2 uses
  %i.lj = lshr i64 %i.li, 1
  %i.lk = or i64 %i.lj, %i.li                     ; 2 uses
  %i.ll = lshr i64 %i.lk, 2
  %i.lm = or i64 %i.ll, %i.lk                     ; 2 uses
  %i.ln = lshr i64 %i.lm, 4
  %i.lo = or i64 %i.ln, %i.lm                     ; 2 uses
  %i.lp = lshr i64 %i.lo, 8
  %i.lq = or i64 %i.lp, %i.lo                     ; 2 uses
  %i.lr = lshr i64 %i.lq, 16
  %i.ls = or i64 %i.lr, %i.lq
  %i.lt = trunc nuw i64 %i.ls to i32
  %i.lu = add i32 %i.lt, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.lu, i32 64) ; 2 uses
  %.val4235 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %.val4235, i64 %i.jz
  store i32 %4, ptr %i.lv, align 1
  %i.lw = shl i32 %4, 5
  %i.lx = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.lw) #7 ; 13 uses
  %.val4234 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %.val4234, i64 %i.jx
  store i32 %i.lx, ptr %i.ly, align 1
  %.not3809 = icmp eq i32 %.0.copyload.i4352, 0
  br i1 %.not3809, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %.val4291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lz = getelementptr inbounds nuw i8, ptr %.val4291, i64 %i.ku
  store i64 0, ptr %i.lz, align 1
  %.val4103 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %.val4103, i64 %i.jz
  %.0.copyload.i4358 = load i32, ptr %i.ma, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4358) #7, !srcloc !19
  %i.mb = add i32 %.0.copyload.i4358, 134217727
  %i.mc = and i32 %i.mb, 134217727
  %i.md = and i32 %.0.copyload.i4358, 7           ; 7 uses
  %.not3820 = icmp eq i32 %i.md, 0
  br i1 %.not3820, label %.loopexit4625, label %.preheader4624

.preheader4624:                                   ; preds = %bb.ar
  %i.me = zext i32 %i.lx to i64
  %.val4233 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mf = getelementptr inbounds nuw i8, ptr %.val4233, i64 %i.me
  store i32 -4, ptr %i.mf, align 1
  %i.mg = add i32 %i.lx, 32                       ; 2 uses
  %.not3821 = icmp eq i32 %i.md, 1
  br i1 %.not3821, label %.loopexit4625, label %.preheader4624.1

.preheader4624.1:                                 ; preds = %.preheader4624
  %i.mh = zext i32 %i.mg to i64
  %.val4233.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mi = getelementptr inbounds nuw i8, ptr %.val4233.1, i64 %i.mh
  store i32 -4, ptr %i.mi, align 1
  %i.mj = add i32 %i.lx, 64                       ; 2 uses
  %.not3821.1 = icmp eq i32 %i.md, 2
  br i1 %.not3821.1, label %.loopexit4625, label %.preheader4624.2

.preheader4624.2:                                 ; preds = %.preheader4624.1
  %i.mk = zext i32 %i.mj to i64
  %.val4233.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ml = getelementptr inbounds nuw i8, ptr %.val4233.2, i64 %i.mk
  store i32 -4, ptr %i.ml, align 1
  %i.mm = add i32 %i.lx, 96                       ; 2 uses
  %.not3821.2 = icmp eq i32 %i.md, 3
  br i1 %.not3821.2, label %.loopexit4625, label %.preheader4624.3

.preheader4624.3:                                 ; preds = %.preheader4624.2
  %i.mn = zext i32 %i.mm to i64
  %.val4233.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %.val4233.3, i64 %i.mn
  store i32 -4, ptr %i.mo, align 1
  %i.mp = add i32 %i.lx, 128                      ; 2 uses
  %.not3821.3 = icmp eq i32 %i.md, 4
  br i1 %.not3821.3, label %.loopexit4625, label %.preheader4624.4

.preheader4624.4:                                 ; preds = %.preheader4624.3
  %i.mq = zext i32 %i.mp to i64
  %.val4233.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mr = getelementptr inbounds nuw i8, ptr %.val4233.4, i64 %i.mq
  store i32 -4, ptr %i.mr, align 1
  %i.ms = add i32 %i.lx, 160                      ; 2 uses
  %.not3821.4 = icmp eq i32 %i.md, 5
  br i1 %.not3821.4, label %.loopexit4625, label %.preheader4624.5

.preheader4624.5:                                 ; preds = %.preheader4624.4
  %i.mt = zext i32 %i.ms to i64
  %.val4233.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mu = getelementptr inbounds nuw i8, ptr %.val4233.5, i64 %i.mt
  store i32 -4, ptr %i.mu, align 1
  %i.mv = add i32 %i.lx, 192                      ; 2 uses
  %.not3821.5 = icmp eq i32 %i.md, 6
  br i1 %.not3821.5, label %.loopexit4625, label %.preheader4624.6

.preheader4624.6:                                 ; preds = %.preheader4624.5
  %i.mw = zext i32 %i.mv to i64
  %.val4233.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mx = getelementptr inbounds nuw i8, ptr %.val4233.6, i64 %i.mw
  store i32 -4, ptr %i.mx, align 1
  %i.my = add i32 %i.lx, 224
  br label %.loopexit4625

.loopexit4625:                                    ; preds = %.preheader4624, %.preheader4624.1, %.preheader4624.2, %.preheader4624.3, %.preheader4624.4, %.preheader4624.5, %.preheader4624.6, %bb.ar
  %.83679 = phi i32 [ %i.lx, %bb.ar ], [ %i.mg, %.preheader4624 ], [ %i.mj, %.preheader4624.1 ], [ %i.mm, %.preheader4624.2 ], [ %i.mp, %.preheader4624.3 ], [ %i.ms, %.preheader4624.4 ], [ %i.mv, %.preheader4624.5 ], [ %i.my, %.preheader4624.6 ]
  %i.mz = icmp samesign ult i32 %i.mc, 7
  br i1 %i.mz, label %.loopexit4623, label %bb.as

bb.as:                                            ; preds = %.loopexit4625
  %i.na = shl i32 %.0.copyload.i4358, 5
  %i.nb = add i32 %i.na, %i.lx
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %.93680 = phi i32 [ %.83679, %bb.as ], [ %i.ns, %bb.at ] ; 2 uses
  %i.nc = zext i32 %.93680 to i64                 ; 8 uses
  %.val4232 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nd = getelementptr inbounds nuw i8, ptr %.val4232, i64 %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 224
  store i32 -4, ptr %i.ne, align 1
  %.val4231 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nf = getelementptr inbounds nuw i8, ptr %.val4231, i64 %i.nc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 192
  store i32 -4, ptr %i.ng, align 1
  %.val4230 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nh = getelementptr inbounds nuw i8, ptr %.val4230, i64 %i.nc
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 160
  store i32 -4, ptr %i.ni, align 1
  %.val4229 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nj = getelementptr inbounds nuw i8, ptr %.val4229, i64 %i.nc
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 128
  store i32 -4, ptr %i.nk, align 1
  %.val4228 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nl = getelementptr inbounds nuw i8, ptr %.val4228, i64 %i.nc
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 96
  store i32 -4, ptr %i.nm, align 1
  %.val4227 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nn = getelementptr inbounds nuw i8, ptr %.val4227, i64 %i.nc
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  store i32 -4, ptr %i.no, align 1
  %.val4226 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.np = getelementptr inbounds nuw i8, ptr %.val4226, i64 %i.nc
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 32
  store i32 -4, ptr %i.nq, align 1
  %.val4225 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nr = getelementptr inbounds nuw i8, ptr %.val4225, i64 %i.nc
  store i32 -4, ptr %i.nr, align 1
  %i.ns = add i32 %.93680, 256                    ; 2 uses
  %.not3822 = icmp eq i32 %i.ns, %i.nb
  br i1 %.not3822, label %.loopexit4623, label %bb.at

bb.au:                                            ; preds = %bb.aq
  %i.nt = shl i32 %.0.copyload.i4353, 5           ; 2 uses
  %i.nu = add i32 %i.nt, %.0.copyload.i4352
  %.val4290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nv = getelementptr inbounds nuw i8, ptr %.val4290, i64 %i.ku
  store i64 0, ptr %i.nv, align 1
  %.val4102 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nw = getelementptr inbounds nuw i8, ptr %.val4102, i64 %i.jz
  %.0.copyload.i4359 = load i32, ptr %i.nw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4359) #7, !srcloc !19
  %.not3810 = icmp eq i32 %.0.copyload.i4359, 0
  br i1 %.not3810, label %.loopexit4628, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val4101 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nx = getelementptr inbounds nuw i8, ptr %.val4101, i64 %i.jx
  %.0.copyload.i4360 = load i32, ptr %i.nx, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4360) #7, !srcloc !19
  %i.ny = and i32 %.0.copyload.i4359, 7           ; 7 uses
  %.not3811 = icmp eq i32 %i.ny, 0
  br i1 %.not3811, label %.loopexit4630, label %.preheader4629

.preheader4629:                                   ; preds = %bb.av
  %i.nz = zext i32 %.0.copyload.i4360 to i64
  %.val4224 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oa = getelementptr inbounds nuw i8, ptr %.val4224, i64 %i.nz
  store i32 -4, ptr %i.oa, align 1
  %i.ob = add i32 %.0.copyload.i4360, 32          ; 2 uses
  %.not3812 = icmp eq i32 %i.ny, 1
  br i1 %.not3812, label %.loopexit4630, label %.preheader4629.1

.preheader4629.1:                                 ; preds = %.preheader4629
  %i.oc = zext i32 %i.ob to i64
  %.val4224.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.od = getelementptr inbounds nuw i8, ptr %.val4224.1, i64 %i.oc
  store i32 -4, ptr %i.od, align 1
  %i.oe = add i32 %.0.copyload.i4360, 64          ; 2 uses
  %.not3812.1 = icmp eq i32 %i.ny, 2
  br i1 %.not3812.1, label %.loopexit4630, label %.preheader4629.2

.preheader4629.2:                                 ; preds = %.preheader4629.1
  %i.of = zext i32 %i.oe to i64
  %.val4224.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.og = getelementptr inbounds nuw i8, ptr %.val4224.2, i64 %i.of
  store i32 -4, ptr %i.og, align 1
  %i.oh = add i32 %.0.copyload.i4360, 96          ; 2 uses
  %.not3812.2 = icmp eq i32 %i.ny, 3
  br i1 %.not3812.2, label %.loopexit4630, label %.preheader4629.3

.preheader4629.3:                                 ; preds = %.preheader4629.2
  %i.oi = zext i32 %i.oh to i64
  %.val4224.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oj = getelementptr inbounds nuw i8, ptr %.val4224.3, i64 %i.oi
  store i32 -4, ptr %i.oj, align 1
  %i.ok = add i32 %.0.copyload.i4360, 128         ; 2 uses
  %.not3812.3 = icmp eq i32 %i.ny, 4
  br i1 %.not3812.3, label %.loopexit4630, label %.preheader4629.4

.preheader4629.4:                                 ; preds = %.preheader4629.3
  %i.ol = zext i32 %i.ok to i64
  %.val4224.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.om = getelementptr inbounds nuw i8, ptr %.val4224.4, i64 %i.ol
  store i32 -4, ptr %i.om, align 1
  %i.on = add i32 %.0.copyload.i4360, 160         ; 2 uses
  %.not3812.4 = icmp eq i32 %i.ny, 5
  br i1 %.not3812.4, label %.loopexit4630, label %.preheader4629.5

.preheader4629.5:                                 ; preds = %.preheader4629.4
  %i.oo = zext i32 %i.on to i64
end_hunk_16
