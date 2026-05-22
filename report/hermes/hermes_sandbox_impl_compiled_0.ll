inline.NumInlined: 15600
inline.NumDeleted: 36
begin_hunk_0_@w2c_hermes_hermes0x3A0x3ACodeMotion0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %i.xj = getelementptr inbounds nuw i8, ptr %.val7506, i64 %i.my
  store i32 %i.xi, ptr %i.xj, align 1
  br label %.loopexit8182

bb.bg:                                            ; preds = %bb.be, %bb.bc
  %.val7367 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.xk = getelementptr inbounds nuw i8, ptr %.val7367, i64 %i.mz
  %.0.copyload.i7749 = load i32, ptr %i.xk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7749) #16, !srcloc !22
  %.not6892 = icmp ult i32 %.0.copyload.i7746, %.0.copyload.i7749
  br i1 %.not6892, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.xl = add nuw i32 %.0.copyload.i7746, 1
  %.val7505 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.xm = getelementptr inbounds nuw i8, ptr %.val7505, i64 %i.nb
  store i32 %i.xl, ptr %i.xm, align 1
  %i.xn = zext i32 %i.wy to i64
  %.val7504 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.xo = getelementptr inbounds nuw i8, ptr %.val7504, i64 %i.xn
  store i32 %.0.copyload.i7731, ptr %i.xo, align 1
  br label %.loopexit8182

bb.bi:                                            ; preds = %bb.bg, %.loopexit8185
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3Ainsert_imp_big0x28void0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.nc, i32 noundef %i.ez, i32 noundef %.0.copyload.i7731) #16
  br label %.loopexit8182

.loopexit8182:                                    ; preds = %.preheader8181, %.loopexit8184, %bb.bi, %bb.bh, %bb.bf
  %i.xp = add i32 %.106530, 4                     ; 2 uses
  %i.xq = icmp eq i32 %i.xp, %i.vd
  br i1 %i.xq, label %.loopexit8180, label %.preheader8179

.preheader8179:                                   ; preds = %.loopexit8182, %bb.bj
  %.116531 = phi i32 [ %i.xu, %bb.bj ], [ %i.xp, %.loopexit8182 ] ; 4 uses
  %i.xr = zext i32 %.116531 to i64
  %.val7366 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.xs = getelementptr inbounds nuw i8, ptr %.val7366, i64 %i.xr
  %.0.copyload.i7750 = load i32, ptr %i.xs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7750) #16, !srcloc !22
  %i.xt = icmp ugt i32 %.0.copyload.i7750, -3
  br i1 %i.xt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.preheader8179
  %i.xu = add i32 %.116531, 4                     ; 2 uses
  %.not6894 = icmp eq i32 %i.xu, %i.vd
  br i1 %.not6894, label %.loopexit8180, label %.preheader8179

bb.bk:                                            ; preds = %.preheader8179
  %.not6893 = icmp eq i32 %i.vd, %.116531
  br i1 %.not6893, label %.loopexit8180, label %.preheader8195

.loopexit8180:                                    ; preds = %bb.aw, %bb.bk, %.loopexit8182, %bb.bj, %.loopexit8198, %.loopexit8202, %.loopexit8205
  %i.xv = add nuw i32 %.16487, 1                  ; 2 uses
  %.not6895 = icmp eq i32 %i.xv, %i.sc
  br i1 %.not6895, label %w2c_hermes_hermes0x3A0x3ABasicBlock0x3A0x3AgetTerminator0x280x29.exit7709.thread, label %.preheader8215

w2c_hermes_hermes0x3A0x3ABasicBlock0x3A0x3AgetTerminator0x280x29.exit7709.thread: ; preds = %.loopexit8180, %w2c_hermes_hermes0x3A0x3ABasicBlock0x3A0x3AgetTerminator0x280x29.exit7702, %bb.al, %bb.am
  %.val7365 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.xw = getelementptr inbounds nuw i8, ptr %.val7365, i64 %i.hs
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 12
  %.0.copyload.i7751 = load i32, ptr %i.xx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7751) #16, !srcloc !22
  %.val7364 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.xy = getelementptr inbounds nuw i8, ptr %.val7364, i64 %i.my
  %.0.copyload.i7752 = load i32, ptr %i.xy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7752) #16, !srcloc !22
  %i.xz = icmp eq i32 %.0.copyload.i7751, %.0.copyload.i7752
  br i1 %i.xz, label %.loopexit8214, label %bb.bl

bb.bl:                                            ; preds = %w2c_hermes_hermes0x3A0x3ABasicBlock0x3A0x3AgetTerminator0x280x29.exit7709.thread
  %.val7363 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.ya = getelementptr inbounds nuw i8, ptr %.val7363, i64 %i.hs
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 188
  %.0.copyload.i7753 = load i32, ptr %i.yb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7753) #16, !srcloc !22
  %.val7629 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.yc = getelementptr inbounds nuw i8, ptr %.val7629, i64 %i.md
  %.0.copyload.i7754 = load i8, ptr %i.yc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i7754) #16, !srcloc !33
  %i.yd = and i8 %.0.copyload.i7754, 1
  %.not6896 = icmp eq i8 %i.yd, 0                 ; 2 uses
  %i.ye = select i1 %.not6896, i32 %.0.copyload.i7753, i32 16 ; 2 uses
  %.not6897 = icmp eq i32 %i.ye, 0
  br i1 %.not6897, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val7362 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.yf = getelementptr inbounds nuw i8, ptr %.val7362, i64 %i.mv
  %.0.copyload.i7755 = load i32, ptr %i.yf, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7755) #16, !srcloc !22
  %.val7361 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.yg = getelementptr inbounds nuw i8, ptr %.val7361, i64 %i.mb
  %.0.copyload.i7756 = load i32, ptr %i.yg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7756) #16, !srcloc !22
  %i.yh = select i1 %.not6896, i32 %.0.copyload.i7756, i32 %i.ms ; 2 uses
  %i.yi = add i32 %i.ye, -1                       ; 2 uses
  %i.yj = lshr i32 %.0.copyload.i7755, 4
  %i.yk = lshr i32 %.0.copyload.i7755, 9
  %i.yl = xor i32 %i.yj, %i.yk
  %i.ym = and i32 %i.yl, %i.yi                    ; 2 uses
  %i.yn = shl i32 %i.ym, 5
  %i.yo = add i32 %i.yh, %i.yn                    ; 2 uses
  %i.yp = zext i32 %i.yo to i64
  %.val7360 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.yq = getelementptr inbounds nuw i8, ptr %.val7360, i64 %i.yp
  %.0.copyload.i7757 = load i32, ptr %i.yq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7757) #16, !srcloc !22
  %i.yr = icmp eq i32 %.0.copyload.i7755, %.0.copyload.i7757
  br i1 %i.yr, label %.loopexit8214, label %.preheader8213

.preheader8213:                                   ; preds = %bb.bm, %bb.bo
  %.86622 = phi i32 [ %.0.copyload.i7758, %bb.bo ], [ %.0.copyload.i7757, %bb.bm ] ; 2 uses
  %.66598 = phi i32 [ %i.yw, %bb.bo ], [ 0, %bb.bm ] ; 3 uses
  %.16558 = phi i32 [ %i.yy, %bb.bo ], [ 1, %bb.bm ] ; 2 uses
  %.06464 = phi i32 [ %i.zb, %bb.bo ], [ %i.yo, %bb.bm ] ; 2 uses
  %.16 = phi i32 [ %i.yz, %bb.bo ], [ %i.ym, %bb.bm ]
  %i.ys = icmp eq i32 %.86622, -4
  %.not6900 = icmp eq i32 %.66598, 0              ; 2 uses
  br i1 %i.ys, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.preheader8213
  %i.yt = select i1 %.not6900, i32 %.06464, i32 %.66598
  br label %bb.bp

bb.bo:                                            ; preds = %.preheader8213
  %i.yu = icmp eq i32 %.86622, -8
  %i.yv = select i1 %i.yu, i1 %.not6900, i1 false
  %i.yw = select i1 %i.yv, i32 %.06464, i32 %.66598
  %i.yx = add i32 %.16, %.16558
  %i.yy = add i32 %.16558, 1
  %i.yz = and i32 %i.yx, %i.yi                    ; 2 uses
  %i.za = shl i32 %i.yz, 5
  %i.zb = add i32 %i.za, %i.yh                    ; 2 uses
  %i.zc = zext i32 %i.zb to i64
  %.val7359 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.zd = getelementptr inbounds nuw i8, ptr %.val7359, i64 %i.zc
  %.0.copyload.i7758 = load i32, ptr %i.zd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7758) #16, !srcloc !22
  %.not6899 = icmp eq i32 %.0.copyload.i7755, %.0.copyload.i7758
  br i1 %.not6899, label %.loopexit8214, label %.preheader8213

bb.bp:                                            ; preds = %bb.bl, %bb.bn
  %.126532 = phi i32 [ %i.yt, %bb.bn ], [ 0, %bb.bl ]
  %.val7358 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.ze = getelementptr inbounds nuw i8, ptr %.val7358, i64 %i.ne
  %.0.copyload.i7759 = load i32, ptr %i.ze, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7759) #16, !srcloc !22
  %i.zf = lshr i32 %.0.copyload.i7759, 1          ; 2 uses
  %i.zg = shl i32 %i.zf, 2
  %i.zh = add i32 %i.zg, 4
  %.val7357 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.zi = getelementptr inbounds nuw i8, ptr %.val7357, i64 %i.nf
  %.0.copyload.i7760 = load i32, ptr %i.zi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7760) #16, !srcloc !22
  %i.zj = and i32 %.0.copyload.i7759, 1           ; 2 uses
  %.not6901 = icmp eq i32 %i.zj, 0
  %i.zk = select i1 %.not6901, i32 %.0.copyload.i7760, i32 16 ; 5 uses
  %i.zl = mul i32 %i.zk, 3
  %.not6902 = icmp ult i32 %i.zh, %i.zl
  br i1 %.not6902, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.zm = shl i32 %i.zk, 1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.zn = xor i32 %i.zf, -1
  %i.zo = add i32 %i.zk, %i.zn
  %.val7356 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.zp = getelementptr inbounds nuw i8, ptr %.val7356, i64 %i.ne
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  %.0.copyload.i7761 = load i32, ptr %i.zq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7761) #16, !srcloc !22
  %i.zr = sub i32 %i.zo, %.0.copyload.i7761
  %i.zs = lshr i32 %i.zk, 3
  %i.zt = icmp ugt i32 %i.zr, %i.zs
  br i1 %i.zt, label %.loopexit8212, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.17 = phi i32 [ %i.zm, %bb.bq ], [ %i.zk, %bb.br ] ; 3 uses
  %i.zu = load i32, ptr %i.a, align 8, !tbaa !19  ; 5 uses
  %i.zv = add i32 %i.zu, -512                     ; 5 uses
  store i32 %i.zv, ptr %i.a, align 8, !tbaa !19
  %i.zw = icmp ugt i32 %.17, 15
  br i1 %i.zw, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.zx = add i32 %.17, -1
  %i.zy = zext i32 %i.zx to i64                   ; 2 uses
  %i.zz = lshr i64 %i.zy, 1
  %i.aaa = or i64 %i.zz, %i.zy                    ; 2 uses
  %i.aab = lshr i64 %i.aaa, 2
  %i.aac = or i64 %i.aab, %i.aaa                  ; 2 uses
  %i.aad = lshr i64 %i.aac, 4
  %i.aae = or i64 %i.aad, %i.aac                  ; 2 uses
  %i.aaf = lshr i64 %i.aae, 8
  %i.aag = or i64 %i.aaf, %i.aae                  ; 2 uses
  %i.aah = lshr i64 %i.aag, 16
  %i.aai = or i64 %i.aah, %i.aag
  %i.aaj = trunc nuw i64 %i.aai to i32
  %i.aak = add i32 %i.aaj, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.aak, i32 64)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.18 = phi i32 [ %3, %bb.bt ], [ %.17, %bb.bs ] ; 6 uses
  %.val7355 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aal = getelementptr inbounds nuw i8, ptr %.val7355, i64 %i.ne
  %.0.copyload.i7762 = load i32, ptr %i.aal, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7762) #16, !srcloc !22
  %i.aam = and i32 %.0.copyload.i7762, 1
  %.not6903 = icmp eq i32 %i.aam, 0
  br i1 %.not6903, label %bb.dt, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.aan = icmp ult i32 %.18, 16
  br i1 %i.aan, label %bb.dx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val7354 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aao = getelementptr inbounds nuw i8, ptr %.val7354, i64 %i.ng
  %.0.copyload.i7763 = load i32, ptr %i.aao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7763) #16, !srcloc !22
  switch i32 %.0.copyload.i7763, label %bb.bx [
    i32 -8, label %bb.bz
    i32 -4, label %bb.bz
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.aap = zext i32 %i.zv to i64
  %.val7503 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val7503, i64 %i.aap
  store i32 %.0.copyload.i7763, ptr %i.aaq, align 1
  %i.aar = add i32 %i.zu, -508
  %i.aas = add i32 %i.zu, -488
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3ASmallPtrSetImplBase0x28void0x20const0x2A0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ASmallPtrSetImplBase0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.aar, i32 noundef %i.aas, i32 noundef 2, i32 noundef %i.nh) #16
  %i.aat = add i32 %i.zu, -480                    ; 2 uses
  %.val7353 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aau = getelementptr inbounds nuw i8, ptr %.val7353, i64 %i.ne
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  %.0.copyload.i7764 = load i32, ptr %i.aav, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7764) #16, !srcloc !22
  %.val7352 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val7352, i64 %i.nf
  %.0.copyload.i7765 = load i32, ptr %i.aaw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7765) #16, !srcloc !22
  %i.aax = icmp eq i32 %.0.copyload.i7764, %.0.copyload.i7765
  br i1 %i.aax, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7764)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.bw, %bb.bw, %bb.by
  %.96623 = phi i32 [ %i.aat, %bb.bx ], [ %i.aat, %bb.by ], [ %i.zv, %bb.bw ], [ %i.zv, %bb.bw ] ; 6 uses
  %.val7351 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aay = getelementptr inbounds nuw i8, ptr %.val7351, i64 %i.ne
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 40
  %.0.copyload.i7766 = load i32, ptr %i.aaz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7766) #16, !srcloc !22
  switch i32 %.0.copyload.i7766, label %bb.ca [
    i32 -8, label %bb.cc
    i32 -4, label %bb.cc
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.aba = zext i32 %.96623 to i64
  %.val7502 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.abb = getelementptr inbounds nuw i8, ptr %.val7502, i64 %i.aba
  store i32 %.0.copyload.i7766, ptr %i.abb, align 1
  %i.abc = add i32 %.96623, 4
  %i.abd = add i32 %.96623, 24
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3ASmallPtrSetImplBase0x28void0x20const0x2A0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ASmallPtrSetImplBase0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.abc, i32 noundef %i.abd, i32 noundef 2, i32 noundef %i.ni) #16
  %i.abe = add i32 %.96623, 32                    ; 2 uses
  %.val7350 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.abf = getelementptr inbounds nuw i8, ptr %.val7350, i64 %i.ne
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 48
  %.0.copyload.i7767 = load i32, ptr %i.abg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7767) #16, !srcloc !22
  %.val7349 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.abh = getelementptr inbounds nuw i8, ptr %.val7349, i64 %i.ne
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 44
  %.0.copyload.i7768 = load i32, ptr %i.abi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7768) #16, !srcloc !22
  %i.abj = icmp eq i32 %.0.copyload.i7767, %.0.copyload.i7768
  br i1 %i.abj, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7767)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.bz, %bb.bz, %bb.cb
  %.106624 = phi i32 [ %i.abe, %bb.ca ], [ %i.abe, %bb.cb ], [ %.96623, %bb.bz ], [ %.96623, %bb.bz ] ; 6 uses
  %.val7348 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.abk = getelementptr inbounds nuw i8, ptr %.val7348, i64 %i.ne
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 72
  %.0.copyload.i7769 = load i32, ptr %i.abl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7769) #16, !srcloc !22
  switch i32 %.0.copyload.i7769, label %bb.cd [
    i32 -8, label %bb.cf
    i32 -4, label %bb.cf
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.abm = zext i32 %.106624 to i64
  %.val7501 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.abn = getelementptr inbounds nuw i8, ptr %.val7501, i64 %i.abm
  store i32 %.0.copyload.i7769, ptr %i.abn, align 1
  %i.abo = add i32 %.106624, 4
  %i.abp = add i32 %.106624, 24
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3ASmallPtrSetImplBase0x28void0x20const0x2A0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ASmallPtrSetImplBase0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.abo, i32 noundef %i.abp, i32 noundef 2, i32 noundef %i.nj) #16
  %i.abq = add i32 %.106624, 32                   ; 2 uses
  %.val7347 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.abr = getelementptr inbounds nuw i8, ptr %.val7347, i64 %i.ne
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 80
  %.0.copyload.i7770 = load i32, ptr %i.abs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7770) #16, !srcloc !22
  %.val7346 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.abt = getelementptr inbounds nuw i8, ptr %.val7346, i64 %i.ne
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 76
  %.0.copyload.i7771 = load i32, ptr %i.abu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7771) #16, !srcloc !22
  %i.abv = icmp eq i32 %.0.copyload.i7770, %.0.copyload.i7771
  br i1 %i.abv, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7770)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.cc, %bb.cc, %bb.ce
  %.116625 = phi i32 [ %i.abq, %bb.cd ], [ %i.abq, %bb.ce ], [ %.106624, %bb.cc ], [ %.106624, %bb.cc ] ; 6 uses
  %.val7345 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.abw = getelementptr inbounds nuw i8, ptr %.val7345, i64 %i.ne
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 104
  %.0.copyload.i7772 = load i32, ptr %i.abx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7772) #16, !srcloc !22
  switch i32 %.0.copyload.i7772, label %bb.cg [
    i32 -8, label %bb.ci
    i32 -4, label %bb.ci
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.aby = zext i32 %.116625 to i64
  %.val7500 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.abz = getelementptr inbounds nuw i8, ptr %.val7500, i64 %i.aby
  store i32 %.0.copyload.i7772, ptr %i.abz, align 1
  %i.aca = add i32 %.116625, 4
  %i.acb = add i32 %.116625, 24
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3ASmallPtrSetImplBase0x28void0x20const0x2A0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ASmallPtrSetImplBase0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.aca, i32 noundef %i.acb, i32 noundef 2, i32 noundef %i.nk) #16
  %i.acc = add i32 %.116625, 32                   ; 2 uses
  %.val7344 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.acd = getelementptr inbounds nuw i8, ptr %.val7344, i64 %i.ne
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 112
  %.0.copyload.i7773 = load i32, ptr %i.ace, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7773) #16, !srcloc !22
  %.val7343 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.acf = getelementptr inbounds nuw i8, ptr %.val7343, i64 %i.ne
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 108
  %.0.copyload.i7774 = load i32, ptr %i.acg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7774) #16, !srcloc !22
  %i.ach = icmp eq i32 %.0.copyload.i7773, %.0.copyload.i7774
  br i1 %i.ach, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7773)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.cf, %bb.cf, %bb.ch
  %.126626 = phi i32 [ %i.acc, %bb.cg ], [ %i.acc, %bb.ch ], [ %.116625, %bb.cf ], [ %.116625, %bb.cf ] ; 6 uses
  %.val7342 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aci = getelementptr inbounds nuw i8, ptr %.val7342, i64 %i.ne
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 136
  %.0.copyload.i7775 = load i32, ptr %i.acj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7775) #16, !srcloc !22
  switch i32 %.0.copyload.i7775, label %bb.cj [
    i32 -8, label %bb.cl
    i32 -4, label %bb.cl
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.ack = zext i32 %.126626 to i64
  %.val7499 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.acl = getelementptr inbounds nuw i8, ptr %.val7499, i64 %i.ack
  store i32 %.0.copyload.i7775, ptr %i.acl, align 1
  %i.acm = add i32 %.126626, 4
  %i.acn = add i32 %.126626, 24
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3ASmallPtrSetImplBase0x28void0x20const0x2A0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ASmallPtrSetImplBase0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.acm, i32 noundef %i.acn, i32 noundef 2, i32 noundef %i.nl) #16
  %i.aco = add i32 %.126626, 32                   ; 2 uses
  %.val7341 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.acp = getelementptr inbounds nuw i8, ptr %.val7341, i64 %i.ne
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 144
  %.0.copyload.i7776 = load i32, ptr %i.acq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7776) #16, !srcloc !22
  %.val7340 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.acr = getelementptr inbounds nuw i8, ptr %.val7340, i64 %i.ne
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 140
  %.0.copyload.i7777 = load i32, ptr %i.acs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7777) #16, !srcloc !22
  %i.act = icmp eq i32 %.0.copyload.i7776, %.0.copyload.i7777
  br i1 %i.act, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7776)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ci, %bb.ck
end_hunk_0
begin_hunk_1_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3Amake_hermes_runtime0x28HermesABIRuntimeConfig0x20const0x2A0x29:bb.a
  %.0.copyload.i27599 = load i32, ptr %i.bud, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27599) #16, !srcloc !22
  %.val26162 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bue = getelementptr inbounds nuw i8, ptr %.val26162, i64 %i.bsu
  store i32 %.0.copyload.i27599, ptr %i.bue, align 1
  %.val26161 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.buf = getelementptr inbounds nuw i8, ptr %.val26161, i64 %i.bsu
  %i.bug = getelementptr inbounds nuw i8, ptr %i.buf, i64 4
  store i32 %i.ahl, ptr %i.bug, align 1
  %i.buh = zext i32 %.0.copyload.i27599 to i64
  %.val26160 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bui = getelementptr inbounds nuw i8, ptr %.val26160, i64 %i.buh
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bui, i64 4
  store i32 %i.bss, ptr %i.buj, align 1
  %.val26159 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.buk = getelementptr inbounds nuw i8, ptr %.val26159, i64 %i.aho
  store i32 %i.bss, ptr %i.buk, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADomain0x3A0x3AaddRuntimeModule0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ADomain0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntimeModule0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.btb, i32 noundef %i.bv, i32 noundef %i.bss) #16
  %.val26158 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bul = getelementptr inbounds nuw i8, ptr %.val26158, i64 %i.bsu
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 100
  store i32 %i.bss, ptr %i.bum, align 1
  %i.bun = add nuw nsw i64 %i.ct, 5564            ; 4 uses
  %.val26157 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.buo = getelementptr inbounds nuw i8, ptr %.val26157, i64 %i.bun
  store i32 %i.bss, ptr %i.buo, align 1
  %i.bup = load i32, ptr %i.a, align 8, !tbaa !19 ; 5 uses
  %i.buq = add i32 %i.bup, -176                   ; 4 uses
  store i32 %i.buq, ptr %i.a, align 8, !tbaa !19
  %i.bur = zext i32 %i.buq to i64                 ; 7 uses
  %.val26156 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bus = getelementptr inbounds nuw i8, ptr %.val26156, i64 %i.bur
  store i32 %i.bv, ptr %i.bus, align 1
  %.val25251 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.but = getelementptr inbounds nuw i8, ptr %.val25251, i64 %i.ju
  %.0.copyload.i27600 = load i32, ptr %i.but, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27600) #16, !srcloc !22
  %i.buu = add i32 %i.bup, -28                    ; 2 uses
  %i.buv = add i32 %i.bup, -168                   ; 3 uses
  %i.buw = zext i32 %i.buu to i64
  %.val26155 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bux = getelementptr inbounds nuw i8, ptr %.val26155, i64 %i.buw
  store i32 %i.buv, ptr %i.bux, align 1
  %.val26625 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.buy = getelementptr inbounds nuw i8, ptr %.val26625, i64 %i.bur
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 140
  store i64 17179869185, ptr %i.buz, align 1
  %i.bva = add nuw nsw i64 %i.bur, 136            ; 2 uses
  %.val26154 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bvb = getelementptr inbounds nuw i8, ptr %.val26154, i64 %i.bva
  store i32 %i.buu, ptr %i.bvb, align 1
  %.val26153 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bvc = getelementptr inbounds nuw i8, ptr %.val26153, i64 %i.bur
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 4
  store i32 %.0.copyload.i27600, ptr %i.bvd, align 1
  %i.bve = add nuw nsw i64 %i.bur, 172            ; 2 uses
  %.val26152 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bvf = getelementptr inbounds nuw i8, ptr %.val26152, i64 %i.bve
  store i32 0, ptr %i.bvf, align 1
  %i.bvg = add i32 %i.bup, -40
  %i.bvh = add nuw nsw i64 %i.bur, 168            ; 2 uses
  %.val26151 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bvi = getelementptr inbounds nuw i8, ptr %.val26151, i64 %i.bvh
  store i32 %i.bvg, ptr %i.bvi, align 1
  %i.bvj = add nuw nsw i64 %i.bur, 164            ; 2 uses
  %.val26150 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bvk = getelementptr inbounds nuw i8, ptr %.val26150, i64 %i.bvj
  store i32 %i.buv, ptr %i.bvk, align 1
  %.val26149 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bvl = getelementptr inbounds nuw i8, ptr %.val26149, i64 %i.ju
  store i32 %i.buq, ptr %i.bvl, align 1
  %.val25250 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bvm = getelementptr inbounds nuw i8, ptr %.val25250, i64 %i.aju
  %.0.copyload.i27601 = load i32, ptr %i.bvm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27601) #16, !srcloc !22
  %i.bvn = add nuw nsw i64 %i.ct, 5696            ; 5 uses
  %.val25249 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bvo = getelementptr inbounds nuw i8, ptr %.val25249, i64 %i.bvn
  %.0.copyload.i27602 = load i32, ptr %i.bvo, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27602) #16, !srcloc !22
  %i.bvp = sub i32 %.0.copyload.i27601, %.0.copyload.i27602
  %i.bvq = icmp ugt i32 %i.bvp, 2047
  br i1 %i.bvq, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.bvr = add i32 %i.bv, 5700
  %i.bvs = zext i32 %i.bvr to i64
  %.val25248 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bvt = getelementptr inbounds nuw i8, ptr %.val25248, i64 %i.bvs
  %.0.copyload.i27603 = load i32, ptr %i.bvt, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27603) #16, !srcloc !22
  %i.bvu = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 2048) #16 ; 2 uses
  %i.bvv = add i32 %i.bvu, 2048
  %i.bvw = sub i32 %.0.copyload.i27603, %.0.copyload.i27602
  %i.bvx = and i32 %i.bvw, -8
  %i.bvy = add i32 %i.bvu, %i.bvx                 ; 3 uses
  %.not24472 = icmp eq i32 %.0.copyload.i27603, %.0.copyload.i27602
  br i1 %.not24472, label %.loopexit28538, label %.preheader28537

.preheader28537:                                  ; preds = %bb.fg, %.preheader28537
  %.024113 = phi i32 [ %i.bvz, %.preheader28537 ], [ %i.bvy, %bb.fg ]
  %.12 = phi i32 [ %i.bwa, %.preheader28537 ], [ %.0.copyload.i27603, %bb.fg ]
  %i.bvz = add i32 %.024113, -8                   ; 3 uses
  %i.bwa = add i32 %.12, -8                       ; 3 uses
  %i.bwb = zext i32 %i.bwa to i64
  %.val27140 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bwc = getelementptr inbounds nuw i8, ptr %.val27140, i64 %i.bwb
  %.0.copyload.i27604 = load i64, ptr %i.bwc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i27604) #16, !srcloc !45
  %i.bwd = zext i32 %i.bvz to i64
  %.val26624 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bwe = getelementptr inbounds nuw i8, ptr %.val26624, i64 %i.bwd
  store i64 %.0.copyload.i27604, ptr %i.bwe, align 1
  %.not24473 = icmp eq i32 %i.bwa, %.0.copyload.i27602
  br i1 %.not24473, label %.loopexit28538, label %.preheader28537

.loopexit28538:                                   ; preds = %.preheader28537, %bb.fg
  %.124114 = phi i32 [ %i.bvy, %bb.fg ], [ %i.bvz, %.preheader28537 ]
  %.val26148 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bwf = getelementptr inbounds nuw i8, ptr %.val26148, i64 %i.ct
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 5704
  store i32 %i.bvv, ptr %i.bwg, align 1
  %.val26147 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bwh = getelementptr inbounds nuw i8, ptr %.val26147, i64 %i.ct
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwh, i64 5700
  store i32 %i.bvy, ptr %i.bwi, align 1
  %.val26146 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bwj = getelementptr inbounds nuw i8, ptr %.val26146, i64 %i.bvn
  store i32 %.124114, ptr %i.bwj, align 1
  %.not24474 = icmp eq i32 %.0.copyload.i27602, 0
  br i1 %.not24474, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.loopexit28538
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i27602)
  br label %bb.fi

bb.fi:                                            ; preds = %.loopexit28538, %bb.ff, %bb.fh
  %i.bwk = add nuw nsw i64 %i.ct, 5700            ; 3 uses
  %i.bwl = add nuw nsw i64 %i.ct, 5704            ; 2 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.gj, %bb.fi
  %.224079 = phi i32 [ 0, %bb.fi ], [ %i.ccp, %bb.gj ] ; 4 uses
  %.val25247 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bwm = getelementptr inbounds nuw i8, ptr %.val25247, i64 %i.bva
  %.0.copyload.i27605 = load i32, ptr %i.bwm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27605) #16, !srcloc !22
  %i.bwn = zext i32 %.0.copyload.i27605 to i64
  %.val25246 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bwo = getelementptr inbounds nuw i8, ptr %.val25246, i64 %i.bwn
  %.0.copyload.i27606 = load i32, ptr %i.bwo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27606) #16, !srcloc !22
  %.val26145 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bwp = getelementptr inbounds nuw i8, ptr %.val26145, i64 %i.bve
  store i32 0, ptr %i.bwp, align 1
  %.val26144 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bwq = getelementptr inbounds nuw i8, ptr %.val26144, i64 %i.bvj
  store i32 %i.buv, ptr %i.bwq, align 1
  %i.bwr = add i32 %.0.copyload.i27606, 128
  %.val26143 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bws = getelementptr inbounds nuw i8, ptr %.val26143, i64 %i.bvh
  store i32 %i.bwr, ptr %i.bws, align 1
  %i.bwt = load i32, ptr %i.a, align 8, !tbaa !19 ; 5 uses
  %i.bwu = add i32 %i.bwt, -80                    ; 2 uses
  store i32 %i.bwu, ptr %i.a, align 8, !tbaa !19
  %i.bwv = and i32 %.224079, 65535                ; 2 uses
  %i.bww = zext i32 %i.bwu to i64                 ; 15 uses
  %.val27243 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bwx = trunc i32 %.224079 to i16
  %i.bwy = getelementptr inbounds nuw i8, ptr %.val27243, i64 %i.bww
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwy, i64 70
  store i16 %i.bwx, ptr %i.bwz, align 1
  %i.bxa = icmp samesign ult i32 %i.bwv, 128
  %.val27195 = load ptr, ptr %i.g, align 8, !tbaa !21 ; 2 uses
  br i1 %i.bxa, label %bb.fk, label %bb.fo

bb.fk:                                            ; preds = %bb.fj
  %i.bxb = trunc i32 %.224079 to i8
  %i.bxc = getelementptr inbounds nuw i8, ptr %.val27195, i64 %i.bww
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxc, i64 47
  store i8 %i.bxb, ptr %i.bxd, align 1
  %.val26142 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bxe = getelementptr inbounds nuw i8, ptr %.val26142, i64 %i.bww
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxe, i64 76
  store i32 1, ptr %i.bxf, align 1
  %i.bxg = add i32 %i.bwt, -33
  %i.bxh = add nuw nsw i64 %i.bww, 72             ; 2 uses
  %.val26141 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bxi = getelementptr inbounds nuw i8, ptr %.val26141, i64 %i.bxh
  store i32 %i.bxg, ptr %i.bxi, align 1
  %.val27139 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bxj = getelementptr inbounds nuw i8, ptr %.val27139, i64 %i.bxh
  %.0.copyload.i27607 = load i64, ptr %i.bxj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i27607) #16, !srcloc !45
  %.val26623 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bxk = getelementptr inbounds nuw i8, ptr %.val26623, i64 %i.bww
  store i64 %.0.copyload.i27607, ptr %i.bxk, align 1
  %.val25245 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bxl = getelementptr inbounds nuw i8, ptr %.val25245, i64 %i.bww
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxl, i64 4
  %.0.copyload.i27608 = load i32, ptr %i.bxm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27608) #16, !srcloc !22
  %i.bxn = add i32 %.0.copyload.i27608, 8
  %2 = tail call i32 @llvm.umax.i32(i32 %i.bxn, i32 8)
  %i.bxo = add i32 %2, 7                          ; 2 uses
  %i.bxp = and i32 %i.bxo, -8
  %i.bxq = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocLongLived0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.na, i32 noundef %i.bxp) #16 ; 2 uses
  %.val27138 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bxr = getelementptr inbounds nuw i8, ptr %.val27138, i64 %i.bww
  %.0.copyload.i27609 = load i64, ptr %i.bxr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i27609) #16, !srcloc !45
  %i.bxs = lshr i64 %.0.copyload.i27609, 32       ; 2 uses
  %i.bxt = trunc nuw i64 %i.bxs to i32            ; 2 uses
  %i.bxu = zext i32 %i.bxq to i64                 ; 3 uses
  %.val26140 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bxv = getelementptr inbounds nuw i8, ptr %.val26140, i64 %i.bxu
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxv, i64 4
  store i32 %i.bxt, ptr %i.bxw, align 1
  %.not24477 = icmp eq i64 %i.bxs, 0
  br i1 %.not24477, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.bxx = add i32 %i.bxq, 8
  %i.bxy = trunc i64 %.0.copyload.i27609 to i32
  %i.bxz = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.bxx, i32 noundef %i.bxy, i32 noundef %i.bxt) #16 ; 0 uses
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.bya = and i32 %i.bxo, 16777208
  %i.byb = or disjoint i32 %i.bya, 67108864
  %.val26139 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.byc = getelementptr inbounds nuw i8, ptr %.val26139, i64 %i.bxu
  store i32 %i.byb, ptr %i.byc, align 1
  %i.byd = or disjoint i64 %i.bxu, -844424930131968
  %i.bye = add nuw nsw i64 %i.bww, 56             ; 2 uses
  %.val26622 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.byf = getelementptr inbounds nuw i8, ptr %.val26622, i64 %i.bye
  store i64 %i.byd, ptr %i.byf, align 1
  %i.byg = add nuw nsw i64 %i.bww, 48             ; 2 uses
  %.val26138 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.byh = getelementptr inbounds nuw i8, ptr %.val26138, i64 %i.byg
  store i32 1, ptr %i.byh, align 1
  %.val25244 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.byi = getelementptr inbounds nuw i8, ptr %.val25244, i64 %i.byg
  %.0.copyload.i27610 = load i32, ptr %i.byi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27610) #16, !srcloc !22
  %.not24478 = icmp eq i32 %.0.copyload.i27610, 0
  br i1 %.not24478, label %.loopexit28536, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %.val27261 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.byj = getelementptr inbounds nuw i8, ptr %.val27261, i64 %i.bye
  %.0.copyload.i27611 = load i32, ptr %i.byj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27611) #16, !srcloc !34
  br label %bb.fw

bb.fo:                                            ; preds = %bb.fj
  %i.byk = getelementptr inbounds nuw i8, ptr %.val27195, i64 %i.bww
  %i.byl = getelementptr inbounds nuw i8, ptr %i.byk, i64 20
  store i32 1, ptr %i.byl, align 1
  %i.bym = add i32 %i.bwt, -10
  %i.byn = add nuw nsw i64 %i.bww, 16             ; 2 uses
  %.val26136 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.byo = getelementptr inbounds nuw i8, ptr %.val26136, i64 %i.byn
  store i32 %i.bym, ptr %i.byo, align 1
  %.val27137 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.byp = getelementptr inbounds nuw i8, ptr %.val27137, i64 %i.byn
  %.0.copyload.i27612 = load i64, ptr %i.byp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i27612) #16, !srcloc !45
  %i.byq = add nuw nsw i64 %i.bww, 8              ; 2 uses
  %.val26621 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.byr = getelementptr inbounds nuw i8, ptr %.val26621, i64 %i.byq
  store i64 %.0.copyload.i27612, ptr %i.byr, align 1
  %i.bys = add i32 %i.bwt, -56                    ; 2 uses
  %i.byt = load i32, ptr %i.a, align 8, !tbaa !19 ; 3 uses
  %i.byu = add i32 %i.byt, -48                    ; 3 uses
  store i32 %i.byu, ptr %i.a, align 8, !tbaa !19
  %.val25243 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.byv = getelementptr inbounds nuw i8, ptr %.val25243, i64 %i.bww
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byv, i64 12
  %.0.copyload.i27613 = load i32, ptr %i.byw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27613) #16, !srcloc !22
  %i.byx = icmp ult i32 %.0.copyload.i27613, 65536
  %.val27136 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.byy = getelementptr inbounds nuw i8, ptr %.val27136, i64 %i.byq
  %.0.copyload.i27614 = load i64, ptr %i.byy, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i27614) #16
  %i.byz = zext i32 %i.byu to i64                 ; 7 uses
  br i1 %i.byx, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.bza = add nuw nsw i64 %i.byz, 8              ; 2 uses
  %.val26620 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bzb = getelementptr inbounds nuw i8, ptr %.val26620, i64 %i.bza
  store i64 %.0.copyload.i27614, ptr %i.bzb, align 1
  %.val26619 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bzc = getelementptr inbounds nuw i8, ptr %.val26619, i64 %i.byz
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.bzc, i64 40
  store i64 %.0.copyload.i27614, ptr %i.bzd, align 1
  %.val25242 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bze = getelementptr inbounds nuw i8, ptr %.val25242, i64 %i.byz
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 12
  %.0.copyload.i27615 = load i32, ptr %i.bzf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27615) #16, !srcloc !22
  %i.bzg = shl i32 %.0.copyload.i27615, 1
  %i.bzh = add i32 %i.bzg, 8
  %3 = tail call i32 @llvm.umax.i32(i32 %i.bzh, i32 8)
  %i.bzi = add i32 %3, 7                          ; 2 uses
  %i.bzj = and i32 %i.bzi, -8
  %i.bzk = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocLongLived0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.na, i32 noundef %i.bzj) #16 ; 2 uses
  %.val27135 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bzl = getelementptr inbounds nuw i8, ptr %.val27135, i64 %i.bza
  %.0.copyload.i27616 = load i64, ptr %i.bzl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i27616) #16, !srcloc !45
  %i.bzm = lshr i64 %.0.copyload.i27616, 32       ; 2 uses
  %i.bzn = trunc nuw i64 %i.bzm to i32            ; 2 uses
  %i.bzo = zext i32 %i.bzk to i64                 ; 3 uses
  %.val26135 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bzp = getelementptr inbounds nuw i8, ptr %.val26135, i64 %i.bzo
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzp, i64 4
  store i32 %i.bzn, ptr %i.bzq, align 1
  %.not24475 = icmp eq i64 %i.bzm, 0
  br i1 %.not24475, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bzr = add i32 %i.bzk, 8
  %i.bzs = trunc i64 %.0.copyload.i27616 to i32
  %i.bzt = shl i32 %i.bzn, 1
  %i.bzu = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.bzr, i32 noundef %i.bzs, i32 noundef %i.bzt) #16 ; 0 uses
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.bzv = and i32 %i.bzi, 16777208
  %i.bzw = or disjoint i32 %i.bzv, 50331648
  %.val26134 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bzx = getelementptr inbounds nuw i8, ptr %.val26134, i64 %i.bzo
  store i32 %i.bzw, ptr %i.bzx, align 1
  %i.bzy = or disjoint i64 %i.bzo, -844424930131968
  %i.bzz = zext i32 %i.bys to i64                 ; 2 uses
  %.val26618 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.caa = getelementptr inbounds nuw i8, ptr %.val26618, i64 %i.bzz
  %i.cab = getelementptr inbounds nuw i8, ptr %i.caa, i64 8
  store i64 %i.bzy, ptr %i.cab, align 1
  %.val26133 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cac = getelementptr inbounds nuw i8, ptr %.val26133, i64 %i.bzz
  store i32 1, ptr %i.cac, align 1
  br label %bb.fu

bb.fs:                                            ; preds = %bb.fo
  %.val26617 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cad = getelementptr inbounds nuw i8, ptr %.val26617, i64 %i.byz
  store i64 %.0.copyload.i27614, ptr %i.cad, align 1
  %.val26616 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cae = getelementptr inbounds nuw i8, ptr %.val26616, i64 %i.byz
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cae, i64 16
  store i64 %.0.copyload.i27614, ptr %i.caf, align 1
  %i.cag = add i32 %i.byt, -20                    ; 2 uses
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AarrayToString0x3Cchar16_t0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.cag, i32 noundef %i.byu) #16
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3AcreateLongLived0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.bys, i32 noundef %i.bv, i32 noundef %i.cag) #16
  %.val27318 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cah = getelementptr inbounds nuw i8, ptr %.val27318, i64 %i.byz
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 39
  %.0.copyload.i27618 = load i8, ptr %i.cai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i27618) #16, !srcloc !47
  %i.caj = icmp sgt i8 %.0.copyload.i27618, -1
  br i1 %i.caj, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %.val25241 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cak = getelementptr inbounds nuw i8, ptr %.val25241, i64 %i.byz
  %i.cal = getelementptr inbounds nuw i8, ptr %i.cak, i64 28
  %.0.copyload.i27619 = load i32, ptr %i.cal, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27619) #16, !srcloc !22
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i27619)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fs, %bb.ft, %bb.fr
  store i32 %i.byt, ptr %i.a, align 8, !tbaa !19
  %.val25240 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cam = getelementptr inbounds nuw i8, ptr %.val25240, i64 %i.bww
  %i.can = getelementptr inbounds nuw i8, ptr %i.cam, i64 24
  %.0.copyload.i27620 = load i32, ptr %i.can, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27620) #16, !srcloc !22
  %.not24476 = icmp eq i32 %.0.copyload.i27620, 0
  br i1 %.not24476, label %.loopexit28536, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %.val27260 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cao = getelementptr inbounds nuw i8, ptr %.val27260, i64 %i.bww
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cao, i64 32
  %.0.copyload.i27621 = load i32, ptr %i.cap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27621) #16, !srcloc !34
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fn
  %.024035.in = phi i32 [ %.0.copyload.i27611, %bb.fn ], [ %.0.copyload.i27621, %bb.fv ]
  %.024035 = zext i32 %.024035.in to i64
  %i.caq = or disjoint i64 %.024035, -844424930131968 ; 2 uses
  %.val25239 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.car = getelementptr inbounds nuw i8, ptr %.val25239, i64 %i.ju
  %.0.copyload.i27622 = load i32, ptr %i.car, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27622) #16, !srcloc !22
  %i.cas = zext i32 %.0.copyload.i27622 to i64    ; 2 uses
  %i.cat = add nuw nsw i64 %i.cas, 164            ; 2 uses
  %.val25238 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cau = getelementptr inbounds nuw i8, ptr %.val25238, i64 %i.cat
  %.0.copyload.i27623 = load i32, ptr %i.cau, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27623) #16, !srcloc !22
  %.val25237 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cav = getelementptr inbounds nuw i8, ptr %.val25237, i64 %i.cas
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cav, i64 168
  %.0.copyload.i27624 = load i32, ptr %i.caw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27624) #16, !srcloc !22
  %i.cax = icmp ult i32 %.0.copyload.i27623, %.0.copyload.i27624
  br i1 %i.cax, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.cay = add i32 %.0.copyload.i27623, 8
  %.val26132 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.caz = getelementptr inbounds nuw i8, ptr %.val26132, i64 %i.cat
  store i32 %i.cay, ptr %i.caz, align 1
  %i.cba = zext i32 %.0.copyload.i27623 to i64    ; 2 uses
  %.val26615 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cbb = getelementptr inbounds nuw i8, ptr %.val26615, i64 %i.cba
  store i64 %i.caq, ptr %i.cbb, align 1
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %i.cbc = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i27622, i64 noundef %i.caq) #16
  %.pre28578 = zext i32 %i.cbc to i64
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.pre-phi28579 = phi i64 [ %.pre28578, %bb.fy ], [ %i.cba, %bb.fx ]
  store i32 %i.bwt, ptr %i.a, align 8, !tbaa !19
  %.val27133 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cbd = getelementptr inbounds nuw i8, ptr %.val27133, i64 %.pre-phi28579
  %.0.copyload.i27625 = load i64, ptr %i.cbd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i27625) #16, !srcloc !45
  %.val25236 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cbe = getelementptr inbounds nuw i8, ptr %.val25236, i64 %i.bwk
  %.0.copyload.i27626 = load i32, ptr %i.cbe, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27626) #16, !srcloc !22
  %.val25235 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cbf = getelementptr inbounds nuw i8, ptr %.val25235, i64 %i.bwl
  %.0.copyload.i27627 = load i32, ptr %i.cbf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27627) #16, !srcloc !22
  %i.cbg = icmp ult i32 %.0.copyload.i27626, %.0.copyload.i27627
  br i1 %i.cbg, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.cbh = zext i32 %.0.copyload.i27626 to i64
  %.val26614 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cbi = getelementptr inbounds nuw i8, ptr %.val26614, i64 %i.cbh
  store i64 %.0.copyload.i27625, ptr %i.cbi, align 1
  %i.cbj = add i32 %.0.copyload.i27626, 8
  %.val26131 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cbk = getelementptr inbounds nuw i8, ptr %.val26131, i64 %i.bwk
  store i32 %i.cbj, ptr %i.cbk, align 1
  br label %bb.gj

bb.gb:                                            ; preds = %bb.fz
  %.val25234 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cbl = getelementptr inbounds nuw i8, ptr %.val25234, i64 %i.bvn
  %.0.copyload.i27628 = load i32, ptr %i.cbl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27628) #16, !srcloc !22
  %i.cbm = sub i32 %.0.copyload.i27626, %.0.copyload.i27628 ; 2 uses
  %i.cbn = ashr i32 %i.cbm, 3
  %i.cbo = add nsw i32 %i.cbn, 1                  ; 2 uses
  %i.cbp = icmp ugt i32 %i.cbo, 536870911
  br i1 %i.cbp, label %bb.gl, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.cbq = sub i32 %.0.copyload.i27627, %.0.copyload.i27628 ; 2 uses
  %i.cbr = ashr i32 %i.cbq, 2
  %i.cbs = tail call i32 @llvm.umax.i32(i32 %i.cbr, i32 %i.cbo)
  %i.cbt = icmp ugt i32 %i.cbq, 2147483639
  %i.cbu = select i1 %i.cbt, i32 536870911, i32 %i.cbs ; 4 uses
  %.not24479 = icmp eq i32 %i.cbu, 0
  br i1 %.not24479, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.cbv = icmp ugt i32 %i.cbu, 536870911
  br i1 %i.cbv, label %bb.gm, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.cbw = shl nuw i32 %i.cbu, 3
  %i.cbx = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cbw) #16
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gc, %bb.ge
  %.824056 = phi i32 [ %i.cbx, %bb.ge ], [ 0, %bb.gc ] ; 2 uses
  %i.cby = and i32 %i.cbm, -8
  %i.cbz = add i32 %.824056, %i.cby               ; 4 uses
  %i.cca = zext i32 %i.cbz to i64
  %.val26613 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.ccb = getelementptr inbounds nuw i8, ptr %.val26613, i64 %i.cca
  store i64 %.0.copyload.i27625, ptr %i.ccb, align 1
  %i.ccc = add i32 %i.cbz, 8
  %.not24480 = icmp eq i32 %.0.copyload.i27626, %.0.copyload.i27628
  br i1 %.not24480, label %bb.gh, label %.preheader28535

.preheader28535:                                  ; preds = %bb.gf, %.preheader28535
  %.324116 = phi i32 [ %i.ccd, %.preheader28535 ], [ %i.cbz, %bb.gf ]
  %.13 = phi i32 [ %i.cce, %.preheader28535 ], [ %.0.copyload.i27626, %bb.gf ]
  %i.ccd = add i32 %.324116, -8                   ; 3 uses
  %i.cce = add i32 %.13, -8                       ; 3 uses
  %i.ccf = zext i32 %i.cce to i64
  %.val27132 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.ccg = getelementptr inbounds nuw i8, ptr %.val27132, i64 %i.ccf
  %.0.copyload.i27629 = load i64, ptr %i.ccg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i27629) #16, !srcloc !45
  %i.cch = zext i32 %i.ccd to i64
  %.val26612 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cci = getelementptr inbounds nuw i8, ptr %.val26612, i64 %i.cch
  store i64 %.0.copyload.i27629, ptr %i.cci, align 1
  %.not24481 = icmp eq i32 %i.cce, %.0.copyload.i27628
  br i1 %.not24481, label %bb.gg, label %.preheader28535

bb.gg:                                            ; preds = %.preheader28535
  %.val25233 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.ccj = getelementptr inbounds nuw i8, ptr %.val25233, i64 %i.bvn
  %.0.copyload.i27630 = load i32, ptr %i.ccj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27630) #16, !srcloc !22
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.424117 = phi i32 [ %i.ccd, %bb.gg ], [ %i.cbz, %bb.gf ]
  %.14 = phi i32 [ %.0.copyload.i27630, %bb.gg ], [ %.0.copyload.i27626, %bb.gf ] ; 2 uses
  %i.cck = shl nuw i32 %i.cbu, 3
  %i.ccl = add i32 %.824056, %i.cck
  %.val26130 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.ccm = getelementptr inbounds nuw i8, ptr %.val26130, i64 %i.bwl
end_hunk_1
begin_hunk_2_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AHostObjectWrapper0x3A0x3AgetHostPropertyNames0x280x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i260) #16, !srcloc !22
  %i.cm = sub i32 %i.bx, %.0.copyload.i260        ; 4 uses
  %i.cn = icmp ult i32 %i.cm, 4096
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.co = shl nuw nsw i32 %i.cm, 2
  %i.cp = add i32 %i.co, %.0.copyload.i259
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cq = add i32 %i.cm, -4096
  %i.cr = lshr i32 %i.cq, 8
  %i.cs = and i32 %i.cr, 16777212
  %i.ct = add i32 %.0.copyload.i259, 16392
  %i.cu = add i32 %i.ct, %i.cs
  %i.cv = zext i32 %i.cu to i64
  %.val225 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.val225, i64 %i.cv
  %.0.copyload.i261 = load i32, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i261) #16, !srcloc !22
  %i.cx = shl i32 %i.cm, 2
  %i.cy = and i32 %i.cx, 4092
  %i.cz = add i32 %.0.copyload.i261, %i.cy
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.in = phi i32 [ %i.cp, %bb.n ], [ %i.cz, %bb.o ]
  %.0 = add i32 %.0.in, 8                         ; 3 uses
  %i.da = or disjoint i32 %i.cf, 5                ; 2 uses
  %.val224 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.bv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1364
  %.0.copyload.i262 = load i32, ptr %i.dc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i262) #16, !srcloc !22
  %i.dd = and i32 %.0, -4194304
  %.not215 = icmp eq i32 %.0.copyload.i262, %i.dd
  br i1 %.not215, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue320x29(ptr noundef nonnull %0, i32 noundef %i.bt, i32 noundef %.0, i32 noundef %i.da) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.de = zext i32 %.0 to i64
  %.val242 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %.val242, i64 %i.de
  store i32 %i.da, ptr %i.df, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not216 = icmp eq i64 %indvars.iv.next, %i.bw
  br i1 %.not216, label %.loopexit, label %bb.m

.loopexit:                                        ; preds = %bb.r, %bb.k
  %.val223 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %.val223, i64 %i.al
  %.0.copyload.i263 = load i32, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i263) #16, !srcloc !22
  %i.dh = zext i32 %.0.copyload.i263 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dh
  %.0.copyload.i264 = load i32, ptr %i.di, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i264) #16, !srcloc !22
  %i.dj = load i32, ptr %i.m, align 4, !tbaa !23
  %i.dk = icmp ult i32 %.0.copyload.i264, %i.dj
  br i1 %i.dk, label %bb.s, label %.critedge222, !prof !24

bb.s:                                             ; preds = %.loopexit
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.dm = zext i32 %.0.copyload.i264 to i64
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !26 ; 2 uses
  %.not217 = icmp eq ptr %i.dp, null
  br i1 %.not217, label %.critedge222, label %bb.t, !prof !28

bb.t:                                             ; preds = %bb.s
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !29 ; 4 uses
  %i.dr = icmp eq ptr %i.dq, @.str.3
  br i1 %i.dr, label %func_types_eq.exit267.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not272 = icmp eq ptr %i.dq, null
  br i1 %.not272, label %.critedge222, label %func_types_eq.exit267, !prof !30

func_types_eq.exit267:                            ; preds = %bb.u
  %i.ds = load i128, ptr %i.dq, align 1
  %i.dt = xor i128 90707786523776380123558329061620923017, %i.ds
  %i.du = getelementptr i8, ptr %i.dq, i64 16
  %i.dv = load i128, ptr %i.du, align 1
  %i.dw = xor i128 -36122175591097595875794107267125375431, %i.dv
  %i.dx = or i128 %i.dt, %i.dw
  %i.dy = icmp ne i128 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not.i266 = icmp eq i32 %i.dz, 0
  br i1 %.not.i266, label %func_types_eq.exit267.thread, label %.critedge222, !prof !31

.critedge222:                                     ; preds = %bb.u, %bb.s, %.loopexit, %func_types_eq.exit267
  tail call void @wasm_rt_trap(i32 noundef 6) #17
  unreachable

func_types_eq.exit267.thread:                     ; preds = %bb.t, %func_types_eq.exit267
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !32
  tail call void %i.dp(ptr noundef %i.eb, i32 noundef %i.ag) #16
  br label %bb.v

bb.v:                                             ; preds = %func_types_eq.exit267.thread, %func_types_eq.exit255.thread, %bb.e
  %.1 = phi i32 [ -1, %bb.e ], [ -1, %func_types_eq.exit255.thread ], [ %i.au, %func_types_eq.exit267.thread ]
  ret i32 %.1
}

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x3A0x3A_0x5Fclone0x280x290x20const(ptr noundef, i32 noundef) #2

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x3A0x3A_0x5Fclone0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Fbase0x3Cvoid0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x2A0x290x20const(ptr noundef, i32 noundef, i32 noundef) #2

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x3A0x3Aoperator0x280x290x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x260x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x3A0x3A_0x5Fclone0x280x290x20const(ptr noundef, i32 noundef) #2

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x3A0x3A_0x5Fclone0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Fbase0x3Cvoid0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x2A0x290x20const(ptr noundef, i32 noundef, i32 noundef) #2

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x3A0x3Aoperator0x280x290x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x260x260x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @w2c_hermes_memory(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @w2c_hermes_get_global_base(ptr noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret i32 16384
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @w2c_hermes_get_global_base_0(ptr noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret i32 16384
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @w2c_hermes_get_hermes_abi_vtable(ptr noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret i32 260948
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @w2c_hermes_get_hermes_abi_vtable_0(ptr noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret i32 260948
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_0x5Finitialize(ptr noundef initializes((28, 36)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @w2c_hermes_0x5F_wasm_call_ctors(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_0x5Finitialize_0(ptr noundef initializes((28, 36)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @w2c_hermes_0x5F_wasm_call_ctors(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @w2c_hermes_0x5F_indirect_function_table(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_malloc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @w2c_hermes_dlmalloc(ptr noundef %0, i32 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_dlmalloc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = add i32 %i.b, -16
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = icmp ult i32 %1, 245
  br i1 %i.d, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 67 uses
  %.val3364 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %.val3364, i64 272036
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.g = add nuw nsw i32 %1, 11
  %i.h = and i32 %i.g, 504
  %i.i = icmp samesign ult i32 %1, 5
  %i.j = select i1 %i.i, i32 16, i32 %i.h         ; 12 uses
  %i.k = lshr exact i32 %i.j, 3                   ; 4 uses
  %i.l = lshr i32 %.0.copyload.i, %i.k            ; 4 uses
  %i.m = and i32 %i.l, 3
  %.not3139 = icmp eq i32 %i.m, 0
  br i1 %.not3139, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.l, 1
  %i.o = xor i32 %i.n, 1
  %i.p = add nuw nsw i32 %i.o, %i.k               ; 3 uses
  %i.q = shl nuw nsw i32 %i.p, 3                  ; 4 uses
  %i.r = add nuw nsw i32 %i.q, 272076             ; 2 uses
  %i.s = add nuw nsw i32 %i.q, 272084
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %.val3363 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %.val3363, i64 %i.t
  %.0.copyload.i3567 = load i32, ptr %i.u, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3567) #16, !srcloc !22
  %i.v = zext i32 %.0.copyload.i3567 to i64       ; 2 uses
  %.val3362 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %.val3362, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i3568 = load i32, ptr %i.x, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3568) #16, !srcloc !22
  %i.y = icmp eq i32 %i.r, %.0.copyload.i3568
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = and i32 %i.p, 31
  %i.aa = shl i32 -2, %i.z
  %i.ab = sub nuw nsw i32 32, %i.p
  %i.ac = lshr i32 -2, %i.ab
  %i.ad = or i32 %i.aa, %i.ac
  %i.ae = and i32 %i.ad, %.0.copyload.i
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = zext i32 %.0.copyload.i3568 to i64
  %.val3554 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.val3554, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 %i.r, ptr %i.ah, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink3844 = phi i64 [ %i.t, %bb.e ], [ 272036, %bb.d ]
  %.0.copyload.i3568.sink = phi i32 [ %.0.copyload.i3568, %bb.e ], [ %i.ae, %bb.d ]
  %.val3553 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.val3553, i64 %.sink3844
  store i32 %.0.copyload.i3568.sink, ptr %i.ai, align 1
  %i.aj = add i32 %.0.copyload.i3567, 8
  %i.ak = or disjoint i32 %i.q, 3
  %.val3552 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.val3552, i64 %i.v
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %i.ak, ptr %i.am, align 1
  %i.an = add i32 %.0.copyload.i3567, %i.q
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 4                ; 2 uses
  %.val3361 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.val3361, i64 %i.ap
  %.0.copyload.i3569 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3569) #16, !srcloc !22
  %i.ar = or i32 %.0.copyload.i3569, 1
  %.val3551 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %.val3551, i64 %i.ap
  store i32 %i.ar, ptr %i.as, align 1
  br label %bb.gu

bb.g:                                             ; preds = %bb.b
  %.val3360 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.val3360, i64 272044
  %.0.copyload.i3570 = load i32, ptr %i.at, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3570) #16, !srcloc !22
  %.not3140 = icmp ugt i32 %i.j, %.0.copyload.i3570
  br i1 %.not3140, label %bb.h, label %bb.az

bb.h:                                             ; preds = %bb.g
  %.not3141 = icmp eq i32 %i.l, 0
  br i1 %.not3141, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = shl i32 2, %i.k                         ; 2 uses
  %i.av = sub i32 0, %i.au
  %i.aw = or i32 %i.au, %i.av
  %i.ax = shl i32 %i.l, %i.k
  %i.ay = and i32 %i.ax, %i.aw                    ; 3 uses
  %i.az = sub i32 0, %i.ay
  %i.ba = and i32 %i.ay, %i.az
  %.not3158 = icmp eq i32 %i.ba, 0
  %i.bb = tail call range(i32 2, 33) i32 @llvm.cttz.i32(i32 %i.ay, i1 true)
  %i.bc = select i1 %.not3158, i32 32, i32 %i.bb  ; 2 uses
  %i.bd = shl nuw nsw i32 %i.bc, 3                ; 4 uses
  %i.be = add nuw nsw i32 %i.bd, 272076           ; 2 uses
  %i.bf = add nuw nsw i32 %i.bd, 272084
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %.val3359 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.val3359, i64 %i.bg
  %.0.copyload.i3571 = load i32, ptr %i.bh, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3571) #16, !srcloc !22
  %i.bi = zext i32 %.0.copyload.i3571 to i64      ; 2 uses
  %.val3358 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %.val3358, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.0.copyload.i3572 = load i32, ptr %i.bk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3572) #16, !srcloc !22
  %i.bl = icmp eq i32 %i.be, %.0.copyload.i3572
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %i.bc)
  %i.bn = and i32 %i.bm, %.0.copyload.i           ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bo = zext i32 %.0.copyload.i3572 to i64
  %.val3549 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %.val3549, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 %i.be, ptr %i.bq, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink3845 = phi i64 [ %i.bg, %bb.k ], [ 272036, %bb.j ]
  %.0.copyload.i3572.sink = phi i32 [ %.0.copyload.i3572, %bb.k ], [ %i.bn, %bb.j ]
  %.03003 = phi i32 [ %.0.copyload.i, %bb.k ], [ %i.bn, %bb.j ] ; 2 uses
  %.val3548 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %.val3548, i64 %.sink3845
  store i32 %.0.copyload.i3572.sink, ptr %i.br, align 1
  %i.bs = or disjoint i32 %i.j, 3
  %.val3547 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.val3547, i64 %i.bi
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bs, ptr %i.bu, align 1
  %i.bv = add i32 %.0.copyload.i3571, %i.j        ; 2 uses
  %i.bw = sub nsw i32 %i.bd, %i.j                 ; 3 uses
  %i.bx = or disjoint i32 %i.bw, 1
  %i.by = zext i32 %i.bv to i64
  %.val3546 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %.val3546, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.bx, ptr %i.ca, align 1
  %i.cb = add i32 %.0.copyload.i3571, %i.bd
  %i.cc = zext i32 %i.cb to i64
  %.val3545 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %.val3545, i64 %i.cc
  store i32 %i.bw, ptr %i.cd, align 1
  %.not3160 = icmp eq i32 %.0.copyload.i3570, 0
  br i1 %.not3160, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = and i32 %.0.copyload.i3570, -8          ; 3 uses
  %i.cf = add nuw nsw i32 %i.ce, 272076           ; 2 uses
  %.val3357 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %.val3357, i64 272056
  %.0.copyload.i3573 = load i32, ptr %i.cg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3573) #16, !srcloc !22
  %i.ch = lshr i32 %.0.copyload.i3570, 3
  %i.ci = shl nuw nsw i32 1, %i.ch                ; 2 uses
  %i.cj = and i32 %.03003, %i.ci
  %.not3161 = icmp eq i32 %i.cj, 0
  %.val3544 = load ptr, ptr %i.e, align 8, !tbaa !21 ; 2 uses
  br i1 %.not3161, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ck = or i32 %.03003, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %.val3544, i64 272036
  store i32 %i.ck, ptr %i.cl, align 1
  %.pre3788 = zext nneg i32 %i.ce to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cm = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val3544, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 272084
  %.0.copyload.i3574 = load i32, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3574) #16, !srcloc !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi3789 = phi i64 [ %i.cm, %bb.o ], [ %.pre3788, %bb.n ]
  %.02995 = phi i32 [ %.0.copyload.i3574, %bb.o ], [ %i.cf, %bb.n ] ; 2 uses
  %.val3543 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %.val3543, i64 %.pre-phi3789
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 272084
  store i32 %.0.copyload.i3573, ptr %i.cq, align 1
  %i.cr = zext i32 %.02995 to i64
  %.val3542 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %.val3542, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %.0.copyload.i3573, ptr %i.ct, align 1
  %i.cu = zext i32 %.0.copyload.i3573 to i64      ; 2 uses
  %.val3541 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3541, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 %i.cf, ptr %i.cw, align 1
  %.val3540 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %.val3540, i64 %i.cu
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
end_hunk_2
begin_hunk_3_@w2c_hermes_dlmalloc:bb.a
bb.gh:                                            ; preds = %bb.gg, %bb.ge
  %i.ann = zext i32 %.83018 to i64                ; 3 uses
  %.val3381 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ano = getelementptr inbounds nuw i8, ptr %.val3381, i64 %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 24
  store i32 %.0.copyload.i3581, ptr %i.anp, align 1
  %.val3230 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.anq = getelementptr inbounds nuw i8, ptr %.val3230, i64 %i.ed
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 16
  %.0.copyload.i3704 = load i32, ptr %i.anr, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3704) #16, !srcloc !22
  %.not3154 = icmp eq i32 %.0.copyload.i3704, 0
  br i1 %.not3154, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.val3380 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ans = getelementptr inbounds nuw i8, ptr %.val3380, i64 %i.ann
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 16
  store i32 %.0.copyload.i3704, ptr %i.ant, align 1
  %i.anu = zext i32 %.0.copyload.i3704 to i64
  %.val3379 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.anv = getelementptr inbounds nuw i8, ptr %.val3379, i64 %i.anu
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 24
  store i32 %.83018, ptr %i.anw, align 1
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.val3229 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.anx = getelementptr inbounds nuw i8, ptr %.val3229, i64 %i.ed
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 20
  %.0.copyload.i3705 = load i32, ptr %i.any, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3705) #16, !srcloc !22
  %.not3155 = icmp eq i32 %.0.copyload.i3705, 0
  br i1 %.not3155, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %.val3378 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.anz = getelementptr inbounds nuw i8, ptr %.val3378, i64 %i.ann
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 20
  store i32 %.0.copyload.i3705, ptr %i.aoa, align 1
  %i.aob = zext i32 %.0.copyload.i3705 to i64
  %.val3377 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.aoc = getelementptr inbounds nuw i8, ptr %.val3377, i64 %i.aob
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 24
  store i32 %.83018, ptr %i.aod, align 1
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gj, %bb.gg, %bb.gc, %bb.gk, %bb.gf
  %i.aoe = icmp ult i32 %.03019, 16
  br i1 %i.aoe, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.aof = add nuw nsw i32 %.03019, %i.j          ; 2 uses
  %i.aog = or i32 %i.aof, 3
  %.val3376 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.aoh = getelementptr inbounds nuw i8, ptr %.val3376, i64 %i.ed
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 4
  store i32 %i.aog, ptr %i.aoi, align 1
  %i.aoj = add i32 %i.aof, %.03031
  %i.aok = zext i32 %i.aoj to i64
  %i.aol = add nuw nsw i64 %i.aok, 4              ; 2 uses
  %.val3228 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.aom = getelementptr inbounds nuw i8, ptr %.val3228, i64 %i.aol
  %.0.copyload.i3706 = load i32, ptr %i.aom, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3706) #16, !srcloc !22
  %i.aon = or i32 %.0.copyload.i3706, 1
  br label %bb.gt

bb.gn:                                            ; preds = %bb.gl
  %i.aoo = or disjoint i32 %i.j, 3
  %.val3374 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.aop = getelementptr inbounds nuw i8, ptr %.val3374, i64 %i.ed
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 4
  store i32 %i.aoo, ptr %i.aoq, align 1
  %i.aor = add i32 %.03031, %i.j                  ; 3 uses
  %i.aos = or i32 %.03019, 1
  %i.aot = zext i32 %i.aor to i64
  %.val3373 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.aou = getelementptr inbounds nuw i8, ptr %.val3373, i64 %i.aot
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 4
  store i32 %i.aos, ptr %i.aov, align 1
  %i.aow = add i32 %.03019, %i.aor
  %i.aox = zext i32 %i.aow to i64
  %.val3372 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.aoy = getelementptr inbounds nuw i8, ptr %.val3372, i64 %i.aox
  store i32 %.03019, ptr %i.aoy, align 1
  %.not3156 = icmp eq i32 %.0.copyload.i3570, 0
  br i1 %.not3156, label %bb.gs, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aoz = and i32 %.0.copyload.i3570, -8         ; 3 uses
  %i.apa = add nuw nsw i32 %i.aoz, 272076         ; 2 uses
  %.val3227 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.apb = getelementptr inbounds nuw i8, ptr %.val3227, i64 272056
  %.0.copyload.i3707 = load i32, ptr %i.apb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3707) #16, !srcloc !22
  %i.apc = lshr i32 %.0.copyload.i3570, 3
  %i.apd = shl nuw nsw i32 1, %i.apc              ; 2 uses
  %i.ape = and i32 %i.apd, %.0.copyload.i
  %.not3157 = icmp eq i32 %i.ape, 0
  %.val3371 = load ptr, ptr %i.e, align 8, !tbaa !21 ; 2 uses
  br i1 %.not3157, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.apf = or i32 %i.apd, %.0.copyload.i
  %i.apg = getelementptr inbounds nuw i8, ptr %.val3371, i64 272036
  store i32 %i.apf, ptr %i.apg, align 1
  %.pre3786 = zext nneg i32 %i.aoz to i64
  br label %bb.gr

bb.gq:                                            ; preds = %bb.go
  %i.aph = zext nneg i32 %i.aoz to i64            ; 2 uses
  %i.api = getelementptr i8, ptr %.val3371, i64 %i.aph
  %i.apj = getelementptr i8, ptr %i.api, i64 272084
  %.0.copyload.i3708 = load i32, ptr %i.apj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3708) #16, !srcloc !22
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %.pre-phi3787 = phi i64 [ %i.aph, %bb.gq ], [ %.pre3786, %bb.gp ]
  %.63001 = phi i32 [ %.0.copyload.i3708, %bb.gq ], [ %i.apa, %bb.gp ] ; 2 uses
  %.val3370 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.apk = getelementptr i8, ptr %.val3370, i64 %.pre-phi3787
  %i.apl = getelementptr i8, ptr %i.apk, i64 272084
  store i32 %.0.copyload.i3707, ptr %i.apl, align 1
  %i.apm = zext i32 %.63001 to i64
  %.val3369 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.apn = getelementptr inbounds nuw i8, ptr %.val3369, i64 %i.apm
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 12
  store i32 %.0.copyload.i3707, ptr %i.apo, align 1
  %i.app = zext i32 %.0.copyload.i3707 to i64     ; 2 uses
  %.val3368 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.apq = getelementptr inbounds nuw i8, ptr %.val3368, i64 %i.app
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 12
  store i32 %i.apa, ptr %i.apr, align 1
  %.val3367 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.aps = getelementptr inbounds nuw i8, ptr %.val3367, i64 %i.app
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 8
  store i32 %.63001, ptr %i.apt, align 1
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gn
  %.val3366 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.apu = getelementptr inbounds nuw i8, ptr %.val3366, i64 272056
  store i32 %i.aor, ptr %i.apu, align 1
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gm
  %.sink3846 = phi i64 [ 272044, %bb.gs ], [ %i.aol, %bb.gm ]
  %.03019.lcssa.sink = phi i32 [ %.03019, %bb.gs ], [ %i.aon, %bb.gm ]
  %.val3365 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.apv = getelementptr inbounds nuw i8, ptr %.val3365, i64 %.sink3846
  store i32 %.03019.lcssa.sink, ptr %i.apv, align 1
  %i.apw = add i32 %.03031, 8
  br label %bb.gu

bb.gu:                                            ; preds = %bb.bl, %bb.bj, %bb.gt, %bb.gb, %bb.fc, %bb.ee, %bb.ed, %bb.bf, %bb.bd, %bb.q, %bb.f
  %.22 = phi i32 [ %i.aj, %bb.f ], [ %i.kb, %bb.bd ], [ %i.kr, %bb.bf ], [ 0, %bb.bj ], [ 0, %bb.bl ], [ %i.amt, %bb.gb ], [ 0, %bb.ee ], [ %i.acl, %bb.ed ], [ %i.ahn, %bb.fc ], [ %i.cz, %bb.q ], [ %i.apw, %bb.gt ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !19
  ret i32 %.22
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_realloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @w2c_hermes_dlrealloc(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_dlrealloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @w2c_hermes_dlmalloc(ptr noundef %0, i32 noundef %2)
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %2, -65
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val721 = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %.val721, i64 272032
  store i32 48, ptr %i.d, align 1
  br label %bb.au

bb.e:                                             ; preds = %bb.c
  %i.e = add nuw i32 %2, 11
  %i.f = and i32 %i.e, -8
  %i.g = icmp ult i32 %2, 5
  %i.h = select i1 %i.g, i32 16, i32 %i.f         ; 19 uses
  %i.i = add i32 %1, -8                           ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 59 uses
  %i.k = zext i32 %i.i to i64
  %i.l = add nuw nsw i64 %i.k, 4                  ; 5 uses
  %.val686 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.l
  %.0.copyload.i = load i32, ptr %i.m, align 1    ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.n = and i32 %.0.copyload.i, -8               ; 8 uses
  %i.o = and i32 %.0.copyload.i, 3
  %.not639 = icmp eq i32 %i.o, 0
  br i1 %.not639, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = icmp ugt i32 %i.h, 255
  %.not653.not = icmp ult i32 %i.h, %i.n
  %or.cond = and i1 %i.p, %.not653.not
  br i1 %or.cond, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.q = sub nuw i32 %i.n, %i.h
  %.val685 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %.val685, i64 272516
  %.0.copyload.i722 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i722) #16, !srcloc !22
  %i.s = shl i32 %.0.copyload.i722, 1
  %.not654 = icmp ugt i32 %i.q, %i.s
  %.not655 = icmp eq i32 %i.i, 0
  %or.cond753 = or i1 %.not655, %.not654
  br i1 %or.cond753, label %.thread, label %bb.au

bb.h:                                             ; preds = %bb.e
  %i.t = add i32 %i.n, %i.i                       ; 9 uses
  %.not640 = icmp ult i32 %i.n, %i.h
  br i1 %.not640, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = sub nuw i32 %i.n, %i.h                   ; 3 uses
  %i.v = icmp ult i32 %i.u, 16
  br i1 %i.v, label %bb.as, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = and i32 %.0.copyload.i, 1
  %i.x = or disjoint i32 %i.h, %i.w
  %i.y = or disjoint i32 %i.x, 2
  %.val720 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %.val720, i64 %i.l
  store i32 %i.y, ptr %i.z, align 1
  %i.aa = add i32 %i.h, %i.i                      ; 2 uses
  %i.ab = or disjoint i32 %i.u, 3
  %i.ac = zext i32 %i.aa to i64
  %.val719 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %.val719, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %i.ab, ptr %i.ae, align 1
  %i.af = zext i32 %i.t to i64
  %i.ag = add nuw nsw i64 %i.af, 4                ; 2 uses
  %.val684 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %.val684, i64 %i.ag
  %.0.copyload.i723 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i723) #16, !srcloc !22
  %i.ai = or i32 %.0.copyload.i723, 1
  %.val718 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.val718, i64 %i.ag
  store i32 %i.ai, ptr %i.aj, align 1
  tail call void @w2c_hermes_dispose_chunk(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef %i.u)
  br label %bb.as

bb.k:                                             ; preds = %bb.h
  %.val683 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.val683, i64 272060
  %.0.copyload.i724 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i724) #16, !srcloc !22
  %i.al = icmp eq i32 %.0.copyload.i724, %i.t
  %.val682 = load ptr, ptr %i.j, align 8, !tbaa !21 ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %.val682, i64 272048
  %.0.copyload.i725 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i725) #16, !srcloc !22
  %i.an = add i32 %.0.copyload.i725, %i.n         ; 2 uses
  %.not652 = icmp ugt i32 %i.an, %i.h
  br i1 %.not652, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ao = and i32 %.0.copyload.i, 1
  %i.ap = or disjoint i32 %i.h, %i.ao
  %i.aq = or disjoint i32 %i.ap, 2
  %.val717 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.val717, i64 %i.l
  store i32 %i.aq, ptr %i.ar, align 1
  %i.as = add i32 %i.h, %i.i                      ; 2 uses
  %i.at = sub nuw i32 %i.an, %i.h                 ; 2 uses
  %i.au = or i32 %i.at, 1
  %i.av = zext i32 %i.as to i64
  %.val716 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.val716, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.au, ptr %i.ax, align 1
  %.val715 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.val715, i64 272048
  store i32 %i.at, ptr %i.ay, align 1
  %.val714 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.val714, i64 272060
  store i32 %i.as, ptr %i.az, align 1
  br label %bb.as

bb.n:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %.val682, i64 272056
  %.0.copyload.i726 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i726) #16, !srcloc !22
  %i.bb = icmp eq i32 %.0.copyload.i726, %i.t
  br i1 %i.bb, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %.val680 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.val680, i64 272044
  %.0.copyload.i727 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i727) #16, !srcloc !22
  %i.bd = add i32 %.0.copyload.i727, %i.n         ; 5 uses
  %i.be = icmp ult i32 %i.bd, %i.h
  br i1 %i.be, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = sub nuw i32 %i.bd, %i.h                 ; 4 uses
  %i.bg = icmp ugt i32 %i.bf, 15
  %i.bh = and i32 %.0.copyload.i, 1               ; 2 uses
  %.val713 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %.val713, i64 %i.l ; 2 uses
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = or disjoint i32 %i.h, %i.bh
  %i.bk = or disjoint i32 %i.bj, 2
  store i32 %i.bk, ptr %i.bi, align 1
  %i.bl = add i32 %i.h, %i.i                      ; 2 uses
  %i.bm = or i32 %i.bf, 1
  %i.bn = zext i32 %i.bl to i64
  %.val712 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %.val712, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bm, ptr %i.bp, align 1
  %i.bq = add i32 %i.bd, %i.i
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %.val711 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.val711, i64 %i.br
  store i32 %i.bf, ptr %i.bs, align 1
  %i.bt = add nuw nsw i64 %i.br, 4                ; 2 uses
  %.val679 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.val679, i64 %i.bt
  %.0.copyload.i728 = load i32, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i728) #16, !srcloc !22
  %i.bv = and i32 %.0.copyload.i728, -2
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bw = or i32 %i.bh, %i.bd
  %i.bx = or i32 %i.bw, 2
  store i32 %i.bx, ptr %i.bi, align 1
  %i.by = add i32 %i.bd, %i.i
  %i.bz = zext i32 %i.by to i64
  %i.ca = add nuw nsw i64 %i.bz, 4                ; 2 uses
  %.val678 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %.val678, i64 %i.ca
  %.0.copyload.i729 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i729) #16, !srcloc !22
  %i.cc = or i32 %.0.copyload.i729, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink770 = phi i64 [ %i.ca, %bb.r ], [ %i.bt, %bb.q ]
  %.sink = phi i32 [ %i.cc, %bb.r ], [ %i.bv, %bb.q ]
  %.0615 = phi i32 [ 0, %bb.r ], [ %i.bl, %bb.q ]
  %.0 = phi i32 [ 0, %bb.r ], [ %i.bf, %bb.q ]
  %.val708 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %.val708, i64 %.sink770
  store i32 %.sink, ptr %i.cd, align 1
  %.val707 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %.val707, i64 272056
  store i32 %.0615, ptr %i.ce, align 1
  %.val706 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %.val706, i64 272044
  store i32 %.0, ptr %i.cf, align 1
  br label %bb.as

bb.t:                                             ; preds = %bb.n
  %i.cg = zext i32 %i.t to i64                    ; 9 uses
  %.val677 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %.val677, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.0.copyload.i730 = load i32, ptr %i.ci, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i730) #16, !srcloc !22
  %i.cj = and i32 %.0.copyload.i730, 2
  %.not641 = icmp eq i32 %i.cj, 0
  br i1 %.not641, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ck = and i32 %.0.copyload.i730, -8
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3ADominanceInfo0x3A0x3ADominanceInfo0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %i.ala = getelementptr inbounds nuw i8, ptr %.val6524, i64 %i.akz
  %.0.copyload.i7092 = load i32, ptr %i.ala, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7092) #16, !srcloc !22
  %.not6314 = icmp eq i32 %.0.copyload.i7090, %.0.copyload.i7092
  br i1 %.not6314, label %.loopexit7247, label %.preheader7246

bb.fd:                                            ; preds = %.loopexit7249, %bb.fb
  %.245979 = phi i32 [ %i.akq, %bb.fb ], [ 0, %.loopexit7249 ]
  %.125908 = phi i32 [ %.115907, %bb.fb ], [ %.0.copyload.i7089, %.loopexit7249 ]
  %.85866 = phi i32 [ %.75865, %bb.fb ], [ %.65864, %.loopexit7249 ]
  %.75848 = phi i32 [ %.65847, %bb.fb ], [ %.55846, %.loopexit7249 ]
  %i.alb = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef %.245979, i32 noundef %i.aeu) #16
  %.pre7484 = zext i32 %i.alb to i64
  br label %.loopexit7247

.loopexit7247:                                    ; preds = %bb.fc, %bb.fa, %bb.fd
  %.pre-phi7485 = phi i64 [ %.pre7484, %bb.fd ], [ %i.akm, %bb.fa ], [ %i.akz, %bb.fc ]
  %.135909 = phi i32 [ %.125908, %bb.fd ], [ %.115907, %bb.fa ], [ %.115907, %bb.fc ]
  %.95867 = phi i32 [ %.85866, %bb.fd ], [ %.75865, %bb.fa ], [ %.75865, %bb.fc ]
  %.85849 = phi i32 [ %.75848, %bb.fd ], [ %.65847, %bb.fa ], [ %.65847, %bb.fc ]
  %.val6523 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alc = getelementptr inbounds nuw i8, ptr %.val6523, i64 %.pre-phi7485
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 12
  %.0.copyload.i7093 = load i32, ptr %i.ald, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7093) #16, !srcloc !22
  %i.ale = icmp ugt i32 %.0.copyload.i7093, %.135909
  br i1 %i.ale, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %.loopexit7247
  %.val6522 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alf = getelementptr inbounds nuw i8, ptr %.val6522, i64 %i.acm
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  %.0.copyload.i7094 = load i32, ptr %i.alg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7094) #16, !srcloc !22
  %i.alh = zext i32 %.95867 to i64
  %.val6774 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ali = getelementptr inbounds nuw i8, ptr %.val6774, i64 %i.alh
  store i32 %.0.copyload.i7094, ptr %i.ali, align 1
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.loopexit7247
  %i.alj = zext i32 %.85849 to i64
  %.val6521 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alk = getelementptr inbounds nuw i8, ptr %.val6521, i64 %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  %.0.copyload.i7095 = load i32, ptr %i.all, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7095) #16, !srcloc !22
  %.val6773 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alm = getelementptr inbounds nuw i8, ptr %.val6773, i64 %i.age
  store i32 %.0.copyload.i7095, ptr %i.alm, align 1
  %.val6520 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aln = getelementptr inbounds nuw i8, ptr %.val6520, i64 %i.adr
  %.0.copyload.i7096 = load i32, ptr %i.aln, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7096) #16, !srcloc !22
  br label %bb.fg

bb.fg:                                            ; preds = %bb.eo, %bb.ff, %bb.en
  %.265981 = phi i32 [ %i.ahd, %bb.eo ], [ %.0.copyload.i7096, %bb.ff ], [ %i.aha, %bb.en ] ; 2 uses
  %.not6316 = icmp eq i32 %.265981, 0
  br i1 %.not6316, label %bb.fh, label %bb.ef

bb.fh:                                            ; preds = %bb.fg
  %.val6519 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alo = getelementptr inbounds nuw i8, ptr %.val6519, i64 %.pre-phi7476
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 16
  %.0.copyload.i7097 = load i32, ptr %i.alp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7097) #16, !srcloc !22
  %.val6518 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alq = getelementptr inbounds nuw i8, ptr %.val6518, i64 %i.aeb
  %.0.copyload.i7098 = load i32, ptr %i.alq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7098) #16, !srcloc !22
  %.val6517 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alr = getelementptr inbounds nuw i8, ptr %.val6517, i64 %i.aed
  %.0.copyload.i7099 = load i32, ptr %i.alr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7099) #16, !srcloc !22
  %i.als = icmp eq i32 %.0.copyload.i7098, %.0.copyload.i7099
  br i1 %i.als, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7098)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %bb.ed
  %.105946 = phi i32 [ %.0.copyload.i7052, %bb.ed ], [ %.0.copyload.i7097, %bb.fh ], [ %.0.copyload.i7097, %bb.fi ] ; 2 uses
  %.val6516 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alt = getelementptr inbounds nuw i8, ptr %.val6516, i64 %i.adu
  %.0.copyload.i7100 = load i32, ptr %i.alt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7100) #16, !srcloc !22
  %i.alu = icmp eq i32 %.0.copyload.i7100, %i.adt
  br i1 %i.alu, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7100)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk, %bb.eb
  %.115947 = phi i32 [ %.0.copyload.i7050, %bb.eb ], [ %.105946, %bb.fj ], [ %.105946, %bb.fk ] ; 11 uses
  store i32 %i.ack, ptr %i.q, align 8, !tbaa !19
  %.val6515 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alv = getelementptr inbounds nuw i8, ptr %.val6515, i64 %i.ys
  %.0.copyload.i7101 = load i32, ptr %i.alv, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7101) #16, !srcloc !22
  %.val6514 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alw = getelementptr inbounds nuw i8, ptr %.val6514, i64 %i.ir
  %.0.copyload.i7102 = load i32, ptr %i.alw, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7102) #16, !srcloc !22
  %.not6317 = icmp eq i32 %.0.copyload.i7102, 0
  br i1 %.not6317, label %bb.fp, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.alx = add i32 %.0.copyload.i7102, -1         ; 2 uses
  %i.aly = lshr i32 %.115947, 4
  %i.alz = lshr i32 %.115947, 9
  %i.ama = xor i32 %i.aly, %i.alz
  %i.amb = and i32 %i.alx, %i.ama                 ; 2 uses
  %i.amc = mul i32 %i.amb, 44
  %i.amd = add i32 %i.amc, %.0.copyload.i7101     ; 2 uses
  %i.ame = zext i32 %i.amd to i64                 ; 2 uses
  %.val6513 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.amf = getelementptr inbounds nuw i8, ptr %.val6513, i64 %i.ame
  %.0.copyload.i7103 = load i32, ptr %i.amf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7103) #16, !srcloc !22
  %i.amg = icmp eq i32 %.115947, %.0.copyload.i7103
  br i1 %i.amg, label %.loopexit7260, label %.preheader7259

.preheader7259:                                   ; preds = %bb.fm, %bb.fo
  %.146043 = phi i32 [ %i.amq, %bb.fo ], [ %i.amd, %bb.fm ] ; 2 uses
  %.275982 = phi i32 [ %i.amo, %bb.fo ], [ %i.amb, %bb.fm ]
  %.125948 = phi i32 [ %.0.copyload.i7104, %bb.fo ], [ %.0.copyload.i7103, %bb.fm ] ; 2 uses
  %.95881 = phi i32 [ %i.aml, %bb.fo ], [ 0, %bb.fm ] ; 3 uses
  %.105868 = phi i32 [ %i.amn, %bb.fo ], [ 1, %bb.fm ] ; 2 uses
  %i.amh = icmp eq i32 %.125948, -4
  %.not6320 = icmp eq i32 %.95881, 0              ; 2 uses
  br i1 %i.amh, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %.preheader7259
  %i.ami = select i1 %.not6320, i32 %.146043, i32 %.95881
  br label %bb.fp

bb.fo:                                            ; preds = %.preheader7259
  %i.amj = icmp eq i32 %.125948, -8
  %i.amk = select i1 %i.amj, i1 %.not6320, i1 false
  %i.aml = select i1 %i.amk, i32 %.146043, i32 %.95881
  %i.amm = add i32 %.105868, %.275982
  %i.amn = add i32 %.105868, 1
  %i.amo = and i32 %i.amm, %i.alx                 ; 2 uses
  %i.amp = mul i32 %i.amo, 44
  %i.amq = add i32 %i.amp, %.0.copyload.i7101     ; 2 uses
  %i.amr = zext i32 %i.amq to i64                 ; 2 uses
  %.val6512 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ams = getelementptr inbounds nuw i8, ptr %.val6512, i64 %i.amr
  %.0.copyload.i7104 = load i32, ptr %i.ams, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7104) #16, !srcloc !22
  %.not6319 = icmp eq i32 %.115947, %.0.copyload.i7104
  br i1 %.not6319, label %.loopexit7260, label %.preheader7259

bb.fp:                                            ; preds = %bb.fl, %bb.fn
  %.156044 = phi i32 [ %i.ami, %bb.fn ], [ 0, %bb.fl ]
  %.val6511 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.amt = getelementptr inbounds nuw i8, ptr %.val6511, i64 %i.yt
  %.0.copyload.i7105 = load i32, ptr %i.amt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7105) #16, !srcloc !22
  %i.amu = shl i32 %.0.copyload.i7105, 2
  %i.amv = add i32 %i.amu, 4
  %i.amw = mul i32 %.0.copyload.i7102, 3
  %.not6321 = icmp ult i32 %i.amv, %i.amw
  br i1 %.not6321, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.amx = shl i32 %.0.copyload.i7102, 1
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  %i.amy = xor i32 %.0.copyload.i7105, -1
  %i.amz = add i32 %.0.copyload.i7102, %i.amy
  %.val6510 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ana = getelementptr inbounds nuw i8, ptr %.val6510, i64 %i.iq
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 20
  %.0.copyload.i7106 = load i32, ptr %i.anb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7106) #16, !srcloc !22
  %i.anc = sub i32 %i.amz, %.0.copyload.i7106
  %i.and = lshr i32 %.0.copyload.i7102, 3
  %i.ane = icmp ugt i32 %i.anc, %i.and
  br i1 %i.ane, label %bb.fz, label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.285983 = phi i32 [ %i.amx, %bb.fq ], [ %.0.copyload.i7102, %bb.fr ]
  %i.anf = add i32 %.285983, -1
  %i.ang = zext i32 %i.anf to i64                 ; 2 uses
  %i.anh = lshr i64 %i.ang, 1
  %i.ani = or i64 %i.anh, %i.ang                  ; 2 uses
  %i.anj = lshr i64 %i.ani, 2
  %i.ank = or i64 %i.anj, %i.ani                  ; 2 uses
  %i.anl = lshr i64 %i.ank, 4
  %i.anm = or i64 %i.anl, %i.ank                  ; 2 uses
  %i.ann = lshr i64 %i.anm, 8
  %i.ano = or i64 %i.ann, %i.anm                  ; 2 uses
  %i.anp = lshr i64 %i.ano, 16
  %i.anq = or i64 %i.anp, %i.ano
  %i.anr = trunc nuw i64 %i.anq to i32
  %i.ans = add i32 %i.anr, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.ans, i32 64) ; 2 uses
  %.val6772 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ant = getelementptr inbounds nuw i8, ptr %.val6772, i64 %i.ir
  store i32 %3, ptr %i.ant, align 1
  %i.anu = mul i32 %3, 44
  %i.anv = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.anu) #16 ; 13 uses
  %.val6771 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.anw = getelementptr inbounds nuw i8, ptr %.val6771, i64 %i.ys
  store i32 %i.anv, ptr %i.anw, align 1
  %.not6322 = icmp eq i32 %.0.copyload.i7101, 0
  br i1 %.not6322, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  %.val6890 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.anx = getelementptr inbounds nuw i8, ptr %.val6890, i64 %i.yt
  store i64 0, ptr %i.anx, align 1
  %.val6509 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.any = getelementptr inbounds nuw i8, ptr %.val6509, i64 %i.ir
  %.0.copyload.i7107 = load i32, ptr %i.any, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7107) #16, !srcloc !22
  %i.anz = mul i32 %.0.copyload.i7107, 44         ; 2 uses
  %i.aoa = add i32 %i.anz, -44                    ; 2 uses
  %i.aob = udiv i32 %i.aoa, 44
  %i.aoc = add nuw nsw i32 %i.aob, 1
  %i.aod = and i32 %i.aoc, 7                      ; 7 uses
  %.not6323 = icmp eq i32 %i.aod, 0
  br i1 %.not6323, label %.loopexit7258, label %.preheader7257

.preheader7257:                                   ; preds = %bb.ft
  %i.aoe = zext i32 %i.anv to i64
  %.val6770 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aof = getelementptr inbounds nuw i8, ptr %.val6770, i64 %i.aoe
  store i32 -4, ptr %i.aof, align 1
  %i.aog = add i32 %i.anv, 44                     ; 2 uses
  %.not6324 = icmp eq i32 %i.aod, 1
  br i1 %.not6324, label %.loopexit7258, label %.preheader7257.1

.preheader7257.1:                                 ; preds = %.preheader7257
  %i.aoh = zext i32 %i.aog to i64
  %.val6770.1 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aoi = getelementptr inbounds nuw i8, ptr %.val6770.1, i64 %i.aoh
  store i32 -4, ptr %i.aoi, align 1
  %i.aoj = add i32 %i.anv, 88                     ; 2 uses
  %.not6324.1 = icmp eq i32 %i.aod, 2
  br i1 %.not6324.1, label %.loopexit7258, label %.preheader7257.2

.preheader7257.2:                                 ; preds = %.preheader7257.1
  %i.aok = zext i32 %i.aoj to i64
  %.val6770.2 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aol = getelementptr inbounds nuw i8, ptr %.val6770.2, i64 %i.aok
  store i32 -4, ptr %i.aol, align 1
  %i.aom = add i32 %i.anv, 132                    ; 2 uses
  %.not6324.2 = icmp eq i32 %i.aod, 3
  br i1 %.not6324.2, label %.loopexit7258, label %.preheader7257.3

.preheader7257.3:                                 ; preds = %.preheader7257.2
  %i.aon = zext i32 %i.aom to i64
  %.val6770.3 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aoo = getelementptr inbounds nuw i8, ptr %.val6770.3, i64 %i.aon
  store i32 -4, ptr %i.aoo, align 1
  %i.aop = add i32 %i.anv, 176                    ; 2 uses
  %.not6324.3 = icmp eq i32 %i.aod, 4
  br i1 %.not6324.3, label %.loopexit7258, label %.preheader7257.4

.preheader7257.4:                                 ; preds = %.preheader7257.3
  %i.aoq = zext i32 %i.aop to i64
  %.val6770.4 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aor = getelementptr inbounds nuw i8, ptr %.val6770.4, i64 %i.aoq
  store i32 -4, ptr %i.aor, align 1
  %i.aos = add i32 %i.anv, 220                    ; 2 uses
  %.not6324.4 = icmp eq i32 %i.aod, 5
  br i1 %.not6324.4, label %.loopexit7258, label %.preheader7257.5

.preheader7257.5:                                 ; preds = %.preheader7257.4
  %i.aot = zext i32 %i.aos to i64
  %.val6770.5 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aou = getelementptr inbounds nuw i8, ptr %.val6770.5, i64 %i.aot
  store i32 -4, ptr %i.aou, align 1
  %i.aov = add i32 %i.anv, 264                    ; 2 uses
  %.not6324.5 = icmp eq i32 %i.aod, 6
  br i1 %.not6324.5, label %.loopexit7258, label %.preheader7257.6

.preheader7257.6:                                 ; preds = %.preheader7257.5
  %i.aow = zext i32 %i.aov to i64
  %.val6770.6 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aox = getelementptr inbounds nuw i8, ptr %.val6770.6, i64 %i.aow
  store i32 -4, ptr %i.aox, align 1
  %i.aoy = add i32 %i.anv, 308
  br label %.loopexit7258

.loopexit7258:                                    ; preds = %.preheader7257, %.preheader7257.1, %.preheader7257.2, %.preheader7257.3, %.preheader7257.4, %.preheader7257.5, %.preheader7257.6, %bb.ft
  %.176046 = phi i32 [ %i.anv, %bb.ft ], [ %i.aog, %.preheader7257 ], [ %i.aoj, %.preheader7257.1 ], [ %i.aom, %.preheader7257.2 ], [ %i.aop, %.preheader7257.3 ], [ %i.aos, %.preheader7257.4 ], [ %i.aov, %.preheader7257.5 ], [ %i.aoy, %.preheader7257.6 ]
  %i.aoz = icmp ult i32 %i.aoa, 308
  br i1 %i.aoz, label %.loopexit7256, label %bb.fu

bb.fu:                                            ; preds = %.loopexit7258
  %i.apa = add i32 %i.anz, %i.anv
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fv, %bb.fu
  %.186047 = phi i32 [ %.176046, %bb.fu ], [ %i.apr, %bb.fv ] ; 2 uses
  %i.apb = zext i32 %.186047 to i64               ; 8 uses
  %.val6769 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apc = getelementptr inbounds nuw i8, ptr %.val6769, i64 %i.apb
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 308
  store i32 -4, ptr %i.apd, align 1
  %.val6768 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ape = getelementptr inbounds nuw i8, ptr %.val6768, i64 %i.apb
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 264
  store i32 -4, ptr %i.apf, align 1
  %.val6767 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apg = getelementptr inbounds nuw i8, ptr %.val6767, i64 %i.apb
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 220
  store i32 -4, ptr %i.aph, align 1
  %.val6766 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.api = getelementptr inbounds nuw i8, ptr %.val6766, i64 %i.apb
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 176
  store i32 -4, ptr %i.apj, align 1
  %.val6765 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apk = getelementptr inbounds nuw i8, ptr %.val6765, i64 %i.apb
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 132
  store i32 -4, ptr %i.apl, align 1
  %.val6764 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apm = getelementptr inbounds nuw i8, ptr %.val6764, i64 %i.apb
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 88
  store i32 -4, ptr %i.apn, align 1
  %.val6763 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apo = getelementptr inbounds nuw i8, ptr %.val6763, i64 %i.apb
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 44
  store i32 -4, ptr %i.app, align 1
  %.val6762 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apq = getelementptr inbounds nuw i8, ptr %.val6762, i64 %i.apb
  store i32 -4, ptr %i.apq, align 1
  %i.apr = add i32 %.186047, 352                  ; 2 uses
  %.not6325 = icmp eq i32 %i.apr, %i.apa
  br i1 %.not6325, label %.loopexit7256, label %bb.fv

bb.fw:                                            ; preds = %bb.fs
  %i.aps = mul i32 %.0.copyload.i7102, 44
  %i.apt = add i32 %i.aps, %.0.copyload.i7101
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef %.0.copyload.i7101, i32 noundef %i.apt) #16
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7101)
  %.val6508 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apu = getelementptr inbounds nuw i8, ptr %.val6508, i64 %i.ys
  %.0.copyload.i7108 = load i32, ptr %i.apu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7108) #16, !srcloc !22
  %.val6507 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apv = getelementptr inbounds nuw i8, ptr %.val6507, i64 %i.ir
  %.0.copyload.i7109 = load i32, ptr %i.apv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7109) #16, !srcloc !22
  br label %.loopexit7256

.loopexit7256:                                    ; preds = %bb.fv, %.loopexit7258, %bb.fw
  %.295984 = phi i32 [ %.0.copyload.i7107, %.loopexit7258 ], [ %.0.copyload.i7109, %bb.fw ], [ %.0.copyload.i7107, %bb.fv ]
  %.135949 = phi i32 [ %i.anv, %.loopexit7258 ], [ %.0.copyload.i7108, %bb.fw ], [ %i.anv, %bb.fv ] ; 2 uses
  %i.apw = add i32 %.295984, -1                   ; 2 uses
  %i.apx = lshr i32 %.115947, 4
  %i.apy = lshr i32 %.115947, 9
  %i.apz = xor i32 %i.apx, %i.apy
  %i.aqa = and i32 %i.apw, %i.apz                 ; 2 uses
  %i.aqb = mul i32 %i.aqa, 44
  %i.aqc = add i32 %i.aqb, %.135949               ; 3 uses
  %i.aqd = zext i32 %i.aqc to i64
  %.val6506 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aqe = getelementptr inbounds nuw i8, ptr %.val6506, i64 %i.aqd
  %.0.copyload.i7110 = load i32, ptr %i.aqe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7110) #16, !srcloc !22
  %.not6326 = icmp eq i32 %.0.copyload.i7110, %.115947
  br i1 %.not6326, label %.loopexit7255, label %.preheader7254

.preheader7254:                                   ; preds = %.loopexit7256, %bb.fy
  %.196048 = phi i32 [ %i.aqo, %bb.fy ], [ %i.aqc, %.loopexit7256 ] ; 2 uses
  %.305985 = phi i32 [ %i.aqj, %bb.fy ], [ 0, %.loopexit7256 ] ; 3 uses
  %.155911 = phi i32 [ %.0.copyload.i7111, %bb.fy ], [ %.0.copyload.i7110, %.loopexit7256 ] ; 2 uses
  %.105882 = phi i32 [ %i.aql, %bb.fy ], [ 1, %.loopexit7256 ] ; 2 uses
  %.115869 = phi i32 [ %i.aqm, %bb.fy ], [ %i.aqa, %.loopexit7256 ]
  %i.aqf = icmp eq i32 %.155911, -4
  %.not6329 = icmp eq i32 %.305985, 0             ; 2 uses
  br i1 %i.aqf, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %.preheader7254
  %i.aqg = select i1 %.not6329, i32 %.196048, i32 %.305985
  br label %bb.fz

bb.fy:                                            ; preds = %.preheader7254
  %i.aqh = icmp eq i32 %.155911, -8
  %i.aqi = select i1 %i.aqh, i1 %.not6329, i1 false
  %i.aqj = select i1 %i.aqi, i32 %.196048, i32 %.305985
  %i.aqk = add i32 %.115869, %.105882
  %i.aql = add i32 %.105882, 1
  %i.aqm = and i32 %i.aqk, %i.apw                 ; 2 uses
  %i.aqn = mul i32 %i.aqm, 44
  %i.aqo = add i32 %i.aqn, %.135949               ; 3 uses
  %i.aqp = zext i32 %i.aqo to i64
  %.val6505 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aqq = getelementptr inbounds nuw i8, ptr %.val6505, i64 %i.aqp
  %.0.copyload.i7111 = load i32, ptr %i.aqq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7111) #16, !srcloc !22
  %.not6328 = icmp eq i32 %.115947, %.0.copyload.i7111
  br i1 %.not6328, label %.loopexit7255, label %.preheader7254

bb.fz:                                            ; preds = %bb.fr, %bb.fx
  %.216050 = phi i32 [ %i.aqg, %bb.fx ], [ %.156044, %bb.fr ] ; 2 uses
  %i.aqr = zext i32 %.216050 to i64
  %.val6504 = load ptr, ptr %i.a, align 8, !tbaa !21
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3ADominanceInfo0x3A0x3ADominanceInfo0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %.pre-phi7473 = phi i64 [ %.pre7472, %bb.gk ], [ %i.atj, %bb.gi ]
  %.256054 = phi i32 [ %.0.copyload.i7125, %bb.gk ], [ %.0.copyload.i7120, %bb.gi ] ; 2 uses
  %.106001 = phi i32 [ %i.atp, %bb.gk ], [ %i.ati, %bb.gi ] ; 2 uses
  %.165912 = phi i32 [ %.0.copyload.i7127, %bb.gk ], [ %.0.copyload.i7118, %bb.gi ]
  %.125870 = phi i32 [ %.0.copyload.i7126, %bb.gk ], [ %.0.copyload.i7121, %bb.gi ]
  %.val6488 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.atu = getelementptr inbounds nuw i8, ptr %.val6488, i64 %.pre-phi7473
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 12
  %.0.copyload.i7128 = load i32, ptr %i.atv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7128) #16, !srcloc !22
  %i.atw = shl i32 %.0.copyload.i7128, 2
  %i.atx = add i32 %i.atw, %.165912               ; 2 uses
  %.not6337 = icmp eq i32 %.256054, 0
  br i1 %.not6337, label %bb.gl, label %.loopexit7244._crit_edge

.loopexit7244._crit_edge:                         ; preds = %.loopexit7244
  %.pre7497 = add i32 %.256054, -1
  br label %bb.gm

bb.gl:                                            ; preds = %.loopexit7244
  %i.aty = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef 0, i32 noundef %i.atx) #16
  br label %.loopexit7242

bb.gm:                                            ; preds = %.loopexit7244._crit_edge, %bb.gj
  %.pre-phi7498 = phi i32 [ %.pre7497, %.loopexit7244._crit_edge ], [ %i.asq, %bb.gj ] ; 2 uses
  %.116002 = phi i32 [ %.106001, %.loopexit7244._crit_edge ], [ %i.asw, %bb.gj ] ; 3 uses
  %.175913 = phi i32 [ %i.atx, %.loopexit7244._crit_edge ], [ %i.ato, %bb.gj ] ; 2 uses
  %.135871 = phi i32 [ %.125870, %.loopexit7244._crit_edge ], [ %.0.copyload.i7121, %bb.gj ] ; 2 uses
  %i.atz = zext i32 %.175913 to i64
  %.val6487 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aua = getelementptr inbounds nuw i8, ptr %.val6487, i64 %i.atz
  %.0.copyload.i7129 = load i32, ptr %i.aua, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7129) #16, !srcloc !22
  %i.aub = lshr i32 %.0.copyload.i7129, 4
  %i.auc = lshr i32 %.0.copyload.i7129, 9
  %i.aud = xor i32 %i.aub, %i.auc
  %i.aue = and i32 %i.aud, %.pre-phi7498          ; 2 uses
  %i.auf = mul i32 %i.aue, 44
  %i.aug = add i32 %i.auf, %.135871               ; 3 uses
  %i.auh = zext i32 %i.aug to i64
  %.val6486 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aui = getelementptr inbounds nuw i8, ptr %.val6486, i64 %i.auh
  %.0.copyload.i7130 = load i32, ptr %i.aui, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7130) #16, !srcloc !22
  %i.auj = icmp eq i32 %.0.copyload.i7129, %.0.copyload.i7130
  br i1 %i.auj, label %.loopexit7242, label %.preheader7241

.preheader7241:                                   ; preds = %bb.gm, %bb.go
  %.276056 = phi i32 [ %i.auu, %bb.go ], [ %i.aug, %bb.gm ] ; 2 uses
  %.325987 = phi i32 [ %i.aur, %bb.go ], [ 1, %bb.gm ] ; 2 uses
  %.155951 = phi i32 [ %i.aup, %bb.go ], [ 0, %bb.gm ] ; 3 uses
  %.105927 = phi i32 [ %i.aus, %bb.go ], [ %i.aue, %bb.gm ]
  %.25 = phi i32 [ %.0.copyload.i7131, %bb.go ], [ %.0.copyload.i7130, %bb.gm ] ; 2 uses
  %i.auk = icmp eq i32 %.25, -4
  %.not6340 = icmp eq i32 %.155951, 0             ; 2 uses
  br i1 %i.auk, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %.preheader7241
  %i.aul = select i1 %.not6340, i32 %.276056, i32 %.155951
  %i.aum = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef %i.aul, i32 noundef %.175913) #16
  br label %.loopexit7242

bb.go:                                            ; preds = %.preheader7241
  %i.aun = icmp eq i32 %.25, -8
  %i.auo = select i1 %i.aun, i1 %.not6340, i1 false
  %i.aup = select i1 %i.auo, i32 %.276056, i32 %.155951
  %i.auq = add i32 %.105927, %.325987
  %i.aur = add i32 %.325987, 1
  %i.aus = and i32 %i.auq, %.pre-phi7498          ; 2 uses
  %i.aut = mul i32 %i.aus, 44
  %i.auu = add i32 %i.aut, %.135871               ; 3 uses
  %i.auv = zext i32 %i.auu to i64
  %.val6485 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.auw = getelementptr inbounds nuw i8, ptr %.val6485, i64 %i.auv
  %.0.copyload.i7131 = load i32, ptr %i.auw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7131) #16, !srcloc !22
  %.not6339 = icmp eq i32 %.0.copyload.i7129, %.0.copyload.i7131
  br i1 %.not6339, label %.loopexit7242, label %.preheader7241

.loopexit7242:                                    ; preds = %bb.go, %bb.gm, %bb.gn, %bb.gl
  %.286057 = phi i32 [ %i.aug, %bb.gm ], [ %i.aum, %bb.gn ], [ %i.aty, %bb.gl ], [ %i.auu, %bb.go ]
  %.126003 = phi i32 [ %.116002, %bb.gm ], [ %.116002, %bb.gn ], [ %.106001, %bb.gl ], [ %.116002, %bb.go ] ; 2 uses
  %i.aux = zext i32 %.286057 to i64
  %.val6484 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.auy = getelementptr inbounds nuw i8, ptr %.val6484, i64 %i.aux
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 4
  %.0.copyload.i7132 = load i32, ptr %i.auz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7132) #16, !srcloc !22
  br label %.loopexit7233

.loopexit7233:                                    ; preds = %.loopexit7233.backedge, %.loopexit7242
  %.296058.in = phi i32 [ %.126003, %.loopexit7242 ], [ %.296058.in.be, %.loopexit7233.backedge ]
  %.296058 = add i32 %.296058.in, 20
  %.val6483 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ava = getelementptr inbounds nuw i8, ptr %.val6483, i64 %i.asd
  %.0.copyload.i7133 = load i32, ptr %i.ava, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7133) #16, !srcloc !22
  %i.avb = zext i32 %.296058 to i64
  %.val6482 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.avc = getelementptr inbounds nuw i8, ptr %.val6482, i64 %i.avb
  %.0.copyload.i7134 = load i32, ptr %i.avc, align 1 ; 24 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7134) #16, !srcloc !22
  %.val6481 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.avd = getelementptr inbounds nuw i8, ptr %.val6481, i64 %i.ir
  %.0.copyload.i7135 = load i32, ptr %i.avd, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7135) #16, !srcloc !22
  %.not6341 = icmp eq i32 %.0.copyload.i7135, 0
  br i1 %.not6341, label %bb.gs, label %bb.gp

bb.gp:                                            ; preds = %.loopexit7233
  %i.ave = add i32 %.0.copyload.i7135, -1         ; 2 uses
  %i.avf = lshr i32 %.0.copyload.i7134, 4
  %i.avg = lshr i32 %.0.copyload.i7134, 9
  %i.avh = xor i32 %i.avf, %i.avg
  %i.avi = and i32 %i.ave, %i.avh                 ; 2 uses
  %i.avj = mul i32 %i.avi, 44
  %i.avk = add i32 %i.avj, %.0.copyload.i7133     ; 2 uses
  %i.avl = zext i32 %i.avk to i64                 ; 2 uses
  %.val6480 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.avm = getelementptr inbounds nuw i8, ptr %.val6480, i64 %i.avl
  %.0.copyload.i7136 = load i32, ptr %i.avm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7136) #16, !srcloc !22
  %i.avn = icmp eq i32 %.0.copyload.i7134, %.0.copyload.i7136
  br i1 %i.avn, label %.loopexit7240, label %.preheader7239

.preheader7239:                                   ; preds = %bb.gp, %bb.gr
  %.306059 = phi i32 [ %i.avu, %bb.gr ], [ 1, %bb.gp ] ; 2 uses
  %.136004 = phi i32 [ %i.avx, %bb.gr ], [ %i.avk, %bb.gp ] ; 2 uses
  %.335988 = phi i32 [ %i.avs, %bb.gr ], [ 0, %bb.gp ] ; 3 uses
  %.115928 = phi i32 [ %i.avv, %bb.gr ], [ %i.avi, %bb.gp ]
  %.26 = phi i32 [ %.0.copyload.i7137, %bb.gr ], [ %.0.copyload.i7136, %bb.gp ] ; 2 uses
  %i.avo = icmp eq i32 %.26, -4
  %.not6344 = icmp eq i32 %.335988, 0             ; 2 uses
  br i1 %i.avo, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %.preheader7239
  %i.avp = select i1 %.not6344, i32 %.136004, i32 %.335988
  br label %bb.gs

bb.gr:                                            ; preds = %.preheader7239
  %i.avq = icmp eq i32 %.26, -8
  %i.avr = select i1 %i.avq, i1 %.not6344, i1 false
  %i.avs = select i1 %i.avr, i32 %.136004, i32 %.335988
  %i.avt = add i32 %.115928, %.306059
  %i.avu = add i32 %.306059, 1
  %i.avv = and i32 %i.avt, %i.ave                 ; 2 uses
  %i.avw = mul i32 %i.avv, 44
  %i.avx = add i32 %i.avw, %.0.copyload.i7133     ; 2 uses
  %i.avy = zext i32 %i.avx to i64                 ; 2 uses
  %.val6479 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.avz = getelementptr inbounds nuw i8, ptr %.val6479, i64 %i.avy
  %.0.copyload.i7137 = load i32, ptr %i.avz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7137) #16, !srcloc !22
  %.not6343 = icmp eq i32 %.0.copyload.i7134, %.0.copyload.i7137
  br i1 %.not6343, label %.loopexit7240, label %.preheader7239

bb.gs:                                            ; preds = %.loopexit7233, %bb.gq
  %.146005 = phi i32 [ %i.avp, %bb.gq ], [ 0, %.loopexit7233 ]
  %.val6478 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.awa = getelementptr inbounds nuw i8, ptr %.val6478, i64 %i.ase
  %.0.copyload.i7138 = load i32, ptr %i.awa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7138) #16, !srcloc !22
  %i.awb = shl i32 %.0.copyload.i7138, 2
  %i.awc = add i32 %i.awb, 4
  %i.awd = mul i32 %.0.copyload.i7135, 3
  %.not6345 = icmp ult i32 %i.awc, %i.awd
  br i1 %.not6345, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.awe = shl i32 %.0.copyload.i7135, 1
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  %i.awf = xor i32 %.0.copyload.i7138, -1
  %i.awg = add i32 %.0.copyload.i7135, %i.awf
  %.val6477 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.awh = getelementptr inbounds nuw i8, ptr %.val6477, i64 %i.iq
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 20
  %.0.copyload.i7139 = load i32, ptr %i.awi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7139) #16, !srcloc !22
  %i.awj = sub i32 %i.awg, %.0.copyload.i7139
  %i.awk = lshr i32 %.0.copyload.i7135, 3
  %i.awl = icmp ugt i32 %i.awj, %i.awk
  br i1 %i.awl, label %bb.hc, label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.125929 = phi i32 [ %i.awe, %bb.gt ], [ %.0.copyload.i7135, %bb.gu ]
  %i.awm = add i32 %.125929, -1
  %i.awn = zext i32 %i.awm to i64                 ; 2 uses
  %i.awo = lshr i64 %i.awn, 1
  %i.awp = or i64 %i.awo, %i.awn                  ; 2 uses
  %i.awq = lshr i64 %i.awp, 2
  %i.awr = or i64 %i.awq, %i.awp                  ; 2 uses
  %i.aws = lshr i64 %i.awr, 4
  %i.awt = or i64 %i.aws, %i.awr                  ; 2 uses
  %i.awu = lshr i64 %i.awt, 8
  %i.awv = or i64 %i.awu, %i.awt                  ; 2 uses
  %i.aww = lshr i64 %i.awv, 16
  %i.awx = or i64 %i.aww, %i.awv
  %i.awy = trunc nuw i64 %i.awx to i32
  %i.awz = add i32 %i.awy, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.awz, i32 64) ; 2 uses
  %.val6754 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.axa = getelementptr inbounds nuw i8, ptr %.val6754, i64 %i.ir
  store i32 %4, ptr %i.axa, align 1
  %i.axb = mul i32 %4, 44
  %i.axc = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.axb) #16 ; 13 uses
  %.val6753 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.axd = getelementptr inbounds nuw i8, ptr %.val6753, i64 %i.asd
  store i32 %i.axc, ptr %i.axd, align 1
  %.not6346 = icmp eq i32 %.0.copyload.i7133, 0
  br i1 %.not6346, label %bb.gw, label %bb.gz

bb.gw:                                            ; preds = %bb.gv
  %.val6884 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.axe = getelementptr inbounds nuw i8, ptr %.val6884, i64 %i.ase
  store i64 0, ptr %i.axe, align 1
  %.val6476 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.axf = getelementptr inbounds nuw i8, ptr %.val6476, i64 %i.ir
  %.0.copyload.i7140 = load i32, ptr %i.axf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7140) #16, !srcloc !22
  %i.axg = mul i32 %.0.copyload.i7140, 44         ; 2 uses
  %i.axh = add i32 %i.axg, -44                    ; 2 uses
  %i.axi = udiv i32 %i.axh, 44
  %i.axj = add nuw nsw i32 %i.axi, 1
  %i.axk = and i32 %i.axj, 7                      ; 7 uses
  %.not6347 = icmp eq i32 %i.axk, 0
  br i1 %.not6347, label %.loopexit7238, label %.preheader7237

.preheader7237:                                   ; preds = %bb.gw
  %i.axl = zext i32 %i.axc to i64
  %.val6752 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.axm = getelementptr inbounds nuw i8, ptr %.val6752, i64 %i.axl
  store i32 -4, ptr %i.axm, align 1
  %i.axn = add i32 %i.axc, 44                     ; 2 uses
  %.not6348 = icmp eq i32 %i.axk, 1
  br i1 %.not6348, label %.loopexit7238, label %.preheader7237.1

.preheader7237.1:                                 ; preds = %.preheader7237
  %i.axo = zext i32 %i.axn to i64
  %.val6752.1 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.axp = getelementptr inbounds nuw i8, ptr %.val6752.1, i64 %i.axo
  store i32 -4, ptr %i.axp, align 1
  %i.axq = add i32 %i.axc, 88                     ; 2 uses
  %.not6348.1 = icmp eq i32 %i.axk, 2
  br i1 %.not6348.1, label %.loopexit7238, label %.preheader7237.2

.preheader7237.2:                                 ; preds = %.preheader7237.1
  %i.axr = zext i32 %i.axq to i64
  %.val6752.2 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.axs = getelementptr inbounds nuw i8, ptr %.val6752.2, i64 %i.axr
  store i32 -4, ptr %i.axs, align 1
  %i.axt = add i32 %i.axc, 132                    ; 2 uses
  %.not6348.2 = icmp eq i32 %i.axk, 3
  br i1 %.not6348.2, label %.loopexit7238, label %.preheader7237.3

.preheader7237.3:                                 ; preds = %.preheader7237.2
  %i.axu = zext i32 %i.axt to i64
  %.val6752.3 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.axv = getelementptr inbounds nuw i8, ptr %.val6752.3, i64 %i.axu
  store i32 -4, ptr %i.axv, align 1
  %i.axw = add i32 %i.axc, 176                    ; 2 uses
  %.not6348.3 = icmp eq i32 %i.axk, 4
  br i1 %.not6348.3, label %.loopexit7238, label %.preheader7237.4

.preheader7237.4:                                 ; preds = %.preheader7237.3
  %i.axx = zext i32 %i.axw to i64
  %.val6752.4 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.axy = getelementptr inbounds nuw i8, ptr %.val6752.4, i64 %i.axx
  store i32 -4, ptr %i.axy, align 1
  %i.axz = add i32 %i.axc, 220                    ; 2 uses
  %.not6348.4 = icmp eq i32 %i.axk, 5
  br i1 %.not6348.4, label %.loopexit7238, label %.preheader7237.5

.preheader7237.5:                                 ; preds = %.preheader7237.4
  %i.aya = zext i32 %i.axz to i64
  %.val6752.5 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ayb = getelementptr inbounds nuw i8, ptr %.val6752.5, i64 %i.aya
  store i32 -4, ptr %i.ayb, align 1
  %i.ayc = add i32 %i.axc, 264                    ; 2 uses
  %.not6348.5 = icmp eq i32 %i.axk, 6
  br i1 %.not6348.5, label %.loopexit7238, label %.preheader7237.6

.preheader7237.6:                                 ; preds = %.preheader7237.5
  %i.ayd = zext i32 %i.ayc to i64
  %.val6752.6 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aye = getelementptr inbounds nuw i8, ptr %.val6752.6, i64 %i.ayd
  store i32 -4, ptr %i.aye, align 1
  %i.ayf = add i32 %i.axc, 308
  br label %.loopexit7238

.loopexit7238:                                    ; preds = %.preheader7237, %.preheader7237.1, %.preheader7237.2, %.preheader7237.3, %.preheader7237.4, %.preheader7237.5, %.preheader7237.6, %bb.gw
  %.166007 = phi i32 [ %i.axc, %bb.gw ], [ %i.axn, %.preheader7237 ], [ %i.axq, %.preheader7237.1 ], [ %i.axt, %.preheader7237.2 ], [ %i.axw, %.preheader7237.3 ], [ %i.axz, %.preheader7237.4 ], [ %i.ayc, %.preheader7237.5 ], [ %i.ayf, %.preheader7237.6 ]
  %i.ayg = icmp ult i32 %i.axh, 308
  br i1 %i.ayg, label %.loopexit7236, label %bb.gx

bb.gx:                                            ; preds = %.loopexit7238
  %i.ayh = add i32 %i.axg, %i.axc
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gy, %bb.gx
  %.176008 = phi i32 [ %.166007, %bb.gx ], [ %i.ayy, %bb.gy ] ; 2 uses
  %i.ayi = zext i32 %.176008 to i64               ; 8 uses
  %.val6751 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ayj = getelementptr inbounds nuw i8, ptr %.val6751, i64 %i.ayi
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 308
  store i32 -4, ptr %i.ayk, align 1
  %.val6750 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ayl = getelementptr inbounds nuw i8, ptr %.val6750, i64 %i.ayi
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 264
  store i32 -4, ptr %i.aym, align 1
  %.val6749 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ayn = getelementptr inbounds nuw i8, ptr %.val6749, i64 %i.ayi
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 220
  store i32 -4, ptr %i.ayo, align 1
  %.val6748 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ayp = getelementptr inbounds nuw i8, ptr %.val6748, i64 %i.ayi
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 176
  store i32 -4, ptr %i.ayq, align 1
  %.val6747 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ayr = getelementptr inbounds nuw i8, ptr %.val6747, i64 %i.ayi
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 132
  store i32 -4, ptr %i.ays, align 1
  %.val6746 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ayt = getelementptr inbounds nuw i8, ptr %.val6746, i64 %i.ayi
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 88
  store i32 -4, ptr %i.ayu, align 1
  %.val6745 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ayv = getelementptr inbounds nuw i8, ptr %.val6745, i64 %i.ayi
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 44
  store i32 -4, ptr %i.ayw, align 1
  %.val6744 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ayx = getelementptr inbounds nuw i8, ptr %.val6744, i64 %i.ayi
  store i32 -4, ptr %i.ayx, align 1
  %i.ayy = add i32 %.176008, 352                  ; 2 uses
  %.not6349 = icmp eq i32 %i.ayy, %i.ayh
  br i1 %.not6349, label %.loopexit7236, label %bb.gy

bb.gz:                                            ; preds = %bb.gv
  %i.ayz = mul i32 %.0.copyload.i7135, 44
  %i.aza = add i32 %i.ayz, %.0.copyload.i7133
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef %.0.copyload.i7133, i32 noundef %i.aza) #16
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7133)
  %.val6475 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.azb = getelementptr inbounds nuw i8, ptr %.val6475, i64 %i.asd
  %.0.copyload.i7141 = load i32, ptr %i.azb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7141) #16, !srcloc !22
  %.val6474 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.azc = getelementptr inbounds nuw i8, ptr %.val6474, i64 %i.ir
  %.0.copyload.i7142 = load i32, ptr %i.azc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7142) #16, !srcloc !22
  br label %.loopexit7236

.loopexit7236:                                    ; preds = %bb.gy, %.loopexit7238, %bb.gz
  %.135930 = phi i32 [ %.0.copyload.i7140, %.loopexit7238 ], [ %.0.copyload.i7142, %bb.gz ], [ %.0.copyload.i7140, %bb.gy ]
  %.27 = phi i32 [ %i.axc, %.loopexit7238 ], [ %.0.copyload.i7141, %bb.gz ], [ %i.axc, %bb.gy ] ; 2 uses
  %i.azd = add i32 %.135930, -1                   ; 2 uses
  %i.aze = lshr i32 %.0.copyload.i7134, 4
  %i.azf = lshr i32 %.0.copyload.i7134, 9
  %i.azg = xor i32 %i.aze, %i.azf
  %i.azh = and i32 %i.azd, %i.azg                 ; 2 uses
  %i.azi = mul i32 %i.azh, 44
  %i.azj = add i32 %i.azi, %.27                   ; 3 uses
  %i.azk = zext i32 %i.azj to i64
  %.val6473 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.azl = getelementptr inbounds nuw i8, ptr %.val6473, i64 %i.azk
  %.0.copyload.i7143 = load i32, ptr %i.azl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7143) #16, !srcloc !22
  %.not6350 = icmp eq i32 %.0.copyload.i7143, %.0.copyload.i7134
  br i1 %.not6350, label %.loopexit7235, label %.preheader7234

.preheader7234:                                   ; preds = %.loopexit7236, %bb.hb
  %.326061 = phi i32 [ %.0.copyload.i7144, %bb.hb ], [ %.0.copyload.i7143, %.loopexit7236 ] ; 2 uses
  %.186009 = phi i32 [ %i.azv, %bb.hb ], [ %i.azj, %.loopexit7236 ] ; 2 uses
  %.345989 = phi i32 [ %i.azs, %bb.hb ], [ 1, %.loopexit7236 ] ; 2 uses
  %.185914 = phi i32 [ %i.azt, %bb.hb ], [ %i.azh, %.loopexit7236 ]
  %.115883 = phi i32 [ %i.azq, %bb.hb ], [ 0, %.loopexit7236 ] ; 3 uses
  %i.azm = icmp eq i32 %.326061, -4
  %.not6353 = icmp eq i32 %.115883, 0             ; 2 uses
  br i1 %i.azm, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %.preheader7234
  %i.azn = select i1 %.not6353, i32 %.186009, i32 %.115883
  br label %bb.hc

bb.hb:                                            ; preds = %.preheader7234
  %i.azo = icmp eq i32 %.326061, -8
  %i.azp = select i1 %i.azo, i1 %.not6353, i1 false
  %i.azq = select i1 %i.azp, i32 %.186009, i32 %.115883
  %i.azr = add i32 %.185914, %.345989
  %i.azs = add i32 %.345989, 1
  %i.azt = and i32 %i.azr, %i.azd                 ; 2 uses
  %i.azu = mul i32 %i.azt, 44
  %i.azv = add i32 %i.azu, %.27                   ; 3 uses
  %i.azw = zext i32 %i.azv to i64
  %.val6472 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.azx = getelementptr inbounds nuw i8, ptr %.val6472, i64 %i.azw
  %.0.copyload.i7144 = load i32, ptr %i.azx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7144) #16, !srcloc !22
  %.not6352 = icmp eq i32 %.0.copyload.i7134, %.0.copyload.i7144
  br i1 %.not6352, label %.loopexit7235, label %.preheader7234

bb.hc:                                            ; preds = %bb.gu, %bb.ha
  %.206011 = phi i32 [ %i.azn, %bb.ha ], [ %.146005, %bb.gu ] ; 2 uses
  %i.azy = zext i32 %.206011 to i64
  %.val6471 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.azz = getelementptr inbounds nuw i8, ptr %.val6471, i64 %i.azy
  %.0.copyload.i7145 = load i32, ptr %i.azz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7145) #16, !srcloc !22
  br label %.loopexit7235

.loopexit7235:                                    ; preds = %bb.hb, %.loopexit7236, %bb.hc
  %.216012 = phi i32 [ %.206011, %bb.hc ], [ %i.azj, %.loopexit7236 ], [ %i.azv, %bb.hb ] ; 2 uses
  %.25829 = phi i32 [ %.0.copyload.i7145, %bb.hc ], [ %.0.copyload.i7134, %.loopexit7236 ], [ %.0.copyload.i7134, %bb.hb ]
  %.val6470 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.baa = getelementptr inbounds nuw i8, ptr %.val6470, i64 %i.ase
  %.0.copyload.i7146 = load i32, ptr %i.baa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7146) #16, !srcloc !22
  %i.bab = add i32 %.0.copyload.i7146, 1
  %.val6743 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bac = getelementptr inbounds nuw i8, ptr %.val6743, i64 %i.ase
  store i32 %i.bab, ptr %i.bac, align 1
  %.not6354 = icmp eq i32 %.25829, -4
  br i1 %.not6354, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %.loopexit7235
  %.val6469 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bad = getelementptr inbounds nuw i8, ptr %.val6469, i64 %i.asf
  %.0.copyload.i7147 = load i32, ptr %i.bad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7147) #16, !srcloc !22
  %i.bae = add i32 %.0.copyload.i7147, -1
  %.val6742 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.baf = getelementptr inbounds nuw i8, ptr %.val6742, i64 %i.asf
  store i32 %i.bae, ptr %i.baf, align 1
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %.loopexit7235
  %i.bag = zext i32 %.216012 to i64               ; 8 uses
  %.val6883 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bah = getelementptr inbounds nuw i8, ptr %.val6883, i64 %i.bag
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 28
  store i64 0, ptr %i.bai, align 1
  %.val6882 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.baj = getelementptr inbounds nuw i8, ptr %.val6882, i64 %i.bag
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 20
  store i64 0, ptr %i.bak, align 1
  %.val6881 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bal = getelementptr inbounds nuw i8, ptr %.val6881, i64 %i.bag
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 4
  store i64 0, ptr %i.bam, align 1
  %.val6741 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ban = getelementptr inbounds nuw i8, ptr %.val6741, i64 %i.bag
  store i32 %.0.copyload.i7134, ptr %i.ban, align 1
  %.val6880 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bao = getelementptr inbounds nuw i8, ptr %.val6880, i64 %i.bag
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 12
  store i64 0, ptr %i.bap, align 1
  %i.baq = add i32 %.216012, 36                   ; 2 uses
  %i.bar = zext i32 %i.baq to i64
  %.val6879 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bas = getelementptr inbounds nuw i8, ptr %.val6879, i64 %i.bar
  store i64 0, ptr %i.bas, align 1
  %.val6740 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bat = getelementptr inbounds nuw i8, ptr %.val6740, i64 %i.bag
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 32
  store i32 2, ptr %i.bau, align 1
  %.val6739 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bav = getelementptr inbounds nuw i8, ptr %.val6739, i64 %i.bag
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 24
  store i32 %i.baq, ptr %i.baw, align 1
  br label %.loopexit7240

.loopexit7240:                                    ; preds = %bb.gr, %bb.gp, %bb.he
  %.pre-phi7474 = phi i64 [ %i.bag, %bb.he ], [ %i.avl, %bb.gp ], [ %i.avy, %bb.gr ]
  %.val6468 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bax = getelementptr inbounds nuw i8, ptr %.val6468, i64 %.pre-phi7474
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 4
  %.0.copyload.i7148 = load i32, ptr %i.bay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7148) #16, !srcloc !22
  %i.baz = icmp ult i32 %.0.copyload.i7132, %.0.copyload.i7148
  br i1 %i.baz, label %bb.hf, label %bb.hj

bb.hf:                                            ; preds = %.loopexit7240
  %.val6467 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bba = getelementptr inbounds nuw i8, ptr %.val6467, i64 %i.asd
  %.0.copyload.i7149 = load i32, ptr %i.bba, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7149) #16, !srcloc !22
  %.val6466 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bbb = getelementptr inbounds nuw i8, ptr %.val6466, i64 %i.ir
  %.0.copyload.i7150 = load i32, ptr %i.bbb, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7150) #16, !srcloc !22
  %.not6356 = icmp eq i32 %.0.copyload.i7150, 0
  br i1 %.not6356, label %bb.hk, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bbc = add i32 %.0.copyload.i7150, -1         ; 2 uses
  %i.bbd = lshr i32 %.0.copyload.i7134, 4
  %i.bbe = lshr i32 %.0.copyload.i7134, 9
  %i.bbf = xor i32 %i.bbd, %i.bbe
  %i.bbg = and i32 %i.bbc, %i.bbf                 ; 2 uses
  %i.bbh = mul i32 %i.bbg, 44
  %i.bbi = add i32 %i.bbh, %.0.copyload.i7149     ; 3 uses
  %i.bbj = zext i32 %i.bbi to i64
  %.val6465 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bbk = getelementptr inbounds nuw i8, ptr %.val6465, i64 %i.bbj
  %.0.copyload.i7151 = load i32, ptr %i.bbk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7151) #16, !srcloc !22
  %i.bbl = icmp eq i32 %.0.copyload.i7134, %.0.copyload.i7151
  br i1 %i.bbl, label %.loopexit7233.backedge, label %.preheader7232

.loopexit7233.backedge:                           ; preds = %bb.hi, %bb.hg, %bb.hw
  %.296058.in.be = phi i32 [ %.316022, %bb.hw ], [ %i.bbi, %bb.hg ], [ %i.bbv, %bb.hi ]
  br label %.loopexit7233

.preheader7232:                                   ; preds = %bb.hg, %bb.hi
  %.336062 = phi i32 [ %i.bbs, %bb.hi ], [ 1, %bb.hg ] ; 2 uses
  %.236014 = phi i32 [ %i.bbv, %bb.hi ], [ %i.bbi, %bb.hg ] ; 2 uses
  %.355990 = phi i32 [ %i.bbq, %bb.hi ], [ 0, %bb.hg ] ; 3 uses
  %.145931 = phi i32 [ %i.bbt, %bb.hi ], [ %i.bbg, %bb.hg ]
  %.28 = phi i32 [ %.0.copyload.i7152, %bb.hi ], [ %.0.copyload.i7151, %bb.hg ] ; 2 uses
  %i.bbm = icmp eq i32 %.28, -4
  %.not6359 = icmp eq i32 %.355990, 0             ; 2 uses
  br i1 %i.bbm, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %.preheader7232
  %i.bbn = select i1 %.not6359, i32 %.236014, i32 %.355990
  br label %bb.hk

bb.hi:                                            ; preds = %.preheader7232
  %i.bbo = icmp eq i32 %.28, -8
  %i.bbp = select i1 %i.bbo, i1 %.not6359, i1 false
  %i.bbq = select i1 %i.bbp, i32 %.236014, i32 %.355990
  %i.bbr = add i32 %.145931, %.336062
  %i.bbs = add i32 %.336062, 1
  %i.bbt = and i32 %i.bbr, %i.bbc                 ; 2 uses
  %i.bbu = mul i32 %i.bbt, 44
  %i.bbv = add i32 %i.bbu, %.0.copyload.i7149     ; 3 uses
  %i.bbw = zext i32 %i.bbv to i64
  %.val6464 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bbx = getelementptr inbounds nuw i8, ptr %.val6464, i64 %i.bbw
  %.0.copyload.i7152 = load i32, ptr %i.bbx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7152) #16, !srcloc !22
  %.not6358 = icmp eq i32 %.0.copyload.i7134, %.0.copyload.i7152
  br i1 %.not6358, label %.loopexit7233.backedge, label %.preheader7232

bb.hj:                                            ; preds = %.loopexit7240
  %i.bby = zext i32 %.126003 to i64
  %.val6738 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bbz = getelementptr inbounds nuw i8, ptr %.val6738, i64 %i.bby
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 20
  store i32 %.0.copyload.i7134, ptr %i.bca, align 1
  %i.bcb = add nuw i32 %.35856, 1                 ; 2 uses
  %.not6355 = icmp eq i32 %i.bcb, %i.asa
  br i1 %.not6355, label %.loopexit7245, label %bb.gf

bb.hk:                                            ; preds = %bb.hf, %bb.hh
  %.246015 = phi i32 [ %i.bbn, %bb.hh ], [ 0, %bb.hf ]
  %.val6463 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bcc = getelementptr inbounds nuw i8, ptr %.val6463, i64 %i.ase
  %.0.copyload.i7153 = load i32, ptr %i.bcc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7153) #16, !srcloc !22
  %i.bcd = shl i32 %.0.copyload.i7153, 2
  %i.bce = add i32 %i.bcd, 4
  %i.bcf = mul i32 %.0.copyload.i7150, 3
  %.not6360 = icmp ult i32 %i.bce, %i.bcf
  br i1 %.not6360, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.bcg = shl i32 %.0.copyload.i7150, 1
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hk
  %i.bch = xor i32 %.0.copyload.i7153, -1
  %i.bci = add i32 %.0.copyload.i7150, %i.bch
  %.val6462 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bcj = getelementptr inbounds nuw i8, ptr %.val6462, i64 %i.iq
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 20
  %.0.copyload.i7154 = load i32, ptr %i.bck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7154) #16, !srcloc !22
  %i.bcl = sub i32 %i.bci, %.0.copyload.i7154
  %i.bcm = lshr i32 %.0.copyload.i7150, 3
  %i.bcn = icmp ugt i32 %i.bcl, %i.bcm
  br i1 %i.bcn, label %bb.hu, label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.155932 = phi i32 [ %i.bcg, %bb.hl ], [ %.0.copyload.i7150, %bb.hm ]
  %i.bco = add i32 %.155932, -1
  %i.bcp = zext i32 %i.bco to i64                 ; 2 uses
  %i.bcq = lshr i64 %i.bcp, 1
  %i.bcr = or i64 %i.bcq, %i.bcp                  ; 2 uses
  %i.bcs = lshr i64 %i.bcr, 2
  %i.bct = or i64 %i.bcs, %i.bcr                  ; 2 uses
  %i.bcu = lshr i64 %i.bct, 4
  %i.bcv = or i64 %i.bcu, %i.bct                  ; 2 uses
  %i.bcw = lshr i64 %i.bcv, 8
  %i.bcx = or i64 %i.bcw, %i.bcv                  ; 2 uses
  %i.bcy = lshr i64 %i.bcx, 16
  %i.bcz = or i64 %i.bcy, %i.bcx
  %i.bda = trunc nuw i64 %i.bcz to i32
  %i.bdb = add i32 %i.bda, 1
  %5 = tail call i32 @llvm.umax.i32(i32 %i.bdb, i32 64) ; 2 uses
  %.val6737 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdc = getelementptr inbounds nuw i8, ptr %.val6737, i64 %i.ir
  store i32 %5, ptr %i.bdc, align 1
  %i.bdd = mul i32 %5, 44
  %i.bde = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bdd) #16 ; 13 uses
  %.val6736 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdf = getelementptr inbounds nuw i8, ptr %.val6736, i64 %i.asd
  store i32 %i.bde, ptr %i.bdf, align 1
  %.not6361 = icmp eq i32 %.0.copyload.i7149, 0
  br i1 %.not6361, label %bb.ho, label %bb.hr

bb.ho:                                            ; preds = %bb.hn
  %.val6878 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdg = getelementptr inbounds nuw i8, ptr %.val6878, i64 %i.ase
  store i64 0, ptr %i.bdg, align 1
  %.val6461 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdh = getelementptr inbounds nuw i8, ptr %.val6461, i64 %i.ir
  %.0.copyload.i7155 = load i32, ptr %i.bdh, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7155) #16, !srcloc !22
  %i.bdi = mul i32 %.0.copyload.i7155, 44         ; 2 uses
  %i.bdj = add i32 %i.bdi, -44                    ; 2 uses
  %i.bdk = udiv i32 %i.bdj, 44
  %i.bdl = add nuw nsw i32 %i.bdk, 1
  %i.bdm = and i32 %i.bdl, 7                      ; 7 uses
  %.not6362 = icmp eq i32 %i.bdm, 0
  br i1 %.not6362, label %.loopexit7231, label %.preheader7230

.preheader7230:                                   ; preds = %bb.ho
  %i.bdn = zext i32 %i.bde to i64
  %.val6735 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdo = getelementptr inbounds nuw i8, ptr %.val6735, i64 %i.bdn
  store i32 -4, ptr %i.bdo, align 1
  %i.bdp = add i32 %i.bde, 44                     ; 2 uses
  %.not6363 = icmp eq i32 %i.bdm, 1
  br i1 %.not6363, label %.loopexit7231, label %.preheader7230.1

.preheader7230.1:                                 ; preds = %.preheader7230
  %i.bdq = zext i32 %i.bdp to i64
  %.val6735.1 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdr = getelementptr inbounds nuw i8, ptr %.val6735.1, i64 %i.bdq
  store i32 -4, ptr %i.bdr, align 1
  %i.bds = add i32 %i.bde, 88                     ; 2 uses
  %.not6363.1 = icmp eq i32 %i.bdm, 2
  br i1 %.not6363.1, label %.loopexit7231, label %.preheader7230.2

.preheader7230.2:                                 ; preds = %.preheader7230.1
  %i.bdt = zext i32 %i.bds to i64
  %.val6735.2 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdu = getelementptr inbounds nuw i8, ptr %.val6735.2, i64 %i.bdt
  store i32 -4, ptr %i.bdu, align 1
  %i.bdv = add i32 %i.bde, 132                    ; 2 uses
  %.not6363.2 = icmp eq i32 %i.bdm, 3
  br i1 %.not6363.2, label %.loopexit7231, label %.preheader7230.3

.preheader7230.3:                                 ; preds = %.preheader7230.2
  %i.bdw = zext i32 %i.bdv to i64
  %.val6735.3 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdx = getelementptr inbounds nuw i8, ptr %.val6735.3, i64 %i.bdw
  store i32 -4, ptr %i.bdx, align 1
  %i.bdy = add i32 %i.bde, 176                    ; 2 uses
  %.not6363.3 = icmp eq i32 %i.bdm, 4
  br i1 %.not6363.3, label %.loopexit7231, label %.preheader7230.4

.preheader7230.4:                                 ; preds = %.preheader7230.3
  %i.bdz = zext i32 %i.bdy to i64
  %.val6735.4 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bea = getelementptr inbounds nuw i8, ptr %.val6735.4, i64 %i.bdz
  store i32 -4, ptr %i.bea, align 1
  %i.beb = add i32 %i.bde, 220                    ; 2 uses
  %.not6363.4 = icmp eq i32 %i.bdm, 5
  br i1 %.not6363.4, label %.loopexit7231, label %.preheader7230.5

.preheader7230.5:                                 ; preds = %.preheader7230.4
  %i.bec = zext i32 %i.beb to i64
  %.val6735.5 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bed = getelementptr inbounds nuw i8, ptr %.val6735.5, i64 %i.bec
  store i32 -4, ptr %i.bed, align 1
  %i.bee = add i32 %i.bde, 264                    ; 2 uses
  %.not6363.5 = icmp eq i32 %i.bdm, 6
  br i1 %.not6363.5, label %.loopexit7231, label %.preheader7230.6

.preheader7230.6:                                 ; preds = %.preheader7230.5
  %i.bef = zext i32 %i.bee to i64
  %.val6735.6 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.beg = getelementptr inbounds nuw i8, ptr %.val6735.6, i64 %i.bef
  store i32 -4, ptr %i.beg, align 1
  %i.beh = add i32 %i.bde, 308
  br label %.loopexit7231

.loopexit7231:                                    ; preds = %.preheader7230, %.preheader7230.1, %.preheader7230.2, %.preheader7230.3, %.preheader7230.4, %.preheader7230.5, %.preheader7230.6, %bb.ho
  %.266017 = phi i32 [ %i.bde, %bb.ho ], [ %i.bdp, %.preheader7230 ], [ %i.bds, %.preheader7230.1 ], [ %i.bdv, %.preheader7230.2 ], [ %i.bdy, %.preheader7230.3 ], [ %i.beb, %.preheader7230.4 ], [ %i.bee, %.preheader7230.5 ], [ %i.beh, %.preheader7230.6 ]
  %i.bei = icmp ult i32 %i.bdj, 308
  br i1 %i.bei, label %.loopexit7229, label %bb.hp

bb.hp:                                            ; preds = %.loopexit7231
  %i.bej = add i32 %i.bdi, %i.bde
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hq, %bb.hp
  %.276018 = phi i32 [ %.266017, %bb.hp ], [ %i.bfa, %bb.hq ] ; 2 uses
  %i.bek = zext i32 %.276018 to i64               ; 8 uses
  %.val6734 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bel = getelementptr inbounds nuw i8, ptr %.val6734, i64 %i.bek
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 308
  store i32 -4, ptr %i.bem, align 1
  %.val6733 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ben = getelementptr inbounds nuw i8, ptr %.val6733, i64 %i.bek
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 264
  store i32 -4, ptr %i.beo, align 1
  %.val6732 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bep = getelementptr inbounds nuw i8, ptr %.val6732, i64 %i.bek
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 220
  store i32 -4, ptr %i.beq, align 1
  %.val6731 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ber = getelementptr inbounds nuw i8, ptr %.val6731, i64 %i.bek
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 176
  store i32 -4, ptr %i.bes, align 1
  %.val6730 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bet = getelementptr inbounds nuw i8, ptr %.val6730, i64 %i.bek
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 132
  store i32 -4, ptr %i.beu, align 1
  %.val6729 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bev = getelementptr inbounds nuw i8, ptr %.val6729, i64 %i.bek
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 88
  store i32 -4, ptr %i.bew, align 1
  %.val6728 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bex = getelementptr inbounds nuw i8, ptr %.val6728, i64 %i.bek
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 44
  store i32 -4, ptr %i.bey, align 1
  %.val6727 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bez = getelementptr inbounds nuw i8, ptr %.val6727, i64 %i.bek
  store i32 -4, ptr %i.bez, align 1
  %i.bfa = add i32 %.276018, 352                  ; 2 uses
  %.not6364 = icmp eq i32 %i.bfa, %i.bej
  br i1 %.not6364, label %.loopexit7229, label %bb.hq

bb.hr:                                            ; preds = %bb.hn
  %i.bfb = mul i32 %.0.copyload.i7150, 44
  %i.bfc = add i32 %i.bfb, %.0.copyload.i7149
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef %.0.copyload.i7149, i32 noundef %i.bfc) #16
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7149)
  %.val6460 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bfd = getelementptr inbounds nuw i8, ptr %.val6460, i64 %i.asd
  %.0.copyload.i7156 = load i32, ptr %i.bfd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7156) #16, !srcloc !22
  %.val6459 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bfe = getelementptr inbounds nuw i8, ptr %.val6459, i64 %i.ir
  %.0.copyload.i7157 = load i32, ptr %i.bfe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7157) #16, !srcloc !22
  br label %.loopexit7229

.loopexit7229:                                    ; preds = %bb.hq, %.loopexit7231, %bb.hr
  %.165933 = phi i32 [ %.0.copyload.i7155, %.loopexit7231 ], [ %.0.copyload.i7157, %bb.hr ], [ %.0.copyload.i7155, %bb.hq ]
  %.29 = phi i32 [ %i.bde, %.loopexit7231 ], [ %.0.copyload.i7156, %bb.hr ], [ %i.bde, %bb.hq ] ; 2 uses
  %i.bff = add i32 %.165933, -1                   ; 2 uses
  %i.bfg = lshr i32 %.0.copyload.i7134, 4
  %i.bfh = lshr i32 %.0.copyload.i7134, 9
  %i.bfi = xor i32 %i.bfg, %i.bfh
  %i.bfj = and i32 %i.bff, %i.bfi                 ; 2 uses
  %i.bfk = mul i32 %i.bfj, 44
  %i.bfl = add i32 %i.bfk, %.29                   ; 3 uses
  %i.bfm = zext i32 %i.bfl to i64
  %.val6458 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bfn = getelementptr inbounds nuw i8, ptr %.val6458, i64 %i.bfm
  %.0.copyload.i7158 = load i32, ptr %i.bfn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7158) #16, !srcloc !22
  %.not6365 = icmp eq i32 %.0.copyload.i7158, %.0.copyload.i7134
  br i1 %.not6365, label %.loopexit7228, label %.preheader7227

.preheader7227:                                   ; preds = %.loopexit7229, %bb.ht
  %.356064 = phi i32 [ %.0.copyload.i7159, %bb.ht ], [ %.0.copyload.i7158, %.loopexit7229 ] ; 2 uses
  %.286019 = phi i32 [ %i.bfx, %bb.ht ], [ %i.bfl, %.loopexit7229 ] ; 2 uses
  %.36 = phi i32 [ %i.bfu, %bb.ht ], [ 1, %.loopexit7229 ] ; 2 uses
  %.195915 = phi i32 [ %i.bfv, %bb.ht ], [ %i.bfj, %.loopexit7229 ]
  %.125884 = phi i32 [ %i.bfs, %bb.ht ], [ 0, %.loopexit7229 ] ; 3 uses
  %i.bfo = icmp eq i32 %.356064, -4
  %.not6368 = icmp eq i32 %.125884, 0             ; 2 uses
  br i1 %i.bfo, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %.preheader7227
  %i.bfp = select i1 %.not6368, i32 %.286019, i32 %.125884
  br label %bb.hu

bb.ht:                                            ; preds = %.preheader7227
  %i.bfq = icmp eq i32 %.356064, -8
  %i.bfr = select i1 %i.bfq, i1 %.not6368, i1 false
  %i.bfs = select i1 %i.bfr, i32 %.286019, i32 %.125884
  %i.bft = add i32 %.195915, %.36
  %i.bfu = add i32 %.36, 1
  %i.bfv = and i32 %i.bft, %i.bff                 ; 2 uses
  %i.bfw = mul i32 %i.bfv, 44
  %i.bfx = add i32 %i.bfw, %.29                   ; 3 uses
  %i.bfy = zext i32 %i.bfx to i64
  %.val6457 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bfz = getelementptr inbounds nuw i8, ptr %.val6457, i64 %i.bfy
  %.0.copyload.i7159 = load i32, ptr %i.bfz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7159) #16, !srcloc !22
  %.not6367 = icmp eq i32 %.0.copyload.i7134, %.0.copyload.i7159
  br i1 %.not6367, label %.loopexit7228, label %.preheader7227

bb.hu:                                            ; preds = %bb.hm, %bb.hs
  %.306021 = phi i32 [ %i.bfp, %bb.hs ], [ %.246015, %bb.hm ] ; 2 uses
  %i.bga = zext i32 %.306021 to i64
  %.val6456 = load ptr, ptr %i.a, align 8, !tbaa !21
end_hunk_5
begin_hunk_6_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AStringTableBuilder0x3A0x3ApackIntoStorage0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x2C0x20bool0x29:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.0.copyload.i9976 = load i32, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9976) #16, !srcloc !22
  %i.cy = shl i32 %.0.copyload.i9976, 1
  %i.cz = add i32 %i.cy, %.0.copyload.i9975
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cchar16_t0x20const0x2A0x3E0x3A0x3Avalue0x200x260x260x20is_constructible0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cchar16_t0x20const0x2A0x3E0x3A0x3Areference0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cchar16_t0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3A0x3Ainsert0x3Cchar16_t0x20const0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cchar16_t0x20const0x2A0x3E0x2C0x20char16_t0x20const0x2A0x2C0x20char16_t0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.cm, i32 noundef %.0.copyload.i9973, i32 noundef %.0.copyload.i9975, i32 noundef %i.cz) #16
  %i.da = add i32 %.18699, 52                     ; 2 uses
  %.not8944 = icmp eq i32 %i.da, %i.cl
  br i1 %.not8944, label %.loopexit, label %bb.k

.loopexit:                                        ; preds = %bb.k, %bb.i
  %i.db = zext i32 %3 to i64                      ; 5 uses
  %.val9540 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %.val9540, i64 %i.db
  %.0.copyload.i9977 = load i32, ptr %i.dc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9977) #16, !srcloc !22
  %.not8945 = icmp eq i32 %.0.copyload.i9977, 0
  br i1 %.not8945, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %.val9761 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %.val9761, i64 %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i32 %.0.copyload.i9977, ptr %i.de, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i9977)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  %.val9539 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %.val9539, i64 %i.av
  %.0.copyload.i9978 = load i32, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9978) #16, !srcloc !22
  %.val9760 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %.val9760, i64 %i.db
  store i32 %.0.copyload.i9978, ptr %i.dg, align 1
  %.val9538 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %.val9538, i64 %i.bv
  %.0.copyload.i9979 = load i32, ptr %i.dh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9979) #16, !srcloc !22
  %.val9759 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %.val9759, i64 %i.db
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %.0.copyload.i9979, ptr %i.dj, align 1
  %.val9537 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %.val9537, i64 %i.at
  %.0.copyload.i9980 = load i32, ptr %i.dk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9980) #16, !srcloc !22
  br label %bb.ox

bb.n:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i64 [ %i.an, %bb.d ], [ %i.ad, %bb.c ] ; 10 uses
  %.08503 = phi i32 [ 0, %bb.d ], [ %i.ah, %bb.c ]
  %i.dl = mul nsw i32 %i.k, 52
  %i.dm = add i32 %i.dl, %.0.copyload.i9962       ; 4 uses
  %i.dn = add nuw nsw i64 %.pre-phi, 28           ; 6 uses
  %i.do = add nuw nsw i64 %.pre-phi, 20           ; 5 uses
  %i.dp = add nuw nsw i64 %.pre-phi, 16           ; 3 uses
  %i.dq = add nuw nsw i64 %.pre-phi, 24           ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.loopexit10488, %bb.n
  %.28700 = phi i32 [ %.0.copyload.i9962, %bb.n ], [ %i.ja, %.loopexit10488 ] ; 2 uses
  %.18504 = phi i32 [ %.08503, %bb.n ], [ %.38506, %.loopexit10488 ] ; 6 uses
  %i.dr = zext i32 %.28700 to i64                 ; 2 uses
  %.val9536 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ds = getelementptr inbounds nuw i8, ptr %.val9536, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.0.copyload.i9981 = load i32, ptr %i.dt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9981) #16, !srcloc !22
  %i.du = icmp ult i32 %.0.copyload.i9981, 3
  br i1 %i.du, label %.loopexit10488, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val9535 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dv = getelementptr inbounds nuw i8, ptr %.val9535, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %.0.copyload.i9982 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9982) #16, !srcloc !22
  %i.dx = zext i32 %.0.copyload.i9982 to i64      ; 3 uses
  %.val9900 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dy = getelementptr inbounds nuw i8, ptr %.val9900, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %.0.copyload.i9983 = load i8, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i9983) #16, !srcloc !33
  %i.ea = zext i8 %.0.copyload.i9983 to i32
  %i.eb = shl nuw nsw i32 %i.ea, 8
  %.val9899 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %.val9899, i64 %i.dx
  %.0.copyload.i9984 = load i8, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i9984) #16, !srcloc !33
  %i.ed = zext i8 %.0.copyload.i9984 to i32
  %i.ee = shl nuw nsw i32 %i.ed, 16
  %i.ef = or disjoint i32 %i.ee, %i.eb
  %.val9898 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.eg = getelementptr inbounds nuw i8, ptr %.val9898, i64 %i.dx
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %.0.copyload.i9985 = load i8, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i9985) #16, !srcloc !33
  %i.ei = zext i8 %.0.copyload.i9985 to i32
  %i.ej = or disjoint i32 %i.ef, %i.ei            ; 7 uses
  %.val9534 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %.val9534, i64 %i.dn
  %.0.copyload.i9986 = load i32, ptr %i.ek, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9986) #16, !srcloc !22
  %.not8947 = icmp eq i32 %.0.copyload.i9986, 0
  br i1 %.not8947, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.el = add i32 %.0.copyload.i9986, -1          ; 2 uses
  %i.em = mul nuw nsw i32 %i.ej, 37
  %i.en = and i32 %i.el, %i.em                    ; 2 uses
  %i.eo = shl nuw i32 %i.en, 2
  %i.ep = add i32 %i.eo, %.18504                  ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %.val9533 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.er = getelementptr inbounds nuw i8, ptr %.val9533, i64 %i.eq
  %.0.copyload.i9987 = load i32, ptr %i.er, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9987) #16, !srcloc !22
  %i.es = icmp eq i32 %i.ej, %.0.copyload.i9987
  br i1 %i.es, label %.loopexit10488, label %.preheader10487

.preheader10487:                                  ; preds = %bb.q, %bb.s
  %.08591 = phi i32 [ %.0.copyload.i9988, %bb.s ], [ %.0.copyload.i9987, %bb.q ] ; 2 uses
  %.08519 = phi i32 [ %i.fc, %bb.s ], [ %i.ep, %bb.q ] ; 2 uses
  %.08447 = phi i32 [ %i.ez, %bb.s ], [ 1, %bb.q ] ; 2 uses
  %.08385 = phi i32 [ %i.fa, %bb.s ], [ %i.en, %bb.q ]
  %.08368 = phi i32 [ %i.ex, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %i.et = icmp eq i32 %.08591, -1
  %.not8950 = icmp eq i32 %.08368, 0              ; 2 uses
  br i1 %i.et, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader10487
  %i.eu = select i1 %.not8950, i32 %.08519, i32 %.08368
  br label %bb.t

bb.s:                                             ; preds = %.preheader10487
  %i.ev = icmp eq i32 %.08591, -2
  %i.ew = select i1 %i.ev, i1 %.not8950, i1 false
  %i.ex = select i1 %i.ew, i32 %.08519, i32 %.08368
  %i.ey = add i32 %.08385, %.08447
  %i.ez = add i32 %.08447, 1
  %i.fa = and i32 %i.ey, %i.el                    ; 2 uses
  %i.fb = shl i32 %i.fa, 2
  %i.fc = add i32 %i.fb, %.18504                  ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %.val9532 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %.val9532, i64 %i.fd
  %.0.copyload.i9988 = load i32, ptr %i.fe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9988) #16, !srcloc !22
  %.not8949 = icmp eq i32 %i.ej, %.0.copyload.i9988
  br i1 %.not8949, label %.loopexit10488, label %.preheader10487

bb.t:                                             ; preds = %bb.p, %bb.r
  %.18592 = phi i32 [ %i.eu, %bb.r ], [ 0, %bb.p ]
  %.val9531 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %.val9531, i64 %i.do
  %.0.copyload.i9989 = load i32, ptr %i.ff, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9989) #16, !srcloc !22
  %i.fg = shl i32 %.0.copyload.i9989, 2
  %i.fh = add i32 %i.fg, 4
  %i.fi = mul i32 %.0.copyload.i9986, 3
  %.not8951 = icmp ult i32 %i.fh, %i.fi
  br i1 %.not8951, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fj = shl i32 %.0.copyload.i9986, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fk = xor i32 %.0.copyload.i9989, -1
  %i.fl = add i32 %.0.copyload.i9986, %i.fk
  %.val9530 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fm = getelementptr inbounds nuw i8, ptr %.val9530, i64 %.pre-phi
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %.0.copyload.i9990 = load i32, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9990) #16, !srcloc !22
  %i.fo = sub i32 %i.fl, %.0.copyload.i9990
  %i.fp = lshr i32 %.0.copyload.i9986, 3
  %i.fq = icmp ugt i32 %i.fo, %i.fp
  br i1 %i.fq, label %.loopexit10485, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.08648 = phi i32 [ %i.fj, %bb.u ], [ %.0.copyload.i9986, %bb.v ]
  %.val9529 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fr = getelementptr inbounds nuw i8, ptr %.val9529, i64 %i.dn
  %.0.copyload.i9991 = load i32, ptr %i.fr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9991) #16, !srcloc !22
  %i.fs = add i32 %.08648, -1
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  %i.fu = lshr i64 %i.ft, 1
  %i.fv = or i64 %i.fu, %i.ft                     ; 2 uses
  %i.fw = lshr i64 %i.fv, 2
  %i.fx = or i64 %i.fw, %i.fv                     ; 2 uses
  %i.fy = lshr i64 %i.fx, 4
  %i.fz = or i64 %i.fy, %i.fx                     ; 2 uses
  %i.ga = lshr i64 %i.fz, 8
  %i.gb = or i64 %i.ga, %i.fz                     ; 2 uses
  %i.gc = lshr i64 %i.gb, 16
  %i.gd = or i64 %i.gc, %i.gb
  %i.ge = trunc nuw i64 %i.gd to i32
  %i.gf = add i32 %i.ge, 1
  %5 = tail call i32 @llvm.umax.i32(i32 %i.gf, i32 64) ; 2 uses
  %.val9757 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gg = getelementptr inbounds nuw i8, ptr %.val9757, i64 %i.dn
  store i32 %5, ptr %i.gg, align 1
  %.val9528 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gh = getelementptr inbounds nuw i8, ptr %.val9528, i64 %i.dp
  %.0.copyload.i9992 = load i32, ptr %i.gh, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9992) #16, !srcloc !22
  %i.gi = shl i32 %5, 2
  %i.gj = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gi) #16 ; 5 uses
  %.val9756 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gk = getelementptr inbounds nuw i8, ptr %.val9756, i64 %i.dp
  store i32 %i.gj, ptr %i.gk, align 1
  %.not8952 = icmp eq i32 %.0.copyload.i9992, 0
  %.val9880 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gl = getelementptr inbounds nuw i8, ptr %.val9880, i64 %i.do
  store i64 0, ptr %i.gl, align 1
  %.val9527 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gm = getelementptr inbounds nuw i8, ptr %.val9527, i64 %i.dn
  %.0.copyload.i9993 = load i32, ptr %i.gm, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9993) #16
  %.not8959 = icmp eq i32 %.0.copyload.i9993, 0   ; 2 uses
  br i1 %.not8952, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %.not8959, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gn = shl i32 %.0.copyload.i9993, 2
  %i.go = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.gj, i32 noundef 255, i32 noundef %i.gn) ; 0 uses
  br label %bb.ai

bb.z:                                             ; preds = %bb.w
  br i1 %.not8959, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gp = shl i32 %.0.copyload.i9993, 2
  %i.gq = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.gj, i32 noundef 255, i32 noundef %i.gp) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not8954 = icmp eq i32 %.0.copyload.i9991, 0
  br i1 %.not8954, label %.loopexit10486, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gr = shl i32 %.0.copyload.i9991, 2
  %i.gs = add i32 %.0.copyload.i9992, %i.gr
  %.val9525 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gt = getelementptr inbounds nuw i8, ptr %.val9525, i64 %i.dn
  %.0.copyload.i9995 = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9995) #16, !srcloc !22
  %i.gu = add i32 %.0.copyload.i9995, -1          ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %bb.ac
  %.08626 = phi i32 [ %.0.copyload.i9992, %bb.ac ], [ %i.hu, %bb.ah ] ; 2 uses
  %.18448 = phi i32 [ 0, %bb.ac ], [ %.28449, %bb.ah ] ; 2 uses
  %i.gv = zext i32 %.08626 to i64
  %.val9524 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gw = getelementptr inbounds nuw i8, ptr %.val9524, i64 %i.gv
  %.0.copyload.i9996 = load i32, ptr %i.gw, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9996) #16, !srcloc !22
  %i.gx = icmp ult i32 %.0.copyload.i9996, -2
  br i1 %i.gx, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.gy = mul i32 %.0.copyload.i9996, 37
  %i.gz = and i32 %i.gy, %i.gu                    ; 2 uses
  %i.ha = shl i32 %i.gz, 2
  %i.hb = add i32 %i.ha, %i.gj                    ; 2 uses
  %i.hc = zext i32 %i.hb to i64                   ; 2 uses
  %.val9523 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.hd = getelementptr inbounds nuw i8, ptr %.val9523, i64 %i.hc
  %.0.copyload.i9997 = load i32, ptr %i.hd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9997) #16, !srcloc !22
  %i.he = icmp eq i32 %.0.copyload.i9996, %.0.copyload.i9997
  br i1 %i.he, label %.loopexit10483, label %.preheader10482

.preheader10482:                                  ; preds = %bb.ae, %bb.ag
  %.28593 = phi i32 [ %i.hj, %bb.ag ], [ 0, %bb.ae ] ; 3 uses
  %.18520 = phi i32 [ %i.hm, %bb.ag ], [ %i.gz, %bb.ae ]
  %.08482 = phi i32 [ %.0.copyload.i9998, %bb.ag ], [ %.0.copyload.i9997, %bb.ae ] ; 2 uses
  %.08420 = phi i32 [ %i.ho, %bb.ag ], [ %i.hb, %bb.ae ] ; 2 uses
  %.18386 = phi i32 [ %i.hl, %bb.ag ], [ 1, %bb.ae ] ; 2 uses
  %i.hf = icmp eq i32 %.08482, -1
  %.not8957 = icmp eq i32 %.28593, 0              ; 2 uses
  br i1 %i.hf, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.preheader10482
  %i.hg = select i1 %.not8957, i32 %.08420, i32 %.28593
  %.pre10807 = zext i32 %i.hg to i64
  br label %.loopexit10483

bb.ag:                                            ; preds = %.preheader10482
  %i.hh = icmp eq i32 %.08482, -2
  %i.hi = select i1 %i.hh, i1 %.not8957, i1 false
  %i.hj = select i1 %i.hi, i32 %.08420, i32 %.28593
  %i.hk = add i32 %.18386, %.18520
  %i.hl = add i32 %.18386, 1
  %i.hm = and i32 %i.hk, %i.gu                    ; 2 uses
  %i.hn = shl i32 %i.hm, 2
  %i.ho = add i32 %i.hn, %i.gj                    ; 2 uses
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %.val9522 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.hq = getelementptr inbounds nuw i8, ptr %.val9522, i64 %i.hp
  %.0.copyload.i9998 = load i32, ptr %i.hq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9998) #16, !srcloc !22
  %.not8956 = icmp eq i32 %.0.copyload.i9996, %.0.copyload.i9998
  br i1 %.not8956, label %.loopexit10483, label %.preheader10482

.loopexit10483:                                   ; preds = %bb.ag, %bb.ae, %bb.af
  %.pre-phi10808 = phi i64 [ %.pre10807, %bb.af ], [ %i.hc, %bb.ae ], [ %i.hp, %bb.ag ]
  %.val9755 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.hr = getelementptr inbounds nuw i8, ptr %.val9755, i64 %.pre-phi10808
  store i32 %.0.copyload.i9996, ptr %i.hr, align 1
  %i.hs = add i32 %.18448, 1                      ; 2 uses
  %.val9754 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ht = getelementptr inbounds nuw i8, ptr %.val9754, i64 %i.do
  store i32 %i.hs, ptr %i.ht, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit10483, %bb.ad
  %.28449 = phi i32 [ %i.hs, %.loopexit10483 ], [ %.18448, %bb.ad ]
  %i.hu = add i32 %.08626, 4                      ; 2 uses
  %.not8958 = icmp eq i32 %i.hu, %i.gs
  br i1 %.not8958, label %.loopexit10486, label %bb.ad

.loopexit10486:                                   ; preds = %bb.ah, %bb.ab
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i9992)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.x, %.loopexit10486, %bb.y
  %.val9521 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.hv = getelementptr inbounds nuw i8, ptr %.val9521, i64 %i.dp
  %.0.copyload.i9999 = load i32, ptr %i.hv, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9999) #16, !srcloc !22
  %.val9520 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.hw = getelementptr inbounds nuw i8, ptr %.val9520, i64 %i.dn
  %.0.copyload.i10000 = load i32, ptr %i.hw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10000) #16, !srcloc !22
  %.not8960 = icmp eq i32 %.0.copyload.i10000, 0
  br i1 %.not8960, label %.loopexit10485, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hx = add i32 %.0.copyload.i10000, -1         ; 2 uses
  %i.hy = mul nuw nsw i32 %i.ej, 37
  %i.hz = and i32 %i.hx, %i.hy                    ; 2 uses
  %i.ia = shl nuw i32 %i.hz, 2
  %i.ib = add i32 %i.ia, %.0.copyload.i9999       ; 3 uses
  %i.ic = zext i32 %i.ib to i64
  %.val9519 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.id = getelementptr inbounds nuw i8, ptr %.val9519, i64 %i.ic
  %.0.copyload.i10001 = load i32, ptr %i.id, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10001) #16, !srcloc !22
  %i.ie = icmp eq i32 %i.ej, %.0.copyload.i10001
  br i1 %i.ie, label %.loopexit10485, label %.preheader10484

.preheader10484:                                  ; preds = %bb.aj, %bb.al
  %.18649 = phi i32 [ %.0.copyload.i10002, %bb.al ], [ %.0.copyload.i10001, %bb.aj ] ; 2 uses
  %.38594 = phi i32 [ %i.io, %bb.al ], [ %i.ib, %bb.aj ] ; 2 uses
  %.08560 = phi i32 [ %i.ij, %bb.al ], [ 0, %bb.aj ] ; 3 uses
  %.28521 = phi i32 [ %i.im, %bb.al ], [ %i.hz, %bb.aj ]
  %.18369 = phi i32 [ %i.il, %bb.al ], [ 1, %bb.aj ] ; 2 uses
  %i.if = icmp eq i32 %.18649, -1
  %.not8963 = icmp eq i32 %.08560, 0              ; 2 uses
  br i1 %i.if, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.preheader10484
  %i.ig = select i1 %.not8963, i32 %.38594, i32 %.08560
  br label %.loopexit10485

bb.al:                                            ; preds = %.preheader10484
  %i.ih = icmp eq i32 %.18649, -2
  %i.ii = select i1 %i.ih, i1 %.not8963, i1 false
  %i.ij = select i1 %i.ii, i32 %.38594, i32 %.08560
  %i.ik = add i32 %.18369, %.28521
  %i.il = add i32 %.18369, 1
  %i.im = and i32 %i.ik, %i.hx                    ; 2 uses
  %i.in = shl i32 %i.im, 2
  %i.io = add i32 %i.in, %.0.copyload.i9999       ; 3 uses
  %i.ip = zext i32 %i.io to i64
  %.val9518 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.iq = getelementptr inbounds nuw i8, ptr %.val9518, i64 %i.ip
  %.0.copyload.i10002 = load i32, ptr %i.iq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10002) #16, !srcloc !22
  %.not8962 = icmp eq i32 %i.ej, %.0.copyload.i10002
  br i1 %.not8962, label %.loopexit10485, label %.preheader10484

.loopexit10485:                                   ; preds = %bb.al, %bb.ai, %bb.aj, %bb.v, %bb.ak
  %.48595 = phi i32 [ %.18592, %bb.v ], [ %i.ib, %bb.aj ], [ %i.ig, %bb.ak ], [ 0, %bb.ai ], [ %i.io, %bb.al ]
  %.28505 = phi i32 [ %.18504, %bb.v ], [ %.0.copyload.i9999, %bb.aj ], [ %.0.copyload.i9999, %bb.ak ], [ %.0.copyload.i9999, %bb.ai ], [ %.0.copyload.i9999, %bb.al ]
  %.val9517 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ir = getelementptr inbounds nuw i8, ptr %.val9517, i64 %i.do
  %.0.copyload.i10003 = load i32, ptr %i.ir, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10003) #16, !srcloc !22
  %i.is = add i32 %.0.copyload.i10003, 1
  %.val9753 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.it = getelementptr inbounds nuw i8, ptr %.val9753, i64 %i.do
  store i32 %i.is, ptr %i.it, align 1
  %i.iu = zext i32 %.48595 to i64                 ; 2 uses
  %.val9516 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.iv = getelementptr inbounds nuw i8, ptr %.val9516, i64 %i.iu
  %.0.copyload.i10004 = load i32, ptr %i.iv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10004) #16, !srcloc !22
  %.not8964 = icmp eq i32 %.0.copyload.i10004, -1
  br i1 %.not8964, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.loopexit10485
  %.val9515 = load ptr, ptr %i.d, align 8, !tbaa !21
end_hunk_6
begin_hunk_7_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AStringTableBuilder0x3A0x3ApackIntoStorage0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x2C0x20bool0x29:bb.a
  %i.od = zext i32 %i.oc to i64
  %.val9510 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.oe = getelementptr inbounds nuw i8, ptr %.val9510, i64 %i.od
  %.0.copyload.i10013 = load i32, ptr %i.oe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10013) #16, !srcloc !22
  %i.of = icmp eq i32 %i.ny, %.0.copyload.i10013
  br i1 %i.of, label %.loopexit10456, label %.preheader10454

.preheader10454:                                  ; preds = %bb.aw, %bb.ax
  %.38651 = phi i32 [ %.0.copyload.i10014, %bb.ax ], [ %.0.copyload.i10013, %bb.aw ]
  %.58596 = phi i32 [ %i.oj, %bb.ax ], [ %i.oa, %bb.aw ]
  %.08434 = phi i32 [ %i.oi, %bb.ax ], [ 1, %bb.aw ] ; 2 uses
  %i.og = icmp eq i32 %.38651, -1
  br i1 %i.og, label %.loopexit10455, label %bb.ax

bb.ax:                                            ; preds = %.preheader10454
  %i.oh = add i32 %.08434, %.58596
  %i.oi = add i32 %.08434, 1
  %i.oj = and i32 %i.oh, %i.na                    ; 2 uses
  %i.ok = shl i32 %i.oj, 2
  %i.ol = add i32 %i.ok, %.0.copyload.i10009
  %i.om = zext i32 %i.ol to i64
  %.val9509 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.on = getelementptr inbounds nuw i8, ptr %.val9509, i64 %i.om
  %.0.copyload.i10014 = load i32, ptr %i.on, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10014) #16, !srcloc !22
  %.not8972 = icmp eq i32 %i.ny, %.0.copyload.i10014
  br i1 %.not8972, label %.loopexit10456, label %.preheader10454

.loopexit10456:                                   ; preds = %bb.aw, %bb.au, %bb.ax
  %i.oo = sub i32 %.0.copyload.i10006, %i.nd      ; 3 uses
  %.not8974 = icmp eq i32 %.38563, 0              ; 2 uses
  br i1 %.not8974, label %.loopexit10472, label %bb.ay

.loopexit10455:                                   ; preds = %.preheader10454, %bb.av
  %.not8973 = icmp eq i32 %i.nd, 0
  br i1 %.not8973, label %.loopexit10475, label %bb.au

bb.ay:                                            ; preds = %.loopexit10456
  %i.op = add i32 %.38563, -1                     ; 3 uses
  %i.oq = and i32 %i.nl, %i.op                    ; 3 uses
  %.not8975 = icmp eq i32 %.0.copyload.i10006, %i.nd
  br i1 %.not8975, label %bb.bd, label %.preheader10648

.preheader10648:                                  ; preds = %bb.ay, %bb.bc
  %.38450 = phi i32 [ %i.pj, %bb.bc ], [ %i.oq, %bb.ay ] ; 2 uses
  %.28370 = phi i32 [ %i.pk, %bb.bc ], [ 1, %bb.ay ] ; 2 uses
  %i.or = mul i32 %.38450, 24
  %i.os = add i32 %i.or, %.28404                  ; 2 uses
  %i.ot = zext i32 %i.os to i64                   ; 3 uses
  %.val9944 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ou = getelementptr inbounds nuw i8, ptr %.val9944, i64 %i.ot
  %.0.copyload.i10015 = load i64, ptr %i.ou, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10015) #16, !srcloc !45
  %.val9508 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ov = getelementptr inbounds nuw i8, ptr %.val9508, i64 %i.ot
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %.0.copyload.i10016 = load i32, ptr %i.ow, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10016) #16, !srcloc !22
  %.not8978 = icmp eq i32 %.0.copyload.i10016, %i.nl
  %i.ox = lshr i64 %.0.copyload.i10015, 32
  %i.oy = trunc nuw i64 %i.ox to i32
  %.not8979 = icmp eq i32 %i.oo, %i.oy
  %or.cond9272 = select i1 %.not8978, i1 %.not8979, i1 false
  br i1 %or.cond9272, label %bb.az, label %.loopexit10452

bb.az:                                            ; preds = %.preheader10648
  %i.oz = trunc i64 %.0.copyload.i10015 to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %.78705 = phi i32 [ %i.oz, %bb.az ], [ %i.pe, %bb.bb ] ; 2 uses
  %.48652 = phi i32 [ %i.ne, %bb.az ], [ %i.pf, %bb.bb ] ; 2 uses
  %i.pa = zext i32 %.48652 to i64
  %.val9894 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.pb = getelementptr inbounds nuw i8, ptr %.val9894, i64 %i.pa
  %.0.copyload.i10017 = load i8, ptr %i.pb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i10017) #16, !srcloc !33
  %i.pc = zext i32 %.78705 to i64
  %.val9893 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.pd = getelementptr inbounds nuw i8, ptr %.val9893, i64 %i.pc
  %.0.copyload.i10018 = load i8, ptr %i.pd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i10018) #16, !srcloc !33
  %.not8980 = icmp eq i8 %.0.copyload.i10017, %.0.copyload.i10018
  br i1 %.not8980, label %bb.bb, label %.loopexit10452

bb.bb:                                            ; preds = %bb.ba
  %i.pe = add i32 %.78705, 1
  %i.pf = add i32 %.48652, 1                      ; 2 uses
  %.not8981 = icmp eq i32 %i.pf, %i.mx
  br i1 %.not8981, label %.loopexit10453, label %bb.ba

.loopexit10452:                                   ; preds = %bb.ba, %.preheader10648
  %.not8982 = icmp eq i32 %.0.copyload.i10016, 0
  %i.pg = icmp ult i64 %.0.copyload.i10015, 4294967296
  %i.ph = and i1 %i.pg, %.not8982
  br i1 %i.ph, label %.loopexit10472, label %bb.bc

bb.bc:                                            ; preds = %.loopexit10452
  %i.pi = add i32 %.28370, %.38450
  %i.pj = and i32 %i.pi, %i.op
  %i.pk = add i32 %.28370, 1
  br label %.preheader10648

bb.bd:                                            ; preds = %bb.ay
  %i.pl = mul i32 %i.oq, 24
  %i.pm = add i32 %i.pl, %.28404                  ; 2 uses
  %i.pn = zext i32 %i.pm to i64                   ; 3 uses
  %.val9943 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.po = getelementptr inbounds nuw i8, ptr %.val9943, i64 %i.pn
  %.0.copyload.i10019 = load i64, ptr %i.po, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10019) #16, !srcloc !45
  %.val9507 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.pp = getelementptr inbounds nuw i8, ptr %.val9507, i64 %i.pn
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %.0.copyload.i10020 = load i32, ptr %i.pq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10020) #16, !srcloc !22
  %i.pr = icmp eq i32 %i.nl, %.0.copyload.i10020
  %i.ps = icmp ult i64 %.0.copyload.i10019, 4294967296 ; 2 uses
  %i.pt = and i1 %i.ps, %i.pr
  br i1 %i.pt, label %.loopexit10453, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not8976 = icmp eq i32 %.0.copyload.i10020, 0
  %i.pu = and i1 %i.ps, %.not8976
  br i1 %i.pu, label %.loopexit10472, label %.preheader10470

.preheader10470:                                  ; preds = %bb.be, %bb.bf
  %.58653 = phi i32 [ %i.qg, %bb.bf ], [ 1, %bb.be ] ; 2 uses
  %.48451 = phi i32 [ %i.pw, %bb.bf ], [ %i.oq, %bb.be ]
  %i.pv = add i32 %.48451, %.58653
  %i.pw = and i32 %i.pv, %i.op                    ; 2 uses
  %i.px = mul i32 %i.pw, 24
  %i.py = add i32 %i.px, %.28404                  ; 2 uses
  %i.pz = zext i32 %i.py to i64                   ; 3 uses
  %.val9942 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.qa = getelementptr inbounds nuw i8, ptr %.val9942, i64 %i.pz
  %.0.copyload.i10021 = load i64, ptr %i.qa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10021) #16, !srcloc !45
  %.val9506 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.qb = getelementptr inbounds nuw i8, ptr %.val9506, i64 %i.pz
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %.0.copyload.i10022 = load i32, ptr %i.qc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10022) #16, !srcloc !22
  %i.qd = icmp eq i32 %i.nl, %.0.copyload.i10022
  %i.qe = icmp ult i64 %.0.copyload.i10021, 4294967296
  %i.qf = and i1 %i.qe, %i.qd
  br i1 %i.qf, label %.loopexit10453, label %bb.bf

bb.bf:                                            ; preds = %.preheader10470
  %i.qg = add i32 %.58653, 1
  %.not8977 = icmp ne i32 %.0.copyload.i10022, 0
  %i.qh = icmp ugt i64 %.0.copyload.i10021, 4294967295
  %or.cond9273 = select i1 %.not8977, i1 true, i1 %i.qh
  br i1 %or.cond9273, label %.preheader10470, label %.loopexit10472

.loopexit10472:                                   ; preds = %.loopexit10452, %bb.bf, %.loopexit10456, %bb.be
  %.68597 = phi i32 [ %i.py, %bb.bf ], [ %i.pm, %bb.be ], [ 0, %.loopexit10456 ], [ %i.os, %.loopexit10452 ] ; 2 uses
  %i.qi = shl i32 %.18531, 2
  %i.qj = add i32 %i.qi, 4
  %i.qk = mul i32 %.38563, 3
  %.not8983 = icmp ult i32 %i.qj, %i.qk
  br i1 %.not8983, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.loopexit10472
  %i.ql = shl i32 %.38563, 1
  br label %bb.bj

bb.bh:                                            ; preds = %.loopexit10472
  %i.qm = xor i32 %.18531, -1
  %i.qn = add i32 %.38563, %i.qm
  %i.qo = sub i32 %i.qn, %.18359
  %i.qp = lshr i32 %.38563, 3
  %.not8984 = icmp ugt i32 %i.qo, %i.qp
  br i1 %.not8984, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.qq = zext i32 %.68597 to i64
  %.val9505 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.qr = getelementptr inbounds nuw i8, ptr %.val9505, i64 %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %.0.copyload.i10023 = load i32, ptr %i.qs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10023) #16, !srcloc !22
  br label %.loopexit10448

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %.88706 = phi i32 [ %i.ql, %bb.bg ], [ %.38563, %bb.bh ]
  %i.qt = add i32 %.88706, -1
  %i.qu = zext i32 %i.qt to i64                   ; 2 uses
  %i.qv = lshr i64 %i.qu, 1
  %i.qw = or i64 %i.qv, %i.qu                     ; 2 uses
  %i.qx = lshr i64 %i.qw, 2
  %i.qy = or i64 %i.qx, %i.qw                     ; 2 uses
  %i.qz = lshr i64 %i.qy, 4
  %i.ra = or i64 %i.qz, %i.qy                     ; 2 uses
  %i.rb = lshr i64 %i.ra, 8
  %i.rc = or i64 %i.rb, %i.ra                     ; 2 uses
  %i.rd = lshr i64 %i.rc, 16
  %i.re = or i64 %i.rd, %i.rc
  %i.rf = trunc nuw i64 %i.re to i32
  %i.rg = add i32 %i.rf, 1
  %6 = tail call i32 @llvm.umax.i32(i32 %i.rg, i32 64) ; 9 uses
  %i.rh = mul i32 %6, 24                          ; 3 uses
  %i.ri = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.rh) #16 ; 31 uses
  %i.rj = add i32 %i.rh, %i.ri                    ; 2 uses
  %.not8985 = icmp eq i32 %.28404, 0
  %i.rk = add i32 %i.rh, -24                      ; 3 uses
  %i.rl = udiv i32 %i.rk, 24
  %i.rm = add nuw nsw i32 %i.rl, 1
  %i.rn = and i32 %i.rm, 7                        ; 13 uses
  %.not8986 = icmp eq i32 %i.rn, 0                ; 2 uses
  br i1 %.not8985, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not8986, label %.loopexit10469, label %.preheader10468

.preheader10468:                                  ; preds = %bb.bk
  %i.ro = zext i32 %i.ri to i64                   ; 2 uses
  %.val9741 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.rp = getelementptr inbounds nuw i8, ptr %.val9741, i64 %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  store i32 0, ptr %i.rq, align 1
  %.val9869 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.rr = getelementptr inbounds nuw i8, ptr %.val9869, i64 %i.ro
  store i64 4294967295, ptr %i.rr, align 1
  %i.rs = add i32 %i.ri, 24                       ; 2 uses
  %.not8990 = icmp eq i32 %i.rn, 1
  br i1 %.not8990, label %.loopexit10469, label %.preheader10468.1

.preheader10468.1:                                ; preds = %.preheader10468
  %i.rt = zext i32 %i.rs to i64                   ; 2 uses
  %.val9741.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ru = getelementptr inbounds nuw i8, ptr %.val9741.1, i64 %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store i32 0, ptr %i.rv, align 1
  %.val9869.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.rw = getelementptr inbounds nuw i8, ptr %.val9869.1, i64 %i.rt
  store i64 4294967295, ptr %i.rw, align 1
  %i.rx = add i32 %i.ri, 48                       ; 2 uses
  %.not8990.1 = icmp eq i32 %i.rn, 2
  br i1 %.not8990.1, label %.loopexit10469, label %.preheader10468.2

.preheader10468.2:                                ; preds = %.preheader10468.1
  %i.ry = zext i32 %i.rx to i64                   ; 2 uses
  %.val9741.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.rz = getelementptr inbounds nuw i8, ptr %.val9741.2, i64 %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i32 0, ptr %i.sa, align 1
  %.val9869.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sb = getelementptr inbounds nuw i8, ptr %.val9869.2, i64 %i.ry
  store i64 4294967295, ptr %i.sb, align 1
  %i.sc = add i32 %i.ri, 72                       ; 2 uses
  %.not8990.2 = icmp eq i32 %i.rn, 3
  br i1 %.not8990.2, label %.loopexit10469, label %.preheader10468.3

.preheader10468.3:                                ; preds = %.preheader10468.2
  %i.sd = zext i32 %i.sc to i64                   ; 2 uses
  %.val9741.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.se = getelementptr inbounds nuw i8, ptr %.val9741.3, i64 %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store i32 0, ptr %i.sf, align 1
  %.val9869.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sg = getelementptr inbounds nuw i8, ptr %.val9869.3, i64 %i.sd
  store i64 4294967295, ptr %i.sg, align 1
  %i.sh = add i32 %i.ri, 96                       ; 2 uses
  %.not8990.3 = icmp eq i32 %i.rn, 4
  br i1 %.not8990.3, label %.loopexit10469, label %.preheader10468.4

.preheader10468.4:                                ; preds = %.preheader10468.3
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %.val9741.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sj = getelementptr inbounds nuw i8, ptr %.val9741.4, i64 %i.si
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  store i32 0, ptr %i.sk, align 1
  %.val9869.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sl = getelementptr inbounds nuw i8, ptr %.val9869.4, i64 %i.si
  store i64 4294967295, ptr %i.sl, align 1
  %i.sm = add i32 %i.ri, 120                      ; 2 uses
  %.not8990.4 = icmp eq i32 %i.rn, 5
  br i1 %.not8990.4, label %.loopexit10469, label %.preheader10468.5

.preheader10468.5:                                ; preds = %.preheader10468.4
  %i.sn = zext i32 %i.sm to i64                   ; 2 uses
  %.val9741.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.so = getelementptr inbounds nuw i8, ptr %.val9741.5, i64 %i.sn
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store i32 0, ptr %i.sp, align 1
  %.val9869.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sq = getelementptr inbounds nuw i8, ptr %.val9869.5, i64 %i.sn
  store i64 4294967295, ptr %i.sq, align 1
  %i.sr = add i32 %i.ri, 144                      ; 2 uses
  %.not8990.5 = icmp eq i32 %i.rn, 6
  br i1 %.not8990.5, label %.loopexit10469, label %.preheader10468.6

.preheader10468.6:                                ; preds = %.preheader10468.5
  %i.ss = zext i32 %i.sr to i64                   ; 2 uses
  %.val9741.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.st = getelementptr inbounds nuw i8, ptr %.val9741.6, i64 %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store i32 0, ptr %i.su, align 1
  %.val9869.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sv = getelementptr inbounds nuw i8, ptr %.val9869.6, i64 %i.ss
  store i64 4294967295, ptr %i.sv, align 1
  %i.sw = add i32 %i.ri, 168
  br label %.loopexit10469

.loopexit10469:                                   ; preds = %.preheader10468, %.preheader10468.1, %.preheader10468.2, %.preheader10468.3, %.preheader10468.4, %.preheader10468.5, %.preheader10468.6, %bb.bk
  %.108708 = phi i32 [ %i.ri, %bb.bk ], [ %i.rs, %.preheader10468 ], [ %i.rx, %.preheader10468.1 ], [ %i.sc, %.preheader10468.2 ], [ %i.sh, %.preheader10468.3 ], [ %i.sm, %.preheader10468.4 ], [ %i.sr, %.preheader10468.5 ], [ %i.sw, %.preheader10468.6 ]
  %i.sx = icmp ugt i32 %i.rk, 167
  br i1 %i.sx, label %.preheader10466, label %.loopexit10467

.preheader10466:                                  ; preds = %.loopexit10469, %.preheader10466
  %.118709 = phi i32 [ %i.ue, %.preheader10466 ], [ %.108708, %.loopexit10469 ] ; 2 uses
  %i.sy = zext i32 %.118709 to i64                ; 16 uses
  %.val9868 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sz = getelementptr inbounds nuw i8, ptr %.val9868, i64 %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 168
  store i64 4294967295, ptr %i.ta, align 1
  %.val9867 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tb = getelementptr inbounds nuw i8, ptr %.val9867, i64 %i.sy
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 144
  store i64 4294967295, ptr %i.tc, align 1
  %.val9866 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.td = getelementptr inbounds nuw i8, ptr %.val9866, i64 %i.sy
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 120
  store i64 4294967295, ptr %i.te, align 1
  %.val9865 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tf = getelementptr inbounds nuw i8, ptr %.val9865, i64 %i.sy
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 96
  store i64 4294967295, ptr %i.tg, align 1
  %.val9864 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.th = getelementptr inbounds nuw i8, ptr %.val9864, i64 %i.sy
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 72
  store i64 4294967295, ptr %i.ti, align 1
  %.val9863 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tj = getelementptr inbounds nuw i8, ptr %.val9863, i64 %i.sy
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 48
  store i64 4294967295, ptr %i.tk, align 1
  %.val9862 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tl = getelementptr inbounds nuw i8, ptr %.val9862, i64 %i.sy
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  store i64 4294967295, ptr %i.tm, align 1
  %.val9740 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tn = getelementptr inbounds nuw i8, ptr %.val9740, i64 %i.sy
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store i32 0, ptr %i.to, align 1
  %.val9861 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tp = getelementptr inbounds nuw i8, ptr %.val9861, i64 %i.sy
  store i64 4294967295, ptr %i.tp, align 1
  %.val9739 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tq = getelementptr inbounds nuw i8, ptr %.val9739, i64 %i.sy
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 176
  store i32 0, ptr %i.tr, align 1
  %.val9738 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ts = getelementptr inbounds nuw i8, ptr %.val9738, i64 %i.sy
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 152
  store i32 0, ptr %i.tt, align 1
  %.val9737 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tu = getelementptr inbounds nuw i8, ptr %.val9737, i64 %i.sy
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 128
  store i32 0, ptr %i.tv, align 1
  %.val9736 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tw = getelementptr inbounds nuw i8, ptr %.val9736, i64 %i.sy
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 104
  store i32 0, ptr %i.tx, align 1
  %.val9735 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ty = getelementptr inbounds nuw i8, ptr %.val9735, i64 %i.sy
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 80
  store i32 0, ptr %i.tz, align 1
  %.val9734 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ua = getelementptr inbounds nuw i8, ptr %.val9734, i64 %i.sy
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 56
  store i32 0, ptr %i.ub, align 1
  %.val9733 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.uc = getelementptr inbounds nuw i8, ptr %.val9733, i64 %i.sy
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  store i32 0, ptr %i.ud, align 1
  %i.ue = add i32 %.118709, 192                   ; 2 uses
  %.not8991 = icmp eq i32 %i.ue, %i.rj
  br i1 %.not8991, label %.loopexit10467, label %.preheader10466

.loopexit10467:                                   ; preds = %.preheader10466, %.loopexit10469
  br i1 %.not8974, label %.loopexit10465, label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  br i1 %.not8986, label %.loopexit10464, label %.preheader10463

.preheader10463:                                  ; preds = %bb.bl
  %i.uf = zext i32 %i.ri to i64                   ; 2 uses
  %.val9732 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ug = getelementptr inbounds nuw i8, ptr %.val9732, i64 %i.uf
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  store i32 0, ptr %i.uh, align 1
  %.val9860 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ui = getelementptr inbounds nuw i8, ptr %.val9860, i64 %i.uf
  store i64 4294967295, ptr %i.ui, align 1
  %i.uj = add i32 %i.ri, 24                       ; 2 uses
  %.not8987 = icmp eq i32 %i.rn, 1
  br i1 %.not8987, label %.loopexit10464, label %.preheader10463.1

.preheader10463.1:                                ; preds = %.preheader10463
  %i.uk = zext i32 %i.uj to i64                   ; 2 uses
  %.val9732.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ul = getelementptr inbounds nuw i8, ptr %.val9732.1, i64 %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  store i32 0, ptr %i.um, align 1
  %.val9860.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.un = getelementptr inbounds nuw i8, ptr %.val9860.1, i64 %i.uk
  store i64 4294967295, ptr %i.un, align 1
  %i.uo = add i32 %i.ri, 48                       ; 2 uses
  %.not8987.1 = icmp eq i32 %i.rn, 2
  br i1 %.not8987.1, label %.loopexit10464, label %.preheader10463.2

.preheader10463.2:                                ; preds = %.preheader10463.1
  %i.up = zext i32 %i.uo to i64                   ; 2 uses
  %.val9732.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.uq = getelementptr inbounds nuw i8, ptr %.val9732.2, i64 %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store i32 0, ptr %i.ur, align 1
  %.val9860.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.us = getelementptr inbounds nuw i8, ptr %.val9860.2, i64 %i.up
  store i64 4294967295, ptr %i.us, align 1
  %i.ut = add i32 %i.ri, 72                       ; 2 uses
  %.not8987.2 = icmp eq i32 %i.rn, 3
  br i1 %.not8987.2, label %.loopexit10464, label %.preheader10463.3

.preheader10463.3:                                ; preds = %.preheader10463.2
  %i.uu = zext i32 %i.ut to i64                   ; 2 uses
  %.val9732.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.uv = getelementptr inbounds nuw i8, ptr %.val9732.3, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store i32 0, ptr %i.uw, align 1
  %.val9860.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ux = getelementptr inbounds nuw i8, ptr %.val9860.3, i64 %i.uu
  store i64 4294967295, ptr %i.ux, align 1
  %i.uy = add i32 %i.ri, 96                       ; 2 uses
  %.not8987.3 = icmp eq i32 %i.rn, 4
  br i1 %.not8987.3, label %.loopexit10464, label %.preheader10463.4

.preheader10463.4:                                ; preds = %.preheader10463.3
  %i.uz = zext i32 %i.uy to i64                   ; 2 uses
  %.val9732.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.va = getelementptr inbounds nuw i8, ptr %.val9732.4, i64 %i.uz
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  store i32 0, ptr %i.vb, align 1
  %.val9860.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vc = getelementptr inbounds nuw i8, ptr %.val9860.4, i64 %i.uz
  store i64 4294967295, ptr %i.vc, align 1
  %i.vd = add i32 %i.ri, 120                      ; 2 uses
  %.not8987.4 = icmp eq i32 %i.rn, 5
  br i1 %.not8987.4, label %.loopexit10464, label %.preheader10463.5

.preheader10463.5:                                ; preds = %.preheader10463.4
  %i.ve = zext i32 %i.vd to i64                   ; 2 uses
  %.val9732.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vf = getelementptr inbounds nuw i8, ptr %.val9732.5, i64 %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  store i32 0, ptr %i.vg, align 1
  %.val9860.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vh = getelementptr inbounds nuw i8, ptr %.val9860.5, i64 %i.ve
  store i64 4294967295, ptr %i.vh, align 1
  %i.vi = add i32 %i.ri, 144                      ; 2 uses
  %.not8987.5 = icmp eq i32 %i.rn, 6
  br i1 %.not8987.5, label %.loopexit10464, label %.preheader10463.6

.preheader10463.6:                                ; preds = %.preheader10463.5
  %i.vj = zext i32 %i.vi to i64                   ; 2 uses
  %.val9732.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vk = getelementptr inbounds nuw i8, ptr %.val9732.6, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  store i32 0, ptr %i.vl, align 1
  %.val9860.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vm = getelementptr inbounds nuw i8, ptr %.val9860.6, i64 %i.vj
  store i64 4294967295, ptr %i.vm, align 1
  %i.vn = add i32 %i.ri, 168
  br label %.loopexit10464

.loopexit10464:                                   ; preds = %.preheader10463, %.preheader10463.1, %.preheader10463.2, %.preheader10463.3, %.preheader10463.4, %.preheader10463.5, %.preheader10463.6, %bb.bl
  %.138711 = phi i32 [ %i.ri, %bb.bl ], [ %i.uj, %.preheader10463 ], [ %i.uo, %.preheader10463.1 ], [ %i.ut, %.preheader10463.2 ], [ %i.uy, %.preheader10463.3 ], [ %i.vd, %.preheader10463.4 ], [ %i.vi, %.preheader10463.5 ], [ %i.vn, %.preheader10463.6 ]
  %i.vo = icmp ult i32 %i.rk, 168
  br i1 %i.vo, label %.loopexit10462, label %.preheader10461

.preheader10461:                                  ; preds = %.loopexit10464, %.preheader10461
  %.148712 = phi i32 [ %i.wv, %.preheader10461 ], [ %.138711, %.loopexit10464 ] ; 2 uses
  %i.vp = zext i32 %.148712 to i64                ; 16 uses
  %.val9859 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vq = getelementptr inbounds nuw i8, ptr %.val9859, i64 %i.vp
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 168
  store i64 4294967295, ptr %i.vr, align 1
  %.val9858 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vs = getelementptr inbounds nuw i8, ptr %.val9858, i64 %i.vp
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 144
  store i64 4294967295, ptr %i.vt, align 1
  %.val9857 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vu = getelementptr inbounds nuw i8, ptr %.val9857, i64 %i.vp
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 120
  store i64 4294967295, ptr %i.vv, align 1
  %.val9856 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vw = getelementptr inbounds nuw i8, ptr %.val9856, i64 %i.vp
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 96
  store i64 4294967295, ptr %i.vx, align 1
  %.val9855 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vy = getelementptr inbounds nuw i8, ptr %.val9855, i64 %i.vp
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 72
  store i64 4294967295, ptr %i.vz, align 1
  %.val9854 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wa = getelementptr inbounds nuw i8, ptr %.val9854, i64 %i.vp
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 48
  store i64 4294967295, ptr %i.wb, align 1
  %.val9853 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wc = getelementptr inbounds nuw i8, ptr %.val9853, i64 %i.vp
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  store i64 4294967295, ptr %i.wd, align 1
  %.val9731 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.we = getelementptr inbounds nuw i8, ptr %.val9731, i64 %i.vp
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  store i32 0, ptr %i.wf, align 1
  %.val9852 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wg = getelementptr inbounds nuw i8, ptr %.val9852, i64 %i.vp
  store i64 4294967295, ptr %i.wg, align 1
  %.val9730 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wh = getelementptr inbounds nuw i8, ptr %.val9730, i64 %i.vp
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 176
  store i32 0, ptr %i.wi, align 1
  %.val9729 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wj = getelementptr inbounds nuw i8, ptr %.val9729, i64 %i.vp
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 152
  store i32 0, ptr %i.wk, align 1
  %.val9728 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wl = getelementptr inbounds nuw i8, ptr %.val9728, i64 %i.vp
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 128
  store i32 0, ptr %i.wm, align 1
  %.val9727 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wn = getelementptr inbounds nuw i8, ptr %.val9727, i64 %i.vp
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 104
  store i32 0, ptr %i.wo, align 1
  %.val9726 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wp = getelementptr inbounds nuw i8, ptr %.val9726, i64 %i.vp
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 80
  store i32 0, ptr %i.wq, align 1
  %.val9725 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wr = getelementptr inbounds nuw i8, ptr %.val9725, i64 %i.vp
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 56
  store i32 0, ptr %i.ws, align 1
  %.val9724 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wt = getelementptr inbounds nuw i8, ptr %.val9724, i64 %i.vp
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 32
  store i32 0, ptr %i.wu, align 1
  %i.wv = add i32 %.148712, 192                   ; 2 uses
  %.not8988 = icmp eq i32 %i.wv, %i.rj
  br i1 %.not8988, label %.loopexit10462, label %.preheader10461

bb.bm:                                            ; preds = %.loopexit10467
  %i.ww = mul i32 %.38563, 24
  %i.wx = add i32 %.28404, %i.ww
  %i.wy = add i32 %6, -1                          ; 3 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bx, %bb.bm
  %.78598 = phi i32 [ %.28404, %bb.bm ], [ %i.zu, %bb.bx ] ; 2 uses
  %.28532 = phi i32 [ 0, %bb.bm ], [ %.38533, %bb.bx ] ; 2 uses
  %i.wz = zext i32 %.78598 to i64                 ; 6 uses
  %i.xa = add nuw nsw i64 %i.wz, 8                ; 2 uses
  %.val9504 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xb = getelementptr inbounds nuw i8, ptr %.val9504, i64 %i.xa
  %.0.copyload.i10024 = load i32, ptr %i.xb, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10024) #16, !srcloc !22
  %.not8992 = icmp ne i32 %.0.copyload.i10024, 0
  %.val9941 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xc = getelementptr inbounds nuw i8, ptr %.val9941, i64 %i.wz
  %.0.copyload.i10025 = load i64, ptr %i.xc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10025) #16, !srcloc !45
  %i.xd = icmp ugt i64 %.0.copyload.i10025, 4294967295
  %.not8994 = or i1 %.not8992, %i.xd
  br i1 %.not8994, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  %i.xe = and i32 %.0.copyload.i10024, %i.wy      ; 3 uses
  %i.xf = lshr i64 %.0.copyload.i10025, 32        ; 3 uses
  %.not8995 = icmp eq i64 %i.xf, 0
  br i1 %.not8995, label %bb.bv, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.xg = trunc nuw i64 %i.xf to i32
  %i.xh = trunc i64 %.0.copyload.i10025 to i32    ; 2 uses
  %i.xi = add i32 %i.xg, %i.xh
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bu, %bb.bp
  %.38371 = phi i32 [ %i.xe, %bb.bp ], [ %i.ya, %bb.bu ] ; 2 uses
  %.08355 = phi i32 [ 1, %bb.bp ], [ %i.yb, %bb.bu ] ; 2 uses
  %i.xj = mul i32 %.38371, 24
  %i.xk = add i32 %i.xj, %i.ri
  %i.xl = zext i32 %i.xk to i64                   ; 4 uses
  %.val9940 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xm = getelementptr inbounds nuw i8, ptr %.val9940, i64 %i.xl
  %.0.copyload.i10026 = load i64, ptr %i.xm, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10026) #16, !srcloc !45
  %.val9503 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xn = getelementptr inbounds nuw i8, ptr %.val9503, i64 %i.xl
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %.0.copyload.i10027 = load i32, ptr %i.xo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10027) #16, !srcloc !22
  %.not8998 = icmp eq i32 %.0.copyload.i10027, %.0.copyload.i10024
  %i.xp = lshr i64 %.0.copyload.i10026, 32
  %.not8999 = icmp eq i64 %i.xf, %i.xp
  %or.cond9274 = select i1 %.not8998, i1 %.not8999, i1 false
  br i1 %or.cond9274, label %bb.br, label %.loopexit10445

bb.br:                                            ; preds = %bb.bq
  %i.xq = trunc i64 %.0.copyload.i10026 to i32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %bb.br
  %.158713 = phi i32 [ %i.xq, %bb.br ], [ %i.xv, %bb.bt ] ; 2 uses
  %.88656 = phi i32 [ %i.xh, %bb.br ], [ %i.xw, %bb.bt ] ; 2 uses
  %i.xr = zext i32 %.88656 to i64
  %.val9892 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xs = getelementptr inbounds nuw i8, ptr %.val9892, i64 %i.xr
  %.0.copyload.i10028 = load i8, ptr %i.xs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i10028) #16, !srcloc !33
  %i.xt = zext i32 %.158713 to i64
  %.val9891 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xu = getelementptr inbounds nuw i8, ptr %.val9891, i64 %i.xt
  %.0.copyload.i10029 = load i8, ptr %i.xu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i10029) #16, !srcloc !33
  %.not9000 = icmp eq i8 %.0.copyload.i10028, %.0.copyload.i10029
  br i1 %.not9000, label %bb.bt, label %.loopexit10445

bb.bt:                                            ; preds = %bb.bs
  %i.xv = add i32 %.158713, 1
  %i.xw = add i32 %.88656, 1                      ; 2 uses
  %.not9001 = icmp eq i32 %i.xw, %i.xi
  br i1 %.not9001, label %.loopexit10446, label %bb.bs

.loopexit10445:                                   ; preds = %bb.bs, %bb.bq
  %.not9002 = icmp eq i32 %.0.copyload.i10027, 0
  %i.xx = icmp ult i64 %.0.copyload.i10026, 4294967296
  %i.xy = and i1 %i.xx, %.not9002
  br i1 %i.xy, label %.loopexit10446, label %bb.bu

bb.bu:                                            ; preds = %.loopexit10445
  %i.xz = add i32 %.08355, %.38371
  %i.ya = and i32 %i.xz, %i.wy
  %i.yb = add i32 %.08355, 1
  br label %bb.bq

bb.bv:                                            ; preds = %bb.bo
  %i.yc = mul i32 %i.xe, 24
  %i.yd = add i32 %i.yc, %i.ri
  %i.ye = zext i32 %i.yd to i64                   ; 3 uses
  %.val9939 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yf = getelementptr inbounds nuw i8, ptr %.val9939, i64 %i.ye
  %.0.copyload.i10030 = load i64, ptr %i.yf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10030) #16, !srcloc !45
  %.val9502 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yg = getelementptr inbounds nuw i8, ptr %.val9502, i64 %i.ye
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %.0.copyload.i10031 = load i32, ptr %i.yh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10031) #16, !srcloc !22
  %i.yi = icmp eq i32 %.0.copyload.i10024, %.0.copyload.i10031
  %i.yj = icmp ult i64 %.0.copyload.i10030, 4294967296
  %.not8996 = icmp eq i32 %.0.copyload.i10031, 0
  %i.yk = or i1 %i.yi, %.not8996
  %or.cond9275 = and i1 %i.yj, %i.yk
  br i1 %or.cond9275, label %.loopexit10446, label %.preheader10449

.preheader10449:                                  ; preds = %bb.bv, %bb.bw
  %.98657 = phi i32 [ %i.yw, %bb.bw ], [ 1, %bb.bv ] ; 2 uses
  %.48372 = phi i32 [ %i.ym, %bb.bw ], [ %i.xe, %bb.bv ]
  %i.yl = add i32 %.48372, %.98657
  %i.ym = and i32 %i.yl, %i.wy                    ; 2 uses
  %i.yn = mul i32 %i.ym, 24
  %i.yo = add i32 %i.yn, %i.ri
  %i.yp = zext i32 %i.yo to i64                   ; 4 uses
  %.val9938 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yq = getelementptr inbounds nuw i8, ptr %.val9938, i64 %i.yp
  %.0.copyload.i10032 = load i64, ptr %i.yq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10032) #16, !srcloc !45
  %.val9501 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yr = getelementptr inbounds nuw i8, ptr %.val9501, i64 %i.yp
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %.0.copyload.i10033 = load i32, ptr %i.ys, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10033) #16, !srcloc !22
  %i.yt = icmp eq i32 %.0.copyload.i10024, %.0.copyload.i10033
  %i.yu = icmp ult i64 %.0.copyload.i10032, 4294967296
  %i.yv = and i1 %i.yu, %i.yt
  br i1 %i.yv, label %.loopexit10446, label %bb.bw

bb.bw:                                            ; preds = %.preheader10449
  %i.yw = add i32 %.98657, 1
  %.not8997 = icmp ne i32 %.0.copyload.i10033, 0
  %i.yx = icmp ugt i64 %.0.copyload.i10032, 4294967295
  %or.cond9276 = select i1 %.not8997, i1 true, i1 %i.yx
  br i1 %or.cond9276, label %.preheader10449, label %.loopexit10446

.loopexit10446:                                   ; preds = %.loopexit10445, %bb.bw, %.preheader10449, %bb.bt, %bb.bv
  %.pre-phi10806 = phi i64 [ %i.yp, %bb.bw ], [ %i.xl, %bb.bt ], [ %i.ye, %bb.bv ], [ %i.yp, %.preheader10449 ], [ %i.xl, %.loopexit10445 ] ; 5 uses
  %.val9937 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yy = getelementptr inbounds nuw i8, ptr %.val9937, i64 %i.wz
  %.0.copyload.i10034 = load i64, ptr %i.yy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10034) #16, !srcloc !45
  %.val9851 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yz = getelementptr inbounds nuw i8, ptr %.val9851, i64 %.pre-phi10806
  store i64 %.0.copyload.i10034, ptr %i.yz, align 1
  %.val9500 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.za = getelementptr inbounds nuw i8, ptr %.val9500, i64 %i.xa
  %.0.copyload.i10035 = load i32, ptr %i.za, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10035) #16, !srcloc !22
  %.val9723 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zb = getelementptr inbounds nuw i8, ptr %.val9723, i64 %.pre-phi10806
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store i32 %.0.copyload.i10035, ptr %i.zc, align 1
  %i.zd = add nuw nsw i64 %.pre-phi10806, 20      ; 2 uses
  %.val9722 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ze = getelementptr inbounds nuw i8, ptr %.val9722, i64 %i.zd
  store i32 0, ptr %i.ze, align 1
  %i.zf = add nuw nsw i64 %.pre-phi10806, 12      ; 2 uses
  %.val9850 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zg = getelementptr inbounds nuw i8, ptr %.val9850, i64 %i.zf
  store i64 0, ptr %i.zg, align 1
  %i.zh = add nuw nsw i64 %i.wz, 12               ; 2 uses
  %.val9499 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zi = getelementptr inbounds nuw i8, ptr %.val9499, i64 %i.zh
  %.0.copyload.i10036 = load i32, ptr %i.zi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10036) #16, !srcloc !22
  %.val9721 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zj = getelementptr inbounds nuw i8, ptr %.val9721, i64 %i.zf
  store i32 %.0.copyload.i10036, ptr %i.zj, align 1
  %.val9498 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zk = getelementptr inbounds nuw i8, ptr %.val9498, i64 %i.wz
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %.0.copyload.i10037 = load i32, ptr %i.zl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10037) #16, !srcloc !22
  %.val9720 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zm = getelementptr inbounds nuw i8, ptr %.val9720, i64 %.pre-phi10806
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  store i32 %.0.copyload.i10037, ptr %i.zn, align 1
  %i.zo = add nuw nsw i64 %i.wz, 20               ; 2 uses
  %.val9497 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zp = getelementptr inbounds nuw i8, ptr %.val9497, i64 %i.zo
  %.0.copyload.i10038 = load i32, ptr %i.zp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10038) #16, !srcloc !22
  %.val9719 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zq = getelementptr inbounds nuw i8, ptr %.val9719, i64 %i.zd
  store i32 %.0.copyload.i10038, ptr %i.zq, align 1
  %.val9718 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zr = getelementptr inbounds nuw i8, ptr %.val9718, i64 %i.zo
  store i32 0, ptr %i.zr, align 1
  %.val9849 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zs = getelementptr inbounds nuw i8, ptr %.val9849, i64 %i.zh
  store i64 0, ptr %i.zs, align 1
  %i.zt = add i32 %.28532, 1
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit10446, %bb.bn
  %.38533 = phi i32 [ %i.zt, %.loopexit10446 ], [ %.28532, %bb.bn ] ; 2 uses
  %i.zu = add i32 %.78598, 24                     ; 2 uses
  %.not9003 = icmp eq i32 %i.zu, %i.wx
  br i1 %.not9003, label %.loopexit10465, label %bb.bn

.loopexit10465:                                   ; preds = %bb.bx, %.loopexit10467
  %.48534 = phi i32 [ 0, %.loopexit10467 ], [ %.38533, %bb.bx ]
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %.28404)
  br label %.loopexit10462

.loopexit10462:                                   ; preds = %.preheader10461, %.loopexit10464, %.loopexit10465
  %.58535 = phi i32 [ %.48534, %.loopexit10465 ], [ 0, %.loopexit10464 ], [ 0, %.preheader10461 ] ; 6 uses
  %i.zv = add i32 %6, -1                          ; 3 uses
  %i.zw = and i32 %i.zv, %i.nl                    ; 3 uses
  %.not9004 = icmp eq i32 %.0.copyload.i10006, %i.nd
  br i1 %.not9004, label %bb.cc, label %.preheader10645

.preheader10645:                                  ; preds = %.loopexit10462, %bb.cb
  %.58565 = phi i32 [ %i.aao, %bb.cb ], [ %i.zw, %.loopexit10462 ] ; 2 uses
  %.18435 = phi i32 [ %i.aap, %bb.cb ], [ 1, %.loopexit10462 ] ; 2 uses
  %i.zx = mul i32 %.58565, 24
  %i.zy = add i32 %i.zx, %i.ri                    ; 2 uses
  %i.zz = zext i32 %i.zy to i64                   ; 3 uses
  %.val9936 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aaa = getelementptr inbounds nuw i8, ptr %.val9936, i64 %i.zz
  %.0.copyload.i10039 = load i64, ptr %i.aaa, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10039) #16, !srcloc !45
  %.val9496 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aab = getelementptr inbounds nuw i8, ptr %.val9496, i64 %i.zz
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %.0.copyload.i10040 = load i32, ptr %i.aac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10040) #16, !srcloc !22
  %.not9007 = icmp eq i32 %.0.copyload.i10040, %i.nl
  %i.aad = lshr i64 %.0.copyload.i10039, 32
  %i.aae = trunc nuw i64 %i.aad to i32
  %.not9008 = icmp eq i32 %i.oo, %i.aae
  %or.cond9278 = select i1 %.not9007, i1 %.not9008, i1 false
  br i1 %or.cond9278, label %bb.by, label %.loopexit10447

bb.by:                                            ; preds = %.preheader10645
  %i.aaf = trunc i64 %.0.copyload.i10039 to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %bb.by
  %.168714 = phi i32 [ %i.aaf, %bb.by ], [ %i.aak, %bb.ca ] ; 2 uses
  %.108658 = phi i32 [ %i.ne, %bb.by ], [ %i.aal, %bb.ca ] ; 2 uses
  %i.aag = zext i32 %.108658 to i64
  %.val9890 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aah = getelementptr inbounds nuw i8, ptr %.val9890, i64 %i.aag
  %.0.copyload.i10041 = load i8, ptr %i.aah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i10041) #16, !srcloc !33
  %i.aai = zext i32 %.168714 to i64
  %.val9889 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aaj = getelementptr inbounds nuw i8, ptr %.val9889, i64 %i.aai
  %.0.copyload.i10042 = load i8, ptr %i.aaj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i10042) #16, !srcloc !33
  %.not9009 = icmp eq i8 %.0.copyload.i10041, %.0.copyload.i10042
  br i1 %.not9009, label %bb.ca, label %.loopexit10447

bb.ca:                                            ; preds = %bb.bz
  %i.aak = add i32 %.168714, 1
  %i.aal = add i32 %.108658, 1                    ; 2 uses
  %.not9010 = icmp eq i32 %i.aal, %i.mx
  br i1 %.not9010, label %.loopexit10448, label %bb.bz

.loopexit10447:                                   ; preds = %bb.bz, %.preheader10645
  %.not9012 = icmp eq i32 %.0.copyload.i10040, 0
  %i.aam = icmp ult i64 %.0.copyload.i10039, 4294967296
  %or.cond9279 = select i1 %.not9012, i1 %i.aam, i1 false
  br i1 %or.cond9279, label %.loopexit10459, label %bb.cb

bb.cb:                                            ; preds = %.loopexit10447
  %i.aan = add i32 %.18435, %.58565
  %i.aao = and i32 %i.aan, %i.zv
  %i.aap = add i32 %.18435, 1
  br label %.preheader10645

bb.cc:                                            ; preds = %.loopexit10462
  %i.aaq = mul i32 %i.zw, 24
  %i.aar = add i32 %i.aaq, %i.ri                  ; 2 uses
  %i.aas = zext i32 %i.aar to i64                 ; 3 uses
  %.val9935 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aat = getelementptr inbounds nuw i8, ptr %.val9935, i64 %i.aas
  %.0.copyload.i10043 = load i64, ptr %i.aat, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10043) #16, !srcloc !45
  %.val9495 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aau = getelementptr inbounds nuw i8, ptr %.val9495, i64 %i.aas
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %.0.copyload.i10044 = load i32, ptr %i.aav, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10044) #16, !srcloc !22
  %i.aaw = icmp eq i32 %i.nl, %.0.copyload.i10044
  %i.aax = icmp ult i64 %.0.copyload.i10043, 4294967296 ; 2 uses
  %or.cond9280 = select i1 %i.aaw, i1 %i.aax, i1 false
  br i1 %or.cond9280, label %.loopexit10448, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not9005 = icmp eq i32 %.0.copyload.i10044, 0
  %or.cond9281 = select i1 %.not9005, i1 %i.aax, i1 false
  br i1 %or.cond9281, label %.loopexit10459, label %.preheader10457

.preheader10457:                                  ; preds = %bb.cd, %bb.ce
  %.118659 = phi i32 [ %i.abi, %bb.ce ], [ 1, %bb.cd ] ; 2 uses
  %.68566 = phi i32 [ %i.aaz, %bb.ce ], [ %i.zw, %bb.cd ]
  %i.aay = add i32 %.68566, %.118659
  %i.aaz = and i32 %i.aay, %i.zv                  ; 2 uses
  %i.aba = mul i32 %i.aaz, 24
  %i.abb = add i32 %i.aba, %i.ri                  ; 2 uses
  %i.abc = zext i32 %i.abb to i64                 ; 3 uses
  %.val9934 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.abd = getelementptr inbounds nuw i8, ptr %.val9934, i64 %i.abc
  %.0.copyload.i10045 = load i64, ptr %i.abd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10045) #16, !srcloc !45
  %.val9494 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.abe = getelementptr inbounds nuw i8, ptr %.val9494, i64 %i.abc
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %.0.copyload.i10046 = load i32, ptr %i.abf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10046) #16, !srcloc !22
  %i.abg = icmp eq i32 %i.nl, %.0.copyload.i10046
  %i.abh = icmp ult i64 %.0.copyload.i10045, 4294967296
  %or.cond9282 = select i1 %i.abg, i1 %i.abh, i1 false
  br i1 %or.cond9282, label %.loopexit10448, label %bb.ce

bb.ce:                                            ; preds = %.preheader10457
  %i.abi = add i32 %.118659, 1
  %.not9006 = icmp ne i32 %.0.copyload.i10046, 0
  %i.abj = icmp ugt i64 %.0.copyload.i10045, 4294967295
  %or.cond9283 = select i1 %.not9006, i1 true, i1 %i.abj
  br i1 %or.cond9283, label %.preheader10457, label %.loopexit10459

.loopexit10448:                                   ; preds = %.preheader10457, %bb.ca, %bb.cc, %bb.bi
  %.178715 = phi i32 [ %.0.copyload.i10023, %bb.bi ], [ %i.nl, %bb.ca ], [ %i.nl, %bb.cc ], [ %i.nl, %.preheader10457 ]
  %.108601 = phi i32 [ %.68597, %bb.bi ], [ %i.zy, %bb.ca ], [ %i.aar, %bb.cc ], [ %i.abb, %.preheader10457 ]
  %.78567 = phi i32 [ %.38563, %bb.bi ], [ %6, %bb.ca ], [ %6, %bb.cc ], [ %6, %.preheader10457 ] ; 2 uses
  %.68536 = phi i32 [ %.18531, %bb.bi ], [ %.58535, %bb.ca ], [ %.58535, %bb.cc ], [ %.58535, %.preheader10457 ] ; 2 uses
  %.38405 = phi i32 [ %.28404, %bb.bi ], [ %i.ri, %bb.ca ], [ %i.ri, %bb.cc ], [ %i.ri, %.preheader10457 ] ; 2 uses
  %.48362 = phi i32 [ %.18359, %bb.bi ], [ 0, %bb.ca ], [ 0, %bb.cc ], [ 0, %.preheader10457 ] ; 2 uses
  %.not9011 = icmp eq i32 %.178715, 0
  %i.abk = zext i32 %.108601 to i64               ; 3 uses
  br i1 %.not9011, label %bb.cf, label %.loopexit10448._crit_edge

bb.cf:                                            ; preds = %.loopexit10448
  %.val9933 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.abl = getelementptr inbounds nuw i8, ptr %.val9933, i64 %i.abk
  %.0.copyload.i10047 = load i64, ptr %i.abl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10047) #16, !srcloc !45
  %i.abm = icmp ult i64 %.0.copyload.i10047, 4294967296
  br i1 %i.abm, label %.loopexit10459, label %.loopexit10448._crit_edge

.loopexit10448._crit_edge:                        ; preds = %.loopexit10448, %bb.cf
  %i.abn = add i32 %.48362, -1
  br label %.loopexit10459

.loopexit10459:                                   ; preds = %.loopexit10447, %bb.ce, %bb.cd, %bb.cf, %.loopexit10448._crit_edge
  %.pre-phi10804 = phi i64 [ %i.abc, %bb.ce ], [ %i.abk, %.loopexit10448._crit_edge ], [ %i.aas, %bb.cd ], [ %i.abk, %bb.cf ], [ %i.zz, %.loopexit10447 ] ; 5 uses
  %i.abo = phi i32 [ %.0.copyload.i10006, %bb.ce ], [ %i.nd, %.loopexit10448._crit_edge ], [ %.0.copyload.i10006, %bb.cd ], [ %i.nd, %bb.cf ], [ %i.nd, %.loopexit10447 ]
  %.88568 = phi i32 [ %6, %bb.ce ], [ %.78567, %.loopexit10448._crit_edge ], [ %6, %bb.cd ], [ %.78567, %bb.cf ], [ %6, %.loopexit10447 ]
  %.78537 = phi i32 [ %.58535, %bb.ce ], [ %.68536, %.loopexit10448._crit_edge ], [ %.58535, %bb.cd ], [ %.68536, %bb.cf ], [ %.58535, %.loopexit10447 ]
  %.48406 = phi i32 [ %i.ri, %bb.ce ], [ %.38405, %.loopexit10448._crit_edge ], [ %i.ri, %bb.cd ], [ %.38405, %bb.cf ], [ %i.ri, %.loopexit10447 ]
  %.58363 = phi i32 [ 0, %bb.ce ], [ %i.abn, %.loopexit10448._crit_edge ], [ 0, %bb.cd ], [ %.48362, %bb.cf ], [ 0, %.loopexit10447 ]
  %.val9848 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.abp = getelementptr inbounds nuw i8, ptr %.val9848, i64 %.pre-phi10804
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 12
  store i64 0, ptr %i.abq, align 1
  %.val9717 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.abr = getelementptr inbounds nuw i8, ptr %.val9717, i64 %.pre-phi10804
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 20
  store i32 0, ptr %i.abs, align 1
  %.val9716 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.abt = getelementptr inbounds nuw i8, ptr %.val9716, i64 %.pre-phi10804
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  store i32 %i.nl, ptr %i.abu, align 1
  %i.abv = zext i32 %i.oo to i64
  %i.abw = shl nuw i64 %i.abv, 32
  %i.abx = or disjoint i64 %i.abw, %i.nf
  %.val9847 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aby = getelementptr inbounds nuw i8, ptr %.val9847, i64 %.pre-phi10804
  store i64 %i.abx, ptr %i.aby, align 1
  %i.abz = add i32 %.78537, 1
  br label %.loopexit10453

.loopexit10453:                                   ; preds = %.preheader10470, %bb.bb, %bb.bd, %.loopexit10459
  %.pre-phi10805 = phi i64 [ %i.ot, %bb.bb ], [ %.pre-phi10804, %.loopexit10459 ], [ %i.pn, %bb.bd ], [ %i.pz, %.preheader10470 ] ; 3 uses
  %i.aca = phi i32 [ %i.nd, %bb.bb ], [ %i.abo, %.loopexit10459 ], [ %.0.copyload.i10006, %bb.bd ], [ %.0.copyload.i10006, %.preheader10470 ] ; 2 uses
  %.98569 = phi i32 [ %.38563, %bb.bb ], [ %.88568, %.loopexit10459 ], [ %.38563, %bb.bd ], [ %.38563, %.preheader10470 ] ; 2 uses
  %.88538 = phi i32 [ %.18531, %bb.bb ], [ %i.abz, %.loopexit10459 ], [ %.18531, %bb.bd ], [ %.18531, %.preheader10470 ] ; 2 uses
  %.58407 = phi i32 [ %.28404, %bb.bb ], [ %.48406, %.loopexit10459 ], [ %.28404, %bb.bd ], [ %.28404, %.preheader10470 ] ; 2 uses
  %.68364 = phi i32 [ %.18359, %bb.bb ], [ %.58363, %.loopexit10459 ], [ %.18359, %bb.bd ], [ %.18359, %.preheader10470 ] ; 2 uses
  %i.acb = add nuw nsw i64 %.pre-phi10805, 16     ; 3 uses
  %.val9493 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.acc = getelementptr inbounds nuw i8, ptr %.val9493, i64 %i.acb
  %.0.copyload.i10048 = load i32, ptr %i.acc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10048) #16, !srcloc !22
  %i.acd = add nuw nsw i64 %.pre-phi10805, 20     ; 2 uses
  %.val9492 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ace = getelementptr inbounds nuw i8, ptr %.val9492, i64 %i.acd
  %.0.copyload.i10049 = load i32, ptr %i.ace, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10049) #16, !srcloc !22
  %i.acf = icmp ult i32 %.0.copyload.i10048, %.0.copyload.i10049
  %.val9715 = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  br i1 %i.acf, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.loopexit10453
  %i.acg = zext i32 %.0.copyload.i10048 to i64
  %i.ach = getelementptr inbounds nuw i8, ptr %.val9715, i64 %i.acg
  store i32 %.18483, ptr %i.ach, align 1
  %i.aci = add i32 %.0.copyload.i10048, 4
  %.val9714 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.acj = getelementptr inbounds nuw i8, ptr %.val9714, i64 %i.acb
  store i32 %i.aci, ptr %i.acj, align 1
  br label %bb.cm

bb.ch:                                            ; preds = %.loopexit10453
  %i.ack = add nuw nsw i64 %.pre-phi10805, 12     ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.val9715, i64 %i.ack
  %.0.copyload.i10050 = load i32, ptr %i.acl, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10050) #16, !srcloc !22
  %i.acm = sub i32 %.0.copyload.i10048, %.0.copyload.i10050 ; 3 uses
  %i.acn = ashr i32 %i.acm, 2
  %i.aco = add nsw i32 %i.acn, 1                  ; 2 uses
  %i.acp = icmp ugt i32 %i.aco, 1073741823
  br i1 %i.acp, label %.loopexit10338, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.acq = sub i32 %.0.copyload.i10049, %.0.copyload.i10050 ; 2 uses
  %i.acr = ashr i32 %i.acq, 1
  %i.acs = tail call i32 @llvm.umax.i32(i32 %i.acr, i32 %i.aco)
  %i.act = icmp ugt i32 %i.acq, 2147483643
  %i.acu = select i1 %i.act, i32 1073741823, i32 %i.acs ; 3 uses
  %.not9013 = icmp eq i32 %i.acu, 0
  br i1 %.not9013, label %._crit_edge, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.acv = icmp ugt i32 %i.acu, 1073741823
  br i1 %i.acv, label %.loopexit10338, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.acw = shl nuw i32 %i.acu, 2                  ; 2 uses
  %i.acx = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.acw) #16
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ci, %bb.ck
  %.pre-phi10826 = phi i32 [ %i.acw, %bb.ck ], [ 0, %bb.ci ]
  %.0 = phi i32 [ %i.acx, %bb.ck ], [ 0, %bb.ci ] ; 2 uses
  %i.acy = and i32 %i.acm, -4
  %i.acz = add i32 %.0, %i.acy                    ; 2 uses
  %i.ada = zext i32 %i.acz to i64
  %.val9713 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.adb = getelementptr inbounds nuw i8, ptr %.val9713, i64 %i.ada
  store i32 %.18483, ptr %i.adb, align 1
  %i.adc = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %.0.copyload.i10050, i32 noundef %i.acm) #16 ; 2 uses
  %i.add = add i32 %i.adc, %.pre-phi10826
  %.val9712 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ade = getelementptr inbounds nuw i8, ptr %.val9712, i64 %i.acd
  store i32 %i.add, ptr %i.ade, align 1
  %i.adf = add i32 %i.acz, 4
  %.val9711 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.adg = getelementptr inbounds nuw i8, ptr %.val9711, i64 %i.acb
  store i32 %i.adf, ptr %i.adg, align 1
  %.val9710 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.adh = getelementptr inbounds nuw i8, ptr %.val9710, i64 %i.ack
  store i32 %i.adc, ptr %i.adh, align 1
  %.not9014 = icmp eq i32 %.0.copyload.i10050, 0
  br i1 %.not9014, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i10050)
  br label %bb.cm

bb.cm:                                            ; preds = %._crit_edge, %bb.cl, %bb.cg
  %.not9015 = icmp eq i32 %i.aca, 0
  br i1 %.not9015, label %.loopexit10475, label %bb.at

.loopexit10475:                                   ; preds = %bb.cm, %.loopexit10455, %.preheader10478
  %.108570 = phi i32 [ %.28562, %.preheader10478 ], [ %.38563, %.loopexit10455 ], [ %.98569, %bb.cm ] ; 5 uses
  %.98539 = phi i32 [ %.08530, %.preheader10478 ], [ %.18531, %.loopexit10455 ], [ %.88538, %bb.cm ] ; 4 uses
  %.68408 = phi i32 [ %.18403, %.preheader10478 ], [ %.28404, %.loopexit10455 ], [ %.58407, %bb.cm ] ; 6 uses
  %.78365 = phi i32 [ %.08358, %.preheader10478 ], [ %.18359, %.loopexit10455 ], [ %.68364, %bb.cm ]
  %i.adi = add i32 %.18483, 52                    ; 2 uses
  %.not9016 = icmp eq i32 %i.dm, %i.adi
  br i1 %.not9016, label %bb.cn, label %.preheader10478

bb.cn:                                            ; preds = %.loopexit10475
  %.not9017 = icmp eq i32 %.98539, 0
  br i1 %.not9017, label %bb.df, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.adj = icmp ugt i32 %.98539, 214748364
  br i1 %i.adj, label %.loopexit10338, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.adk = mul nuw i32 %.98539, 20                ; 2 uses
  %i.adl = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.adk) #16 ; 7 uses
  %i.adm = mul i32 %.108570, 24
  %i.adn = add i32 %.68408, %i.adm                ; 4 uses
  %.not9018 = icmp eq i32 %.108570, 0
  br i1 %.not9018, label %.loopexit10443, label %.preheader10442

.preheader10442:                                  ; preds = %bb.cp, %bb.cr
  %.138604 = phi i32 [ %i.adt, %bb.cr ], [ %.68408, %bb.cp ] ; 4 uses
  %i.ado = zext i32 %.138604 to i64               ; 2 uses
  %.val9490 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.adp = getelementptr inbounds nuw i8, ptr %.val9490, i64 %i.ado
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  %.0.copyload.i10051 = load i32, ptr %i.adq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10051) #16, !srcloc !22
  %.not9019 = icmp eq i32 %.0.copyload.i10051, 0
  br i1 %.not9019, label %bb.cq, label %.loopexit10443

bb.cq:                                            ; preds = %.preheader10442
  %.val9932 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.adr = getelementptr inbounds nuw i8, ptr %.val9932, i64 %i.ado
  %.0.copyload.i10052 = load i64, ptr %i.adr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10052) #16, !srcloc !45
  %i.ads = icmp ugt i64 %.0.copyload.i10052, 4294967295
  br i1 %i.ads, label %.loopexit10443, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.adt = add i32 %.138604, 24                   ; 2 uses
  %.not9020 = icmp eq i32 %i.adt, %i.adn
  br i1 %.not9020, label %.loopexit10436, label %.preheader10442

.loopexit10443:                                   ; preds = %bb.cq, %.preheader10442, %bb.cp
  %.148605 = phi i32 [ %.68408, %bb.cp ], [ %.138604, %.preheader10442 ], [ %.138604, %bb.cq ] ; 2 uses
  %i.adu = icmp eq i32 %.148605, %i.adn
  br i1 %i.adu, label %.loopexit10436, label %bb.cs

bb.cs:                                            ; preds = %.loopexit10443
  %i.adv = add i32 %i.adl, %i.adk
  br label %.backedge10441

.backedge10441:                                   ; preds = %.backedge10441.backedge, %bb.cs
  %.18627 = phi i32 [ %i.adl, %bb.cs ], [ %.28422, %.backedge10441.backedge ] ; 7 uses
  %.158606 = phi i32 [ %.148605, %bb.cs ], [ %.158606.be, %.backedge10441.backedge ] ; 2 uses
  %.108540 = phi i32 [ %i.adl, %bb.cs ], [ %.148662, %.backedge10441.backedge ] ; 8 uses
  %.28484 = phi i32 [ %i.adv, %bb.cs ], [ %.38485, %.backedge10441.backedge ] ; 3 uses
  %i.adw = zext i32 %.158606 to i64               ; 5 uses
  %i.adx = add nuw nsw i64 %i.adw, 20             ; 2 uses
  %.val9489 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ady = getelementptr inbounds nuw i8, ptr %.val9489, i64 %i.adx
  %.0.copyload.i10053 = load i32, ptr %i.ady, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10053) #16, !srcloc !22
  %.val9709 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.adz = getelementptr inbounds nuw i8, ptr %.val9709, i64 %i.adx
  store i32 0, ptr %i.adz, align 1
  %.val9488 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aea = getelementptr inbounds nuw i8, ptr %.val9488, i64 %i.adw
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %.0.copyload.i10054 = load i32, ptr %i.aeb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10054) #16, !srcloc !22
  %i.aec = add nuw nsw i64 %i.adw, 12             ; 2 uses
  %.val9487 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aed = getelementptr inbounds nuw i8, ptr %.val9487, i64 %i.aec
  %.0.copyload.i10055 = load i32, ptr %i.aed, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10055) #16, !srcloc !22
  %.val9846 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aee = getelementptr inbounds nuw i8, ptr %.val9846, i64 %i.aec
end_hunk_7
begin_hunk_8_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AStringTableBuilder0x3A0x3ApackIntoStorage0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x2C0x20bool0x29:bb.a
  %i.aqi = getelementptr inbounds nuw i8, ptr %.val9444, i64 %i.aqh
  %.0.copyload.i10105 = load i32, ptr %i.aqi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10105) #16, !srcloc !22
  %.not9069 = icmp eq i32 %.0.copyload.i10105, 0
  br i1 %.not9069, label %bb.fk, label %.loopexit10402

bb.fk:                                            ; preds = %bb.fj
  %.val9443 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aqj = getelementptr inbounds nuw i8, ptr %.val9443, i64 %i.aqe
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 48
  %.0.copyload.i10106 = load i32, ptr %i.aqk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10106) #16, !srcloc !22
  %.not9070 = icmp eq i32 %.0.copyload.i10106, 0
  br i1 %.not9070, label %.loopexit10401, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.val9442 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aql = getelementptr inbounds nuw i8, ptr %.val9442, i64 %i.aqe
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 36
  %.0.copyload.i10107 = load i32, ptr %i.aqm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10107) #16, !srcloc !22
  %i.aqn = add i32 %.0.copyload.i10106, -1        ; 2 uses
  %i.aqo = and i32 %i.aqn, %i.aqa                 ; 2 uses
  %i.aqp = shl nuw nsw i32 %i.aqo, 2
  %i.aqq = add i32 %.0.copyload.i10107, %i.aqp
  %i.aqr = zext i32 %i.aqq to i64
  %.val9441 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aqs = getelementptr inbounds nuw i8, ptr %.val9441, i64 %i.aqr
  %.0.copyload.i10108 = load i32, ptr %i.aqs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10108) #16, !srcloc !22
  %i.aqt = icmp eq i32 %.0.copyload.i10108, %.0.copyload.i10098
  br i1 %i.aqt, label %.loopexit10402, label %.preheader10400

.preheader10400:                                  ; preds = %bb.fl, %bb.fm
  %.58487 = phi i32 [ %i.aqx, %bb.fm ], [ %i.aqo, %bb.fl ]
  %.28436 = phi i32 [ %i.aqw, %bb.fm ], [ 1, %bb.fl ] ; 2 uses
  %.68391 = phi i32 [ %.0.copyload.i10109, %bb.fm ], [ %.0.copyload.i10108, %bb.fl ]
  %i.aqu = icmp eq i32 %.68391, -4
  br i1 %i.aqu, label %.loopexit10401, label %bb.fm

bb.fm:                                            ; preds = %.preheader10400
  %i.aqv = add i32 %.28436, %.58487
  %i.aqw = add i32 %.28436, 1
  %i.aqx = and i32 %i.aqv, %i.aqn                 ; 2 uses
  %i.aqy = shl i32 %i.aqx, 2
  %i.aqz = add i32 %i.aqy, %.0.copyload.i10107
  %i.ara = zext i32 %i.aqz to i64
  %.val9440 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.arb = getelementptr inbounds nuw i8, ptr %.val9440, i64 %i.ara
  %.0.copyload.i10109 = load i32, ptr %i.arb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10109) #16, !srcloc !22
  %.not9071 = icmp eq i32 %.0.copyload.i10109, %.0.copyload.i10098
  br i1 %.not9071, label %.loopexit10402, label %.preheader10400

.loopexit10402:                                   ; preds = %bb.fm, %bb.fl, %bb.fj, %bb.fi, %bb.fh
  %i.arc = add i32 %.258723, 4                    ; 2 uses
  %.not9097 = icmp eq i32 %i.arc, %i.apx
  br i1 %.not9097, label %.loopexit10413, label %bb.fh

.loopexit10401:                                   ; preds = %bb.fk, %.preheader10400
  %.val9678 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ard = getelementptr inbounds nuw i8, ptr %.val9678, i64 %i.aqh
  store i32 %.0.copyload.i10098, ptr %i.ard, align 1
  %.val9677 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.are = getelementptr inbounds nuw i8, ptr %.val9677, i64 %i.apo
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 32
  store i32 %i.ape, ptr %i.arf, align 1
  %.val9676 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.arg = getelementptr inbounds nuw i8, ptr %.val9676, i64 %i.app
  store i32 %.0.copyload.i10103, ptr %i.arg, align 1
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fn, %.loopexit10401
  %.58631 = phi i32 [ %.0.copyload.i10098, %.loopexit10401 ], [ %.0.copyload.i10110, %bb.fn ]
  %i.arh = zext i32 %.58631 to i64                ; 6 uses
  %.val9439 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ari = getelementptr inbounds nuw i8, ptr %.val9439, i64 %i.arh
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 24
  %.0.copyload.i10110 = load i32, ptr %i.arj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10110) #16, !srcloc !22
  %.not9072 = icmp eq i32 %.0.copyload.i10110, 0
  br i1 %.not9072, label %.preheader10414, label %bb.fn

.preheader10414:                                  ; preds = %bb.fn, %.preheader10414
  %.168664 = phi i32 [ %.0.copyload.i10111, %.preheader10414 ], [ %.0.copyload.i10103, %bb.fn ] ; 12 uses
  %i.ark = zext i32 %.168664 to i64
  %.val9438 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.arl = getelementptr inbounds nuw i8, ptr %.val9438, i64 %i.ark
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 28
  %.0.copyload.i10111 = load i32, ptr %i.arm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10111) #16, !srcloc !22
  %.not9073 = icmp eq i32 %.0.copyload.i10111, 0
  br i1 %.not9073, label %bb.fo, label %.preheader10414

bb.fo:                                            ; preds = %.preheader10414
  %i.arn = add nuw nsw i64 %i.arh, 36             ; 4 uses
  %.val9437 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aro = getelementptr inbounds nuw i8, ptr %.val9437, i64 %i.arn
  %.0.copyload.i10112 = load i32, ptr %i.aro, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10112) #16, !srcloc !22
  %i.arp = add nuw nsw i64 %i.arh, 48             ; 4 uses
  %.val9436 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.arq = getelementptr inbounds nuw i8, ptr %.val9436, i64 %i.arp
  %.0.copyload.i10113 = load i32, ptr %i.arq, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10113) #16, !srcloc !22
  %.not9074 = icmp eq i32 %.0.copyload.i10113, 0  ; 2 uses
  br i1 %.not9074, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.arr = add i32 %.0.copyload.i10113, -1        ; 2 uses
  %i.ars = lshr i32 %.168664, 4
  %i.art = lshr i32 %.168664, 9
  %i.aru = xor i32 %i.ars, %i.art
  %i.arv = and i32 %i.arr, %i.aru                 ; 2 uses
  %i.arw = shl nuw nsw i32 %i.arv, 2
  %i.arx = add i32 %i.arw, %.0.copyload.i10112    ; 2 uses
  %i.ary = zext i32 %i.arx to i64
  %.val9435 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.arz = getelementptr inbounds nuw i8, ptr %.val9435, i64 %i.ary
  %.0.copyload.i10114 = load i32, ptr %i.arz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10114) #16, !srcloc !22
  %i.asa = icmp eq i32 %.0.copyload.i10114, %.168664
  br i1 %i.asa, label %.loopexit10413, label %.preheader10412

.preheader10412:                                  ; preds = %bb.fp, %bb.fr
  %.168576 = phi i32 [ %i.ask, %bb.fr ], [ %i.arx, %bb.fp ] ; 2 uses
  %.38437 = phi i32 [ %i.asf, %bb.fr ], [ 0, %bb.fp ] ; 3 uses
  %.138415 = phi i32 [ %i.ash, %bb.fr ], [ 1, %bb.fp ] ; 2 uses
  %.78392 = phi i32 [ %.0.copyload.i10115, %bb.fr ], [ %.0.copyload.i10114, %bb.fp ] ; 2 uses
  %.58373 = phi i32 [ %i.asi, %bb.fr ], [ %i.arv, %bb.fp ]
  %i.asb = icmp eq i32 %.78392, -4
  %.not9077 = icmp eq i32 %.38437, 0              ; 2 uses
  br i1 %i.asb, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %.preheader10412
  %i.asc = select i1 %.not9077, i32 %.168576, i32 %.38437
  br label %bb.fs

bb.fr:                                            ; preds = %.preheader10412
  %i.asd = icmp eq i32 %.78392, -8
  %i.ase = select i1 %i.asd, i1 %.not9077, i1 false
  %i.asf = select i1 %i.ase, i32 %.168576, i32 %.38437
  %i.asg = add i32 %.58373, %.138415
  %i.ash = add i32 %.138415, 1
  %i.asi = and i32 %i.asg, %i.arr                 ; 2 uses
  %i.asj = shl i32 %i.asi, 2
  %i.ask = add i32 %i.asj, %.0.copyload.i10112    ; 2 uses
  %i.asl = zext i32 %i.ask to i64
  %.val9434 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.asm = getelementptr inbounds nuw i8, ptr %.val9434, i64 %i.asl
  %.0.copyload.i10115 = load i32, ptr %i.asm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10115) #16, !srcloc !22
  %.not9076 = icmp eq i32 %.0.copyload.i10115, %.168664
  br i1 %.not9076, label %.loopexit10413, label %.preheader10412

bb.fs:                                            ; preds = %bb.fo, %bb.fq
  %.178577 = phi i32 [ %i.asc, %bb.fq ], [ 0, %bb.fo ]
  %i.asn = add nuw nsw i64 %i.arh, 40             ; 5 uses
  %.val9433 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aso = getelementptr inbounds nuw i8, ptr %.val9433, i64 %i.asn
  %.0.copyload.i10116 = load i32, ptr %i.aso, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10116) #16, !srcloc !22
  %i.asp = shl i32 %.0.copyload.i10116, 2
  %i.asq = add i32 %i.asp, 4
  %i.asr = mul i32 %.0.copyload.i10113, 3
  %.not9078 = icmp ult i32 %i.asq, %i.asr
  br i1 %.not9078, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ass = shl i32 %.0.copyload.i10113, 1
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fs
  %i.ast = xor i32 %.0.copyload.i10116, -1
  %i.asu = add i32 %.0.copyload.i10113, %i.ast
  %.val9432 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.asv = getelementptr inbounds nuw i8, ptr %.val9432, i64 %i.arh
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 44
  %.0.copyload.i10117 = load i32, ptr %i.asw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10117) #16, !srcloc !22
  %i.asx = sub i32 %i.asu, %.0.copyload.i10117
  %i.asy = lshr i32 %.0.copyload.i10113, 3
  %i.asz = icmp ugt i32 %i.asx, %i.asy
  br i1 %i.asz, label %bb.gm, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.68488 = phi i32 [ %i.ass, %bb.ft ], [ %.0.copyload.i10113, %bb.fu ]
  %i.ata = add i32 %.68488, -1
  %i.atb = zext i32 %i.ata to i64                 ; 2 uses
  %i.atc = lshr i64 %i.atb, 1
  %i.atd = or i64 %i.atc, %i.atb                  ; 2 uses
  %i.ate = lshr i64 %i.atd, 2
  %i.atf = or i64 %i.ate, %i.atd                  ; 2 uses
  %i.atg = lshr i64 %i.atf, 4
  %i.ath = or i64 %i.atg, %i.atf                  ; 2 uses
  %i.ati = lshr i64 %i.ath, 8
  %i.atj = or i64 %i.ati, %i.ath                  ; 2 uses
  %i.atk = lshr i64 %i.atj, 16
  %i.atl = or i64 %i.atk, %i.atj
  %i.atm = trunc nuw i64 %i.atl to i32
  %i.atn = add i32 %i.atm, 1
  %7 = tail call i32 @llvm.umax.i32(i32 %i.atn, i32 64) ; 2 uses
  %.val9675 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ato = getelementptr inbounds nuw i8, ptr %.val9675, i64 %i.arp
  store i32 %7, ptr %i.ato, align 1
  %i.atp = shl i32 %7, 2
  %i.atq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.atp) #16 ; 24 uses
  %.val9674 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.atr = getelementptr inbounds nuw i8, ptr %.val9674, i64 %i.arn
  store i32 %i.atq, ptr %i.atr, align 1
  %.not9079 = icmp eq i32 %.0.copyload.i10112, 0
  %.val9840 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ats = getelementptr inbounds nuw i8, ptr %.val9840, i64 %i.asn
  store i64 0, ptr %i.ats, align 1
  %.val9431 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.att = getelementptr inbounds nuw i8, ptr %.val9431, i64 %i.arp
  %.0.copyload.i10118 = load i32, ptr %i.att, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10118) #16
  %.not9088 = icmp eq i32 %.0.copyload.i10118, 0  ; 2 uses
  br i1 %.not9079, label %bb.fw, label %bb.ga

bb.fw:                                            ; preds = %bb.fv
  br i1 %.not9088, label %.loopexit10405, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.atu = and i32 %.0.copyload.i10118, 7         ; 7 uses
  %.not9089 = icmp eq i32 %i.atu, 0
  br i1 %.not9089, label %.loopexit10407, label %.preheader10406

.preheader10406:                                  ; preds = %bb.fx
  %i.atv = zext i32 %i.atq to i64
  %.val9673 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.atw = getelementptr inbounds nuw i8, ptr %.val9673, i64 %i.atv
  store i32 -4, ptr %i.atw, align 1
  %i.atx = add i32 %i.atq, 4                      ; 2 uses
  %.not9090 = icmp eq i32 %i.atu, 1
  br i1 %.not9090, label %.loopexit10407, label %.preheader10406.1

.preheader10406.1:                                ; preds = %.preheader10406
  %i.aty = zext i32 %i.atx to i64
  %.val9673.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.atz = getelementptr inbounds nuw i8, ptr %.val9673.1, i64 %i.aty
  store i32 -4, ptr %i.atz, align 1
  %i.aua = add i32 %i.atq, 8                      ; 2 uses
  %.not9090.1 = icmp eq i32 %i.atu, 2
  br i1 %.not9090.1, label %.loopexit10407, label %.preheader10406.2

.preheader10406.2:                                ; preds = %.preheader10406.1
  %i.aub = zext i32 %i.aua to i64
  %.val9673.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.auc = getelementptr inbounds nuw i8, ptr %.val9673.2, i64 %i.aub
  store i32 -4, ptr %i.auc, align 1
  %i.aud = add i32 %i.atq, 12                     ; 2 uses
  %.not9090.2 = icmp eq i32 %i.atu, 3
  br i1 %.not9090.2, label %.loopexit10407, label %.preheader10406.3

.preheader10406.3:                                ; preds = %.preheader10406.2
  %i.aue = zext i32 %i.aud to i64
  %.val9673.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.auf = getelementptr inbounds nuw i8, ptr %.val9673.3, i64 %i.aue
  store i32 -4, ptr %i.auf, align 1
  %i.aug = add i32 %i.atq, 16                     ; 2 uses
  %.not9090.3 = icmp eq i32 %i.atu, 4
  br i1 %.not9090.3, label %.loopexit10407, label %.preheader10406.4

.preheader10406.4:                                ; preds = %.preheader10406.3
  %i.auh = zext i32 %i.aug to i64
  %.val9673.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aui = getelementptr inbounds nuw i8, ptr %.val9673.4, i64 %i.auh
  store i32 -4, ptr %i.aui, align 1
  %i.auj = add i32 %i.atq, 20                     ; 2 uses
  %.not9090.4 = icmp eq i32 %i.atu, 5
  br i1 %.not9090.4, label %.loopexit10407, label %.preheader10406.5

.preheader10406.5:                                ; preds = %.preheader10406.4
  %i.auk = zext i32 %i.auj to i64
  %.val9673.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aul = getelementptr inbounds nuw i8, ptr %.val9673.5, i64 %i.auk
  store i32 -4, ptr %i.aul, align 1
  %i.aum = add i32 %i.atq, 24                     ; 2 uses
  %.not9090.5 = icmp eq i32 %i.atu, 6
  br i1 %.not9090.5, label %.loopexit10407, label %.preheader10406.6

.preheader10406.6:                                ; preds = %.preheader10406.5
  %i.aun = zext i32 %i.aum to i64
  %.val9673.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.auo = getelementptr inbounds nuw i8, ptr %.val9673.6, i64 %i.aun
  store i32 -4, ptr %i.auo, align 1
  %i.aup = add i32 %i.atq, 28
  br label %.loopexit10407

.loopexit10407:                                   ; preds = %.preheader10406, %.preheader10406.1, %.preheader10406.2, %.preheader10406.3, %.preheader10406.4, %.preheader10406.5, %.preheader10406.6, %bb.fx
  %.188666 = phi i32 [ %i.atq, %bb.fx ], [ %i.atx, %.preheader10406 ], [ %i.aua, %.preheader10406.1 ], [ %i.aud, %.preheader10406.2 ], [ %i.aug, %.preheader10406.3 ], [ %i.auj, %.preheader10406.4 ], [ %i.aum, %.preheader10406.5 ], [ %i.aup, %.preheader10406.6 ]
  %i.auq = add i32 %.0.copyload.i10118, 1073741823
  %i.aur = and i32 %i.auq, 1073741823
  %i.aus = icmp samesign ult i32 %i.aur, 7
  br i1 %i.aus, label %.loopexit10405, label %bb.fy

bb.fy:                                            ; preds = %.loopexit10407
  %i.aut = shl i32 %.0.copyload.i10118, 2
  %i.auu = add i32 %i.aut, %i.atq
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fz, %bb.fy
  %.198667 = phi i32 [ %.188666, %bb.fy ], [ %i.avd, %bb.fz ] ; 2 uses
  %i.auv = zext i32 %.198667 to i64               ; 4 uses
  %.val9839 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.auw = getelementptr inbounds nuw i8, ptr %.val9839, i64 %i.auv
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 24
  store i64 -12884901892, ptr %i.aux, align 1
  %.val9838 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.auy = getelementptr inbounds nuw i8, ptr %.val9838, i64 %i.auv
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 16
  store i64 -12884901892, ptr %i.auz, align 1
  %.val9837 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ava = getelementptr inbounds nuw i8, ptr %.val9837, i64 %i.auv
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 8
  store i64 -12884901892, ptr %i.avb, align 1
  %.val9836 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.avc = getelementptr inbounds nuw i8, ptr %.val9836, i64 %i.auv
  store i64 -12884901892, ptr %i.avc, align 1
  %i.avd = add i32 %.198667, 32                   ; 2 uses
  %.not9091 = icmp eq i32 %i.avd, %i.auu
  br i1 %.not9091, label %.loopexit10405, label %bb.fz

bb.ga:                                            ; preds = %bb.fv
  br i1 %.not9088, label %.loopexit10409, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ave = and i32 %.0.copyload.i10118, 7         ; 7 uses
  %.not9081 = icmp eq i32 %i.ave, 0
  br i1 %.not9081, label %.loopexit10411, label %.preheader10410

.preheader10410:                                  ; preds = %bb.gb
  %i.avf = zext i32 %i.atq to i64
  %.val9672 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.avg = getelementptr inbounds nuw i8, ptr %.val9672, i64 %i.avf
  store i32 -4, ptr %i.avg, align 1
  %i.avh = add i32 %i.atq, 4                      ; 2 uses
  %.not9082 = icmp eq i32 %i.ave, 1
  br i1 %.not9082, label %.loopexit10411, label %.preheader10410.1

.preheader10410.1:                                ; preds = %.preheader10410
  %i.avi = zext i32 %i.avh to i64
  %.val9672.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.avj = getelementptr inbounds nuw i8, ptr %.val9672.1, i64 %i.avi
  store i32 -4, ptr %i.avj, align 1
  %i.avk = add i32 %i.atq, 8                      ; 2 uses
  %.not9082.1 = icmp eq i32 %i.ave, 2
  br i1 %.not9082.1, label %.loopexit10411, label %.preheader10410.2

.preheader10410.2:                                ; preds = %.preheader10410.1
  %i.avl = zext i32 %i.avk to i64
  %.val9672.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.avm = getelementptr inbounds nuw i8, ptr %.val9672.2, i64 %i.avl
  store i32 -4, ptr %i.avm, align 1
  %i.avn = add i32 %i.atq, 12                     ; 2 uses
  %.not9082.2 = icmp eq i32 %i.ave, 3
  br i1 %.not9082.2, label %.loopexit10411, label %.preheader10410.3

.preheader10410.3:                                ; preds = %.preheader10410.2
  %i.avo = zext i32 %i.avn to i64
  %.val9672.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.avp = getelementptr inbounds nuw i8, ptr %.val9672.3, i64 %i.avo
  store i32 -4, ptr %i.avp, align 1
  %i.avq = add i32 %i.atq, 16                     ; 2 uses
  %.not9082.3 = icmp eq i32 %i.ave, 4
  br i1 %.not9082.3, label %.loopexit10411, label %.preheader10410.4

.preheader10410.4:                                ; preds = %.preheader10410.3
  %i.avr = zext i32 %i.avq to i64
  %.val9672.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.avs = getelementptr inbounds nuw i8, ptr %.val9672.4, i64 %i.avr
  store i32 -4, ptr %i.avs, align 1
  %i.avt = add i32 %i.atq, 20                     ; 2 uses
  %.not9082.4 = icmp eq i32 %i.ave, 5
  br i1 %.not9082.4, label %.loopexit10411, label %.preheader10410.5

.preheader10410.5:                                ; preds = %.preheader10410.4
  %i.avu = zext i32 %i.avt to i64
  %.val9672.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.avv = getelementptr inbounds nuw i8, ptr %.val9672.5, i64 %i.avu
  store i32 -4, ptr %i.avv, align 1
  %i.avw = add i32 %i.atq, 24                     ; 2 uses
  %.not9082.5 = icmp eq i32 %i.ave, 6
  br i1 %.not9082.5, label %.loopexit10411, label %.preheader10410.6

.preheader10410.6:                                ; preds = %.preheader10410.5
  %i.avx = zext i32 %i.avw to i64
  %.val9672.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.avy = getelementptr inbounds nuw i8, ptr %.val9672.6, i64 %i.avx
  store i32 -4, ptr %i.avy, align 1
  %i.avz = add i32 %i.atq, 28
  br label %.loopexit10411

.loopexit10411:                                   ; preds = %.preheader10410, %.preheader10410.1, %.preheader10410.2, %.preheader10410.3, %.preheader10410.4, %.preheader10410.5, %.preheader10410.6, %bb.gb
  %.198579 = phi i32 [ %i.atq, %bb.gb ], [ %i.avh, %.preheader10410 ], [ %i.avk, %.preheader10410.1 ], [ %i.avn, %.preheader10410.2 ], [ %i.avq, %.preheader10410.3 ], [ %i.avt, %.preheader10410.4 ], [ %i.avw, %.preheader10410.5 ], [ %i.avz, %.preheader10410.6 ]
  %i.awa = add i32 %.0.copyload.i10118, 1073741823
  %i.awb = and i32 %i.awa, 1073741823
  %i.awc = icmp samesign ult i32 %i.awb, 7
  br i1 %i.awc, label %.loopexit10409, label %bb.gc

bb.gc:                                            ; preds = %.loopexit10411
  %i.awd = shl i32 %.0.copyload.i10118, 2
  %i.awe = add i32 %i.awd, %i.atq
  br label %bb.gd
end_hunk_8
begin_hunk_9_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AStringTableBuilder0x3A0x3ApackIntoStorage0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x2C0x20bool0x29:bb.a
  %.val9410 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bat = getelementptr inbounds nuw i8, ptr %.val9410, i64 %i.e
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 36
  %.0.copyload.i10139 = load i32, ptr %i.bau, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10139) #16, !srcloc !22
  %i.bav = sub i32 %.0.copyload.i10138, %.0.copyload.i10139
  %i.baw = sdiv i32 %i.bav, 52                    ; 5 uses
  %i.bax = icmp ugt i32 %i.baw, 7
  br i1 %i.bax, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.bay = lshr i32 %i.baw, 1
  %i.baz = and i32 %i.bay, 2147483644
  %i.bba = udiv i32 %i.baz, 3
  %i.bbb = add nuw nsw i32 %i.bba, 1
  %i.bbc = zext nneg i32 %i.bbb to i64            ; 2 uses
  %i.bbd = lshr i64 %i.bbc, 1
  %i.bbe = or i64 %i.bbd, %i.bbc                  ; 2 uses
  %i.bbf = lshr i64 %i.bbe, 2
  %i.bbg = or i64 %i.bbf, %i.bbe                  ; 2 uses
  %i.bbh = lshr i64 %i.bbg, 4
  %i.bbi = or i64 %i.bbh, %i.bbg                  ; 2 uses
  %i.bbj = lshr i64 %i.bbi, 8
  %i.bbk = or i64 %i.bbj, %i.bbi                  ; 2 uses
  %i.bbl = lshr i64 %i.bbk, 16
  %i.bbm = or i64 %i.bbl, %i.bbk
  %i.bbn = trunc nuw nsw i64 %i.bbm to i32
  %i.bbo = add nuw nsw i32 %i.bbn, 1              ; 3 uses
  %.val9658 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bbp = getelementptr inbounds nuw i8, ptr %.val9658, i64 %i.azz
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 28
  store i32 %i.bbo, ptr %i.bbq, align 1
  %i.bbr = shl i32 %i.bbo, 3                      ; 2 uses
  %i.bbs = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bbr) #16 ; 3 uses
  %.val9828 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bbt = getelementptr inbounds nuw i8, ptr %.val9828, i64 %i.azz
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 20
  store i64 0, ptr %i.bbu, align 1
  %.val9657 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bbv = getelementptr inbounds nuw i8, ptr %.val9657, i64 %i.baa
  store i32 %i.bbs, ptr %i.bbv, align 1
  %i.bbw = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.bbs, i32 noundef 255, i32 noundef %i.bbr) ; 0 uses
  br label %bb.he

bb.hd:                                            ; preds = %bb.hb
  %.val9827 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bbx = getelementptr inbounds nuw i8, ptr %.val9827, i64 %i.azz
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 24
  store i64 0, ptr %i.bby, align 1
  %.val9826 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bbz = getelementptr inbounds nuw i8, ptr %.val9826, i64 %i.baa
  store i64 0, ptr %i.bbz, align 1
  %.not9109 = icmp eq i32 %.0.copyload.i10138, %.0.copyload.i10139
  br i1 %.not9109, label %bb.op, label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.78633 = phi i32 [ %i.bbo, %bb.hc ], [ 0, %bb.hd ]
  %.78510 = phi i32 [ %i.bbs, %bb.hc ], [ 0, %bb.hd ]
  %i.bca = mul nsw i32 %i.baw, 52
  %i.bcb = add i32 %i.bca, %.0.copyload.i10139    ; 4 uses
  %i.bcc = add nuw nsw i64 %i.azz, 28             ; 5 uses
  %i.bcd = add nuw nsw i64 %i.azz, 20             ; 4 uses
  %i.bce = add nuw nsw i64 %i.azz, 24             ; 2 uses
  br label %bb.hf

bb.hf:                                            ; preds = %.loopexit10393, %bb.he
  %.268724 = phi i32 [ %.0.copyload.i10139, %bb.he ], [ %i.bhw, %.loopexit10393 ] ; 2 uses
  %.88634 = phi i32 [ %.78633, %bb.he ], [ %.158641, %.loopexit10393 ] ; 11 uses
  %.178608 = phi i32 [ 0, %bb.he ], [ %.238614, %.loopexit10393 ] ; 6 uses
  %.88511 = phi i32 [ %.78510, %bb.he ], [ %.128515, %.loopexit10393 ] ; 6 uses
  %i.bcf = zext i32 %.268724 to i64               ; 2 uses
  %.val9409 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bcg = getelementptr inbounds nuw i8, ptr %.val9409, i64 %i.bcf
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 8
  %.0.copyload.i10140 = load i32, ptr %i.bch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10140) #16, !srcloc !22
  %i.bci = icmp ult i32 %.0.copyload.i10140, 3
  br i1 %i.bci, label %.loopexit10393, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %.val9408 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bcj = getelementptr inbounds nuw i8, ptr %.val9408, i64 %i.bcf
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 4
  %.0.copyload.i10141 = load i32, ptr %i.bck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10141) #16, !srcloc !22
  %i.bcl = zext i32 %.0.copyload.i10141 to i64    ; 3 uses
  %.val9959 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bcm = getelementptr inbounds nuw i8, ptr %.val9959, i64 %i.bcl
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 2
  %.0.copyload.i10142 = load i16, ptr %i.bcn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i10142) #16, !srcloc !64
  %i.bco = zext i16 %.0.copyload.i10142 to i64
  %i.bcp = shl nuw nsw i64 %i.bco, 16
  %.val9958 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bcq = getelementptr inbounds nuw i8, ptr %.val9958, i64 %i.bcl
  %.0.copyload.i10143 = load i16, ptr %i.bcq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i10143) #16, !srcloc !64
  %i.bcr = zext i16 %.0.copyload.i10143 to i64
  %i.bcs = shl nuw nsw i64 %i.bcr, 32
  %i.bct = or disjoint i64 %i.bcs, %i.bcp
  %.val9957 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bcu = getelementptr inbounds nuw i8, ptr %.val9957, i64 %i.bcl
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 4
  %.0.copyload.i10144 = load i16, ptr %i.bcv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i10144) #16, !srcloc !64
  %i.bcw = zext i16 %.0.copyload.i10144 to i64
  %i.bcx = or disjoint i64 %i.bct, %i.bcw         ; 7 uses
  %.not9110 = icmp eq i32 %.88634, 0
  br i1 %.not9110, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.bcy = add i32 %.88634, -1                    ; 2 uses
  %i.bcz = trunc i64 %i.bcx to i32
  %i.bda = mul i32 %i.bcz, 37
  %i.bdb = and i32 %i.bda, %i.bcy                 ; 2 uses
  %i.bdc = shl i32 %i.bdb, 3
  %i.bdd = add i32 %i.bdc, %.88511                ; 2 uses
  %i.bde = zext i32 %i.bdd to i64
  %.val9927 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bdf = getelementptr inbounds nuw i8, ptr %.val9927, i64 %i.bde
  %.0.copyload.i10145 = load i64, ptr %i.bdf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10145) #16, !srcloc !45
  %i.bdg = icmp eq i64 %i.bcx, %.0.copyload.i10145
  br i1 %i.bdg, label %.loopexit10393, label %.preheader10392

.preheader10392:                                  ; preds = %bb.hh, %bb.hj
  %.228670 = phi i32 [ %i.bdq, %bb.hj ], [ %i.bdd, %bb.hh ] ; 2 uses
  %.78526 = phi i32 [ %i.bdo, %bb.hj ], [ %i.bdb, %bb.hh ]
  %.88472 = phi i32 [ %i.bdl, %bb.hj ], [ 0, %bb.hh ] ; 3 uses
  %.98377 = phi i32 [ %i.bdn, %bb.hj ], [ 1, %bb.hh ] ; 2 uses
  %.08351 = phi i64 [ %.0.copyload.i10146, %bb.hj ], [ %.0.copyload.i10145, %bb.hh ] ; 2 uses
  %i.bdh = icmp eq i64 %.08351, -1
  %.not9113 = icmp eq i32 %.88472, 0              ; 2 uses
  br i1 %i.bdh, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %.preheader10392
  %i.bdi = select i1 %.not9113, i32 %.228670, i32 %.88472
  br label %bb.hk

bb.hj:                                            ; preds = %.preheader10392
  %i.bdj = icmp eq i64 %.08351, -2
  %i.bdk = select i1 %i.bdj, i1 %.not9113, i1 false
  %i.bdl = select i1 %i.bdk, i32 %.228670, i32 %.88472
  %i.bdm = add i32 %.98377, %.78526
  %i.bdn = add i32 %.98377, 1
  %i.bdo = and i32 %i.bdm, %i.bcy                 ; 2 uses
  %i.bdp = shl i32 %i.bdo, 3
  %i.bdq = add i32 %i.bdp, %.88511                ; 2 uses
  %i.bdr = zext i32 %i.bdq to i64
  %.val9926 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bds = getelementptr inbounds nuw i8, ptr %.val9926, i64 %i.bdr
  %.0.copyload.i10146 = load i64, ptr %i.bds, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10146) #16, !srcloc !45
  %.not9112 = icmp eq i64 %i.bcx, %.0.copyload.i10146
  br i1 %.not9112, label %.loopexit10393, label %.preheader10392

bb.hk:                                            ; preds = %bb.hg, %bb.hi
  %.238671 = phi i32 [ %i.bdi, %bb.hi ], [ 0, %bb.hg ]
  %i.bdt = shl i32 %.178608, 2
  %i.bdu = add i32 %i.bdt, 4
  %i.bdv = mul i32 %.88634, 3
  %.not9114 = icmp ult i32 %i.bdu, %i.bdv
  br i1 %.not9114, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.bdw = shl i32 %.88634, 1
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hk
  %i.bdx = xor i32 %.178608, -1
  %i.bdy = add i32 %.88634, %i.bdx
  %.val9407 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bdz = getelementptr inbounds nuw i8, ptr %.val9407, i64 %i.azz
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 24
  %.0.copyload.i10147 = load i32, ptr %i.bea, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10147) #16, !srcloc !22
  %i.beb = sub i32 %i.bdy, %.0.copyload.i10147
  %i.bec = lshr i32 %.88634, 3
  %i.bed = icmp ugt i32 %i.beb, %i.bec
  br i1 %i.bed, label %bb.ic, label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.98635 = phi i32 [ %i.bdw, %bb.hl ], [ %.88634, %bb.hm ]
  %.val9406 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bee = getelementptr inbounds nuw i8, ptr %.val9406, i64 %i.bcc
  %.0.copyload.i10148 = load i32, ptr %i.bee, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10148) #16, !srcloc !22
  %i.bef = add i32 %.98635, -1
  %i.beg = zext i32 %i.bef to i64                 ; 2 uses
  %i.beh = lshr i64 %i.beg, 1
  %i.bei = or i64 %i.beh, %i.beg                  ; 2 uses
  %i.bej = lshr i64 %i.bei, 2
  %i.bek = or i64 %i.bej, %i.bei                  ; 2 uses
  %i.bel = lshr i64 %i.bek, 4
  %i.bem = or i64 %i.bel, %i.bek                  ; 2 uses
  %i.ben = lshr i64 %i.bem, 8
  %i.beo = or i64 %i.ben, %i.bem                  ; 2 uses
  %i.bep = lshr i64 %i.beo, 16
  %i.beq = or i64 %i.bep, %i.beo
  %i.ber = trunc nuw i64 %i.beq to i32
  %i.bes = add i32 %i.ber, 1
  %8 = tail call i32 @llvm.umax.i32(i32 %i.bes, i32 64) ; 2 uses
  %.val9656 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bet = getelementptr inbounds nuw i8, ptr %.val9656, i64 %i.bcc
  store i32 %8, ptr %i.bet, align 1
  %.val9405 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.beu = getelementptr inbounds nuw i8, ptr %.val9405, i64 %i.baa
  %.0.copyload.i10149 = load i32, ptr %i.beu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10149) #16, !srcloc !22
  %i.bev = shl i32 %8, 3
  %i.bew = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.bev) #16 ; 5 uses
  %.val9655 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bex = getelementptr inbounds nuw i8, ptr %.val9655, i64 %i.baa
  store i32 %i.bew, ptr %i.bex, align 1
  %.not9115 = icmp eq i32 %.0.copyload.i10149, 0
  %.val9825 = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  br i1 %.not9115, label %bb.ho, label %bb.hq

bb.ho:                                            ; preds = %bb.hn
  %i.bey = getelementptr inbounds nuw i8, ptr %.val9825, i64 %i.azz
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 20
  store i64 0, ptr %i.bez, align 1
  %.val9404 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfa = getelementptr inbounds nuw i8, ptr %.val9404, i64 %i.bcc
  %.0.copyload.i10150 = load i32, ptr %i.bfa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10150) #16, !srcloc !22
  %.not9122 = icmp eq i32 %.0.copyload.i10150, 0
  br i1 %.not9122, label %bb.hz, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.bfb = shl i32 %.0.copyload.i10150, 3
  %i.bfc = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.bew, i32 noundef 255, i32 noundef %i.bfb) ; 0 uses
  br label %bb.hz

bb.hq:                                            ; preds = %bb.hn
  %i.bfd = getelementptr inbounds nuw i8, ptr %.val9825, i64 %i.bcd
  store i64 0, ptr %i.bfd, align 1
  %.val9403 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfe = getelementptr inbounds nuw i8, ptr %.val9403, i64 %i.bcc
  %.0.copyload.i10151 = load i32, ptr %i.bfe, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10151) #16, !srcloc !22
  %.not9116 = icmp eq i32 %.0.copyload.i10151, 0
  br i1 %.not9116, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bff = shl i32 %.0.copyload.i10151, 3
  %i.bfg = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.bew, i32 noundef 255, i32 noundef %i.bff) ; 0 uses
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.not9117 = icmp eq i32 %.0.copyload.i10148, 0
  br i1 %.not9117, label %.loopexit10391, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.bfh = shl i32 %.0.copyload.i10148, 3
  %i.bfi = add i32 %.0.copyload.i10149, %i.bfh
  %i.bfj = add i32 %.0.copyload.i10151, -1        ; 2 uses
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hy, %bb.ht
  %.08750 = phi i32 [ %.0.copyload.i10149, %bb.ht ], [ %i.bgk, %bb.hy ] ; 2 uses
  %.258585 = phi i32 [ 0, %bb.ht ], [ %.268586, %bb.hy ] ; 2 uses
  %i.bfk = zext i32 %.08750 to i64
  %.val9925 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfl = getelementptr inbounds nuw i8, ptr %.val9925, i64 %i.bfk
  %.0.copyload.i10152 = load i64, ptr %i.bfl, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10152) #16, !srcloc !45
  %i.bfm = icmp ult i64 %.0.copyload.i10152, -2
  br i1 %i.bfm, label %bb.hv, label %bb.hy

bb.hv:                                            ; preds = %bb.hu
  %i.bfn = trunc i64 %.0.copyload.i10152 to i32
  %i.bfo = mul i32 %i.bfn, 37
  %i.bfp = and i32 %i.bfo, %i.bfj                 ; 2 uses
  %i.bfq = shl i32 %i.bfp, 3
  %i.bfr = add i32 %i.bfq, %i.bew                 ; 2 uses
  %i.bfs = zext i32 %i.bfr to i64                 ; 2 uses
  %.val9924 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bft = getelementptr inbounds nuw i8, ptr %.val9924, i64 %i.bfs
  %.0.copyload.i10153 = load i64, ptr %i.bft, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10153) #16, !srcloc !45
  %i.bfu = icmp eq i64 %.0.copyload.i10152, %.0.copyload.i10153
  br i1 %i.bfu, label %.loopexit10388, label %.preheader10387

.preheader10387:                                  ; preds = %bb.hv, %bb.hx
  %.248672 = phi i32 [ %i.bfz, %bb.hx ], [ 0, %bb.hv ] ; 3 uses
  %.108636 = phi i32 [ %i.bge, %bb.hx ], [ %i.bfr, %bb.hv ] ; 2 uses
  %.188609 = phi i32 [ %i.bgb, %bb.hx ], [ 1, %bb.hv ] ; 2 uses
  %.158417 = phi i32 [ %i.bgc, %bb.hx ], [ %i.bfp, %bb.hv ]
  %.08354 = phi i64 [ %.0.copyload.i10154, %bb.hx ], [ %.0.copyload.i10153, %bb.hv ] ; 2 uses
  %i.bfv = icmp eq i64 %.08354, -1
  %.not9120 = icmp eq i32 %.248672, 0             ; 2 uses
  br i1 %i.bfv, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %.preheader10387
  %i.bfw = select i1 %.not9120, i32 %.108636, i32 %.248672
  %.pre10799 = zext i32 %i.bfw to i64
  br label %.loopexit10388

bb.hx:                                            ; preds = %.preheader10387
  %i.bfx = icmp eq i64 %.08354, -2
  %i.bfy = select i1 %i.bfx, i1 %.not9120, i1 false
  %i.bfz = select i1 %i.bfy, i32 %.108636, i32 %.248672
  %i.bga = add i32 %.158417, %.188609
  %i.bgb = add i32 %.188609, 1
  %i.bgc = and i32 %i.bga, %i.bfj                 ; 2 uses
  %i.bgd = shl i32 %i.bgc, 3
  %i.bge = add i32 %i.bgd, %i.bew                 ; 2 uses
  %i.bgf = zext i32 %i.bge to i64                 ; 2 uses
  %.val9923 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgg = getelementptr inbounds nuw i8, ptr %.val9923, i64 %i.bgf
  %.0.copyload.i10154 = load i64, ptr %i.bgg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10154) #16, !srcloc !45
  %.not9119 = icmp eq i64 %.0.copyload.i10152, %.0.copyload.i10154
  br i1 %.not9119, label %.loopexit10388, label %.preheader10387

.loopexit10388:                                   ; preds = %bb.hx, %bb.hv, %bb.hw
  %.pre-phi10800 = phi i64 [ %.pre10799, %bb.hw ], [ %i.bfs, %bb.hv ], [ %i.bgf, %bb.hx ]
  %.val9823 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgh = getelementptr inbounds nuw i8, ptr %.val9823, i64 %.pre-phi10800
  store i64 %.0.copyload.i10152, ptr %i.bgh, align 1
  %i.bgi = add i32 %.258585, 1                    ; 2 uses
  %.val9654 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgj = getelementptr inbounds nuw i8, ptr %.val9654, i64 %i.bcd
  store i32 %i.bgi, ptr %i.bgj, align 1
  br label %bb.hy

bb.hy:                                            ; preds = %.loopexit10388, %bb.hu
  %.268586 = phi i32 [ %i.bgi, %.loopexit10388 ], [ %.258585, %bb.hu ]
  %i.bgk = add i32 %.08750, 8                     ; 2 uses
  %.not9121 = icmp eq i32 %i.bgk, %i.bfi
  br i1 %.not9121, label %.loopexit10391, label %bb.hu

.loopexit10391:                                   ; preds = %bb.hy, %bb.hs
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i10149)
  br label %bb.hz

bb.hz:                                            ; preds = %bb.ho, %.loopexit10391, %bb.hp
  %.val9402 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgl = getelementptr inbounds nuw i8, ptr %.val9402, i64 %i.baa
  %.0.copyload.i10155 = load i32, ptr %i.bgl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10155) #16, !srcloc !22
  %.val9401 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgm = getelementptr inbounds nuw i8, ptr %.val9401, i64 %i.bcc
  %.0.copyload.i10156 = load i32, ptr %i.bgm, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10156) #16, !srcloc !22
  %i.bgn = add i32 %.0.copyload.i10156, -1        ; 2 uses
  %i.bgo = trunc i64 %i.bcx to i32
  %i.bgp = mul i32 %i.bgo, 37
  %i.bgq = and i32 %i.bgn, %i.bgp                 ; 2 uses
  %i.bgr = shl i32 %i.bgq, 3
  %i.bgs = add i32 %i.bgr, %.0.copyload.i10155    ; 2 uses
  %i.bgt = zext i32 %i.bgs to i64                 ; 2 uses
  %.val9922 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgu = getelementptr inbounds nuw i8, ptr %.val9922, i64 %i.bgt
  %.0.copyload.i10157 = load i64, ptr %i.bgu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10157) #16, !srcloc !45
  %.not9123 = icmp eq i64 %.0.copyload.i10157, %i.bcx
  br i1 %.not9123, label %.loopexit10390, label %.preheader10389

.preheader10389:                                  ; preds = %bb.hz, %bb.ib
  %.258673 = phi i32 [ %i.bhg, %bb.ib ], [ %i.bgs, %bb.hz ] ; 2 uses
  %.198610 = phi i32 [ %i.bhe, %bb.ib ], [ %i.bgq, %bb.hz ]
  %.98473 = phi i32 [ %i.bhd, %bb.ib ], [ 1, %bb.hz ] ; 2 uses
  %.98394 = phi i32 [ %i.bhb, %bb.ib ], [ 0, %bb.hz ] ; 3 uses
  %.18352 = phi i64 [ %.0.copyload.i10159, %bb.ib ], [ %.0.copyload.i10157, %bb.hz ] ; 2 uses
  %i.bgv = icmp eq i64 %.18352, -1
  %.not9126 = icmp eq i32 %.98394, 0              ; 2 uses
  br i1 %i.bgv, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %.preheader10389
  %i.bgw = select i1 %.not9126, i32 %.258673, i32 %.98394
  %.val9400 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgx = getelementptr inbounds nuw i8, ptr %.val9400, i64 %i.azz
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgx, i64 20
  %.0.copyload.i10158 = load i32, ptr %i.bgy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10158) #16, !srcloc !22
  br label %bb.ic

bb.ib:                                            ; preds = %.preheader10389
  %i.bgz = icmp eq i64 %.18352, -2
  %i.bha = select i1 %i.bgz, i1 %.not9126, i1 false
  %i.bhb = select i1 %i.bha, i32 %.258673, i32 %.98394
  %i.bhc = add i32 %.98473, %.198610
  %i.bhd = add i32 %.98473, 1
  %i.bhe = and i32 %i.bhc, %i.bgn                 ; 2 uses
  %i.bhf = shl i32 %i.bhe, 3
  %i.bhg = add i32 %i.bhf, %.0.copyload.i10155    ; 2 uses
  %i.bhh = zext i32 %i.bhg to i64                 ; 2 uses
  %.val9921 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bhi = getelementptr inbounds nuw i8, ptr %.val9921, i64 %i.bhh
  %.0.copyload.i10159 = load i64, ptr %i.bhi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10159) #16, !srcloc !45
  %.not9125 = icmp eq i64 %i.bcx, %.0.copyload.i10159
  br i1 %.not9125, label %.loopexit10390, label %.preheader10389

.loopexit10390:                                   ; preds = %bb.ib, %bb.hz
  %.pre10798.pre-phi = phi i64 [ %i.bgt, %bb.hz ], [ %i.bhh, %bb.ib ]
  %.val9399 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bhj = getelementptr inbounds nuw i8, ptr %.val9399, i64 %i.bcd
  %.0.copyload.i10160 = load i32, ptr %i.bhj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10160) #16, !srcloc !22
  %i.bhk = add i32 %.0.copyload.i10160, 1         ; 2 uses
  %.val9653 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bhl = getelementptr inbounds nuw i8, ptr %.val9653, i64 %i.bcd
  store i32 %i.bhk, ptr %i.bhl, align 1
  br label %bb.id

bb.ic:                                            ; preds = %bb.hm, %bb.ia
  %.278675 = phi i32 [ %i.bgw, %bb.ia ], [ %.238671, %bb.hm ]
end_hunk_9
begin_hunk_10_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AStringTableBuilder0x3A0x3ApackIntoStorage0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x2C0x20bool0x29:bb.a
  %i.bnd = icmp eq i64 %i.bmv, %.0.copyload.i10170
  br i1 %i.bnd, label %.loopexit10361, label %.preheader10359

.preheader10359:                                  ; preds = %bb.in, %bb.io
  %.318729 = phi i32 [ %i.bnh, %bb.io ], [ %i.bmy, %bb.in ]
  %.318679 = phi i32 [ %i.bng, %bb.io ], [ 1, %bb.in ] ; 2 uses
  %.28353 = phi i64 [ %.0.copyload.i10171, %bb.io ], [ %.0.copyload.i10170, %bb.in ]
  %i.bne = icmp eq i64 %.28353, -1
  br i1 %i.bne, label %.loopexit10360, label %bb.io

bb.io:                                            ; preds = %.preheader10359
  %i.bnf = add i32 %.318679, %.318729
  %i.bng = add i32 %.318679, 1
  %i.bnh = and i32 %i.bnf, %i.blv                 ; 2 uses
  %i.bni = shl i32 %i.bnh, 3
  %i.bnj = add i32 %i.bni, %.0.copyload.i10166
  %i.bnk = zext i32 %i.bnj to i64
  %.val9918 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bnl = getelementptr inbounds nuw i8, ptr %.val9918, i64 %i.bnk
  %.0.copyload.i10171 = load i64, ptr %i.bnl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10171) #16, !srcloc !45
  %.not9134 = icmp eq i64 %i.bmv, %.0.copyload.i10171
  br i1 %.not9134, label %.loopexit10361, label %.preheader10359

.loopexit10361:                                   ; preds = %bb.in, %bb.il, %bb.io
  %i.bnm = sub i32 %.0.copyload.i10163, %i.blx    ; 5 uses
  %.not9136 = icmp eq i32 %.298589, 0             ; 2 uses
  br i1 %.not9136, label %.loopexit10377, label %bb.ip

.loopexit10360:                                   ; preds = %.preheader10359, %bb.im
  %.not9135 = icmp eq i32 %i.blx, 0
  br i1 %.not9135, label %.loopexit10380, label %bb.il

bb.ip:                                            ; preds = %.loopexit10361
  %i.bnn = add i32 %.298589, -1                   ; 3 uses
  %i.bno = and i32 %i.bmg, %i.bnn                 ; 3 uses
  %.not9137 = icmp eq i32 %.0.copyload.i10163, %i.blx
  br i1 %.not9137, label %bb.iw, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.bnp = shl i32 %i.bnm, 1
  %i.bnq = add i32 %i.blz, %i.bnp
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iv, %bb.iq
  %.108457 = phi i32 [ %i.bno, %bb.iq ], [ %i.boj, %bb.iv ] ; 2 uses
  %.108378 = phi i32 [ 1, %bb.iq ], [ %i.bok, %bb.iv ] ; 2 uses
  %i.bnr = mul i32 %.108457, 24
  %i.bns = add i32 %i.bnr, %.18                   ; 2 uses
  %i.bnt = zext i32 %i.bns to i64                 ; 3 uses
  %.val9917 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bnu = getelementptr inbounds nuw i8, ptr %.val9917, i64 %i.bnt
  %.0.copyload.i10172 = load i64, ptr %i.bnu, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10172) #16, !srcloc !45
  %.val9393 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bnv = getelementptr inbounds nuw i8, ptr %.val9393, i64 %i.bnt
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 8
  %.0.copyload.i10173 = load i32, ptr %i.bnw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10173) #16, !srcloc !22
  %.not9140 = icmp eq i32 %.0.copyload.i10173, %i.bmg
  %i.bnx = lshr i64 %.0.copyload.i10172, 32
  %i.bny = trunc nuw i64 %i.bnx to i32
  %.not9141 = icmp eq i32 %i.bnm, %i.bny
  %or.cond9286 = select i1 %.not9140, i1 %.not9141, i1 false
  br i1 %or.cond9286, label %bb.is, label %.loopexit10357

bb.is:                                            ; preds = %bb.ir
  %i.bnz = trunc i64 %.0.copyload.i10172 to i32
  br label %bb.it

bb.it:                                            ; preds = %bb.iu, %bb.is
  %.328730 = phi i32 [ %i.bnz, %bb.is ], [ %i.boe, %bb.iu ] ; 2 uses
  %.328680 = phi i32 [ %i.blz, %bb.is ], [ %i.bof, %bb.iu ] ; 2 uses
  %i.boa = zext i32 %.328680 to i64
  %.val9953 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bob = getelementptr inbounds nuw i8, ptr %.val9953, i64 %i.boa
  %.0.copyload.i10174 = load i16, ptr %i.bob, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i10174) #16, !srcloc !46
  %i.boc = zext i32 %.328730 to i64
  %.val9952 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bod = getelementptr inbounds nuw i8, ptr %.val9952, i64 %i.boc
  %.0.copyload.i10175 = load i16, ptr %i.bod, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i10175) #16, !srcloc !46
  %.not9142 = icmp eq i16 %.0.copyload.i10174, %.0.copyload.i10175
  br i1 %.not9142, label %bb.iu, label %.loopexit10357

bb.iu:                                            ; preds = %bb.it
  %i.boe = add i32 %.328730, 2
  %i.bof = add i32 %.328680, 2                    ; 2 uses
  %.not9143 = icmp eq i32 %i.bof, %i.bnq
  br i1 %.not9143, label %.loopexit10358, label %bb.it

.loopexit10357:                                   ; preds = %bb.it, %bb.ir
  %.not9144 = icmp eq i32 %.0.copyload.i10173, 0
  %i.bog = icmp ult i64 %.0.copyload.i10172, 4294967296
  %i.boh = and i1 %i.bog, %.not9144
  br i1 %i.boh, label %.loopexit10377, label %bb.iv

bb.iv:                                            ; preds = %.loopexit10357
  %i.boi = add i32 %.108378, %.108457
  %i.boj = and i32 %i.boi, %i.bnn
  %i.bok = add i32 %.108378, 1
  br label %bb.ir

bb.iw:                                            ; preds = %bb.ip
  %i.bol = mul i32 %i.bno, 24
  %i.bom = add i32 %i.bol, %.18                   ; 2 uses
  %i.bon = zext i32 %i.bom to i64                 ; 3 uses
  %.val9916 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.boo = getelementptr inbounds nuw i8, ptr %.val9916, i64 %i.bon
  %.0.copyload.i10176 = load i64, ptr %i.boo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10176) #16, !srcloc !45
  %.val9392 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bop = getelementptr inbounds nuw i8, ptr %.val9392, i64 %i.bon
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 8
  %.0.copyload.i10177 = load i32, ptr %i.boq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10177) #16, !srcloc !22
  %i.bor = icmp eq i32 %i.bmg, %.0.copyload.i10177
  %i.bos = icmp ult i64 %.0.copyload.i10176, 4294967296 ; 2 uses
  %i.bot = and i1 %i.bos, %i.bor
  br i1 %i.bot, label %.loopexit10358, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.not9138 = icmp eq i32 %.0.copyload.i10177, 0
  %i.bou = and i1 %i.bos, %.not9138
  br i1 %i.bou, label %.loopexit10377, label %.preheader10375

.preheader10375:                                  ; preds = %bb.ix, %bb.iy
  %.338681 = phi i32 [ %i.bpg, %bb.iy ], [ 1, %bb.ix ] ; 2 uses
  %.118458 = phi i32 [ %i.bow, %bb.iy ], [ %i.bno, %bb.ix ]
  %i.bov = add i32 %.118458, %.338681
  %i.bow = and i32 %i.bov, %i.bnn                 ; 2 uses
  %i.box = mul i32 %i.bow, 24
  %i.boy = add i32 %i.box, %.18                   ; 2 uses
  %i.boz = zext i32 %i.boy to i64                 ; 3 uses
  %.val9915 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bpa = getelementptr inbounds nuw i8, ptr %.val9915, i64 %i.boz
  %.0.copyload.i10178 = load i64, ptr %i.bpa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10178) #16, !srcloc !45
  %.val9391 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bpb = getelementptr inbounds nuw i8, ptr %.val9391, i64 %i.boz
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 8
  %.0.copyload.i10179 = load i32, ptr %i.bpc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10179) #16, !srcloc !22
  %i.bpd = icmp eq i32 %i.bmg, %.0.copyload.i10179
  %i.bpe = icmp ult i64 %.0.copyload.i10178, 4294967296
  %i.bpf = and i1 %i.bpe, %i.bpd
  br i1 %i.bpf, label %.loopexit10358, label %bb.iy

bb.iy:                                            ; preds = %.preheader10375
  %i.bpg = add i32 %.338681, 1
  %.not9139 = icmp ne i32 %.0.copyload.i10179, 0
  %i.bph = icmp ugt i64 %.0.copyload.i10178, 4294967295
  %or.cond9287 = select i1 %.not9139, i1 true, i1 %i.bph
  br i1 %or.cond9287, label %.preheader10375, label %.loopexit10377

.loopexit10377:                                   ; preds = %.loopexit10357, %bb.iy, %.loopexit10361, %bb.ix
  %.248615 = phi i32 [ %i.boy, %bb.iy ], [ %i.bom, %bb.ix ], [ 0, %.loopexit10361 ], [ %i.bns, %.loopexit10357 ] ; 2 uses
  %i.bpi = shl i32 %.168546, 2
  %i.bpj = add i32 %i.bpi, 4
  %i.bpk = mul i32 %.298589, 3
  %.not9145 = icmp ult i32 %i.bpj, %i.bpk
  br i1 %.not9145, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %.loopexit10377
  %i.bpl = shl i32 %.298589, 1
  br label %bb.jc

bb.ja:                                            ; preds = %.loopexit10377
  %i.bpm = xor i32 %.168546, -1
  %i.bpn = add i32 %.298589, %i.bpm
  %i.bpo = sub i32 %i.bpn, %.10
  %i.bpp = lshr i32 %.298589, 3
  %.not9146 = icmp ugt i32 %i.bpo, %i.bpp
  br i1 %.not9146, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.bpq = zext i32 %.248615 to i64
  %.val9390 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bpr = getelementptr inbounds nuw i8, ptr %.val9390, i64 %i.bpq
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpr, i64 8
  %.0.copyload.i10180 = load i32, ptr %i.bps, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10180) #16, !srcloc !22
  br label %.loopexit10353

bb.jc:                                            ; preds = %bb.ja, %bb.iz
  %.338731 = phi i32 [ %i.bpl, %bb.iz ], [ %.298589, %bb.ja ]
  %i.bpt = add i32 %.338731, -1
  %i.bpu = zext i32 %i.bpt to i64                 ; 2 uses
  %i.bpv = lshr i64 %i.bpu, 1
  %i.bpw = or i64 %i.bpv, %i.bpu                  ; 2 uses
  %i.bpx = lshr i64 %i.bpw, 2
  %i.bpy = or i64 %i.bpx, %i.bpw                  ; 2 uses
  %i.bpz = lshr i64 %i.bpy, 4
  %i.bqa = or i64 %i.bpz, %i.bpy                  ; 2 uses
  %i.bqb = lshr i64 %i.bqa, 8
  %i.bqc = or i64 %i.bqb, %i.bqa                  ; 2 uses
  %i.bqd = lshr i64 %i.bqc, 16
  %i.bqe = or i64 %i.bqd, %i.bqc
  %i.bqf = trunc nuw i64 %i.bqe to i32
  %i.bqg = add i32 %i.bqf, 1
  %9 = tail call i32 @llvm.umax.i32(i32 %i.bqg, i32 64) ; 9 uses
  %i.bqh = mul i32 %9, 24                         ; 3 uses
  %i.bqi = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.bqh) #16 ; 31 uses
  %i.bqj = add i32 %i.bqh, %i.bqi                 ; 2 uses
  %.not9147 = icmp eq i32 %.18, 0
  %i.bqk = add i32 %i.bqh, -24                    ; 3 uses
  %i.bql = udiv i32 %i.bqk, 24
  %i.bqm = add nuw nsw i32 %i.bql, 1
  %i.bqn = and i32 %i.bqm, 7                      ; 13 uses
  %.not9148 = icmp eq i32 %i.bqn, 0               ; 2 uses
  br i1 %.not9147, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  br i1 %.not9148, label %.loopexit10374, label %.preheader10373

.preheader10373:                                  ; preds = %bb.jd
  %i.bqo = zext i32 %i.bqi to i64                 ; 2 uses
  %.val9641 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bqp = getelementptr inbounds nuw i8, ptr %.val9641, i64 %i.bqo
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 8
  store i32 0, ptr %i.bqq, align 1
  %.val9812 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bqr = getelementptr inbounds nuw i8, ptr %.val9812, i64 %i.bqo
  store i64 4294967295, ptr %i.bqr, align 1
  %i.bqs = add i32 %i.bqi, 24                     ; 2 uses
  %.not9152 = icmp eq i32 %i.bqn, 1
  br i1 %.not9152, label %.loopexit10374, label %.preheader10373.1

.preheader10373.1:                                ; preds = %.preheader10373
  %i.bqt = zext i32 %i.bqs to i64                 ; 2 uses
  %.val9641.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bqu = getelementptr inbounds nuw i8, ptr %.val9641.1, i64 %i.bqt
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqu, i64 8
  store i32 0, ptr %i.bqv, align 1
  %.val9812.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bqw = getelementptr inbounds nuw i8, ptr %.val9812.1, i64 %i.bqt
  store i64 4294967295, ptr %i.bqw, align 1
  %i.bqx = add i32 %i.bqi, 48                     ; 2 uses
  %.not9152.1 = icmp eq i32 %i.bqn, 2
  br i1 %.not9152.1, label %.loopexit10374, label %.preheader10373.2

.preheader10373.2:                                ; preds = %.preheader10373.1
  %i.bqy = zext i32 %i.bqx to i64                 ; 2 uses
  %.val9641.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bqz = getelementptr inbounds nuw i8, ptr %.val9641.2, i64 %i.bqy
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 8
  store i32 0, ptr %i.bra, align 1
  %.val9812.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.brb = getelementptr inbounds nuw i8, ptr %.val9812.2, i64 %i.bqy
  store i64 4294967295, ptr %i.brb, align 1
  %i.brc = add i32 %i.bqi, 72                     ; 2 uses
  %.not9152.2 = icmp eq i32 %i.bqn, 3
  br i1 %.not9152.2, label %.loopexit10374, label %.preheader10373.3

.preheader10373.3:                                ; preds = %.preheader10373.2
  %i.brd = zext i32 %i.brc to i64                 ; 2 uses
  %.val9641.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bre = getelementptr inbounds nuw i8, ptr %.val9641.3, i64 %i.brd
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bre, i64 8
  store i32 0, ptr %i.brf, align 1
  %.val9812.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.brg = getelementptr inbounds nuw i8, ptr %.val9812.3, i64 %i.brd
  store i64 4294967295, ptr %i.brg, align 1
  %i.brh = add i32 %i.bqi, 96                     ; 2 uses
  %.not9152.3 = icmp eq i32 %i.bqn, 4
  br i1 %.not9152.3, label %.loopexit10374, label %.preheader10373.4

.preheader10373.4:                                ; preds = %.preheader10373.3
  %i.bri = zext i32 %i.brh to i64                 ; 2 uses
  %.val9641.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.brj = getelementptr inbounds nuw i8, ptr %.val9641.4, i64 %i.bri
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 8
  store i32 0, ptr %i.brk, align 1
  %.val9812.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.brl = getelementptr inbounds nuw i8, ptr %.val9812.4, i64 %i.bri
  store i64 4294967295, ptr %i.brl, align 1
  %i.brm = add i32 %i.bqi, 120                    ; 2 uses
  %.not9152.4 = icmp eq i32 %i.bqn, 5
  br i1 %.not9152.4, label %.loopexit10374, label %.preheader10373.5

.preheader10373.5:                                ; preds = %.preheader10373.4
  %i.brn = zext i32 %i.brm to i64                 ; 2 uses
  %.val9641.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bro = getelementptr inbounds nuw i8, ptr %.val9641.5, i64 %i.brn
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 8
  store i32 0, ptr %i.brp, align 1
  %.val9812.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.brq = getelementptr inbounds nuw i8, ptr %.val9812.5, i64 %i.brn
  store i64 4294967295, ptr %i.brq, align 1
  %i.brr = add i32 %i.bqi, 144                    ; 2 uses
  %.not9152.5 = icmp eq i32 %i.bqn, 6
  br i1 %.not9152.5, label %.loopexit10374, label %.preheader10373.6

.preheader10373.6:                                ; preds = %.preheader10373.5
  %i.brs = zext i32 %i.brr to i64                 ; 2 uses
  %.val9641.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.brt = getelementptr inbounds nuw i8, ptr %.val9641.6, i64 %i.brs
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 8
  store i32 0, ptr %i.bru, align 1
  %.val9812.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.brv = getelementptr inbounds nuw i8, ptr %.val9812.6, i64 %i.brs
  store i64 4294967295, ptr %i.brv, align 1
  %i.brw = add i32 %i.bqi, 168
  br label %.loopexit10374

.loopexit10374:                                   ; preds = %.preheader10373, %.preheader10373.1, %.preheader10373.2, %.preheader10373.3, %.preheader10373.4, %.preheader10373.5, %.preheader10373.6, %bb.jd
  %.358733 = phi i32 [ %i.bqi, %bb.jd ], [ %i.bqs, %.preheader10373 ], [ %i.bqx, %.preheader10373.1 ], [ %i.brc, %.preheader10373.2 ], [ %i.brh, %.preheader10373.3 ], [ %i.brm, %.preheader10373.4 ], [ %i.brr, %.preheader10373.5 ], [ %i.brw, %.preheader10373.6 ]
  %i.brx = icmp ugt i32 %i.bqk, 167
  br i1 %i.brx, label %.preheader10371, label %.loopexit10372

.preheader10371:                                  ; preds = %.loopexit10374, %.preheader10371
  %.368734 = phi i32 [ %i.bte, %.preheader10371 ], [ %.358733, %.loopexit10374 ] ; 2 uses
  %i.bry = zext i32 %.368734 to i64               ; 16 uses
  %.val9811 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.brz = getelementptr inbounds nuw i8, ptr %.val9811, i64 %i.bry
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 168
  store i64 4294967295, ptr %i.bsa, align 1
  %.val9810 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsb = getelementptr inbounds nuw i8, ptr %.val9810, i64 %i.bry
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bsb, i64 144
  store i64 4294967295, ptr %i.bsc, align 1
  %.val9809 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsd = getelementptr inbounds nuw i8, ptr %.val9809, i64 %i.bry
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 120
  store i64 4294967295, ptr %i.bse, align 1
  %.val9808 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsf = getelementptr inbounds nuw i8, ptr %.val9808, i64 %i.bry
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 96
  store i64 4294967295, ptr %i.bsg, align 1
  %.val9807 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsh = getelementptr inbounds nuw i8, ptr %.val9807, i64 %i.bry
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 72
  store i64 4294967295, ptr %i.bsi, align 1
  %.val9806 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsj = getelementptr inbounds nuw i8, ptr %.val9806, i64 %i.bry
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 48
  store i64 4294967295, ptr %i.bsk, align 1
  %.val9805 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsl = getelementptr inbounds nuw i8, ptr %.val9805, i64 %i.bry
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 24
  store i64 4294967295, ptr %i.bsm, align 1
  %.val9640 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsn = getelementptr inbounds nuw i8, ptr %.val9640, i64 %i.bry
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsn, i64 8
  store i32 0, ptr %i.bso, align 1
  %.val9804 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsp = getelementptr inbounds nuw i8, ptr %.val9804, i64 %i.bry
  store i64 4294967295, ptr %i.bsp, align 1
  %.val9639 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsq = getelementptr inbounds nuw i8, ptr %.val9639, i64 %i.bry
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 176
  store i32 0, ptr %i.bsr, align 1
  %.val9638 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bss = getelementptr inbounds nuw i8, ptr %.val9638, i64 %i.bry
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bss, i64 152
  store i32 0, ptr %i.bst, align 1
  %.val9637 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsu = getelementptr inbounds nuw i8, ptr %.val9637, i64 %i.bry
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 128
  store i32 0, ptr %i.bsv, align 1
  %.val9636 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsw = getelementptr inbounds nuw i8, ptr %.val9636, i64 %i.bry
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 104
  store i32 0, ptr %i.bsx, align 1
  %.val9635 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bsy = getelementptr inbounds nuw i8, ptr %.val9635, i64 %i.bry
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 80
  store i32 0, ptr %i.bsz, align 1
  %.val9634 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bta = getelementptr inbounds nuw i8, ptr %.val9634, i64 %i.bry
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bta, i64 56
  store i32 0, ptr %i.btb, align 1
  %.val9633 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.btc = getelementptr inbounds nuw i8, ptr %.val9633, i64 %i.bry
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btc, i64 32
  store i32 0, ptr %i.btd, align 1
  %i.bte = add i32 %.368734, 192                  ; 2 uses
  %.not9153 = icmp eq i32 %i.bte, %i.bqj
  br i1 %.not9153, label %.loopexit10372, label %.preheader10371

.loopexit10372:                                   ; preds = %.preheader10371, %.loopexit10374
  br i1 %.not9136, label %.loopexit10370, label %bb.jf

bb.je:                                            ; preds = %bb.jc
  br i1 %.not9148, label %.loopexit10369, label %.preheader10368

.preheader10368:                                  ; preds = %bb.je
  %i.btf = zext i32 %i.bqi to i64                 ; 2 uses
  %.val9632 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.btg = getelementptr inbounds nuw i8, ptr %.val9632, i64 %i.btf
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btg, i64 8
  store i32 0, ptr %i.bth, align 1
  %.val9803 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bti = getelementptr inbounds nuw i8, ptr %.val9803, i64 %i.btf
  store i64 4294967295, ptr %i.bti, align 1
  %i.btj = add i32 %i.bqi, 24                     ; 2 uses
  %.not9149 = icmp eq i32 %i.bqn, 1
  br i1 %.not9149, label %.loopexit10369, label %.preheader10368.1

.preheader10368.1:                                ; preds = %.preheader10368
  %i.btk = zext i32 %i.btj to i64                 ; 2 uses
  %.val9632.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.btl = getelementptr inbounds nuw i8, ptr %.val9632.1, i64 %i.btk
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 8
  store i32 0, ptr %i.btm, align 1
  %.val9803.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.btn = getelementptr inbounds nuw i8, ptr %.val9803.1, i64 %i.btk
  store i64 4294967295, ptr %i.btn, align 1
  %i.bto = add i32 %i.bqi, 48                     ; 2 uses
  %.not9149.1 = icmp eq i32 %i.bqn, 2
  br i1 %.not9149.1, label %.loopexit10369, label %.preheader10368.2

.preheader10368.2:                                ; preds = %.preheader10368.1
  %i.btp = zext i32 %i.bto to i64                 ; 2 uses
  %.val9632.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.btq = getelementptr inbounds nuw i8, ptr %.val9632.2, i64 %i.btp
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btq, i64 8
  store i32 0, ptr %i.btr, align 1
  %.val9803.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bts = getelementptr inbounds nuw i8, ptr %.val9803.2, i64 %i.btp
  store i64 4294967295, ptr %i.bts, align 1
  %i.btt = add i32 %i.bqi, 72                     ; 2 uses
  %.not9149.2 = icmp eq i32 %i.bqn, 3
  br i1 %.not9149.2, label %.loopexit10369, label %.preheader10368.3

.preheader10368.3:                                ; preds = %.preheader10368.2
  %i.btu = zext i32 %i.btt to i64                 ; 2 uses
  %.val9632.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.btv = getelementptr inbounds nuw i8, ptr %.val9632.3, i64 %i.btu
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btv, i64 8
  store i32 0, ptr %i.btw, align 1
  %.val9803.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.btx = getelementptr inbounds nuw i8, ptr %.val9803.3, i64 %i.btu
  store i64 4294967295, ptr %i.btx, align 1
  %i.bty = add i32 %i.bqi, 96                     ; 2 uses
  %.not9149.3 = icmp eq i32 %i.bqn, 4
  br i1 %.not9149.3, label %.loopexit10369, label %.preheader10368.4

.preheader10368.4:                                ; preds = %.preheader10368.3
  %i.btz = zext i32 %i.bty to i64                 ; 2 uses
  %.val9632.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bua = getelementptr inbounds nuw i8, ptr %.val9632.4, i64 %i.btz
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bua, i64 8
  store i32 0, ptr %i.bub, align 1
  %.val9803.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.buc = getelementptr inbounds nuw i8, ptr %.val9803.4, i64 %i.btz
  store i64 4294967295, ptr %i.buc, align 1
  %i.bud = add i32 %i.bqi, 120                    ; 2 uses
  %.not9149.4 = icmp eq i32 %i.bqn, 5
  br i1 %.not9149.4, label %.loopexit10369, label %.preheader10368.5

.preheader10368.5:                                ; preds = %.preheader10368.4
  %i.bue = zext i32 %i.bud to i64                 ; 2 uses
  %.val9632.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.buf = getelementptr inbounds nuw i8, ptr %.val9632.5, i64 %i.bue
  %i.bug = getelementptr inbounds nuw i8, ptr %i.buf, i64 8
  store i32 0, ptr %i.bug, align 1
  %.val9803.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.buh = getelementptr inbounds nuw i8, ptr %.val9803.5, i64 %i.bue
  store i64 4294967295, ptr %i.buh, align 1
  %i.bui = add i32 %i.bqi, 144                    ; 2 uses
  %.not9149.5 = icmp eq i32 %i.bqn, 6
  br i1 %.not9149.5, label %.loopexit10369, label %.preheader10368.6

.preheader10368.6:                                ; preds = %.preheader10368.5
  %i.buj = zext i32 %i.bui to i64                 ; 2 uses
  %.val9632.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.buk = getelementptr inbounds nuw i8, ptr %.val9632.6, i64 %i.buj
  %i.bul = getelementptr inbounds nuw i8, ptr %i.buk, i64 8
  store i32 0, ptr %i.bul, align 1
  %.val9803.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bum = getelementptr inbounds nuw i8, ptr %.val9803.6, i64 %i.buj
  store i64 4294967295, ptr %i.bum, align 1
  %i.bun = add i32 %i.bqi, 168
  br label %.loopexit10369

.loopexit10369:                                   ; preds = %.preheader10368, %.preheader10368.1, %.preheader10368.2, %.preheader10368.3, %.preheader10368.4, %.preheader10368.5, %.preheader10368.6, %bb.je
  %.388736 = phi i32 [ %i.bqi, %bb.je ], [ %i.btj, %.preheader10368 ], [ %i.bto, %.preheader10368.1 ], [ %i.btt, %.preheader10368.2 ], [ %i.bty, %.preheader10368.3 ], [ %i.bud, %.preheader10368.4 ], [ %i.bui, %.preheader10368.5 ], [ %i.bun, %.preheader10368.6 ]
  %i.buo = icmp ult i32 %i.bqk, 168
  br i1 %i.buo, label %.loopexit10367, label %.preheader10366

.preheader10366:                                  ; preds = %.loopexit10369, %.preheader10366
  %.398737 = phi i32 [ %i.bvv, %.preheader10366 ], [ %.388736, %.loopexit10369 ] ; 2 uses
  %i.bup = zext i32 %.398737 to i64               ; 16 uses
  %.val9802 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.buq = getelementptr inbounds nuw i8, ptr %.val9802, i64 %i.bup
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buq, i64 168
  store i64 4294967295, ptr %i.bur, align 1
  %.val9801 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bus = getelementptr inbounds nuw i8, ptr %.val9801, i64 %i.bup
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 144
  store i64 4294967295, ptr %i.but, align 1
  %.val9800 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.buu = getelementptr inbounds nuw i8, ptr %.val9800, i64 %i.bup
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 120
  store i64 4294967295, ptr %i.buv, align 1
  %.val9799 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.buw = getelementptr inbounds nuw i8, ptr %.val9799, i64 %i.bup
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buw, i64 96
  store i64 4294967295, ptr %i.bux, align 1
  %.val9798 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.buy = getelementptr inbounds nuw i8, ptr %.val9798, i64 %i.bup
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 72
  store i64 4294967295, ptr %i.buz, align 1
  %.val9797 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bva = getelementptr inbounds nuw i8, ptr %.val9797, i64 %i.bup
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 48
  store i64 4294967295, ptr %i.bvb, align 1
  %.val9796 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bvc = getelementptr inbounds nuw i8, ptr %.val9796, i64 %i.bup
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 24
  store i64 4294967295, ptr %i.bvd, align 1
  %.val9631 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bve = getelementptr inbounds nuw i8, ptr %.val9631, i64 %i.bup
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bve, i64 8
  store i32 0, ptr %i.bvf, align 1
  %.val9795 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bvg = getelementptr inbounds nuw i8, ptr %.val9795, i64 %i.bup
  store i64 4294967295, ptr %i.bvg, align 1
  %.val9630 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bvh = getelementptr inbounds nuw i8, ptr %.val9630, i64 %i.bup
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 176
  store i32 0, ptr %i.bvi, align 1
  %.val9629 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bvj = getelementptr inbounds nuw i8, ptr %.val9629, i64 %i.bup
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvj, i64 152
  store i32 0, ptr %i.bvk, align 1
  %.val9628 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bvl = getelementptr inbounds nuw i8, ptr %.val9628, i64 %i.bup
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 128
  store i32 0, ptr %i.bvm, align 1
  %.val9627 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bvn = getelementptr inbounds nuw i8, ptr %.val9627, i64 %i.bup
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvn, i64 104
  store i32 0, ptr %i.bvo, align 1
  %.val9626 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bvp = getelementptr inbounds nuw i8, ptr %.val9626, i64 %i.bup
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 80
  store i32 0, ptr %i.bvq, align 1
  %.val9625 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bvr = getelementptr inbounds nuw i8, ptr %.val9625, i64 %i.bup
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 56
  store i32 0, ptr %i.bvs, align 1
  %.val9624 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bvt = getelementptr inbounds nuw i8, ptr %.val9624, i64 %i.bup
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvt, i64 32
  store i32 0, ptr %i.bvu, align 1
  %i.bvv = add i32 %.398737, 192                  ; 2 uses
  %.not9150 = icmp eq i32 %i.bvv, %i.bqj
  br i1 %.not9150, label %.loopexit10367, label %.preheader10366

bb.jf:                                            ; preds = %.loopexit10372
  %i.bvw = mul i32 %.298589, 24
  %i.bvx = add i32 %.18, %i.bvw
  %i.bvy = add i32 %9, -1                         ; 3 uses
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jq, %bb.jf
  %.258616 = phi i32 [ %.18, %bb.jf ], [ %i.byv, %bb.jq ] ; 2 uses
  %.178547 = phi i32 [ 0, %bb.jf ], [ %.188548, %bb.jq ] ; 2 uses
  %i.bvz = zext i32 %.258616 to i64               ; 6 uses
  %i.bwa = add nuw nsw i64 %i.bvz, 8              ; 2 uses
  %.val9389 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bwb = getelementptr inbounds nuw i8, ptr %.val9389, i64 %i.bwa
  %.0.copyload.i10181 = load i32, ptr %i.bwb, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10181) #16, !srcloc !22
  %.not9154 = icmp ne i32 %.0.copyload.i10181, 0
  %.val9914 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bwc = getelementptr inbounds nuw i8, ptr %.val9914, i64 %i.bvz
  %.0.copyload.i10182 = load i64, ptr %i.bwc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10182) #16, !srcloc !45
  %i.bwd = icmp ugt i64 %.0.copyload.i10182, 4294967295
  %.not9156 = or i1 %.not9154, %i.bwd
  br i1 %.not9156, label %bb.jh, label %bb.jq

bb.jh:                                            ; preds = %bb.jg
  %i.bwe = and i32 %.0.copyload.i10181, %i.bvy    ; 3 uses
  %i.bwf = lshr i64 %.0.copyload.i10182, 32       ; 3 uses
  %.not9157 = icmp eq i64 %i.bwf, 0
  br i1 %.not9157, label %bb.jo, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bwg = trunc nuw i64 %i.bwf to i32
  %i.bwh = trunc i64 %.0.copyload.i10182 to i32   ; 2 uses
  %i.bwi = shl i32 %i.bwg, 1
  %i.bwj = add i32 %i.bwi, %i.bwh
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jn, %bb.ji
  %.108395 = phi i32 [ 1, %bb.ji ], [ %i.bxc, %bb.jn ] ; 2 uses
  %.118379 = phi i32 [ %i.bwe, %bb.ji ], [ %i.bxb, %bb.jn ] ; 2 uses
  %i.bwk = mul i32 %.118379, 24
  %i.bwl = add i32 %i.bwk, %i.bqi
  %i.bwm = zext i32 %i.bwl to i64                 ; 4 uses
  %.val9913 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bwn = getelementptr inbounds nuw i8, ptr %.val9913, i64 %i.bwm
  %.0.copyload.i10183 = load i64, ptr %i.bwn, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10183) #16, !srcloc !45
  %.val9388 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bwo = getelementptr inbounds nuw i8, ptr %.val9388, i64 %i.bwm
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 8
  %.0.copyload.i10184 = load i32, ptr %i.bwp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10184) #16, !srcloc !22
  %.not9160 = icmp eq i32 %.0.copyload.i10184, %.0.copyload.i10181
  %i.bwq = lshr i64 %.0.copyload.i10183, 32
  %.not9161 = icmp eq i64 %i.bwf, %i.bwq
  %or.cond9288 = select i1 %.not9160, i1 %.not9161, i1 false
  br i1 %or.cond9288, label %bb.jk, label %.loopexit10350

bb.jk:                                            ; preds = %bb.jj
  %i.bwr = trunc i64 %.0.copyload.i10183 to i32
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jm, %bb.jk
  %.408738 = phi i32 [ %i.bwr, %bb.jk ], [ %i.bww, %bb.jm ] ; 2 uses
  %.368684 = phi i32 [ %i.bwh, %bb.jk ], [ %i.bwx, %bb.jm ] ; 2 uses
  %i.bws = zext i32 %.368684 to i64
  %.val9951 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bwt = getelementptr inbounds nuw i8, ptr %.val9951, i64 %i.bws
  %.0.copyload.i10185 = load i16, ptr %i.bwt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i10185) #16, !srcloc !46
  %i.bwu = zext i32 %.408738 to i64
  %.val9950 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bwv = getelementptr inbounds nuw i8, ptr %.val9950, i64 %i.bwu
  %.0.copyload.i10186 = load i16, ptr %i.bwv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i10186) #16, !srcloc !46
  %.not9162 = icmp eq i16 %.0.copyload.i10185, %.0.copyload.i10186
  br i1 %.not9162, label %bb.jm, label %.loopexit10350

bb.jm:                                            ; preds = %bb.jl
  %i.bww = add i32 %.408738, 2
  %i.bwx = add i32 %.368684, 2                    ; 2 uses
  %.not9163 = icmp eq i32 %i.bwx, %i.bwj
  br i1 %.not9163, label %.loopexit10351, label %bb.jl

.loopexit10350:                                   ; preds = %bb.jl, %bb.jj
  %.not9164 = icmp eq i32 %.0.copyload.i10184, 0
  %i.bwy = icmp ult i64 %.0.copyload.i10183, 4294967296
  %i.bwz = and i1 %i.bwy, %.not9164
  br i1 %i.bwz, label %.loopexit10351, label %bb.jn

bb.jn:                                            ; preds = %.loopexit10350
  %i.bxa = add i32 %.118379, %.108395
  %i.bxb = and i32 %i.bxa, %i.bvy
  %i.bxc = add i32 %.108395, 1
  br label %bb.jj

bb.jo:                                            ; preds = %bb.jh
  %i.bxd = mul i32 %i.bwe, 24
  %i.bxe = add i32 %i.bxd, %i.bqi
  %i.bxf = zext i32 %i.bxe to i64                 ; 3 uses
  %.val9912 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bxg = getelementptr inbounds nuw i8, ptr %.val9912, i64 %i.bxf
  %.0.copyload.i10187 = load i64, ptr %i.bxg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10187) #16, !srcloc !45
  %.val9387 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bxh = getelementptr inbounds nuw i8, ptr %.val9387, i64 %i.bxf
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxh, i64 8
  %.0.copyload.i10188 = load i32, ptr %i.bxi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10188) #16, !srcloc !22
  %i.bxj = icmp eq i32 %.0.copyload.i10181, %.0.copyload.i10188
  %i.bxk = icmp ult i64 %.0.copyload.i10187, 4294967296
  %.not9158 = icmp eq i32 %.0.copyload.i10188, 0
  %i.bxl = or i1 %i.bxj, %.not9158
  %or.cond9289 = and i1 %i.bxk, %i.bxl
  br i1 %or.cond9289, label %.loopexit10351, label %.preheader10354

.preheader10354:                                  ; preds = %bb.jo, %bb.jp
  %.378685 = phi i32 [ %i.bxx, %bb.jp ], [ 1, %bb.jo ] ; 2 uses
  %.128380 = phi i32 [ %i.bxn, %bb.jp ], [ %i.bwe, %bb.jo ]
  %i.bxm = add i32 %.128380, %.378685
  %i.bxn = and i32 %i.bxm, %i.bvy                 ; 2 uses
  %i.bxo = mul i32 %i.bxn, 24
  %i.bxp = add i32 %i.bxo, %i.bqi
  %i.bxq = zext i32 %i.bxp to i64                 ; 4 uses
  %.val9911 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bxr = getelementptr inbounds nuw i8, ptr %.val9911, i64 %i.bxq
  %.0.copyload.i10189 = load i64, ptr %i.bxr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10189) #16, !srcloc !45
  %.val9386 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bxs = getelementptr inbounds nuw i8, ptr %.val9386, i64 %i.bxq
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxs, i64 8
  %.0.copyload.i10190 = load i32, ptr %i.bxt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10190) #16, !srcloc !22
  %i.bxu = icmp eq i32 %.0.copyload.i10181, %.0.copyload.i10190
  %i.bxv = icmp ult i64 %.0.copyload.i10189, 4294967296
  %i.bxw = and i1 %i.bxv, %i.bxu
  br i1 %i.bxw, label %.loopexit10351, label %bb.jp

bb.jp:                                            ; preds = %.preheader10354
  %i.bxx = add i32 %.378685, 1
  %.not9159 = icmp ne i32 %.0.copyload.i10190, 0
  %i.bxy = icmp ugt i64 %.0.copyload.i10189, 4294967295
  %or.cond9290 = select i1 %.not9159, i1 true, i1 %i.bxy
  br i1 %or.cond9290, label %.preheader10354, label %.loopexit10351

.loopexit10351:                                   ; preds = %.loopexit10350, %bb.jp, %.preheader10354, %bb.jm, %bb.jo
  %.pre-phi10795 = phi i64 [ %i.bxq, %bb.jp ], [ %i.bwm, %bb.jm ], [ %i.bxf, %bb.jo ], [ %i.bxq, %.preheader10354 ], [ %i.bwm, %.loopexit10350 ] ; 5 uses
  %.val9910 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bxz = getelementptr inbounds nuw i8, ptr %.val9910, i64 %i.bvz
  %.0.copyload.i10191 = load i64, ptr %i.bxz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10191) #16, !srcloc !45
  %.val9794 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bya = getelementptr inbounds nuw i8, ptr %.val9794, i64 %.pre-phi10795
  store i64 %.0.copyload.i10191, ptr %i.bya, align 1
  %.val9385 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byb = getelementptr inbounds nuw i8, ptr %.val9385, i64 %i.bwa
  %.0.copyload.i10192 = load i32, ptr %i.byb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10192) #16, !srcloc !22
  %.val9623 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byc = getelementptr inbounds nuw i8, ptr %.val9623, i64 %.pre-phi10795
  %i.byd = getelementptr inbounds nuw i8, ptr %i.byc, i64 8
  store i32 %.0.copyload.i10192, ptr %i.byd, align 1
  %i.bye = add nuw nsw i64 %.pre-phi10795, 20     ; 2 uses
  %.val9622 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byf = getelementptr inbounds nuw i8, ptr %.val9622, i64 %i.bye
  store i32 0, ptr %i.byf, align 1
  %i.byg = add nuw nsw i64 %.pre-phi10795, 12     ; 2 uses
  %.val9793 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byh = getelementptr inbounds nuw i8, ptr %.val9793, i64 %i.byg
  store i64 0, ptr %i.byh, align 1
  %i.byi = add nuw nsw i64 %i.bvz, 12             ; 2 uses
  %.val9384 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byj = getelementptr inbounds nuw i8, ptr %.val9384, i64 %i.byi
  %.0.copyload.i10193 = load i32, ptr %i.byj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10193) #16, !srcloc !22
  %.val9621 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byk = getelementptr inbounds nuw i8, ptr %.val9621, i64 %i.byg
  store i32 %.0.copyload.i10193, ptr %i.byk, align 1
  %.val9383 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byl = getelementptr inbounds nuw i8, ptr %.val9383, i64 %i.bvz
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 16
  %.0.copyload.i10194 = load i32, ptr %i.bym, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10194) #16, !srcloc !22
  %.val9620 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byn = getelementptr inbounds nuw i8, ptr %.val9620, i64 %.pre-phi10795
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byn, i64 16
  store i32 %.0.copyload.i10194, ptr %i.byo, align 1
  %i.byp = add nuw nsw i64 %i.bvz, 20             ; 2 uses
  %.val9382 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byq = getelementptr inbounds nuw i8, ptr %.val9382, i64 %i.byp
  %.0.copyload.i10195 = load i32, ptr %i.byq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10195) #16, !srcloc !22
  %.val9619 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byr = getelementptr inbounds nuw i8, ptr %.val9619, i64 %i.bye
  store i32 %.0.copyload.i10195, ptr %i.byr, align 1
  %.val9618 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bys = getelementptr inbounds nuw i8, ptr %.val9618, i64 %i.byp
  store i32 0, ptr %i.bys, align 1
  %.val9792 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.byt = getelementptr inbounds nuw i8, ptr %.val9792, i64 %i.byi
  store i64 0, ptr %i.byt, align 1
  %i.byu = add i32 %.178547, 1
  br label %bb.jq

bb.jq:                                            ; preds = %.loopexit10351, %bb.jg
  %.188548 = phi i32 [ %i.byu, %.loopexit10351 ], [ %.178547, %bb.jg ] ; 2 uses
  %i.byv = add i32 %.258616, 24                   ; 2 uses
  %.not9165 = icmp eq i32 %i.byv, %i.bvx
  br i1 %.not9165, label %.loopexit10370, label %bb.jg

.loopexit10370:                                   ; preds = %bb.jq, %.loopexit10372
  %.198549 = phi i32 [ 0, %.loopexit10372 ], [ %.188548, %bb.jq ]
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %.18)
  br label %.loopexit10367

.loopexit10367:                                   ; preds = %.preheader10366, %.loopexit10369, %.loopexit10370
  %.208550 = phi i32 [ %.198549, %.loopexit10370 ], [ 0, %.loopexit10369 ], [ 0, %.preheader10366 ] ; 6 uses
  %i.byw = add i32 %9, -1                         ; 3 uses
  %i.byx = and i32 %i.byw, %i.bmg                 ; 3 uses
  %.not9166 = icmp eq i32 %.0.copyload.i10163, %i.blx
  br i1 %.not9166, label %bb.jx, label %bb.jr

bb.jr:                                            ; preds = %.loopexit10367
  %i.byy = shl i32 %i.bnm, 1
  %i.byz = add i32 %i.blz, %i.byy
  br label %bb.js

bb.js:                                            ; preds = %bb.jw, %bb.jr
  %.31 = phi i32 [ %i.byx, %bb.jr ], [ %i.bzr, %bb.jw ] ; 2 uses
  %.78441 = phi i32 [ 1, %bb.jr ], [ %i.bzs, %bb.jw ] ; 2 uses
  %i.bza = mul i32 %.31, 24
  %i.bzb = add i32 %i.bza, %i.bqi                 ; 2 uses
  %i.bzc = zext i32 %i.bzb to i64                 ; 3 uses
  %.val9909 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bzd = getelementptr inbounds nuw i8, ptr %.val9909, i64 %i.bzc
  %.0.copyload.i10196 = load i64, ptr %i.bzd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10196) #16, !srcloc !45
  %.val9381 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bze = getelementptr inbounds nuw i8, ptr %.val9381, i64 %i.bzc
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 8
  %.0.copyload.i10197 = load i32, ptr %i.bzf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10197) #16, !srcloc !22
  %.not9169 = icmp eq i32 %.0.copyload.i10197, %i.bmg
  %i.bzg = lshr i64 %.0.copyload.i10196, 32
  %i.bzh = trunc nuw i64 %i.bzg to i32
  %.not9170 = icmp eq i32 %i.bnm, %i.bzh
  %or.cond9292 = select i1 %.not9169, i1 %.not9170, i1 false
  br i1 %or.cond9292, label %bb.jt, label %.loopexit10352

bb.jt:                                            ; preds = %bb.js
  %i.bzi = trunc i64 %.0.copyload.i10196 to i32
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jv, %bb.jt
  %.418739 = phi i32 [ %i.bzi, %bb.jt ], [ %i.bzn, %bb.jv ] ; 2 uses
  %.388686 = phi i32 [ %i.blz, %bb.jt ], [ %i.bzo, %bb.jv ] ; 2 uses
  %i.bzj = zext i32 %.388686 to i64
  %.val9949 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bzk = getelementptr inbounds nuw i8, ptr %.val9949, i64 %i.bzj
  %.0.copyload.i10198 = load i16, ptr %i.bzk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i10198) #16, !srcloc !46
  %i.bzl = zext i32 %.418739 to i64
  %.val9948 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bzm = getelementptr inbounds nuw i8, ptr %.val9948, i64 %i.bzl
  %.0.copyload.i10199 = load i16, ptr %i.bzm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i10199) #16, !srcloc !46
  %.not9171 = icmp eq i16 %.0.copyload.i10198, %.0.copyload.i10199
  br i1 %.not9171, label %bb.jv, label %.loopexit10352

bb.jv:                                            ; preds = %bb.ju
  %i.bzn = add i32 %.418739, 2
  %i.bzo = add i32 %.388686, 2                    ; 2 uses
  %.not9172 = icmp eq i32 %i.bzo, %i.byz
  br i1 %.not9172, label %.loopexit10353, label %bb.ju

.loopexit10352:                                   ; preds = %bb.ju, %bb.js
  %.not9174 = icmp eq i32 %.0.copyload.i10197, 0
  %i.bzp = icmp ult i64 %.0.copyload.i10196, 4294967296
  %or.cond9293 = select i1 %.not9174, i1 %i.bzp, i1 false
  br i1 %or.cond9293, label %.loopexit10364, label %bb.jw

bb.jw:                                            ; preds = %.loopexit10352
  %i.bzq = add i32 %.78441, %.31
  %i.bzr = and i32 %i.bzq, %i.byw
  %i.bzs = add i32 %.78441, 1
  br label %bb.js

bb.jx:                                            ; preds = %.loopexit10367
  %i.bzt = mul i32 %i.byx, 24
  %i.bzu = add i32 %i.bzt, %i.bqi                 ; 2 uses
  %i.bzv = zext i32 %i.bzu to i64                 ; 3 uses
  %.val9908 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bzw = getelementptr inbounds nuw i8, ptr %.val9908, i64 %i.bzv
  %.0.copyload.i10200 = load i64, ptr %i.bzw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10200) #16, !srcloc !45
  %.val9380 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bzx = getelementptr inbounds nuw i8, ptr %.val9380, i64 %i.bzv
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzx, i64 8
  %.0.copyload.i10201 = load i32, ptr %i.bzy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10201) #16, !srcloc !22
  %i.bzz = icmp eq i32 %i.bmg, %.0.copyload.i10201
  %i.caa = icmp ult i64 %.0.copyload.i10200, 4294967296 ; 2 uses
  %or.cond9294 = select i1 %i.bzz, i1 %i.caa, i1 false
  br i1 %or.cond9294, label %.loopexit10353, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %.not9167 = icmp eq i32 %.0.copyload.i10201, 0
  %or.cond9295 = select i1 %.not9167, i1 %i.caa, i1 false
  br i1 %or.cond9295, label %.loopexit10364, label %.preheader10362

.preheader10362:                                  ; preds = %bb.jy, %bb.jz
  %.398687 = phi i32 [ %i.cal, %bb.jz ], [ 1, %bb.jy ] ; 2 uses
  %.32 = phi i32 [ %i.cac, %bb.jz ], [ %i.byx, %bb.jy ]
  %i.cab = add i32 %.32, %.398687
  %i.cac = and i32 %i.cab, %i.byw                 ; 2 uses
  %i.cad = mul i32 %i.cac, 24
  %i.cae = add i32 %i.cad, %i.bqi                 ; 2 uses
  %i.caf = zext i32 %i.cae to i64                 ; 3 uses
  %.val9907 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cag = getelementptr inbounds nuw i8, ptr %.val9907, i64 %i.caf
  %.0.copyload.i10202 = load i64, ptr %i.cag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10202) #16, !srcloc !45
  %.val9379 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cah = getelementptr inbounds nuw i8, ptr %.val9379, i64 %i.caf
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 8
  %.0.copyload.i10203 = load i32, ptr %i.cai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10203) #16, !srcloc !22
  %i.caj = icmp eq i32 %i.bmg, %.0.copyload.i10203
  %i.cak = icmp ult i64 %.0.copyload.i10202, 4294967296
  %or.cond9296 = select i1 %i.caj, i1 %i.cak, i1 false
  br i1 %or.cond9296, label %.loopexit10353, label %bb.jz

bb.jz:                                            ; preds = %.preheader10362
  %i.cal = add i32 %.398687, 1
  %.not9168 = icmp ne i32 %.0.copyload.i10203, 0
  %i.cam = icmp ugt i64 %.0.copyload.i10202, 4294967295
  %or.cond9297 = select i1 %.not9168, i1 true, i1 %i.cam
  br i1 %or.cond9297, label %.preheader10362, label %.loopexit10364

.loopexit10353:                                   ; preds = %.preheader10362, %bb.jv, %bb.jx, %bb.jb
  %.428740 = phi i32 [ %.0.copyload.i10180, %bb.jb ], [ %i.bmg, %bb.jv ], [ %i.bmg, %bb.jx ], [ %i.bmg, %.preheader10362 ]
  %.288619 = phi i32 [ %.248615, %bb.jb ], [ %i.bzb, %bb.jv ], [ %i.bzu, %bb.jx ], [ %i.cae, %.preheader10362 ]
  %.33 = phi i32 [ %.298589, %bb.jb ], [ %9, %bb.jv ], [ %9, %bb.jx ], [ %9, %.preheader10362 ] ; 2 uses
  %.218551 = phi i32 [ %.168546, %bb.jb ], [ %.208550, %bb.jv ], [ %.208550, %bb.jx ], [ %.208550, %.preheader10362 ] ; 2 uses
  %.19 = phi i32 [ %.18, %bb.jb ], [ %i.bqi, %bb.jv ], [ %i.bqi, %bb.jx ], [ %i.bqi, %.preheader10362 ] ; 2 uses
  %.13 = phi i32 [ %.10, %bb.jb ], [ 0, %bb.jv ], [ 0, %bb.jx ], [ 0, %.preheader10362 ] ; 2 uses
  %.not9173 = icmp eq i32 %.428740, 0
  %i.can = zext i32 %.288619 to i64               ; 3 uses
  br i1 %.not9173, label %bb.ka, label %.loopexit10353._crit_edge

bb.ka:                                            ; preds = %.loopexit10353
  %.val9906 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cao = getelementptr inbounds nuw i8, ptr %.val9906, i64 %i.can
  %.0.copyload.i10204 = load i64, ptr %i.cao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10204) #16, !srcloc !45
  %i.cap = icmp ult i64 %.0.copyload.i10204, 4294967296
  br i1 %i.cap, label %.loopexit10364, label %.loopexit10353._crit_edge

.loopexit10353._crit_edge:                        ; preds = %.loopexit10353, %bb.ka
  %i.caq = add i32 %.13, -1
  br label %.loopexit10364

.loopexit10364:                                   ; preds = %.loopexit10352, %bb.jz, %bb.jy, %bb.ka, %.loopexit10353._crit_edge
  %.pre-phi10793 = phi i64 [ %i.caf, %bb.jz ], [ %i.can, %.loopexit10353._crit_edge ], [ %i.bzv, %bb.jy ], [ %i.can, %bb.ka ], [ %i.bzc, %.loopexit10352 ] ; 5 uses
  %i.car = phi i32 [ %.0.copyload.i10163, %bb.jz ], [ %i.blx, %.loopexit10353._crit_edge ], [ %.0.copyload.i10163, %bb.jy ], [ %i.blx, %bb.ka ], [ %i.blx, %.loopexit10352 ]
  %.34 = phi i32 [ %9, %bb.jz ], [ %.33, %.loopexit10353._crit_edge ], [ %9, %bb.jy ], [ %.33, %bb.ka ], [ %9, %.loopexit10352 ]
  %.228552 = phi i32 [ %.208550, %bb.jz ], [ %.218551, %.loopexit10353._crit_edge ], [ %.208550, %bb.jy ], [ %.218551, %bb.ka ], [ %.208550, %.loopexit10352 ]
  %.20 = phi i32 [ %i.bqi, %bb.jz ], [ %.19, %.loopexit10353._crit_edge ], [ %i.bqi, %bb.jy ], [ %.19, %bb.ka ], [ %i.bqi, %.loopexit10352 ]
  %.14 = phi i32 [ 0, %bb.jz ], [ %i.caq, %.loopexit10353._crit_edge ], [ 0, %bb.jy ], [ %.13, %bb.ka ], [ 0, %.loopexit10352 ]
  %.val9791 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cas = getelementptr inbounds nuw i8, ptr %.val9791, i64 %.pre-phi10793
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cas, i64 12
  store i64 0, ptr %i.cat, align 1
  %.val9617 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cau = getelementptr inbounds nuw i8, ptr %.val9617, i64 %.pre-phi10793
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cau, i64 20
  store i32 0, ptr %i.cav, align 1
  %.val9616 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.caw = getelementptr inbounds nuw i8, ptr %.val9616, i64 %.pre-phi10793
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 8
  store i32 %i.bmg, ptr %i.cax, align 1
  %i.cay = zext i32 %i.bnm to i64
  %i.caz = shl nuw i64 %i.cay, 32
  %i.cba = or disjoint i64 %i.caz, %i.bma
  %.val9790 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cbb = getelementptr inbounds nuw i8, ptr %.val9790, i64 %.pre-phi10793
  store i64 %i.cba, ptr %i.cbb, align 1
  %i.cbc = add i32 %.228552, 1
  br label %.loopexit10358

.loopexit10358:                                   ; preds = %.preheader10375, %bb.iu, %bb.iw, %.loopexit10364
  %.pre-phi10794 = phi i64 [ %i.bnt, %bb.iu ], [ %.pre-phi10793, %.loopexit10364 ], [ %i.bon, %bb.iw ], [ %i.boz, %.preheader10375 ] ; 3 uses
  %i.cbd = phi i32 [ %i.blx, %bb.iu ], [ %i.car, %.loopexit10364 ], [ %.0.copyload.i10163, %bb.iw ], [ %.0.copyload.i10163, %.preheader10375 ] ; 2 uses
  %.35 = phi i32 [ %.298589, %bb.iu ], [ %.34, %.loopexit10364 ], [ %.298589, %bb.iw ], [ %.298589, %.preheader10375 ] ; 2 uses
  %.238553 = phi i32 [ %.168546, %bb.iu ], [ %i.cbc, %.loopexit10364 ], [ %.168546, %bb.iw ], [ %.168546, %.preheader10375 ] ; 2 uses
  %.21 = phi i32 [ %.18, %bb.iu ], [ %.20, %.loopexit10364 ], [ %.18, %bb.iw ], [ %.18, %.preheader10375 ] ; 2 uses
  %.15 = phi i32 [ %.10, %bb.iu ], [ %.14, %.loopexit10364 ], [ %.10, %bb.iw ], [ %.10, %.preheader10375 ] ; 2 uses
  %i.cbe = add nuw nsw i64 %.pre-phi10794, 16     ; 3 uses
  %.val9378 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cbf = getelementptr inbounds nuw i8, ptr %.val9378, i64 %i.cbe
  %.0.copyload.i10205 = load i32, ptr %i.cbf, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10205) #16, !srcloc !22
  %i.cbg = add nuw nsw i64 %.pre-phi10794, 20     ; 2 uses
  %.val9377 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cbh = getelementptr inbounds nuw i8, ptr %.val9377, i64 %i.cbg
  %.0.copyload.i10206 = load i32, ptr %i.cbh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10206) #16, !srcloc !22
  %i.cbi = icmp ult i32 %.0.copyload.i10205, %.0.copyload.i10206
  %.val9615 = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  br i1 %i.cbi, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %.loopexit10358
  %i.cbj = zext i32 %.0.copyload.i10205 to i64
  %i.cbk = getelementptr inbounds nuw i8, ptr %.val9615, i64 %i.cbj
  store i32 %.118493, ptr %i.cbk, align 1
  %i.cbl = add i32 %.0.copyload.i10205, 4
  %.val9614 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cbm = getelementptr inbounds nuw i8, ptr %.val9614, i64 %i.cbe
  store i32 %i.cbl, ptr %i.cbm, align 1
  br label %bb.kh

bb.kc:                                            ; preds = %.loopexit10358
  %i.cbn = add nuw nsw i64 %.pre-phi10794, 12     ; 2 uses
  %i.cbo = getelementptr inbounds nuw i8, ptr %.val9615, i64 %i.cbn
  %.0.copyload.i10207 = load i32, ptr %i.cbo, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10207) #16, !srcloc !22
  %i.cbp = sub i32 %.0.copyload.i10205, %.0.copyload.i10207 ; 3 uses
  %i.cbq = ashr i32 %i.cbp, 2
  %i.cbr = add nsw i32 %i.cbq, 1                  ; 2 uses
  %i.cbs = icmp ugt i32 %i.cbr, 1073741823
  br i1 %i.cbs, label %.loopexit10338, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.cbt = sub i32 %.0.copyload.i10206, %.0.copyload.i10207 ; 2 uses
  %i.cbu = ashr i32 %i.cbt, 1
  %i.cbv = tail call i32 @llvm.umax.i32(i32 %i.cbu, i32 %i.cbr)
  %i.cbw = icmp ugt i32 %i.cbt, 2147483643
  %i.cbx = select i1 %i.cbw, i32 1073741823, i32 %i.cbv ; 3 uses
  %.not9175 = icmp eq i32 %i.cbx, 0
  br i1 %.not9175, label %._crit_edge10811, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.cby = icmp ugt i32 %i.cbx, 1073741823
  br i1 %i.cby, label %.loopexit10338, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.cbz = shl nuw i32 %i.cbx, 2                  ; 2 uses
  %i.cca = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cbz) #16
  br label %._crit_edge10811

._crit_edge10811:                                 ; preds = %bb.kd, %bb.kf
  %.pre-phi10819 = phi i32 [ %i.cbz, %bb.kf ], [ 0, %bb.kd ]
  %.5 = phi i32 [ %i.cca, %bb.kf ], [ 0, %bb.kd ] ; 2 uses
  %i.ccb = and i32 %i.cbp, -4
  %i.ccc = add i32 %.5, %i.ccb                    ; 2 uses
  %i.ccd = zext i32 %i.ccc to i64
  %.val9613 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cce = getelementptr inbounds nuw i8, ptr %.val9613, i64 %i.ccd
  store i32 %.118493, ptr %i.cce, align 1
  %i.ccf = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.5, i32 noundef %.0.copyload.i10207, i32 noundef %i.cbp) #16 ; 2 uses
  %i.ccg = add i32 %i.ccf, %.pre-phi10819
  %.val9612 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cch = getelementptr inbounds nuw i8, ptr %.val9612, i64 %i.cbg
  store i32 %i.ccg, ptr %i.cch, align 1
  %i.cci = add i32 %i.ccc, 4
  %.val9611 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ccj = getelementptr inbounds nuw i8, ptr %.val9611, i64 %i.cbe
  store i32 %i.cci, ptr %i.ccj, align 1
  %.val9610 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cck = getelementptr inbounds nuw i8, ptr %.val9610, i64 %i.cbn
  store i32 %i.ccf, ptr %i.cck, align 1
  %.not9176 = icmp eq i32 %.0.copyload.i10207, 0
  br i1 %.not9176, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %._crit_edge10811
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i10207)
  br label %bb.kh

bb.kh:                                            ; preds = %._crit_edge10811, %bb.kg, %bb.kb
  %.not9177 = icmp eq i32 %i.cbd, 0
  br i1 %.not9177, label %.loopexit10380, label %bb.ik

.loopexit10380:                                   ; preds = %bb.kh, %.loopexit10360, %.preheader10383
  %.36 = phi i32 [ %.288588, %.preheader10383 ], [ %.298589, %.loopexit10360 ], [ %.35, %bb.kh ] ; 5 uses
  %.248554 = phi i32 [ %.158545, %.preheader10383 ], [ %.168546, %.loopexit10360 ], [ %.238553, %bb.kh ] ; 4 uses
  %.22 = phi i32 [ %.178419, %.preheader10383 ], [ %.18, %.loopexit10360 ], [ %.21, %bb.kh ] ; 6 uses
  %.16 = phi i32 [ %.98367, %.preheader10383 ], [ %.10, %.loopexit10360 ], [ %.15, %bb.kh ]
  %i.ccl = add i32 %.118493, 52                   ; 2 uses
  %.not9178 = icmp eq i32 %i.bcb, %i.ccl
  br i1 %.not9178, label %bb.ki, label %.preheader10383

bb.ki:                                            ; preds = %.loopexit10380
  %.not9179 = icmp eq i32 %.248554, 0
  br i1 %.not9179, label %bb.la, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ccm = icmp ugt i32 %.248554, 214748364
  br i1 %i.ccm, label %.loopexit10338, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.ccn = mul nuw i32 %.248554, 20               ; 2 uses
  %i.cco = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.ccn) #16 ; 7 uses
  %i.ccp = mul i32 %.36, 24
  %i.ccq = add i32 %.22, %i.ccp                   ; 4 uses
  %.not9180 = icmp eq i32 %.36, 0
  br i1 %.not9180, label %.loopexit10348, label %.preheader10347

.preheader10347:                                  ; preds = %bb.kk, %bb.km
  %.318622 = phi i32 [ %i.ccw, %bb.km ], [ %.22, %bb.kk ] ; 4 uses
  %i.ccr = zext i32 %.318622 to i64               ; 2 uses
  %.val9375 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ccs = getelementptr inbounds nuw i8, ptr %.val9375, i64 %i.ccr
  %i.cct = getelementptr inbounds nuw i8, ptr %i.ccs, i64 8
  %.0.copyload.i10208 = load i32, ptr %i.cct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10208) #16, !srcloc !22
  %.not9181 = icmp eq i32 %.0.copyload.i10208, 0
  br i1 %.not9181, label %bb.kl, label %.loopexit10348

bb.kl:                                            ; preds = %.preheader10347
  %.val9905 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ccu = getelementptr inbounds nuw i8, ptr %.val9905, i64 %i.ccr
  %.0.copyload.i10209 = load i64, ptr %i.ccu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10209) #16, !srcloc !45
  %i.ccv = icmp ugt i64 %.0.copyload.i10209, 4294967295
  br i1 %i.ccv, label %.loopexit10348, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.ccw = add i32 %.318622, 24                   ; 2 uses
  %.not9182 = icmp eq i32 %i.ccw, %i.ccq
  br i1 %.not9182, label %.loopexit10342, label %.preheader10347

.loopexit10348:                                   ; preds = %bb.kl, %.preheader10347, %bb.kk
  %.328623 = phi i32 [ %.22, %bb.kk ], [ %.318622, %.preheader10347 ], [ %.318622, %bb.kl ] ; 2 uses
  %i.ccx = icmp eq i32 %.328623, %i.ccq
  br i1 %i.ccx, label %.loopexit10342, label %bb.kn

bb.kn:                                            ; preds = %.loopexit10348
  %i.ccy = add i32 %i.cco, %i.ccn
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.kn
  %.168642 = phi i32 [ %i.cco, %bb.kn ], [ %.88428, %.backedge.backedge ] ; 7 uses
  %.338624 = phi i32 [ %.328623, %bb.kn ], [ %.338624.be, %.backedge.backedge ] ; 2 uses
  %.258555 = phi i32 [ %i.cco, %bb.kn ], [ %.428690, %.backedge.backedge ] ; 8 uses
  %.128494 = phi i32 [ %i.ccy, %bb.kn ], [ %.138495, %.backedge.backedge ] ; 3 uses
  %i.ccz = zext i32 %.338624 to i64               ; 5 uses
  %i.cda = add nuw nsw i64 %i.ccz, 20             ; 2 uses
  %.val9374 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cdb = getelementptr inbounds nuw i8, ptr %.val9374, i64 %i.cda
  %.0.copyload.i10210 = load i32, ptr %i.cdb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10210) #16, !srcloc !22
  %.val9609 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cdc = getelementptr inbounds nuw i8, ptr %.val9609, i64 %i.cda
  store i32 0, ptr %i.cdc, align 1
  %.val9373 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cdd = getelementptr inbounds nuw i8, ptr %.val9373, i64 %i.ccz
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 16
  %.0.copyload.i10211 = load i32, ptr %i.cde, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10211) #16, !srcloc !22
  %i.cdf = add nuw nsw i64 %i.ccz, 12             ; 2 uses
  %.val9372 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cdg = getelementptr inbounds nuw i8, ptr %.val9372, i64 %i.cdf
  %.0.copyload.i10212 = load i32, ptr %i.cdg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10212) #16, !srcloc !22
  %.val9789 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cdh = getelementptr inbounds nuw i8, ptr %.val9789, i64 %i.cdf
end_hunk_10
begin_hunk_11_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AStringTableBuilder0x3A0x3ApackIntoStorage0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x2C0x20bool0x29:bb.a
  %i.cpm = getelementptr inbounds nuw i8, ptr %.val9329, i64 %i.cpl
  %.0.copyload.i10262 = load i32, ptr %i.cpm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10262) #16, !srcloc !22
  %.not9231 = icmp eq i32 %.0.copyload.i10262, 0
  br i1 %.not9231, label %bb.nf, label %.loopexit10308

bb.nf:                                            ; preds = %bb.ne
  %.val9328 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cpn = getelementptr inbounds nuw i8, ptr %.val9328, i64 %i.cpi
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.cpn, i64 48
  %.0.copyload.i10263 = load i32, ptr %i.cpo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10263) #16, !srcloc !22
  %.not9232 = icmp eq i32 %.0.copyload.i10263, 0
  br i1 %.not9232, label %.loopexit10307, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %.val9327 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cpp = getelementptr inbounds nuw i8, ptr %.val9327, i64 %i.cpi
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.cpp, i64 36
  %.0.copyload.i10264 = load i32, ptr %i.cpq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10264) #16, !srcloc !22
  %i.cpr = add i32 %.0.copyload.i10263, -1        ; 2 uses
  %i.cps = and i32 %i.cpr, %i.cpe                 ; 2 uses
  %i.cpt = shl nuw nsw i32 %i.cps, 2
  %i.cpu = add i32 %.0.copyload.i10264, %i.cpt
  %i.cpv = zext i32 %i.cpu to i64
  %.val9326 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cpw = getelementptr inbounds nuw i8, ptr %.val9326, i64 %i.cpv
  %.0.copyload.i10265 = load i32, ptr %i.cpw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10265) #16, !srcloc !22
  %i.cpx = icmp eq i32 %.0.copyload.i10265, %.0.copyload.i10255
  br i1 %i.cpx, label %.loopexit10308, label %.preheader10306

.preheader10306:                                  ; preds = %bb.ng, %bb.nh
  %.158497 = phi i32 [ %i.cqb, %bb.nh ], [ %i.cps, %bb.ng ]
  %.88442 = phi i32 [ %i.cqa, %bb.nh ], [ 1, %bb.ng ] ; 2 uses
  %.158400 = phi i32 [ %.0.copyload.i10266, %bb.nh ], [ %.0.copyload.i10265, %bb.ng ]
  %i.cpy = icmp eq i32 %.158400, -4
  br i1 %i.cpy, label %.loopexit10307, label %bb.nh

bb.nh:                                            ; preds = %.preheader10306
  %i.cpz = add i32 %.88442, %.158497
  %i.cqa = add i32 %.88442, 1
  %i.cqb = and i32 %i.cpz, %i.cpr                 ; 2 uses
  %i.cqc = shl i32 %i.cqb, 2
  %i.cqd = add i32 %i.cqc, %.0.copyload.i10264
  %i.cqe = zext i32 %i.cqd to i64
  %.val9325 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cqf = getelementptr inbounds nuw i8, ptr %.val9325, i64 %i.cqe
  %.0.copyload.i10266 = load i32, ptr %i.cqf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10266) #16, !srcloc !22
  %.not9233 = icmp eq i32 %.0.copyload.i10266, %.0.copyload.i10255
  br i1 %.not9233, label %.loopexit10308, label %.preheader10306

.loopexit10308:                                   ; preds = %bb.nh, %bb.ng, %bb.ne, %bb.nd, %bb.nc
  %i.cqg = add i32 %.508748, 4                    ; 2 uses
  %.not9259 = icmp eq i32 %i.cqg, %i.cpb
  br i1 %.not9259, label %.loopexit10319, label %bb.nc

.loopexit10307:                                   ; preds = %bb.nf, %.preheader10306
  %.val9578 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cqh = getelementptr inbounds nuw i8, ptr %.val9578, i64 %i.cpl
  store i32 %.0.copyload.i10255, ptr %i.cqh, align 1
  %.val9577 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cqi = getelementptr inbounds nuw i8, ptr %.val9577, i64 %i.cos
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.cqi, i64 32
  store i32 %i.coi, ptr %i.cqj, align 1
  %.val9576 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cqk = getelementptr inbounds nuw i8, ptr %.val9576, i64 %i.cot
  store i32 %.0.copyload.i10260, ptr %i.cqk, align 1
  br label %bb.ni

bb.ni:                                            ; preds = %bb.ni, %.loopexit10307
  %.208646 = phi i32 [ %.0.copyload.i10255, %.loopexit10307 ], [ %.0.copyload.i10267, %bb.ni ]
  %i.cql = zext i32 %.208646 to i64               ; 6 uses
  %.val9324 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cqm = getelementptr inbounds nuw i8, ptr %.val9324, i64 %i.cql
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cqm, i64 24
  %.0.copyload.i10267 = load i32, ptr %i.cqn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10267) #16, !srcloc !22
  %.not9234 = icmp eq i32 %.0.copyload.i10267, 0
  br i1 %.not9234, label %.preheader10320, label %bb.ni

.preheader10320:                                  ; preds = %bb.ni, %.preheader10320
  %.448692 = phi i32 [ %.0.copyload.i10268, %.preheader10320 ], [ %.0.copyload.i10260, %bb.ni ] ; 12 uses
  %i.cqo = zext i32 %.448692 to i64
  %.val9323 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cqp = getelementptr inbounds nuw i8, ptr %.val9323, i64 %i.cqo
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.cqp, i64 28
  %.0.copyload.i10268 = load i32, ptr %i.cqq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10268) #16, !srcloc !22
  %.not9235 = icmp eq i32 %.0.copyload.i10268, 0
  br i1 %.not9235, label %bb.nj, label %.preheader10320

bb.nj:                                            ; preds = %.preheader10320
  %i.cqr = add nuw nsw i64 %i.cql, 36             ; 4 uses
  %.val9322 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cqs = getelementptr inbounds nuw i8, ptr %.val9322, i64 %i.cqr
  %.0.copyload.i10269 = load i32, ptr %i.cqs, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10269) #16, !srcloc !22
  %i.cqt = add nuw nsw i64 %i.cql, 48             ; 4 uses
  %.val9321 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cqu = getelementptr inbounds nuw i8, ptr %.val9321, i64 %i.cqt
  %.0.copyload.i10270 = load i32, ptr %i.cqu, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10270) #16, !srcloc !22
  %.not9236 = icmp eq i32 %.0.copyload.i10270, 0  ; 2 uses
  br i1 %.not9236, label %bb.nn, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.cqv = add i32 %.0.copyload.i10270, -1        ; 2 uses
  %i.cqw = lshr i32 %.448692, 4
  %i.cqx = lshr i32 %.448692, 9
  %i.cqy = xor i32 %i.cqw, %i.cqx
  %i.cqz = and i32 %i.cqv, %i.cqy                 ; 2 uses
  %i.cra = shl nuw nsw i32 %i.cqz, 2
  %i.crb = add i32 %i.cra, %.0.copyload.i10269    ; 2 uses
  %i.crc = zext i32 %i.crb to i64
  %.val9320 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.crd = getelementptr inbounds nuw i8, ptr %.val9320, i64 %i.crc
  %.0.copyload.i10271 = load i32, ptr %i.crd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10271) #16, !srcloc !22
  %i.cre = icmp eq i32 %.0.copyload.i10271, %.448692
  br i1 %i.cre, label %.loopexit10319, label %.preheader10318

.preheader10318:                                  ; preds = %bb.nk, %bb.nm
  %.42 = phi i32 [ %i.cro, %bb.nm ], [ %i.crb, %bb.nk ] ; 2 uses
  %.98443 = phi i32 [ %i.crj, %bb.nm ], [ 0, %bb.nk ] ; 3 uses
  %.29 = phi i32 [ %i.crl, %bb.nm ], [ 1, %bb.nk ] ; 2 uses
  %.168401 = phi i32 [ %.0.copyload.i10272, %bb.nm ], [ %.0.copyload.i10271, %bb.nk ] ; 2 uses
  %.138381 = phi i32 [ %i.crm, %bb.nm ], [ %i.cqz, %bb.nk ]
  %i.crf = icmp eq i32 %.168401, -4
  %.not9239 = icmp eq i32 %.98443, 0              ; 2 uses
  br i1 %i.crf, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %.preheader10318
  %i.crg = select i1 %.not9239, i32 %.42, i32 %.98443
  br label %bb.nn

bb.nm:                                            ; preds = %.preheader10318
  %i.crh = icmp eq i32 %.168401, -8
  %i.cri = select i1 %i.crh, i1 %.not9239, i1 false
  %i.crj = select i1 %i.cri, i32 %.42, i32 %.98443
  %i.crk = add i32 %.138381, %.29
  %i.crl = add i32 %.29, 1
  %i.crm = and i32 %i.crk, %i.cqv                 ; 2 uses
  %i.crn = shl i32 %i.crm, 2
  %i.cro = add i32 %i.crn, %.0.copyload.i10269    ; 2 uses
  %i.crp = zext i32 %i.cro to i64
  %.val9319 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.crq = getelementptr inbounds nuw i8, ptr %.val9319, i64 %i.crp
  %.0.copyload.i10272 = load i32, ptr %i.crq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10272) #16, !srcloc !22
  %.not9238 = icmp eq i32 %.0.copyload.i10272, %.448692
  br i1 %.not9238, label %.loopexit10319, label %.preheader10318

bb.nn:                                            ; preds = %bb.nj, %bb.nl
  %.43 = phi i32 [ %i.crg, %bb.nl ], [ 0, %bb.nj ]
  %i.crr = add nuw nsw i64 %i.cql, 40             ; 5 uses
  %.val9318 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.crs = getelementptr inbounds nuw i8, ptr %.val9318, i64 %i.crr
  %.0.copyload.i10273 = load i32, ptr %i.crs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10273) #16, !srcloc !22
  %i.crt = shl i32 %.0.copyload.i10273, 2
  %i.cru = add i32 %i.crt, 4
  %i.crv = mul i32 %.0.copyload.i10270, 3
  %.not9240 = icmp ult i32 %i.cru, %i.crv
  br i1 %.not9240, label %bb.np, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.crw = shl i32 %.0.copyload.i10270, 1
  br label %bb.nq

bb.np:                                            ; preds = %bb.nn
  %i.crx = xor i32 %.0.copyload.i10273, -1
  %i.cry = add i32 %.0.copyload.i10270, %i.crx
  %.val9317 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.crz = getelementptr inbounds nuw i8, ptr %.val9317, i64 %i.cql
  %i.csa = getelementptr inbounds nuw i8, ptr %i.crz, i64 44
  %.0.copyload.i10274 = load i32, ptr %i.csa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10274) #16, !srcloc !22
  %i.csb = sub i32 %i.cry, %.0.copyload.i10274
  %i.csc = lshr i32 %.0.copyload.i10270, 3
  %i.csd = icmp ugt i32 %i.csb, %i.csc
  br i1 %i.csd, label %bb.oh, label %bb.nq

bb.nq:                                            ; preds = %bb.np, %bb.no
  %.168498 = phi i32 [ %i.crw, %bb.no ], [ %.0.copyload.i10270, %bb.np ]
  %i.cse = add i32 %.168498, -1
  %i.csf = zext i32 %i.cse to i64                 ; 2 uses
  %i.csg = lshr i64 %i.csf, 1
  %i.csh = or i64 %i.csg, %i.csf                  ; 2 uses
  %i.csi = lshr i64 %i.csh, 2
  %i.csj = or i64 %i.csi, %i.csh                  ; 2 uses
  %i.csk = lshr i64 %i.csj, 4
  %i.csl = or i64 %i.csk, %i.csj                  ; 2 uses
  %i.csm = lshr i64 %i.csl, 8
  %i.csn = or i64 %i.csm, %i.csl                  ; 2 uses
  %i.cso = lshr i64 %i.csn, 16
  %i.csp = or i64 %i.cso, %i.csn
  %i.csq = trunc nuw i64 %i.csp to i32
  %i.csr = add i32 %i.csq, 1
  %10 = tail call i32 @llvm.umax.i32(i32 %i.csr, i32 64) ; 2 uses
  %.val9575 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.css = getelementptr inbounds nuw i8, ptr %.val9575, i64 %i.cqt
  store i32 %10, ptr %i.css, align 1
  %i.cst = shl i32 %10, 2
  %i.csu = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cst) #16 ; 24 uses
  %.val9574 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.csv = getelementptr inbounds nuw i8, ptr %.val9574, i64 %i.cqr
  store i32 %i.csu, ptr %i.csv, align 1
  %.not9241 = icmp eq i32 %.0.copyload.i10269, 0
  %.val9783 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.csw = getelementptr inbounds nuw i8, ptr %.val9783, i64 %i.crr
  store i64 0, ptr %i.csw, align 1
  %.val9316 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.csx = getelementptr inbounds nuw i8, ptr %.val9316, i64 %i.cqt
  %.0.copyload.i10275 = load i32, ptr %i.csx, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10275) #16
  %.not9250 = icmp eq i32 %.0.copyload.i10275, 0  ; 2 uses
  br i1 %.not9241, label %bb.nr, label %bb.nv

bb.nr:                                            ; preds = %bb.nq
  br i1 %.not9250, label %.loopexit10311, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.csy = and i32 %.0.copyload.i10275, 7         ; 7 uses
  %.not9251 = icmp eq i32 %i.csy, 0
  br i1 %.not9251, label %.loopexit10313, label %.preheader10312

.preheader10312:                                  ; preds = %bb.ns
  %i.csz = zext i32 %i.csu to i64
  %.val9573 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cta = getelementptr inbounds nuw i8, ptr %.val9573, i64 %i.csz
  store i32 -4, ptr %i.cta, align 1
  %i.ctb = add i32 %i.csu, 4                      ; 2 uses
  %.not9252 = icmp eq i32 %i.csy, 1
  br i1 %.not9252, label %.loopexit10313, label %.preheader10312.1

.preheader10312.1:                                ; preds = %.preheader10312
  %i.ctc = zext i32 %i.ctb to i64
  %.val9573.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ctd = getelementptr inbounds nuw i8, ptr %.val9573.1, i64 %i.ctc
  store i32 -4, ptr %i.ctd, align 1
  %i.cte = add i32 %i.csu, 8                      ; 2 uses
  %.not9252.1 = icmp eq i32 %i.csy, 2
  br i1 %.not9252.1, label %.loopexit10313, label %.preheader10312.2

.preheader10312.2:                                ; preds = %.preheader10312.1
  %i.ctf = zext i32 %i.cte to i64
  %.val9573.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ctg = getelementptr inbounds nuw i8, ptr %.val9573.2, i64 %i.ctf
  store i32 -4, ptr %i.ctg, align 1
  %i.cth = add i32 %i.csu, 12                     ; 2 uses
  %.not9252.2 = icmp eq i32 %i.csy, 3
  br i1 %.not9252.2, label %.loopexit10313, label %.preheader10312.3

.preheader10312.3:                                ; preds = %.preheader10312.2
  %i.cti = zext i32 %i.cth to i64
  %.val9573.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ctj = getelementptr inbounds nuw i8, ptr %.val9573.3, i64 %i.cti
  store i32 -4, ptr %i.ctj, align 1
  %i.ctk = add i32 %i.csu, 16                     ; 2 uses
  %.not9252.3 = icmp eq i32 %i.csy, 4
  br i1 %.not9252.3, label %.loopexit10313, label %.preheader10312.4

.preheader10312.4:                                ; preds = %.preheader10312.3
  %i.ctl = zext i32 %i.ctk to i64
  %.val9573.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ctm = getelementptr inbounds nuw i8, ptr %.val9573.4, i64 %i.ctl
  store i32 -4, ptr %i.ctm, align 1
  %i.ctn = add i32 %i.csu, 20                     ; 2 uses
  %.not9252.4 = icmp eq i32 %i.csy, 5
  br i1 %.not9252.4, label %.loopexit10313, label %.preheader10312.5

.preheader10312.5:                                ; preds = %.preheader10312.4
  %i.cto = zext i32 %i.ctn to i64
  %.val9573.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ctp = getelementptr inbounds nuw i8, ptr %.val9573.5, i64 %i.cto
  store i32 -4, ptr %i.ctp, align 1
  %i.ctq = add i32 %i.csu, 24                     ; 2 uses
  %.not9252.5 = icmp eq i32 %i.csy, 6
  br i1 %.not9252.5, label %.loopexit10313, label %.preheader10312.6

.preheader10312.6:                                ; preds = %.preheader10312.5
  %i.ctr = zext i32 %i.ctq to i64
  %.val9573.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cts = getelementptr inbounds nuw i8, ptr %.val9573.6, i64 %i.ctr
  store i32 -4, ptr %i.cts, align 1
  %i.ctt = add i32 %i.csu, 28
  br label %.loopexit10313

.loopexit10313:                                   ; preds = %.preheader10312, %.preheader10312.1, %.preheader10312.2, %.preheader10312.3, %.preheader10312.4, %.preheader10312.5, %.preheader10312.6, %bb.ns
  %.468694 = phi i32 [ %i.csu, %bb.ns ], [ %i.ctb, %.preheader10312 ], [ %i.cte, %.preheader10312.1 ], [ %i.cth, %.preheader10312.2 ], [ %i.ctk, %.preheader10312.3 ], [ %i.ctn, %.preheader10312.4 ], [ %i.ctq, %.preheader10312.5 ], [ %i.ctt, %.preheader10312.6 ]
  %i.ctu = add i32 %.0.copyload.i10275, 1073741823
  %i.ctv = and i32 %i.ctu, 1073741823
  %i.ctw = icmp samesign ult i32 %i.ctv, 7
  br i1 %i.ctw, label %.loopexit10311, label %bb.nt

bb.nt:                                            ; preds = %.loopexit10313
  %i.ctx = shl i32 %.0.copyload.i10275, 2
  %i.cty = add i32 %i.ctx, %i.csu
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nu, %bb.nt
  %.478695 = phi i32 [ %.468694, %bb.nt ], [ %i.cuh, %bb.nu ] ; 2 uses
  %i.ctz = zext i32 %.478695 to i64               ; 4 uses
  %.val9782 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cua = getelementptr inbounds nuw i8, ptr %.val9782, i64 %i.ctz
  %i.cub = getelementptr inbounds nuw i8, ptr %i.cua, i64 24
  store i64 -12884901892, ptr %i.cub, align 1
  %.val9781 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cuc = getelementptr inbounds nuw i8, ptr %.val9781, i64 %i.ctz
  %i.cud = getelementptr inbounds nuw i8, ptr %i.cuc, i64 16
  store i64 -12884901892, ptr %i.cud, align 1
  %.val9780 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cue = getelementptr inbounds nuw i8, ptr %.val9780, i64 %i.ctz
  %i.cuf = getelementptr inbounds nuw i8, ptr %i.cue, i64 8
  store i64 -12884901892, ptr %i.cuf, align 1
  %.val9779 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cug = getelementptr inbounds nuw i8, ptr %.val9779, i64 %i.ctz
  store i64 -12884901892, ptr %i.cug, align 1
  %i.cuh = add i32 %.478695, 32                   ; 2 uses
  %.not9253 = icmp eq i32 %i.cuh, %i.cty
  br i1 %.not9253, label %.loopexit10311, label %bb.nu

bb.nv:                                            ; preds = %bb.nq
  br i1 %.not9250, label %.loopexit10315, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.cui = and i32 %.0.copyload.i10275, 7         ; 7 uses
  %.not9243 = icmp eq i32 %i.cui, 0
  br i1 %.not9243, label %.loopexit10317, label %.preheader10316

.preheader10316:                                  ; preds = %bb.nw
  %i.cuj = zext i32 %i.csu to i64
  %.val9572 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cuk = getelementptr inbounds nuw i8, ptr %.val9572, i64 %i.cuj
  store i32 -4, ptr %i.cuk, align 1
  %i.cul = add i32 %i.csu, 4                      ; 2 uses
  %.not9244 = icmp eq i32 %i.cui, 1
  br i1 %.not9244, label %.loopexit10317, label %.preheader10316.1

.preheader10316.1:                                ; preds = %.preheader10316
  %i.cum = zext i32 %i.cul to i64
  %.val9572.1 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cun = getelementptr inbounds nuw i8, ptr %.val9572.1, i64 %i.cum
  store i32 -4, ptr %i.cun, align 1
  %i.cuo = add i32 %i.csu, 8                      ; 2 uses
  %.not9244.1 = icmp eq i32 %i.cui, 2
  br i1 %.not9244.1, label %.loopexit10317, label %.preheader10316.2

.preheader10316.2:                                ; preds = %.preheader10316.1
  %i.cup = zext i32 %i.cuo to i64
  %.val9572.2 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cuq = getelementptr inbounds nuw i8, ptr %.val9572.2, i64 %i.cup
  store i32 -4, ptr %i.cuq, align 1
  %i.cur = add i32 %i.csu, 12                     ; 2 uses
  %.not9244.2 = icmp eq i32 %i.cui, 3
  br i1 %.not9244.2, label %.loopexit10317, label %.preheader10316.3

.preheader10316.3:                                ; preds = %.preheader10316.2
  %i.cus = zext i32 %i.cur to i64
  %.val9572.3 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cut = getelementptr inbounds nuw i8, ptr %.val9572.3, i64 %i.cus
  store i32 -4, ptr %i.cut, align 1
  %i.cuu = add i32 %i.csu, 16                     ; 2 uses
  %.not9244.3 = icmp eq i32 %i.cui, 4
  br i1 %.not9244.3, label %.loopexit10317, label %.preheader10316.4

.preheader10316.4:                                ; preds = %.preheader10316.3
  %i.cuv = zext i32 %i.cuu to i64
  %.val9572.4 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cuw = getelementptr inbounds nuw i8, ptr %.val9572.4, i64 %i.cuv
  store i32 -4, ptr %i.cuw, align 1
  %i.cux = add i32 %i.csu, 20                     ; 2 uses
  %.not9244.4 = icmp eq i32 %i.cui, 5
  br i1 %.not9244.4, label %.loopexit10317, label %.preheader10316.5

.preheader10316.5:                                ; preds = %.preheader10316.4
  %i.cuy = zext i32 %i.cux to i64
  %.val9572.5 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cuz = getelementptr inbounds nuw i8, ptr %.val9572.5, i64 %i.cuy
  store i32 -4, ptr %i.cuz, align 1
  %i.cva = add i32 %i.csu, 24                     ; 2 uses
  %.not9244.5 = icmp eq i32 %i.cui, 6
  br i1 %.not9244.5, label %.loopexit10317, label %.preheader10316.6

.preheader10316.6:                                ; preds = %.preheader10316.5
  %i.cvb = zext i32 %i.cva to i64
  %.val9572.6 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cvc = getelementptr inbounds nuw i8, ptr %.val9572.6, i64 %i.cvb
  store i32 -4, ptr %i.cvc, align 1
  %i.cvd = add i32 %i.csu, 28
  br label %.loopexit10317

.loopexit10317:                                   ; preds = %.preheader10316, %.preheader10316.1, %.preheader10316.2, %.preheader10316.3, %.preheader10316.4, %.preheader10316.5, %.preheader10316.6, %bb.nw
  %.45 = phi i32 [ %i.csu, %bb.nw ], [ %i.cul, %.preheader10316 ], [ %i.cuo, %.preheader10316.1 ], [ %i.cur, %.preheader10316.2 ], [ %i.cuu, %.preheader10316.3 ], [ %i.cux, %.preheader10316.4 ], [ %i.cva, %.preheader10316.5 ], [ %i.cvd, %.preheader10316.6 ]
  %i.cve = add i32 %.0.copyload.i10275, 1073741823
  %i.cvf = and i32 %i.cve, 1073741823
  %i.cvg = icmp samesign ult i32 %i.cvf, 7
  br i1 %i.cvg, label %.loopexit10315, label %bb.nx

bb.nx:                                            ; preds = %.loopexit10317
  %i.cvh = shl i32 %.0.copyload.i10275, 2
  %i.cvi = add i32 %i.cvh, %i.csu
  br label %bb.ny
end_hunk_11
